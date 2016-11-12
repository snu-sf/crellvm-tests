; ModuleID = './lib-src/make-docfile.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.anon = type { i8*, i32 }
%struct.global = type { i32, i8*, i32, %union.anon }
%union.anon = type { i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.rcsoc_state = type { i64, i64, %struct._IO_FILE*, i8*, %struct._IO_FILE*, i8*, i8*, i8 }

@progname = internal global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@generate_globals = internal global i8 0, align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".elc\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c".el\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\1FS%s\0A\00", align 1
@scan_lisp_file.uncompiled = internal constant [5 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 11 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 9 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 11 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 10 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 11 }], align 16
@.str.14 = private unnamed_addr constant [12 x i8] c"loaddefs.el\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"loadup.el\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"charprop.el\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"cp51932.el\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"eucjp-ms.el\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"scanning lisp file when -g specified\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"uncompiled lisp file %s is not supported\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"invalid dynamic doc string length\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"space not found after dynamic doc string length\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"defun\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"defmacro\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"defsubst\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"## unparsable arglist in %s (%s)\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"defvar\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"defconst\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"defcustom\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"custom-declare-variable\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"defvaralias\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"## unparsable name in custom-declare-variable in %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.34 = private unnamed_addr constant [60 x i8] c"## unparsable quoted name in custom-declare-variable in %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"fset\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"defalias\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"## unparsable name in fset in %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"## unparsable quoted name in fset in %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"autoload\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"## unparsable name in autoload in %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"## unparsable quoted name in autoload in %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"## autoload of %s unparsable (%s)\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\1F%c%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"virtual memory exhausted\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"## expected a symbol, got '%c'\0A\00", align 1
@input_buffer = internal global [128 x i8] zeroinitializer, align 16
@.str.47 = private unnamed_addr constant [7 x i8] c"usage:\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Missing '(' after keyword\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"Unexpected EOF after keyword\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"/* This file was auto-generated by make-docfile.  */\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"/* DO NOT EDIT.  */\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"struct emacs_globals {\00", align 1
@globals = internal global %struct.global* null, align 8
@num_globals = internal global i64 0, align 8
@.str.53 = private unnamed_addr constant [54 x i8] c"function '%s' defined twice with differing signatures\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"EMACS_INT\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"Lisp_Object\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"not a recognized DEFVAR_\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"  %s f_%s;\0A\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"#define %s globals.f_%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"#define i%s %td\0ADEFINE_LISP_SYMBOL (%s)\0A\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"_Noreturn \00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"EXFUN (%s, \00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"MANY\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"UNEVALLED\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c" ATTRIBUTE_CONST\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"#ifdef DEFINE_SYMBOLS\00", align 1
@.str.69 = private unnamed_addr constant [43 x i8] c"static char const *const defsym_name[] = {\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"\09\22%s\22,\0A\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"};\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"#endif\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"#define Qnil builtin_lisp_symbol (0)\00", align 1
@.str.74 = private unnamed_addr constant [35 x i8] c"#if DEFINE_NON_NIL_Q_SYMBOL_MACROS\00", align 1
@.str.75 = private unnamed_addr constant [39 x i8] c"# define %s builtin_lisp_symbol (%td)\0A\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"Qnil\00", align 1
@.str.77 = private unnamed_addr constant [134 x i8] c"};\0Aextern struct emacs_globals globals;\0A\0A#ifndef DEFINE_SYMBOLS\0Aextern\0A#endif\0Astruct Lisp_Symbol alignas (GCALIGNMENT) lispsym[%td];\0A\00", align 1
@scan_c_stream.name = internal global i8* null, align 8
@scan_c_stream.name_size = internal global i64 0, align 8
@.str.78 = private unnamed_addr constant [11 x i8] c"ttributes:\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"noreturn\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"Missing 'usage' for function '%s'.\0A\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@num_globals_allocated = internal global i64 0, align 8
@.str.85 = private unnamed_addr constant [4 x i8] c"(fn\00", align 1
@.str.86 = private unnamed_addr constant [49 x i8] c"empty arg list for '%s' should be (void), not ()\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"&optional \00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"defalt\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %first_infile = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** @progname, align 8
  store i32 1, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 1
  %cmp = icmp sgt i32 %2, %add
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx1, align 8
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.12, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %i, align 4
  %add2 = add nsw i32 %7, 1
  %idxprom3 = sext i32 %add2 to i64
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx4, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call %struct._IO_FILE* @freopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %10)
  %tobool6 = icmp ne %struct._IO_FILE* %call5, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %11 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %11, 1
  %idxprom9 = sext i32 %add8 to i64
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 %idxprom9
  %13 = load i8*, i8** %arrayidx10, align 8
  call void @perror(i8* %13)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %14, 2
  store i32 %add11, i32* %i, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true, %entry
  %15 = load i32, i32* %argc.addr, align 4
  %16 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %16, 1
  %cmp14 = icmp sgt i32 %15, %add13
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.32

land.lhs.true.15:                                 ; preds = %if.end.12
  %17 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %18, i64 %idxprom16
  %19 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #7
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.32, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.15
  %20 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %20, 1
  %idxprom22 = sext i32 %add21 to i64
  %21 = load i8**, i8*** %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %21, i64 %idxprom22
  %22 = load i8*, i8** %arrayidx23, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call24 = call %struct._IO_FILE* @freopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %23)
  %tobool25 = icmp ne %struct._IO_FILE* %call24, null
  br i1 %tobool25, label %if.end.30, label %if.then.26

if.then.26:                                       ; preds = %if.then.20
  %24 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %24, 1
  %idxprom28 = sext i32 %add27 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %25, i64 %idxprom28
  %26 = load i8*, i8** %arrayidx29, align 8
  call void @perror(i8* %26)
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.20
  %27 = load i32, i32* %i, align 4
  %add31 = add nsw i32 %27, 2
  store i32 %add31, i32* %i, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.30, %land.lhs.true.15, %if.end.12
  %28 = load i32, i32* %argc.addr, align 4
  %29 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %29, 1
  %cmp34 = icmp sgt i32 %28, %add33
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.52

land.lhs.true.35:                                 ; preds = %if.end.32
  %30 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %31, i64 %idxprom36
  %32 = load i8*, i8** %arrayidx37, align 8
  %call38 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #7
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.52, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.35
  %33 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %33, 1
  %idxprom42 = sext i32 %add41 to i64
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %34, i64 %idxprom42
  %35 = load i8*, i8** %arrayidx43, align 8
  %call44 = call i32 @chdir(i8* %35) #5
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.then.40
  %36 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %36, 1
  %idxprom48 = sext i32 %add47 to i64
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %37, i64 %idxprom48
  %38 = load i8*, i8** %arrayidx49, align 8
  call void @perror(i8* %38)
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.40
  %39 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %39, 2
  store i32 %add51, i32* %i, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.50, %land.lhs.true.35, %if.end.32
  %40 = load i32, i32* %argc.addr, align 4
  %41 = load i32, i32* %i, align 4
  %cmp53 = icmp sgt i32 %40, %41
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.60

land.lhs.true.54:                                 ; preds = %if.end.52
  %42 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %42 to i64
  %43 = load i8**, i8*** %argv.addr, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %43, i64 %idxprom55
  %44 = load i8*, i8** %arrayidx56, align 8
  %call57 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #7
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.54
  store i8 1, i8* @generate_globals, align 1
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %land.lhs.true.54, %if.end.52
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call61 = call i32 @fileno(%struct._IO_FILE* %46) #5
  %call62 = call i32 @set_binary_mode(i32 %call61, i32 0)
  %47 = load i8, i8* @generate_globals, align 1
  %tobool63 = trunc i8 %47 to i1
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.60
  call void @start_globals()
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.60
  %48 = load i32, i32* %argc.addr, align 4
  %49 = load i32, i32* %i, align 4
  %cmp66 = icmp sle i32 %48, %49
  br i1 %cmp66, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %if.end.65
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @scan_c_stream(%struct._IO_FILE* %50)
  br label %if.end.89

if.else:                                          ; preds = %if.end.65
  %51 = load i32, i32* %i, align 4
  store i32 %51, i32* %first_infile, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %if.else
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %argc.addr, align 4
  %cmp68 = icmp slt i32 %52, %53
  br i1 %cmp68, label %for.body, label %for.end.88

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %first_infile, align 4
  store i32 %54, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc, %for.body
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %i, align 4
  %cmp70 = icmp slt i32 %55, %56
  br i1 %cmp70, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.69
  %57 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %57 to i64
  %58 = load i8**, i8*** %argv.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %58, i64 %idxprom72
  %59 = load i8*, i8** %arrayidx73, align 8
  %60 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %60 to i64
  %61 = load i8**, i8*** %argv.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %61, i64 %idxprom74
  %62 = load i8*, i8** %arrayidx75, align 8
  %call76 = call i32 @strcmp(i8* %59, i8* %62) #7
  %cmp77 = icmp eq i32 %call76, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.body.71
  br label %for.end

if.end.79:                                        ; preds = %for.body.71
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %63 = load i32, i32* %j, align 4
  %inc80 = add nsw i32 %63, 1
  store i32 %inc80, i32* %j, align 4
  br label %for.cond.69

for.end:                                          ; preds = %if.then.78, %for.cond.69
  %64 = load i32, i32* %j, align 4
  %65 = load i32, i32* %i, align 4
  %cmp81 = icmp eq i32 %64, %65
  br i1 %cmp81, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %for.end
  %66 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %66 to i64
  %67 = load i8**, i8*** %argv.addr, align 8
  %arrayidx84 = getelementptr inbounds i8*, i8** %67, i64 %idxprom83
  %68 = load i8*, i8** %arrayidx84, align 8
  call void @scan_file(i8* %68)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %for.end
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %69 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %69, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond

for.end.88:                                       ; preds = %for.cond
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %if.then.67
  %70 = load i8, i8* @generate_globals, align 1
  %tobool90 = trunc i8 %70 to i1
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.89
  call void @write_globals()
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.end.89
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call93 = call i32 @ferror(%struct._IO_FILE* %71) #5
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.97, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.92
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call95 = call i32 @fclose(%struct._IO_FILE* %72)
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %lor.lhs.false, %if.end.92
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)) #8
  unreachable

if.end.98:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.98, %if.then.46, %if.then.26, %if.then.7
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #2

declare void @perror(i8*) #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

declare i32 @set_binary_mode(i32, i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @start_globals() #0 {
entry:
  %call = call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.50, i32 0, i32 0))
  %call1 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0))
  %call2 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scan_c_stream(%struct._IO_FILE* %infile) #0 {
entry:
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %commas = alloca i32, align 4
  %minargs = alloca i32, align 4
  %maxargs = alloca i32, align 4
  %c = alloca i32, align 4
  %doc_keyword = alloca i8, align 1
  %defunflag = alloca i8, align 1
  %defvarperbufferflag = alloca i8, align 1
  %defvarflag = alloca i8, align 1
  %type = alloca i32, align 4
  %i = alloca i64, align 8
  %svalue = alloca i8*, align 8
  %doubled = alloca i64, align 8
  %scanned = alloca i32, align 4
  %g = alloca %struct.global*, align 8
  %d = alloca i32, align 4
  %p = alloca i8*, align 8
  %comment = alloca i8, align 1
  %saw_usage = alloca i8, align 1
  %argbuf = alloca [1024 x i8], align 16
  %p2664 = alloca i8*, align 8
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  store i32 10, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.2715, %if.end.2539, %if.then.2459, %if.then.2368, %if.then.2362, %if.then.2357, %if.then.122, %if.then.108, %if.else.95, %if.then.90, %if.then.86, %if.else.78, %if.then.52, %if.then.48, %if.then.44, %if.then.38, %if.then.30, %if.then.26, %if.then.19, %if.then.15, %if.then.11, %if.then, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #5
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end.2716

while.body:                                       ; preds = %while.cond
  store i8 0, i8* %doc_keyword, align 1
  store i8 0, i8* %defunflag, align 1
  store i8 0, i8* %defvarperbufferflag, align 1
  store i8 0, i8* %defvarflag, align 1
  store i32 0, i32* %type, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %1, 10
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %2, 13
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call2, i32* %c, align 4
  br label %while.cond

if.end:                                           ; preds = %land.lhs.true, %while.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  store i32 %call3, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %cmp4 = icmp eq i32 %5, 32
  br i1 %cmp4, label %if.then.5, label %if.else.81

if.then.5:                                        ; preds = %if.end
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.8, %if.then.5
  %6 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %6, 32
  br i1 %cmp7, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %while.cond.6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call9 = call i32 @_IO_getc(%struct._IO_FILE* %7)
  store i32 %call9, i32* %c, align 4
  br label %while.cond.6

while.end:                                        ; preds = %while.cond.6
  %8 = load i32, i32* %c, align 4
  %cmp10 = icmp ne i32 %8, 68
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.end
  br label %while.cond

if.end.12:                                        ; preds = %while.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call13 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  store i32 %call13, i32* %c, align 4
  %10 = load i32, i32* %c, align 4
  %cmp14 = icmp ne i32 %10, 69
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %while.cond

if.end.16:                                        ; preds = %if.end.12
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call17 = call i32 @_IO_getc(%struct._IO_FILE* %11)
  store i32 %call17, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %cmp18 = icmp ne i32 %12, 70
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %while.cond

if.end.20:                                        ; preds = %if.end.16
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call21 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  store i32 %call21, i32* %c, align 4
  %14 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %14, 83
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.20
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call24 = call i32 @_IO_getc(%struct._IO_FILE* %15)
  store i32 %call24, i32* %c, align 4
  %16 = load i32, i32* %c, align 4
  %cmp25 = icmp ne i32 %16, 89
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  br label %while.cond

if.end.27:                                        ; preds = %if.then.23
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call28 = call i32 @_IO_getc(%struct._IO_FILE* %17)
  store i32 %call28, i32* %c, align 4
  %18 = load i32, i32* %c, align 4
  %cmp29 = icmp ne i32 %18, 77
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  br label %while.cond

if.end.31:                                        ; preds = %if.end.27
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call32 = call i32 @_IO_getc(%struct._IO_FILE* %19)
  store i32 %call32, i32* %c, align 4
  %20 = load i32, i32* %c, align 4
  %cmp33 = icmp ne i32 %20, 32
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.39

land.lhs.true.34:                                 ; preds = %if.end.31
  %21 = load i32, i32* %c, align 4
  %cmp35 = icmp ne i32 %21, 9
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.39

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %22 = load i32, i32* %c, align 4
  %cmp37 = icmp ne i32 %22, 40
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.36
  br label %while.cond

if.end.39:                                        ; preds = %land.lhs.true.36, %land.lhs.true.34, %if.end.31
  store i32 4, i32* %type, align 4
  br label %if.end.80

if.else:                                          ; preds = %if.end.20
  %23 = load i32, i32* %c, align 4
  %cmp40 = icmp eq i32 %23, 86
  br i1 %cmp40, label %if.then.41, label %if.else.78

if.then.41:                                       ; preds = %if.else
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call42 = call i32 @_IO_getc(%struct._IO_FILE* %24)
  store i32 %call42, i32* %c, align 4
  %25 = load i32, i32* %c, align 4
  %cmp43 = icmp ne i32 %25, 65
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.41
  br label %while.cond

if.end.45:                                        ; preds = %if.then.41
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call46 = call i32 @_IO_getc(%struct._IO_FILE* %26)
  store i32 %call46, i32* %c, align 4
  %27 = load i32, i32* %c, align 4
  %cmp47 = icmp ne i32 %27, 82
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  br label %while.cond

if.end.49:                                        ; preds = %if.end.45
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call50 = call i32 @_IO_getc(%struct._IO_FILE* %28)
  store i32 %call50, i32* %c, align 4
  %29 = load i32, i32* %c, align 4
  %cmp51 = icmp ne i32 %29, 95
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  br label %while.cond

if.end.53:                                        ; preds = %if.end.49
  store i8 1, i8* %defvarflag, align 1
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call54 = call i32 @_IO_getc(%struct._IO_FILE* %30)
  store i32 %call54, i32* %c, align 4
  %31 = load i32, i32* %c, align 4
  %cmp55 = icmp eq i32 %31, 80
  %frombool = zext i1 %cmp55 to i8
  store i8 %frombool, i8* %defvarperbufferflag, align 1
  %32 = load i8, i8* @generate_globals, align 1
  %tobool56 = trunc i8 %32 to i1
  br i1 %tobool56, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %if.end.53
  %33 = load i32, i32* %c, align 4
  %cmp58 = icmp eq i32 %33, 73
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.then.57
  store i32 2, i32* %type, align 4
  br label %if.end.68

if.else.60:                                       ; preds = %if.then.57
  %34 = load i32, i32* %c, align 4
  %cmp61 = icmp eq i32 %34, 76
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.else.60
  store i32 1, i32* %type, align 4
  br label %if.end.67

if.else.63:                                       ; preds = %if.else.60
  %35 = load i32, i32* %c, align 4
  %cmp64 = icmp eq i32 %35, 66
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.else.63
  store i32 3, i32* %type, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.else.63
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.62
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.59
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.53
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call70 = call i32 @_IO_getc(%struct._IO_FILE* %36)
  store i32 %call70, i32* %c, align 4
  %37 = load i8, i8* @generate_globals, align 1
  %tobool71 = trunc i8 %37 to i1
  br i1 %tobool71, label %land.lhs.true.72, label %if.end.77

land.lhs.true.72:                                 ; preds = %if.end.69
  %38 = load i32, i32* %type, align 4
  %cmp73 = icmp eq i32 %38, 3
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.77

land.lhs.true.74:                                 ; preds = %land.lhs.true.72
  %39 = load i32, i32* %c, align 4
  %cmp75 = icmp ne i32 %39, 79
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.74
  store i32 0, i32* %type, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %land.lhs.true.74, %land.lhs.true.72, %if.end.69
  br label %if.end.79

if.else.78:                                       ; preds = %if.else
  br label %while.cond

if.end.79:                                        ; preds = %if.end.77
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.39
  br label %if.end.97

if.else.81:                                       ; preds = %if.end
  %40 = load i32, i32* %c, align 4
  %cmp82 = icmp eq i32 %40, 68
  br i1 %cmp82, label %if.then.83, label %if.else.95

if.then.83:                                       ; preds = %if.else.81
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call84 = call i32 @_IO_getc(%struct._IO_FILE* %41)
  store i32 %call84, i32* %c, align 4
  %42 = load i32, i32* %c, align 4
  %cmp85 = icmp ne i32 %42, 69
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.83
  br label %while.cond

if.end.87:                                        ; preds = %if.then.83
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call88 = call i32 @_IO_getc(%struct._IO_FILE* %43)
  store i32 %call88, i32* %c, align 4
  %44 = load i32, i32* %c, align 4
  %cmp89 = icmp ne i32 %44, 70
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  br label %while.cond

if.end.91:                                        ; preds = %if.end.87
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call92 = call i32 @_IO_getc(%struct._IO_FILE* %45)
  store i32 %call92, i32* %c, align 4
  %46 = load i32, i32* %c, align 4
  %cmp93 = icmp eq i32 %46, 85
  %frombool94 = zext i1 %cmp93 to i8
  store i8 %frombool94, i8* %defunflag, align 1
  br label %if.end.96

if.else.95:                                       ; preds = %if.else.81
  br label %while.cond

if.end.96:                                        ; preds = %if.end.91
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.80
  %47 = load i8, i8* @generate_globals, align 1
  %tobool98 = trunc i8 %47 to i1
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.109

land.lhs.true.99:                                 ; preds = %if.end.97
  %48 = load i8, i8* %defvarflag, align 1
  %tobool100 = trunc i8 %48 to i1
  br i1 %tobool100, label %lor.lhs.false, label %land.lhs.true.104

lor.lhs.false:                                    ; preds = %land.lhs.true.99
  %49 = load i8, i8* %defvarperbufferflag, align 1
  %tobool101 = trunc i8 %49 to i1
  br i1 %tobool101, label %land.lhs.true.104, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false
  %50 = load i32, i32* %type, align 4
  %cmp103 = icmp eq i32 %50, 0
  br i1 %cmp103, label %land.lhs.true.104, label %if.end.109

land.lhs.true.104:                                ; preds = %lor.lhs.false.102, %lor.lhs.false, %land.lhs.true.99
  %51 = load i8, i8* %defunflag, align 1
  %tobool105 = trunc i8 %51 to i1
  br i1 %tobool105, label %if.end.109, label %land.lhs.true.106

land.lhs.true.106:                                ; preds = %land.lhs.true.104
  %52 = load i32, i32* %type, align 4
  %cmp107 = icmp ne i32 %52, 4
  br i1 %cmp107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %land.lhs.true.106
  br label %while.cond

if.end.109:                                       ; preds = %land.lhs.true.106, %land.lhs.true.104, %lor.lhs.false.102, %if.end.97
  br label %while.cond.110

while.cond.110:                                   ; preds = %if.end.115, %if.end.109
  %53 = load i32, i32* %c, align 4
  %cmp111 = icmp ne i32 %53, 40
  br i1 %cmp111, label %while.body.112, label %while.end.117

while.body.112:                                   ; preds = %while.cond.110
  %54 = load i32, i32* %c, align 4
  %cmp113 = icmp slt i32 %54, 0
  br i1 %cmp113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %while.body.112
  br label %eof

if.end.115:                                       ; preds = %while.body.112
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call116 = call i32 @_IO_getc(%struct._IO_FILE* %55)
  store i32 %call116, i32* %c, align 4
  br label %while.cond.110

while.end.117:                                    ; preds = %while.cond.110
  %56 = load i32, i32* %type, align 4
  %cmp118 = icmp ne i32 %56, 4
  br i1 %cmp118, label %if.then.119, label %if.end.125

if.then.119:                                      ; preds = %while.end.117
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call120 = call i32 @_IO_getc(%struct._IO_FILE* %57)
  store i32 %call120, i32* %c, align 4
  %58 = load i32, i32* %c, align 4
  %cmp121 = icmp ne i32 %58, 34
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.119
  br label %while.cond

if.end.123:                                       ; preds = %if.then.119
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call124 = call i32 @read_c_string_or_comment(%struct._IO_FILE* %59, i32 -1, i1 zeroext false, i8* null)
  store i32 %call124, i32* %c, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.123, %while.end.117
  %60 = load i8, i8* @generate_globals, align 1
  %tobool126 = trunc i8 %60 to i1
  br i1 %tobool126, label %if.then.127, label %if.end.2365

if.then.127:                                      ; preds = %if.end.125
  store i64 0, i64* %i, align 8
  store i8* null, i8** %svalue, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then.127
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call128 = call i32 @_IO_getc(%struct._IO_FILE* %61)
  store i32 %call128, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %62 = load i32, i32* %c, align 4
  %cmp129 = icmp eq i32 %62, 44
  br i1 %cmp129, label %lor.end, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %do.cond
  %63 = load i32, i32* %c, align 4
  %cmp131 = icmp eq i32 %63, 32
  br i1 %cmp131, label %lor.end, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %lor.lhs.false.130
  %64 = load i32, i32* %c, align 4
  %cmp133 = icmp eq i32 %64, 9
  br i1 %cmp133, label %lor.end, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.132
  %65 = load i32, i32* %c, align 4
  %cmp135 = icmp eq i32 %65, 10
  br i1 %cmp135, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.134
  %66 = load i32, i32* %c, align 4
  %cmp136 = icmp eq i32 %66, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.134, %lor.lhs.false.132, %lor.lhs.false.130, %do.cond
  %67 = phi i1 [ true, %lor.lhs.false.134 ], [ true, %lor.lhs.false.132 ], [ true, %lor.lhs.false.130 ], [ true, %do.cond ], [ %cmp136, %lor.rhs ]
  br i1 %67, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  br label %do.body.137

do.body.137:                                      ; preds = %lor.end.157, %do.end
  %68 = load i32, i32* %c, align 4
  %cmp138 = icmp slt i32 %68, 0
  br i1 %cmp138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.body.137
  br label %eof

if.end.140:                                       ; preds = %do.body.137
  %69 = load i32, i32* %c, align 4
  %conv = trunc i32 %69 to i8
  %70 = load i64, i64* %i, align 8
  %inc = add nsw i64 %70, 1
  store i64 %inc, i64* %i, align 8
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @input_buffer, i32 0, i64 %70
  store i8 %conv, i8* %arrayidx, align 1
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call141 = call i32 @_IO_getc(%struct._IO_FILE* %71)
  store i32 %call141, i32* %c, align 4
  br label %do.cond.142

do.cond.142:                                      ; preds = %if.end.140
  %72 = load i32, i32* %c, align 4
  %cmp143 = icmp eq i32 %72, 44
  br i1 %cmp143, label %lor.end.157, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %do.cond.142
  %73 = load i32, i32* %c, align 4
  %cmp146 = icmp eq i32 %73, 32
  br i1 %cmp146, label %lor.end.157, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %lor.lhs.false.145
  %74 = load i32, i32* %c, align 4
  %cmp149 = icmp eq i32 %74, 9
  br i1 %cmp149, label %lor.end.157, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %lor.lhs.false.148
  %75 = load i32, i32* %c, align 4
  %cmp152 = icmp eq i32 %75, 10
  br i1 %cmp152, label %lor.end.157, label %lor.rhs.154

lor.rhs.154:                                      ; preds = %lor.lhs.false.151
  %76 = load i32, i32* %c, align 4
  %cmp155 = icmp eq i32 %76, 13
  br label %lor.end.157

lor.end.157:                                      ; preds = %lor.rhs.154, %lor.lhs.false.151, %lor.lhs.false.148, %lor.lhs.false.145, %do.cond.142
  %77 = phi i1 [ true, %lor.lhs.false.151 ], [ true, %lor.lhs.false.148 ], [ true, %lor.lhs.false.145 ], [ true, %do.cond.142 ], [ %cmp155, %lor.rhs.154 ]
  %lnot158 = xor i1 %77, true
  br i1 %lnot158, label %do.body.137, label %do.end.159

do.end.159:                                       ; preds = %lor.end.157
  %78 = load i64, i64* %i, align 8
  %arrayidx160 = getelementptr inbounds [128 x i8], [128 x i8]* @input_buffer, i32 0, i64 %78
  store i8 0, i8* %arrayidx160, align 1
  %79 = load i64, i64* @scan_c_stream.name_size, align 8
  %80 = load i64, i64* %i, align 8
  %cmp161 = icmp sle i64 %79, %80
  br i1 %cmp161, label %if.then.163, label %if.end.2334

if.then.163:                                      ; preds = %do.end.159
  %81 = load i8*, i8** @scan_c_stream.name, align 8
  call void @free(i8* %81) #5
  %82 = load i64, i64* %i, align 8
  %add = add nsw i64 %82, 1
  store i64 %add, i64* @scan_c_stream.name_size, align 8
  br i1 false, label %cond.true, label %cond.false.639

cond.true:                                        ; preds = %if.then.163
  br i1 false, label %cond.true.164, label %cond.false.424

cond.true.164:                                    ; preds = %cond.true
  %83 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv165 = trunc i64 %83 to i8
  %conv166 = sext i8 %conv165 to i32
  %add167 = add nsw i32 0, %conv166
  %mul = mul nsw i32 0, %add167
  %sub = sub nsw i32 %mul, 1
  %cmp168 = icmp slt i32 %sub, 0
  br i1 %cmp168, label %cond.true.170, label %cond.false

cond.true.170:                                    ; preds = %cond.true.164
  %84 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv171 = trunc i64 %84 to i8
  %conv172 = sext i8 %conv171 to i32
  %add173 = add nsw i32 0, %conv172
  %mul174 = mul nsw i32 0, %add173
  %add175 = add nsw i32 %mul174, 0
  %neg = xor i32 %add175, -1
  %cmp176 = icmp eq i32 %neg, -1
  %conv177 = zext i1 %cmp176 to i32
  %sub178 = sub nsw i32 0, %conv177
  %85 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv179 = trunc i64 %85 to i8
  %conv180 = sext i8 %conv179 to i32
  %add181 = add nsw i32 0, %conv180
  %mul182 = mul nsw i32 0, %add181
  %add183 = add nsw i32 %mul182, 1
  %shl = shl i32 %add183, 30
  %sub184 = sub nsw i32 %shl, 1
  %mul185 = mul nsw i32 %sub184, 2
  %add186 = add nsw i32 %mul185, 1
  %sub187 = sub nsw i32 %sub178, %add186
  br label %cond.end

cond.false:                                       ; preds = %cond.true.164
  %86 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv188 = trunc i64 %86 to i8
  %conv189 = sext i8 %conv188 to i32
  %add190 = add nsw i32 0, %conv189
  %mul191 = mul nsw i32 0, %add190
  %add192 = add nsw i32 %mul191, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.170
  %cond = phi i32 [ %sub187, %cond.true.170 ], [ %add192, %cond.false ]
  %cmp193 = icmp eq i32 %cond, 0
  br i1 %cmp193, label %land.lhs.true.195, label %lor.lhs.false.200

land.lhs.true.195:                                ; preds = %cond.end
  %87 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv196 = trunc i64 %87 to i8
  %conv197 = sext i8 %conv196 to i32
  %cmp198 = icmp slt i32 %conv197, 0
  br i1 %cmp198, label %cond.true.378, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %land.lhs.true.195, %cond.end
  br i1 false, label %cond.true.201, label %cond.false.279

cond.true.201:                                    ; preds = %lor.lhs.false.200
  %88 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv202 = trunc i64 %88 to i8
  %conv203 = sext i8 %conv202 to i32
  %cmp204 = icmp slt i32 %conv203, 0
  br i1 %cmp204, label %cond.true.206, label %cond.false.236

cond.true.206:                                    ; preds = %cond.true.201
  %89 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv207 = trunc i64 %89 to i8
  %conv208 = sext i8 %conv207 to i32
  %90 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv209 = trunc i64 %90 to i8
  %conv210 = sext i8 %conv209 to i32
  %add211 = add nsw i32 0, %conv210
  %mul212 = mul nsw i32 0, %add211
  %sub213 = sub nsw i32 %mul212, 1
  %cmp214 = icmp slt i32 %sub213, 0
  br i1 %cmp214, label %cond.true.216, label %cond.false.226

cond.true.216:                                    ; preds = %cond.true.206
  %91 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv217 = trunc i64 %91 to i8
  %conv218 = sext i8 %conv217 to i32
  %add219 = add nsw i32 0, %conv218
  %mul220 = mul nsw i32 0, %add219
  %add221 = add nsw i32 %mul220, 1
  %shl222 = shl i32 %add221, 30
  %sub223 = sub nsw i32 %shl222, 1
  %mul224 = mul nsw i32 %sub223, 2
  %add225 = add nsw i32 %mul224, 1
  br label %cond.end.232

cond.false.226:                                   ; preds = %cond.true.206
  %92 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv227 = trunc i64 %92 to i8
  %conv228 = sext i8 %conv227 to i32
  %add229 = add nsw i32 0, %conv228
  %mul230 = mul nsw i32 0, %add229
  %sub231 = sub nsw i32 %mul230, 1
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.226, %cond.true.216
  %cond233 = phi i32 [ %add225, %cond.true.216 ], [ %sub231, %cond.false.226 ]
  %div = sdiv i32 %cond233, 2
  %cmp234 = icmp slt i32 %conv208, %div
  br i1 %cmp234, label %cond.true.378, label %lor.lhs.false.358

cond.false.236:                                   ; preds = %cond.true.201
  br i1 false, label %cond.true.237, label %cond.false.238

cond.true.237:                                    ; preds = %cond.false.236
  br i1 false, label %cond.true.378, label %lor.lhs.false.358

cond.false.238:                                   ; preds = %cond.false.236
  %93 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv239 = trunc i64 %93 to i8
  %conv240 = sext i8 %conv239 to i32
  %add241 = add nsw i32 0, %conv240
  %mul242 = mul nsw i32 0, %add241
  %sub243 = sub nsw i32 %mul242, 1
  %cmp244 = icmp slt i32 %sub243, 0
  br i1 %cmp244, label %cond.true.246, label %cond.false.266

cond.true.246:                                    ; preds = %cond.false.238
  %94 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv247 = trunc i64 %94 to i8
  %conv248 = sext i8 %conv247 to i32
  %add249 = add nsw i32 0, %conv248
  %mul250 = mul nsw i32 0, %add249
  %add251 = add nsw i32 %mul250, 0
  %neg252 = xor i32 %add251, -1
  %cmp253 = icmp eq i32 %neg252, -1
  %conv254 = zext i1 %cmp253 to i32
  %sub255 = sub nsw i32 0, %conv254
  %95 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv256 = trunc i64 %95 to i8
  %conv257 = sext i8 %conv256 to i32
  %add258 = add nsw i32 0, %conv257
  %mul259 = mul nsw i32 0, %add258
  %add260 = add nsw i32 %mul259, 1
  %shl261 = shl i32 %add260, 30
  %sub262 = sub nsw i32 %shl261, 1
  %mul263 = mul nsw i32 %sub262, 2
  %add264 = add nsw i32 %mul263, 1
  %sub265 = sub nsw i32 %sub255, %add264
  br label %cond.end.272

cond.false.266:                                   ; preds = %cond.false.238
  %96 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv267 = trunc i64 %96 to i8
  %conv268 = sext i8 %conv267 to i32
  %add269 = add nsw i32 0, %conv268
  %mul270 = mul nsw i32 0, %add269
  %add271 = add nsw i32 %mul270, 0
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.266, %cond.true.246
  %cond273 = phi i32 [ %sub265, %cond.true.246 ], [ %add271, %cond.false.266 ]
  %div274 = sdiv i32 %cond273, 2
  %97 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv275 = trunc i64 %97 to i8
  %conv276 = sext i8 %conv275 to i32
  %cmp277 = icmp slt i32 %div274, %conv276
  br i1 %cmp277, label %cond.true.378, label %lor.lhs.false.358

cond.false.279:                                   ; preds = %lor.lhs.false.200
  br i1 false, label %cond.true.280, label %cond.false.281

cond.true.280:                                    ; preds = %cond.false.279
  br i1 false, label %cond.true.378, label %lor.lhs.false.358

cond.false.281:                                   ; preds = %cond.false.279
  %98 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv282 = trunc i64 %98 to i8
  %conv283 = sext i8 %conv282 to i32
  %cmp284 = icmp slt i32 %conv283, 0
  br i1 %cmp284, label %cond.true.286, label %cond.false.327

cond.true.286:                                    ; preds = %cond.false.281
  %99 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv287 = trunc i64 %99 to i8
  %conv288 = sext i8 %conv287 to i32
  %100 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv289 = trunc i64 %100 to i8
  %conv290 = sext i8 %conv289 to i32
  %add291 = add nsw i32 0, %conv290
  %mul292 = mul nsw i32 0, %add291
  %sub293 = sub nsw i32 %mul292, 1
  %cmp294 = icmp slt i32 %sub293, 0
  br i1 %cmp294, label %cond.true.296, label %cond.false.316

cond.true.296:                                    ; preds = %cond.true.286
  %101 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv297 = trunc i64 %101 to i8
  %conv298 = sext i8 %conv297 to i32
  %add299 = add nsw i32 0, %conv298
  %mul300 = mul nsw i32 0, %add299
  %add301 = add nsw i32 %mul300, 0
  %neg302 = xor i32 %add301, -1
  %cmp303 = icmp eq i32 %neg302, -1
  %conv304 = zext i1 %cmp303 to i32
  %sub305 = sub nsw i32 0, %conv304
  %102 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv306 = trunc i64 %102 to i8
  %conv307 = sext i8 %conv306 to i32
  %add308 = add nsw i32 0, %conv307
  %mul309 = mul nsw i32 0, %add308
  %add310 = add nsw i32 %mul309, 1
  %shl311 = shl i32 %add310, 30
  %sub312 = sub nsw i32 %shl311, 1
  %mul313 = mul nsw i32 %sub312, 2
  %add314 = add nsw i32 %mul313, 1
  %sub315 = sub nsw i32 %sub305, %add314
  br label %cond.end.322

cond.false.316:                                   ; preds = %cond.true.286
  %103 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv317 = trunc i64 %103 to i8
  %conv318 = sext i8 %conv317 to i32
  %add319 = add nsw i32 0, %conv318
  %mul320 = mul nsw i32 0, %add319
  %add321 = add nsw i32 %mul320, 0
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.316, %cond.true.296
  %cond323 = phi i32 [ %sub315, %cond.true.296 ], [ %add321, %cond.false.316 ]
  %div324 = sdiv i32 %cond323, 2
  %cmp325 = icmp slt i32 %conv288, %div324
  br i1 %cmp325, label %cond.true.378, label %lor.lhs.false.358

cond.false.327:                                   ; preds = %cond.false.281
  %104 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv328 = trunc i64 %104 to i8
  %conv329 = sext i8 %conv328 to i32
  %add330 = add nsw i32 0, %conv329
  %mul331 = mul nsw i32 0, %add330
  %sub332 = sub nsw i32 %mul331, 1
  %cmp333 = icmp slt i32 %sub332, 0
  br i1 %cmp333, label %cond.true.335, label %cond.false.345

cond.true.335:                                    ; preds = %cond.false.327
  %105 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv336 = trunc i64 %105 to i8
  %conv337 = sext i8 %conv336 to i32
  %add338 = add nsw i32 0, %conv337
  %mul339 = mul nsw i32 0, %add338
  %add340 = add nsw i32 %mul339, 1
  %shl341 = shl i32 %add340, 30
  %sub342 = sub nsw i32 %shl341, 1
  %mul343 = mul nsw i32 %sub342, 2
  %add344 = add nsw i32 %mul343, 1
  br label %cond.end.351

cond.false.345:                                   ; preds = %cond.false.327
  %106 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv346 = trunc i64 %106 to i8
  %conv347 = sext i8 %conv346 to i32
  %add348 = add nsw i32 0, %conv347
  %mul349 = mul nsw i32 0, %add348
  %sub350 = sub nsw i32 %mul349, 1
  br label %cond.end.351

cond.end.351:                                     ; preds = %cond.false.345, %cond.true.335
  %cond352 = phi i32 [ %add344, %cond.true.335 ], [ %sub350, %cond.false.345 ]
  %div353 = sdiv i32 %cond352, 2
  %107 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv354 = trunc i64 %107 to i8
  %conv355 = sext i8 %conv354 to i32
  %cmp356 = icmp slt i32 %div353, %conv355
  br i1 %cmp356, label %cond.true.378, label %lor.lhs.false.358

lor.lhs.false.358:                                ; preds = %cond.end.351, %cond.end.322, %cond.true.280, %cond.end.272, %cond.true.237, %cond.end.232
  %108 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv359 = trunc i64 %108 to i8
  %conv360 = sext i8 %conv359 to i32
  %mul361 = mul nsw i32 %conv360, 2
  %mul362 = mul nsw i32 0, %mul361
  %sub363 = sub nsw i32 %mul362, 1
  %cmp364 = icmp slt i32 %sub363, 0
  br i1 %cmp364, label %land.lhs.true.366, label %lor.lhs.false.372

land.lhs.true.366:                                ; preds = %lor.lhs.false.358
  %109 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv367 = trunc i64 %109 to i8
  %conv368 = sext i8 %conv367 to i32
  %mul369 = mul nsw i32 %conv368, 2
  %cmp370 = icmp slt i32 %mul369, -128
  br i1 %cmp370, label %cond.true.378, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %land.lhs.true.366, %lor.lhs.false.358
  %110 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv373 = trunc i64 %110 to i8
  %conv374 = sext i8 %conv373 to i32
  %mul375 = mul nsw i32 %conv374, 2
  %cmp376 = icmp slt i32 127, %mul375
  br i1 %cmp376, label %cond.true.378, label %cond.false.401

cond.true.378:                                    ; preds = %lor.lhs.false.372, %land.lhs.true.366, %cond.end.351, %cond.end.322, %cond.true.280, %cond.end.272, %cond.true.237, %cond.end.232, %land.lhs.true.195
  %111 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv379 = trunc i64 %111 to i8
  %conv380 = zext i8 %conv379 to i32
  %mul381 = mul nsw i32 %conv380, 2
  %cmp382 = icmp sle i32 %mul381, 127
  br i1 %cmp382, label %cond.true.384, label %cond.false.390

cond.true.384:                                    ; preds = %cond.true.378
  %112 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv385 = trunc i64 %112 to i8
  %conv386 = zext i8 %conv385 to i32
  %mul387 = mul nsw i32 %conv386, 2
  %conv388 = trunc i32 %mul387 to i8
  %conv389 = sext i8 %conv388 to i32
  br label %cond.end.398

cond.false.390:                                   ; preds = %cond.true.378
  %113 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv391 = trunc i64 %113 to i8
  %conv392 = zext i8 %conv391 to i32
  %mul393 = mul nsw i32 %conv392, 2
  %sub394 = sub nsw i32 %mul393, -128
  %conv395 = trunc i32 %sub394 to i8
  %conv396 = sext i8 %conv395 to i32
  %add397 = add nsw i32 %conv396, -128
  br label %cond.end.398

cond.end.398:                                     ; preds = %cond.false.390, %cond.true.384
  %cond399 = phi i32 [ %conv389, %cond.true.384 ], [ %add397, %cond.false.390 ]
  %conv400 = sext i32 %cond399 to i64
  store i64 %conv400, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.401:                                   ; preds = %lor.lhs.false.372
  %114 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv402 = trunc i64 %114 to i8
  %conv403 = zext i8 %conv402 to i32
  %mul404 = mul nsw i32 %conv403, 2
  %cmp405 = icmp sle i32 %mul404, 127
  br i1 %cmp405, label %cond.true.407, label %cond.false.413

cond.true.407:                                    ; preds = %cond.false.401
  %115 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv408 = trunc i64 %115 to i8
  %conv409 = zext i8 %conv408 to i32
  %mul410 = mul nsw i32 %conv409, 2
  %conv411 = trunc i32 %mul410 to i8
  %conv412 = sext i8 %conv411 to i32
  br label %cond.end.421

cond.false.413:                                   ; preds = %cond.false.401
  %116 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv414 = trunc i64 %116 to i8
  %conv415 = zext i8 %conv414 to i32
  %mul416 = mul nsw i32 %conv415, 2
  %sub417 = sub nsw i32 %mul416, -128
  %conv418 = trunc i32 %sub417 to i8
  %conv419 = sext i8 %conv418 to i32
  %add420 = add nsw i32 %conv419, -128
  br label %cond.end.421

cond.end.421:                                     ; preds = %cond.false.413, %cond.true.407
  %cond422 = phi i32 [ %conv412, %cond.true.407 ], [ %add420, %cond.false.413 ]
  %conv423 = sext i32 %cond422 to i64
  store i64 %conv423, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

cond.false.424:                                   ; preds = %cond.true
  %117 = load i64, i64* @scan_c_stream.name_size, align 8
  %add425 = add nsw i64 0, %117
  %mul426 = mul nsw i64 0, %add425
  %sub427 = sub nsw i64 %mul426, 1
  %cmp428 = icmp slt i64 %sub427, 0
  br i1 %cmp428, label %cond.true.430, label %cond.false.447

cond.true.430:                                    ; preds = %cond.false.424
  %118 = load i64, i64* @scan_c_stream.name_size, align 8
  %add431 = add nsw i64 0, %118
  %mul432 = mul nsw i64 0, %add431
  %add433 = add nsw i64 %mul432, 0
  %neg434 = xor i64 %add433, -1
  %cmp435 = icmp eq i64 %neg434, -1
  %conv436 = zext i1 %cmp435 to i32
  %sub437 = sub nsw i32 0, %conv436
  %conv438 = sext i32 %sub437 to i64
  %119 = load i64, i64* @scan_c_stream.name_size, align 8
  %add439 = add nsw i64 0, %119
  %mul440 = mul nsw i64 0, %add439
  %add441 = add nsw i64 %mul440, 1
  %shl442 = shl i64 %add441, 62
  %sub443 = sub nsw i64 %shl442, 1
  %mul444 = mul nsw i64 %sub443, 2
  %add445 = add nsw i64 %mul444, 1
  %sub446 = sub nsw i64 %conv438, %add445
  br label %cond.end.451

cond.false.447:                                   ; preds = %cond.false.424
  %120 = load i64, i64* @scan_c_stream.name_size, align 8
  %add448 = add nsw i64 0, %120
  %mul449 = mul nsw i64 0, %add448
  %add450 = add nsw i64 %mul449, 0
  br label %cond.end.451

cond.end.451:                                     ; preds = %cond.false.447, %cond.true.430
  %cond452 = phi i64 [ %sub446, %cond.true.430 ], [ %add450, %cond.false.447 ]
  %cmp453 = icmp eq i64 %cond452, 0
  br i1 %cmp453, label %land.lhs.true.455, label %lor.lhs.false.458

land.lhs.true.455:                                ; preds = %cond.end.451
  %121 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp456 = icmp slt i64 %121, 0
  br i1 %cmp456, label %cond.true.593, label %lor.lhs.false.458

lor.lhs.false.458:                                ; preds = %land.lhs.true.455, %cond.end.451
  br i1 false, label %cond.true.459, label %cond.false.519

cond.true.459:                                    ; preds = %lor.lhs.false.458
  %122 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp460 = icmp slt i64 %122, 0
  br i1 %cmp460, label %cond.true.462, label %cond.false.485

cond.true.462:                                    ; preds = %cond.true.459
  %123 = load i64, i64* @scan_c_stream.name_size, align 8
  %124 = load i64, i64* @scan_c_stream.name_size, align 8
  %add463 = add nsw i64 0, %124
  %mul464 = mul nsw i64 0, %add463
  %sub465 = sub nsw i64 %mul464, 1
  %cmp466 = icmp slt i64 %sub465, 0
  br i1 %cmp466, label %cond.true.468, label %cond.false.476

cond.true.468:                                    ; preds = %cond.true.462
  %125 = load i64, i64* @scan_c_stream.name_size, align 8
  %add469 = add nsw i64 0, %125
  %mul470 = mul nsw i64 0, %add469
  %add471 = add nsw i64 %mul470, 1
  %shl472 = shl i64 %add471, 62
  %sub473 = sub nsw i64 %shl472, 1
  %mul474 = mul nsw i64 %sub473, 2
  %add475 = add nsw i64 %mul474, 1
  br label %cond.end.480

cond.false.476:                                   ; preds = %cond.true.462
  %126 = load i64, i64* @scan_c_stream.name_size, align 8
  %add477 = add nsw i64 0, %126
  %mul478 = mul nsw i64 0, %add477
  %sub479 = sub nsw i64 %mul478, 1
  br label %cond.end.480

cond.end.480:                                     ; preds = %cond.false.476, %cond.true.468
  %cond481 = phi i64 [ %add475, %cond.true.468 ], [ %sub479, %cond.false.476 ]
  %div482 = sdiv i64 %cond481, 2
  %cmp483 = icmp slt i64 %123, %div482
  br i1 %cmp483, label %cond.true.593, label %lor.lhs.false.579

cond.false.485:                                   ; preds = %cond.true.459
  br i1 false, label %cond.true.486, label %cond.false.487

cond.true.486:                                    ; preds = %cond.false.485
  br i1 false, label %cond.true.593, label %lor.lhs.false.579

cond.false.487:                                   ; preds = %cond.false.485
  %127 = load i64, i64* @scan_c_stream.name_size, align 8
  %add488 = add nsw i64 0, %127
  %mul489 = mul nsw i64 0, %add488
  %sub490 = sub nsw i64 %mul489, 1
  %cmp491 = icmp slt i64 %sub490, 0
  br i1 %cmp491, label %cond.true.493, label %cond.false.510

cond.true.493:                                    ; preds = %cond.false.487
  %128 = load i64, i64* @scan_c_stream.name_size, align 8
  %add494 = add nsw i64 0, %128
  %mul495 = mul nsw i64 0, %add494
  %add496 = add nsw i64 %mul495, 0
  %neg497 = xor i64 %add496, -1
  %cmp498 = icmp eq i64 %neg497, -1
  %conv499 = zext i1 %cmp498 to i32
  %sub500 = sub nsw i32 0, %conv499
  %conv501 = sext i32 %sub500 to i64
  %129 = load i64, i64* @scan_c_stream.name_size, align 8
  %add502 = add nsw i64 0, %129
  %mul503 = mul nsw i64 0, %add502
  %add504 = add nsw i64 %mul503, 1
  %shl505 = shl i64 %add504, 62
  %sub506 = sub nsw i64 %shl505, 1
  %mul507 = mul nsw i64 %sub506, 2
  %add508 = add nsw i64 %mul507, 1
  %sub509 = sub nsw i64 %conv501, %add508
  br label %cond.end.514

cond.false.510:                                   ; preds = %cond.false.487
  %130 = load i64, i64* @scan_c_stream.name_size, align 8
  %add511 = add nsw i64 0, %130
  %mul512 = mul nsw i64 0, %add511
  %add513 = add nsw i64 %mul512, 0
  br label %cond.end.514

cond.end.514:                                     ; preds = %cond.false.510, %cond.true.493
  %cond515 = phi i64 [ %sub509, %cond.true.493 ], [ %add513, %cond.false.510 ]
  %div516 = sdiv i64 %cond515, 2
  %131 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp517 = icmp slt i64 %div516, %131
  br i1 %cmp517, label %cond.true.593, label %lor.lhs.false.579

cond.false.519:                                   ; preds = %lor.lhs.false.458
  br i1 false, label %cond.true.520, label %cond.false.521

cond.true.520:                                    ; preds = %cond.false.519
  br i1 false, label %cond.true.593, label %lor.lhs.false.579

cond.false.521:                                   ; preds = %cond.false.519
  %132 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp522 = icmp slt i64 %132, 0
  br i1 %cmp522, label %cond.true.524, label %cond.false.556

cond.true.524:                                    ; preds = %cond.false.521
  %133 = load i64, i64* @scan_c_stream.name_size, align 8
  %134 = load i64, i64* @scan_c_stream.name_size, align 8
  %add525 = add nsw i64 0, %134
  %mul526 = mul nsw i64 0, %add525
  %sub527 = sub nsw i64 %mul526, 1
  %cmp528 = icmp slt i64 %sub527, 0
  br i1 %cmp528, label %cond.true.530, label %cond.false.547

cond.true.530:                                    ; preds = %cond.true.524
  %135 = load i64, i64* @scan_c_stream.name_size, align 8
  %add531 = add nsw i64 0, %135
  %mul532 = mul nsw i64 0, %add531
  %add533 = add nsw i64 %mul532, 0
  %neg534 = xor i64 %add533, -1
  %cmp535 = icmp eq i64 %neg534, -1
  %conv536 = zext i1 %cmp535 to i32
  %sub537 = sub nsw i32 0, %conv536
  %conv538 = sext i32 %sub537 to i64
  %136 = load i64, i64* @scan_c_stream.name_size, align 8
  %add539 = add nsw i64 0, %136
  %mul540 = mul nsw i64 0, %add539
  %add541 = add nsw i64 %mul540, 1
  %shl542 = shl i64 %add541, 62
  %sub543 = sub nsw i64 %shl542, 1
  %mul544 = mul nsw i64 %sub543, 2
  %add545 = add nsw i64 %mul544, 1
  %sub546 = sub nsw i64 %conv538, %add545
  br label %cond.end.551

cond.false.547:                                   ; preds = %cond.true.524
  %137 = load i64, i64* @scan_c_stream.name_size, align 8
  %add548 = add nsw i64 0, %137
  %mul549 = mul nsw i64 0, %add548
  %add550 = add nsw i64 %mul549, 0
  br label %cond.end.551

cond.end.551:                                     ; preds = %cond.false.547, %cond.true.530
  %cond552 = phi i64 [ %sub546, %cond.true.530 ], [ %add550, %cond.false.547 ]
  %div553 = sdiv i64 %cond552, 2
  %cmp554 = icmp slt i64 %133, %div553
  br i1 %cmp554, label %cond.true.593, label %lor.lhs.false.579

cond.false.556:                                   ; preds = %cond.false.521
  %138 = load i64, i64* @scan_c_stream.name_size, align 8
  %add557 = add nsw i64 0, %138
  %mul558 = mul nsw i64 0, %add557
  %sub559 = sub nsw i64 %mul558, 1
  %cmp560 = icmp slt i64 %sub559, 0
  br i1 %cmp560, label %cond.true.562, label %cond.false.570

cond.true.562:                                    ; preds = %cond.false.556
  %139 = load i64, i64* @scan_c_stream.name_size, align 8
  %add563 = add nsw i64 0, %139
  %mul564 = mul nsw i64 0, %add563
  %add565 = add nsw i64 %mul564, 1
  %shl566 = shl i64 %add565, 62
  %sub567 = sub nsw i64 %shl566, 1
  %mul568 = mul nsw i64 %sub567, 2
  %add569 = add nsw i64 %mul568, 1
  br label %cond.end.574

cond.false.570:                                   ; preds = %cond.false.556
  %140 = load i64, i64* @scan_c_stream.name_size, align 8
  %add571 = add nsw i64 0, %140
  %mul572 = mul nsw i64 0, %add571
  %sub573 = sub nsw i64 %mul572, 1
  br label %cond.end.574

cond.end.574:                                     ; preds = %cond.false.570, %cond.true.562
  %cond575 = phi i64 [ %add569, %cond.true.562 ], [ %sub573, %cond.false.570 ]
  %div576 = sdiv i64 %cond575, 2
  %141 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp577 = icmp slt i64 %div576, %141
  br i1 %cmp577, label %cond.true.593, label %lor.lhs.false.579

lor.lhs.false.579:                                ; preds = %cond.end.574, %cond.end.551, %cond.true.520, %cond.end.514, %cond.true.486, %cond.end.480
  %142 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul580 = mul nsw i64 %142, 2
  %mul581 = mul nsw i64 0, %mul580
  %sub582 = sub nsw i64 %mul581, 1
  %cmp583 = icmp slt i64 %sub582, 0
  br i1 %cmp583, label %land.lhs.true.585, label %lor.lhs.false.589

land.lhs.true.585:                                ; preds = %lor.lhs.false.579
  %143 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul586 = mul nsw i64 %143, 2
  %cmp587 = icmp slt i64 %mul586, -128
  br i1 %cmp587, label %cond.true.593, label %lor.lhs.false.589

lor.lhs.false.589:                                ; preds = %land.lhs.true.585, %lor.lhs.false.579
  %144 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul590 = mul nsw i64 %144, 2
  %cmp591 = icmp slt i64 127, %mul590
  br i1 %cmp591, label %cond.true.593, label %cond.false.616

cond.true.593:                                    ; preds = %lor.lhs.false.589, %land.lhs.true.585, %cond.end.574, %cond.end.551, %cond.true.520, %cond.end.514, %cond.true.486, %cond.end.480, %land.lhs.true.455
  %145 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv594 = trunc i64 %145 to i8
  %conv595 = zext i8 %conv594 to i32
  %mul596 = mul nsw i32 %conv595, 2
  %cmp597 = icmp sle i32 %mul596, 127
  br i1 %cmp597, label %cond.true.599, label %cond.false.605

cond.true.599:                                    ; preds = %cond.true.593
  %146 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv600 = trunc i64 %146 to i8
  %conv601 = zext i8 %conv600 to i32
  %mul602 = mul nsw i32 %conv601, 2
  %conv603 = trunc i32 %mul602 to i8
  %conv604 = sext i8 %conv603 to i32
  br label %cond.end.613

cond.false.605:                                   ; preds = %cond.true.593
  %147 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv606 = trunc i64 %147 to i8
  %conv607 = zext i8 %conv606 to i32
  %mul608 = mul nsw i32 %conv607, 2
  %sub609 = sub nsw i32 %mul608, -128
  %conv610 = trunc i32 %sub609 to i8
  %conv611 = sext i8 %conv610 to i32
  %add612 = add nsw i32 %conv611, -128
  br label %cond.end.613

cond.end.613:                                     ; preds = %cond.false.605, %cond.true.599
  %cond614 = phi i32 [ %conv604, %cond.true.599 ], [ %add612, %cond.false.605 ]
  %conv615 = sext i32 %cond614 to i64
  store i64 %conv615, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.616:                                   ; preds = %lor.lhs.false.589
  %148 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv617 = trunc i64 %148 to i8
  %conv618 = zext i8 %conv617 to i32
  %mul619 = mul nsw i32 %conv618, 2
  %cmp620 = icmp sle i32 %mul619, 127
  br i1 %cmp620, label %cond.true.622, label %cond.false.628

cond.true.622:                                    ; preds = %cond.false.616
  %149 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv623 = trunc i64 %149 to i8
  %conv624 = zext i8 %conv623 to i32
  %mul625 = mul nsw i32 %conv624, 2
  %conv626 = trunc i32 %mul625 to i8
  %conv627 = sext i8 %conv626 to i32
  br label %cond.end.636

cond.false.628:                                   ; preds = %cond.false.616
  %150 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv629 = trunc i64 %150 to i8
  %conv630 = zext i8 %conv629 to i32
  %mul631 = mul nsw i32 %conv630, 2
  %sub632 = sub nsw i32 %mul631, -128
  %conv633 = trunc i32 %sub632 to i8
  %conv634 = sext i8 %conv633 to i32
  %add635 = add nsw i32 %conv634, -128
  br label %cond.end.636

cond.end.636:                                     ; preds = %cond.false.628, %cond.true.622
  %cond637 = phi i32 [ %conv627, %cond.true.622 ], [ %add635, %cond.false.628 ]
  %conv638 = sext i32 %cond637 to i64
  store i64 %conv638, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

cond.false.639:                                   ; preds = %if.then.163
  br i1 false, label %cond.true.640, label %cond.false.1124

cond.true.640:                                    ; preds = %cond.false.639
  br i1 false, label %cond.true.641, label %cond.false.909

cond.true.641:                                    ; preds = %cond.true.640
  %151 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv642 = trunc i64 %151 to i16
  %conv643 = sext i16 %conv642 to i32
  %add644 = add nsw i32 0, %conv643
  %mul645 = mul nsw i32 0, %add644
  %sub646 = sub nsw i32 %mul645, 1
  %cmp647 = icmp slt i32 %sub646, 0
  br i1 %cmp647, label %cond.true.649, label %cond.false.669

cond.true.649:                                    ; preds = %cond.true.641
  %152 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv650 = trunc i64 %152 to i16
  %conv651 = sext i16 %conv650 to i32
  %add652 = add nsw i32 0, %conv651
  %mul653 = mul nsw i32 0, %add652
  %add654 = add nsw i32 %mul653, 0
  %neg655 = xor i32 %add654, -1
  %cmp656 = icmp eq i32 %neg655, -1
  %conv657 = zext i1 %cmp656 to i32
  %sub658 = sub nsw i32 0, %conv657
  %153 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv659 = trunc i64 %153 to i16
  %conv660 = sext i16 %conv659 to i32
  %add661 = add nsw i32 0, %conv660
  %mul662 = mul nsw i32 0, %add661
  %add663 = add nsw i32 %mul662, 1
  %shl664 = shl i32 %add663, 30
  %sub665 = sub nsw i32 %shl664, 1
  %mul666 = mul nsw i32 %sub665, 2
  %add667 = add nsw i32 %mul666, 1
  %sub668 = sub nsw i32 %sub658, %add667
  br label %cond.end.675

cond.false.669:                                   ; preds = %cond.true.641
  %154 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv670 = trunc i64 %154 to i16
  %conv671 = sext i16 %conv670 to i32
  %add672 = add nsw i32 0, %conv671
  %mul673 = mul nsw i32 0, %add672
  %add674 = add nsw i32 %mul673, 0
  br label %cond.end.675

cond.end.675:                                     ; preds = %cond.false.669, %cond.true.649
  %cond676 = phi i32 [ %sub668, %cond.true.649 ], [ %add674, %cond.false.669 ]
  %cmp677 = icmp eq i32 %cond676, 0
  br i1 %cmp677, label %land.lhs.true.679, label %lor.lhs.false.684

land.lhs.true.679:                                ; preds = %cond.end.675
  %155 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv680 = trunc i64 %155 to i16
  %conv681 = sext i16 %conv680 to i32
  %cmp682 = icmp slt i32 %conv681, 0
  br i1 %cmp682, label %cond.true.863, label %lor.lhs.false.684

lor.lhs.false.684:                                ; preds = %land.lhs.true.679, %cond.end.675
  br i1 false, label %cond.true.685, label %cond.false.764

cond.true.685:                                    ; preds = %lor.lhs.false.684
  %156 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv686 = trunc i64 %156 to i16
  %conv687 = sext i16 %conv686 to i32
  %cmp688 = icmp slt i32 %conv687, 0
  br i1 %cmp688, label %cond.true.690, label %cond.false.721

cond.true.690:                                    ; preds = %cond.true.685
  %157 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv691 = trunc i64 %157 to i16
  %conv692 = sext i16 %conv691 to i32
  %158 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv693 = trunc i64 %158 to i16
  %conv694 = sext i16 %conv693 to i32
  %add695 = add nsw i32 0, %conv694
  %mul696 = mul nsw i32 0, %add695
  %sub697 = sub nsw i32 %mul696, 1
  %cmp698 = icmp slt i32 %sub697, 0
  br i1 %cmp698, label %cond.true.700, label %cond.false.710

cond.true.700:                                    ; preds = %cond.true.690
  %159 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv701 = trunc i64 %159 to i16
  %conv702 = sext i16 %conv701 to i32
  %add703 = add nsw i32 0, %conv702
  %mul704 = mul nsw i32 0, %add703
  %add705 = add nsw i32 %mul704, 1
  %shl706 = shl i32 %add705, 30
  %sub707 = sub nsw i32 %shl706, 1
  %mul708 = mul nsw i32 %sub707, 2
  %add709 = add nsw i32 %mul708, 1
  br label %cond.end.716

cond.false.710:                                   ; preds = %cond.true.690
  %160 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv711 = trunc i64 %160 to i16
  %conv712 = sext i16 %conv711 to i32
  %add713 = add nsw i32 0, %conv712
  %mul714 = mul nsw i32 0, %add713
  %sub715 = sub nsw i32 %mul714, 1
  br label %cond.end.716

cond.end.716:                                     ; preds = %cond.false.710, %cond.true.700
  %cond717 = phi i32 [ %add709, %cond.true.700 ], [ %sub715, %cond.false.710 ]
  %div718 = sdiv i32 %cond717, 2
  %cmp719 = icmp slt i32 %conv692, %div718
  br i1 %cmp719, label %cond.true.863, label %lor.lhs.false.843

cond.false.721:                                   ; preds = %cond.true.685
  br i1 false, label %cond.true.722, label %cond.false.723

cond.true.722:                                    ; preds = %cond.false.721
  br i1 false, label %cond.true.863, label %lor.lhs.false.843

cond.false.723:                                   ; preds = %cond.false.721
  %161 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv724 = trunc i64 %161 to i16
  %conv725 = sext i16 %conv724 to i32
  %add726 = add nsw i32 0, %conv725
  %mul727 = mul nsw i32 0, %add726
  %sub728 = sub nsw i32 %mul727, 1
  %cmp729 = icmp slt i32 %sub728, 0
  br i1 %cmp729, label %cond.true.731, label %cond.false.751

cond.true.731:                                    ; preds = %cond.false.723
  %162 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv732 = trunc i64 %162 to i16
  %conv733 = sext i16 %conv732 to i32
  %add734 = add nsw i32 0, %conv733
  %mul735 = mul nsw i32 0, %add734
  %add736 = add nsw i32 %mul735, 0
  %neg737 = xor i32 %add736, -1
  %cmp738 = icmp eq i32 %neg737, -1
  %conv739 = zext i1 %cmp738 to i32
  %sub740 = sub nsw i32 0, %conv739
  %163 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv741 = trunc i64 %163 to i16
  %conv742 = sext i16 %conv741 to i32
  %add743 = add nsw i32 0, %conv742
  %mul744 = mul nsw i32 0, %add743
  %add745 = add nsw i32 %mul744, 1
  %shl746 = shl i32 %add745, 30
  %sub747 = sub nsw i32 %shl746, 1
  %mul748 = mul nsw i32 %sub747, 2
  %add749 = add nsw i32 %mul748, 1
  %sub750 = sub nsw i32 %sub740, %add749
  br label %cond.end.757

cond.false.751:                                   ; preds = %cond.false.723
  %164 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv752 = trunc i64 %164 to i16
  %conv753 = sext i16 %conv752 to i32
  %add754 = add nsw i32 0, %conv753
  %mul755 = mul nsw i32 0, %add754
  %add756 = add nsw i32 %mul755, 0
  br label %cond.end.757

cond.end.757:                                     ; preds = %cond.false.751, %cond.true.731
  %cond758 = phi i32 [ %sub750, %cond.true.731 ], [ %add756, %cond.false.751 ]
  %div759 = sdiv i32 %cond758, 2
  %165 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv760 = trunc i64 %165 to i16
  %conv761 = sext i16 %conv760 to i32
  %cmp762 = icmp slt i32 %div759, %conv761
  br i1 %cmp762, label %cond.true.863, label %lor.lhs.false.843

cond.false.764:                                   ; preds = %lor.lhs.false.684
  br i1 false, label %cond.true.765, label %cond.false.766

cond.true.765:                                    ; preds = %cond.false.764
  br i1 false, label %cond.true.863, label %lor.lhs.false.843

cond.false.766:                                   ; preds = %cond.false.764
  %166 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv767 = trunc i64 %166 to i16
  %conv768 = sext i16 %conv767 to i32
  %cmp769 = icmp slt i32 %conv768, 0
  br i1 %cmp769, label %cond.true.771, label %cond.false.812

cond.true.771:                                    ; preds = %cond.false.766
  %167 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv772 = trunc i64 %167 to i16
  %conv773 = sext i16 %conv772 to i32
  %168 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv774 = trunc i64 %168 to i16
  %conv775 = sext i16 %conv774 to i32
  %add776 = add nsw i32 0, %conv775
  %mul777 = mul nsw i32 0, %add776
  %sub778 = sub nsw i32 %mul777, 1
  %cmp779 = icmp slt i32 %sub778, 0
  br i1 %cmp779, label %cond.true.781, label %cond.false.801

cond.true.781:                                    ; preds = %cond.true.771
  %169 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv782 = trunc i64 %169 to i16
  %conv783 = sext i16 %conv782 to i32
  %add784 = add nsw i32 0, %conv783
  %mul785 = mul nsw i32 0, %add784
  %add786 = add nsw i32 %mul785, 0
  %neg787 = xor i32 %add786, -1
  %cmp788 = icmp eq i32 %neg787, -1
  %conv789 = zext i1 %cmp788 to i32
  %sub790 = sub nsw i32 0, %conv789
  %170 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv791 = trunc i64 %170 to i16
  %conv792 = sext i16 %conv791 to i32
  %add793 = add nsw i32 0, %conv792
  %mul794 = mul nsw i32 0, %add793
  %add795 = add nsw i32 %mul794, 1
  %shl796 = shl i32 %add795, 30
  %sub797 = sub nsw i32 %shl796, 1
  %mul798 = mul nsw i32 %sub797, 2
  %add799 = add nsw i32 %mul798, 1
  %sub800 = sub nsw i32 %sub790, %add799
  br label %cond.end.807

cond.false.801:                                   ; preds = %cond.true.771
  %171 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv802 = trunc i64 %171 to i16
  %conv803 = sext i16 %conv802 to i32
  %add804 = add nsw i32 0, %conv803
  %mul805 = mul nsw i32 0, %add804
  %add806 = add nsw i32 %mul805, 0
  br label %cond.end.807

cond.end.807:                                     ; preds = %cond.false.801, %cond.true.781
  %cond808 = phi i32 [ %sub800, %cond.true.781 ], [ %add806, %cond.false.801 ]
  %div809 = sdiv i32 %cond808, 2
  %cmp810 = icmp slt i32 %conv773, %div809
  br i1 %cmp810, label %cond.true.863, label %lor.lhs.false.843

cond.false.812:                                   ; preds = %cond.false.766
  %172 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv813 = trunc i64 %172 to i16
  %conv814 = sext i16 %conv813 to i32
  %add815 = add nsw i32 0, %conv814
  %mul816 = mul nsw i32 0, %add815
  %sub817 = sub nsw i32 %mul816, 1
  %cmp818 = icmp slt i32 %sub817, 0
  br i1 %cmp818, label %cond.true.820, label %cond.false.830

cond.true.820:                                    ; preds = %cond.false.812
  %173 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv821 = trunc i64 %173 to i16
  %conv822 = sext i16 %conv821 to i32
  %add823 = add nsw i32 0, %conv822
  %mul824 = mul nsw i32 0, %add823
  %add825 = add nsw i32 %mul824, 1
  %shl826 = shl i32 %add825, 30
  %sub827 = sub nsw i32 %shl826, 1
  %mul828 = mul nsw i32 %sub827, 2
  %add829 = add nsw i32 %mul828, 1
  br label %cond.end.836

cond.false.830:                                   ; preds = %cond.false.812
  %174 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv831 = trunc i64 %174 to i16
  %conv832 = sext i16 %conv831 to i32
  %add833 = add nsw i32 0, %conv832
  %mul834 = mul nsw i32 0, %add833
  %sub835 = sub nsw i32 %mul834, 1
  br label %cond.end.836

cond.end.836:                                     ; preds = %cond.false.830, %cond.true.820
  %cond837 = phi i32 [ %add829, %cond.true.820 ], [ %sub835, %cond.false.830 ]
  %div838 = sdiv i32 %cond837, 2
  %175 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv839 = trunc i64 %175 to i16
  %conv840 = sext i16 %conv839 to i32
  %cmp841 = icmp slt i32 %div838, %conv840
  br i1 %cmp841, label %cond.true.863, label %lor.lhs.false.843

lor.lhs.false.843:                                ; preds = %cond.end.836, %cond.end.807, %cond.true.765, %cond.end.757, %cond.true.722, %cond.end.716
  %176 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv844 = trunc i64 %176 to i16
  %conv845 = sext i16 %conv844 to i32
  %mul846 = mul nsw i32 %conv845, 2
  %mul847 = mul nsw i32 0, %mul846
  %sub848 = sub nsw i32 %mul847, 1
  %cmp849 = icmp slt i32 %sub848, 0
  br i1 %cmp849, label %land.lhs.true.851, label %lor.lhs.false.857

land.lhs.true.851:                                ; preds = %lor.lhs.false.843
  %177 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv852 = trunc i64 %177 to i16
  %conv853 = sext i16 %conv852 to i32
  %mul854 = mul nsw i32 %conv853, 2
  %cmp855 = icmp slt i32 %mul854, -32768
  br i1 %cmp855, label %cond.true.863, label %lor.lhs.false.857

lor.lhs.false.857:                                ; preds = %land.lhs.true.851, %lor.lhs.false.843
  %178 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv858 = trunc i64 %178 to i16
  %conv859 = sext i16 %conv858 to i32
  %mul860 = mul nsw i32 %conv859, 2
  %cmp861 = icmp slt i32 32767, %mul860
  br i1 %cmp861, label %cond.true.863, label %cond.false.886

cond.true.863:                                    ; preds = %lor.lhs.false.857, %land.lhs.true.851, %cond.end.836, %cond.end.807, %cond.true.765, %cond.end.757, %cond.true.722, %cond.end.716, %land.lhs.true.679
  %179 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv864 = trunc i64 %179 to i16
  %conv865 = zext i16 %conv864 to i32
  %mul866 = mul nsw i32 %conv865, 2
  %cmp867 = icmp sle i32 %mul866, 32767
  br i1 %cmp867, label %cond.true.869, label %cond.false.875

cond.true.869:                                    ; preds = %cond.true.863
  %180 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv870 = trunc i64 %180 to i16
  %conv871 = zext i16 %conv870 to i32
  %mul872 = mul nsw i32 %conv871, 2
  %conv873 = trunc i32 %mul872 to i16
  %conv874 = sext i16 %conv873 to i32
  br label %cond.end.883

cond.false.875:                                   ; preds = %cond.true.863
  %181 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv876 = trunc i64 %181 to i16
  %conv877 = zext i16 %conv876 to i32
  %mul878 = mul nsw i32 %conv877, 2
  %sub879 = sub nsw i32 %mul878, -32768
  %conv880 = trunc i32 %sub879 to i16
  %conv881 = sext i16 %conv880 to i32
  %add882 = add nsw i32 %conv881, -32768
  br label %cond.end.883

cond.end.883:                                     ; preds = %cond.false.875, %cond.true.869
  %cond884 = phi i32 [ %conv874, %cond.true.869 ], [ %add882, %cond.false.875 ]
  %conv885 = sext i32 %cond884 to i64
  store i64 %conv885, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.886:                                   ; preds = %lor.lhs.false.857
  %182 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv887 = trunc i64 %182 to i16
  %conv888 = zext i16 %conv887 to i32
  %mul889 = mul nsw i32 %conv888, 2
  %cmp890 = icmp sle i32 %mul889, 32767
  br i1 %cmp890, label %cond.true.892, label %cond.false.898

cond.true.892:                                    ; preds = %cond.false.886
  %183 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv893 = trunc i64 %183 to i16
  %conv894 = zext i16 %conv893 to i32
  %mul895 = mul nsw i32 %conv894, 2
  %conv896 = trunc i32 %mul895 to i16
  %conv897 = sext i16 %conv896 to i32
  br label %cond.end.906

cond.false.898:                                   ; preds = %cond.false.886
  %184 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv899 = trunc i64 %184 to i16
  %conv900 = zext i16 %conv899 to i32
  %mul901 = mul nsw i32 %conv900, 2
  %sub902 = sub nsw i32 %mul901, -32768
  %conv903 = trunc i32 %sub902 to i16
  %conv904 = sext i16 %conv903 to i32
  %add905 = add nsw i32 %conv904, -32768
  br label %cond.end.906

cond.end.906:                                     ; preds = %cond.false.898, %cond.true.892
  %cond907 = phi i32 [ %conv897, %cond.true.892 ], [ %add905, %cond.false.898 ]
  %conv908 = sext i32 %cond907 to i64
  store i64 %conv908, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

cond.false.909:                                   ; preds = %cond.true.640
  %185 = load i64, i64* @scan_c_stream.name_size, align 8
  %add910 = add nsw i64 0, %185
  %mul911 = mul nsw i64 0, %add910
  %sub912 = sub nsw i64 %mul911, 1
  %cmp913 = icmp slt i64 %sub912, 0
  br i1 %cmp913, label %cond.true.915, label %cond.false.932

cond.true.915:                                    ; preds = %cond.false.909
  %186 = load i64, i64* @scan_c_stream.name_size, align 8
  %add916 = add nsw i64 0, %186
  %mul917 = mul nsw i64 0, %add916
  %add918 = add nsw i64 %mul917, 0
  %neg919 = xor i64 %add918, -1
  %cmp920 = icmp eq i64 %neg919, -1
  %conv921 = zext i1 %cmp920 to i32
  %sub922 = sub nsw i32 0, %conv921
  %conv923 = sext i32 %sub922 to i64
  %187 = load i64, i64* @scan_c_stream.name_size, align 8
  %add924 = add nsw i64 0, %187
  %mul925 = mul nsw i64 0, %add924
  %add926 = add nsw i64 %mul925, 1
  %shl927 = shl i64 %add926, 62
  %sub928 = sub nsw i64 %shl927, 1
  %mul929 = mul nsw i64 %sub928, 2
  %add930 = add nsw i64 %mul929, 1
  %sub931 = sub nsw i64 %conv923, %add930
  br label %cond.end.936

cond.false.932:                                   ; preds = %cond.false.909
  %188 = load i64, i64* @scan_c_stream.name_size, align 8
  %add933 = add nsw i64 0, %188
  %mul934 = mul nsw i64 0, %add933
  %add935 = add nsw i64 %mul934, 0
  br label %cond.end.936

cond.end.936:                                     ; preds = %cond.false.932, %cond.true.915
  %cond937 = phi i64 [ %sub931, %cond.true.915 ], [ %add935, %cond.false.932 ]
  %cmp938 = icmp eq i64 %cond937, 0
  br i1 %cmp938, label %land.lhs.true.940, label %lor.lhs.false.943

land.lhs.true.940:                                ; preds = %cond.end.936
  %189 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp941 = icmp slt i64 %189, 0
  br i1 %cmp941, label %cond.true.1078, label %lor.lhs.false.943

lor.lhs.false.943:                                ; preds = %land.lhs.true.940, %cond.end.936
  br i1 false, label %cond.true.944, label %cond.false.1004

cond.true.944:                                    ; preds = %lor.lhs.false.943
  %190 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp945 = icmp slt i64 %190, 0
  br i1 %cmp945, label %cond.true.947, label %cond.false.970

cond.true.947:                                    ; preds = %cond.true.944
  %191 = load i64, i64* @scan_c_stream.name_size, align 8
  %192 = load i64, i64* @scan_c_stream.name_size, align 8
  %add948 = add nsw i64 0, %192
  %mul949 = mul nsw i64 0, %add948
  %sub950 = sub nsw i64 %mul949, 1
  %cmp951 = icmp slt i64 %sub950, 0
  br i1 %cmp951, label %cond.true.953, label %cond.false.961

cond.true.953:                                    ; preds = %cond.true.947
  %193 = load i64, i64* @scan_c_stream.name_size, align 8
  %add954 = add nsw i64 0, %193
  %mul955 = mul nsw i64 0, %add954
  %add956 = add nsw i64 %mul955, 1
  %shl957 = shl i64 %add956, 62
  %sub958 = sub nsw i64 %shl957, 1
  %mul959 = mul nsw i64 %sub958, 2
  %add960 = add nsw i64 %mul959, 1
  br label %cond.end.965

cond.false.961:                                   ; preds = %cond.true.947
  %194 = load i64, i64* @scan_c_stream.name_size, align 8
  %add962 = add nsw i64 0, %194
  %mul963 = mul nsw i64 0, %add962
  %sub964 = sub nsw i64 %mul963, 1
  br label %cond.end.965

cond.end.965:                                     ; preds = %cond.false.961, %cond.true.953
  %cond966 = phi i64 [ %add960, %cond.true.953 ], [ %sub964, %cond.false.961 ]
  %div967 = sdiv i64 %cond966, 2
  %cmp968 = icmp slt i64 %191, %div967
  br i1 %cmp968, label %cond.true.1078, label %lor.lhs.false.1064

cond.false.970:                                   ; preds = %cond.true.944
  br i1 false, label %cond.true.971, label %cond.false.972

cond.true.971:                                    ; preds = %cond.false.970
  br i1 false, label %cond.true.1078, label %lor.lhs.false.1064

cond.false.972:                                   ; preds = %cond.false.970
  %195 = load i64, i64* @scan_c_stream.name_size, align 8
  %add973 = add nsw i64 0, %195
  %mul974 = mul nsw i64 0, %add973
  %sub975 = sub nsw i64 %mul974, 1
  %cmp976 = icmp slt i64 %sub975, 0
  br i1 %cmp976, label %cond.true.978, label %cond.false.995

cond.true.978:                                    ; preds = %cond.false.972
  %196 = load i64, i64* @scan_c_stream.name_size, align 8
  %add979 = add nsw i64 0, %196
  %mul980 = mul nsw i64 0, %add979
  %add981 = add nsw i64 %mul980, 0
  %neg982 = xor i64 %add981, -1
  %cmp983 = icmp eq i64 %neg982, -1
  %conv984 = zext i1 %cmp983 to i32
  %sub985 = sub nsw i32 0, %conv984
  %conv986 = sext i32 %sub985 to i64
  %197 = load i64, i64* @scan_c_stream.name_size, align 8
  %add987 = add nsw i64 0, %197
  %mul988 = mul nsw i64 0, %add987
  %add989 = add nsw i64 %mul988, 1
  %shl990 = shl i64 %add989, 62
  %sub991 = sub nsw i64 %shl990, 1
  %mul992 = mul nsw i64 %sub991, 2
  %add993 = add nsw i64 %mul992, 1
  %sub994 = sub nsw i64 %conv986, %add993
  br label %cond.end.999

cond.false.995:                                   ; preds = %cond.false.972
  %198 = load i64, i64* @scan_c_stream.name_size, align 8
  %add996 = add nsw i64 0, %198
  %mul997 = mul nsw i64 0, %add996
  %add998 = add nsw i64 %mul997, 0
  br label %cond.end.999

cond.end.999:                                     ; preds = %cond.false.995, %cond.true.978
  %cond1000 = phi i64 [ %sub994, %cond.true.978 ], [ %add998, %cond.false.995 ]
  %div1001 = sdiv i64 %cond1000, 2
  %199 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1002 = icmp slt i64 %div1001, %199
  br i1 %cmp1002, label %cond.true.1078, label %lor.lhs.false.1064

cond.false.1004:                                  ; preds = %lor.lhs.false.943
  br i1 false, label %cond.true.1005, label %cond.false.1006

cond.true.1005:                                   ; preds = %cond.false.1004
  br i1 false, label %cond.true.1078, label %lor.lhs.false.1064

cond.false.1006:                                  ; preds = %cond.false.1004
  %200 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1007 = icmp slt i64 %200, 0
  br i1 %cmp1007, label %cond.true.1009, label %cond.false.1041

cond.true.1009:                                   ; preds = %cond.false.1006
  %201 = load i64, i64* @scan_c_stream.name_size, align 8
  %202 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1010 = add nsw i64 0, %202
  %mul1011 = mul nsw i64 0, %add1010
  %sub1012 = sub nsw i64 %mul1011, 1
  %cmp1013 = icmp slt i64 %sub1012, 0
  br i1 %cmp1013, label %cond.true.1015, label %cond.false.1032

cond.true.1015:                                   ; preds = %cond.true.1009
  %203 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1016 = add nsw i64 0, %203
  %mul1017 = mul nsw i64 0, %add1016
  %add1018 = add nsw i64 %mul1017, 0
  %neg1019 = xor i64 %add1018, -1
  %cmp1020 = icmp eq i64 %neg1019, -1
  %conv1021 = zext i1 %cmp1020 to i32
  %sub1022 = sub nsw i32 0, %conv1021
  %conv1023 = sext i32 %sub1022 to i64
  %204 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1024 = add nsw i64 0, %204
  %mul1025 = mul nsw i64 0, %add1024
  %add1026 = add nsw i64 %mul1025, 1
  %shl1027 = shl i64 %add1026, 62
  %sub1028 = sub nsw i64 %shl1027, 1
  %mul1029 = mul nsw i64 %sub1028, 2
  %add1030 = add nsw i64 %mul1029, 1
  %sub1031 = sub nsw i64 %conv1023, %add1030
  br label %cond.end.1036

cond.false.1032:                                  ; preds = %cond.true.1009
  %205 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1033 = add nsw i64 0, %205
  %mul1034 = mul nsw i64 0, %add1033
  %add1035 = add nsw i64 %mul1034, 0
  br label %cond.end.1036

cond.end.1036:                                    ; preds = %cond.false.1032, %cond.true.1015
  %cond1037 = phi i64 [ %sub1031, %cond.true.1015 ], [ %add1035, %cond.false.1032 ]
  %div1038 = sdiv i64 %cond1037, 2
  %cmp1039 = icmp slt i64 %201, %div1038
  br i1 %cmp1039, label %cond.true.1078, label %lor.lhs.false.1064

cond.false.1041:                                  ; preds = %cond.false.1006
  %206 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1042 = add nsw i64 0, %206
  %mul1043 = mul nsw i64 0, %add1042
  %sub1044 = sub nsw i64 %mul1043, 1
  %cmp1045 = icmp slt i64 %sub1044, 0
  br i1 %cmp1045, label %cond.true.1047, label %cond.false.1055

cond.true.1047:                                   ; preds = %cond.false.1041
  %207 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1048 = add nsw i64 0, %207
  %mul1049 = mul nsw i64 0, %add1048
  %add1050 = add nsw i64 %mul1049, 1
  %shl1051 = shl i64 %add1050, 62
  %sub1052 = sub nsw i64 %shl1051, 1
  %mul1053 = mul nsw i64 %sub1052, 2
  %add1054 = add nsw i64 %mul1053, 1
  br label %cond.end.1059

cond.false.1055:                                  ; preds = %cond.false.1041
  %208 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1056 = add nsw i64 0, %208
  %mul1057 = mul nsw i64 0, %add1056
  %sub1058 = sub nsw i64 %mul1057, 1
  br label %cond.end.1059

cond.end.1059:                                    ; preds = %cond.false.1055, %cond.true.1047
  %cond1060 = phi i64 [ %add1054, %cond.true.1047 ], [ %sub1058, %cond.false.1055 ]
  %div1061 = sdiv i64 %cond1060, 2
  %209 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1062 = icmp slt i64 %div1061, %209
  br i1 %cmp1062, label %cond.true.1078, label %lor.lhs.false.1064

lor.lhs.false.1064:                               ; preds = %cond.end.1059, %cond.end.1036, %cond.true.1005, %cond.end.999, %cond.true.971, %cond.end.965
  %210 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1065 = mul nsw i64 %210, 2
  %mul1066 = mul nsw i64 0, %mul1065
  %sub1067 = sub nsw i64 %mul1066, 1
  %cmp1068 = icmp slt i64 %sub1067, 0
  br i1 %cmp1068, label %land.lhs.true.1070, label %lor.lhs.false.1074

land.lhs.true.1070:                               ; preds = %lor.lhs.false.1064
  %211 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1071 = mul nsw i64 %211, 2
  %cmp1072 = icmp slt i64 %mul1071, -32768
  br i1 %cmp1072, label %cond.true.1078, label %lor.lhs.false.1074

lor.lhs.false.1074:                               ; preds = %land.lhs.true.1070, %lor.lhs.false.1064
  %212 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1075 = mul nsw i64 %212, 2
  %cmp1076 = icmp slt i64 32767, %mul1075
  br i1 %cmp1076, label %cond.true.1078, label %cond.false.1101

cond.true.1078:                                   ; preds = %lor.lhs.false.1074, %land.lhs.true.1070, %cond.end.1059, %cond.end.1036, %cond.true.1005, %cond.end.999, %cond.true.971, %cond.end.965, %land.lhs.true.940
  %213 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1079 = trunc i64 %213 to i16
  %conv1080 = zext i16 %conv1079 to i32
  %mul1081 = mul nsw i32 %conv1080, 2
  %cmp1082 = icmp sle i32 %mul1081, 32767
  br i1 %cmp1082, label %cond.true.1084, label %cond.false.1090

cond.true.1084:                                   ; preds = %cond.true.1078
  %214 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1085 = trunc i64 %214 to i16
  %conv1086 = zext i16 %conv1085 to i32
  %mul1087 = mul nsw i32 %conv1086, 2
  %conv1088 = trunc i32 %mul1087 to i16
  %conv1089 = sext i16 %conv1088 to i32
  br label %cond.end.1098

cond.false.1090:                                  ; preds = %cond.true.1078
  %215 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1091 = trunc i64 %215 to i16
  %conv1092 = zext i16 %conv1091 to i32
  %mul1093 = mul nsw i32 %conv1092, 2
  %sub1094 = sub nsw i32 %mul1093, -32768
  %conv1095 = trunc i32 %sub1094 to i16
  %conv1096 = sext i16 %conv1095 to i32
  %add1097 = add nsw i32 %conv1096, -32768
  br label %cond.end.1098

cond.end.1098:                                    ; preds = %cond.false.1090, %cond.true.1084
  %cond1099 = phi i32 [ %conv1089, %cond.true.1084 ], [ %add1097, %cond.false.1090 ]
  %conv1100 = sext i32 %cond1099 to i64
  store i64 %conv1100, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.1101:                                  ; preds = %lor.lhs.false.1074
  %216 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1102 = trunc i64 %216 to i16
  %conv1103 = zext i16 %conv1102 to i32
  %mul1104 = mul nsw i32 %conv1103, 2
  %cmp1105 = icmp sle i32 %mul1104, 32767
  br i1 %cmp1105, label %cond.true.1107, label %cond.false.1113

cond.true.1107:                                   ; preds = %cond.false.1101
  %217 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1108 = trunc i64 %217 to i16
  %conv1109 = zext i16 %conv1108 to i32
  %mul1110 = mul nsw i32 %conv1109, 2
  %conv1111 = trunc i32 %mul1110 to i16
  %conv1112 = sext i16 %conv1111 to i32
  br label %cond.end.1121

cond.false.1113:                                  ; preds = %cond.false.1101
  %218 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1114 = trunc i64 %218 to i16
  %conv1115 = zext i16 %conv1114 to i32
  %mul1116 = mul nsw i32 %conv1115, 2
  %sub1117 = sub nsw i32 %mul1116, -32768
  %conv1118 = trunc i32 %sub1117 to i16
  %conv1119 = sext i16 %conv1118 to i32
  %add1120 = add nsw i32 %conv1119, -32768
  br label %cond.end.1121

cond.end.1121:                                    ; preds = %cond.false.1113, %cond.true.1107
  %cond1122 = phi i32 [ %conv1112, %cond.true.1107 ], [ %add1120, %cond.false.1113 ]
  %conv1123 = sext i32 %cond1122 to i64
  store i64 %conv1123, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

cond.false.1124:                                  ; preds = %cond.false.639
  br i1 false, label %cond.true.1125, label %cond.false.1553

cond.true.1125:                                   ; preds = %cond.false.1124
  br i1 false, label %cond.true.1126, label %cond.false.1352

cond.true.1126:                                   ; preds = %cond.true.1125
  %219 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1127 = trunc i64 %219 to i32
  %add1128 = add nsw i32 0, %conv1127
  %mul1129 = mul nsw i32 0, %add1128
  %sub1130 = sub nsw i32 %mul1129, 1
  %cmp1131 = icmp slt i32 %sub1130, 0
  br i1 %cmp1131, label %cond.true.1133, label %cond.false.1151

cond.true.1133:                                   ; preds = %cond.true.1126
  %220 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1134 = trunc i64 %220 to i32
  %add1135 = add nsw i32 0, %conv1134
  %mul1136 = mul nsw i32 0, %add1135
  %add1137 = add nsw i32 %mul1136, 0
  %neg1138 = xor i32 %add1137, -1
  %cmp1139 = icmp eq i32 %neg1138, -1
  %conv1140 = zext i1 %cmp1139 to i32
  %sub1141 = sub nsw i32 0, %conv1140
  %221 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1142 = trunc i64 %221 to i32
  %add1143 = add nsw i32 0, %conv1142
  %mul1144 = mul nsw i32 0, %add1143
  %add1145 = add nsw i32 %mul1144, 1
  %shl1146 = shl i32 %add1145, 30
  %sub1147 = sub nsw i32 %shl1146, 1
  %mul1148 = mul nsw i32 %sub1147, 2
  %add1149 = add nsw i32 %mul1148, 1
  %sub1150 = sub nsw i32 %sub1141, %add1149
  br label %cond.end.1156

cond.false.1151:                                  ; preds = %cond.true.1126
  %222 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1152 = trunc i64 %222 to i32
  %add1153 = add nsw i32 0, %conv1152
  %mul1154 = mul nsw i32 0, %add1153
  %add1155 = add nsw i32 %mul1154, 0
  br label %cond.end.1156

cond.end.1156:                                    ; preds = %cond.false.1151, %cond.true.1133
  %cond1157 = phi i32 [ %sub1150, %cond.true.1133 ], [ %add1155, %cond.false.1151 ]
  %cmp1158 = icmp eq i32 %cond1157, 0
  br i1 %cmp1158, label %land.lhs.true.1160, label %lor.lhs.false.1164

land.lhs.true.1160:                               ; preds = %cond.end.1156
  %223 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1161 = trunc i64 %223 to i32
  %cmp1162 = icmp slt i32 %conv1161, 0
  br i1 %cmp1162, label %cond.true.1320, label %lor.lhs.false.1164

lor.lhs.false.1164:                               ; preds = %land.lhs.true.1160, %cond.end.1156
  br i1 false, label %cond.true.1165, label %cond.false.1234

cond.true.1165:                                   ; preds = %lor.lhs.false.1164
  %224 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1166 = trunc i64 %224 to i32
  %cmp1167 = icmp slt i32 %conv1166, 0
  br i1 %cmp1167, label %cond.true.1169, label %cond.false.1196

cond.true.1169:                                   ; preds = %cond.true.1165
  %225 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1170 = trunc i64 %225 to i32
  %226 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1171 = trunc i64 %226 to i32
  %add1172 = add nsw i32 0, %conv1171
  %mul1173 = mul nsw i32 0, %add1172
  %sub1174 = sub nsw i32 %mul1173, 1
  %cmp1175 = icmp slt i32 %sub1174, 0
  br i1 %cmp1175, label %cond.true.1177, label %cond.false.1186

cond.true.1177:                                   ; preds = %cond.true.1169
  %227 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1178 = trunc i64 %227 to i32
  %add1179 = add nsw i32 0, %conv1178
  %mul1180 = mul nsw i32 0, %add1179
  %add1181 = add nsw i32 %mul1180, 1
  %shl1182 = shl i32 %add1181, 30
  %sub1183 = sub nsw i32 %shl1182, 1
  %mul1184 = mul nsw i32 %sub1183, 2
  %add1185 = add nsw i32 %mul1184, 1
  br label %cond.end.1191

cond.false.1186:                                  ; preds = %cond.true.1169
  %228 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1187 = trunc i64 %228 to i32
  %add1188 = add nsw i32 0, %conv1187
  %mul1189 = mul nsw i32 0, %add1188
  %sub1190 = sub nsw i32 %mul1189, 1
  br label %cond.end.1191

cond.end.1191:                                    ; preds = %cond.false.1186, %cond.true.1177
  %cond1192 = phi i32 [ %add1185, %cond.true.1177 ], [ %sub1190, %cond.false.1186 ]
  %div1193 = sdiv i32 %cond1192, 2
  %cmp1194 = icmp slt i32 %conv1170, %div1193
  br i1 %cmp1194, label %cond.true.1320, label %lor.lhs.false.1303

cond.false.1196:                                  ; preds = %cond.true.1165
  br i1 false, label %cond.true.1197, label %cond.false.1198

cond.true.1197:                                   ; preds = %cond.false.1196
  br i1 false, label %cond.true.1320, label %lor.lhs.false.1303

cond.false.1198:                                  ; preds = %cond.false.1196
  %229 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1199 = trunc i64 %229 to i32
  %add1200 = add nsw i32 0, %conv1199
  %mul1201 = mul nsw i32 0, %add1200
  %sub1202 = sub nsw i32 %mul1201, 1
  %cmp1203 = icmp slt i32 %sub1202, 0
  br i1 %cmp1203, label %cond.true.1205, label %cond.false.1223

cond.true.1205:                                   ; preds = %cond.false.1198
  %230 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1206 = trunc i64 %230 to i32
  %add1207 = add nsw i32 0, %conv1206
  %mul1208 = mul nsw i32 0, %add1207
  %add1209 = add nsw i32 %mul1208, 0
  %neg1210 = xor i32 %add1209, -1
  %cmp1211 = icmp eq i32 %neg1210, -1
  %conv1212 = zext i1 %cmp1211 to i32
  %sub1213 = sub nsw i32 0, %conv1212
  %231 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1214 = trunc i64 %231 to i32
  %add1215 = add nsw i32 0, %conv1214
  %mul1216 = mul nsw i32 0, %add1215
  %add1217 = add nsw i32 %mul1216, 1
  %shl1218 = shl i32 %add1217, 30
  %sub1219 = sub nsw i32 %shl1218, 1
  %mul1220 = mul nsw i32 %sub1219, 2
  %add1221 = add nsw i32 %mul1220, 1
  %sub1222 = sub nsw i32 %sub1213, %add1221
  br label %cond.end.1228

cond.false.1223:                                  ; preds = %cond.false.1198
  %232 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1224 = trunc i64 %232 to i32
  %add1225 = add nsw i32 0, %conv1224
  %mul1226 = mul nsw i32 0, %add1225
  %add1227 = add nsw i32 %mul1226, 0
  br label %cond.end.1228

cond.end.1228:                                    ; preds = %cond.false.1223, %cond.true.1205
  %cond1229 = phi i32 [ %sub1222, %cond.true.1205 ], [ %add1227, %cond.false.1223 ]
  %div1230 = sdiv i32 %cond1229, 2
  %233 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1231 = trunc i64 %233 to i32
  %cmp1232 = icmp slt i32 %div1230, %conv1231
  br i1 %cmp1232, label %cond.true.1320, label %lor.lhs.false.1303

cond.false.1234:                                  ; preds = %lor.lhs.false.1164
  br i1 false, label %cond.true.1235, label %cond.false.1236

cond.true.1235:                                   ; preds = %cond.false.1234
  br i1 false, label %cond.true.1320, label %lor.lhs.false.1303

cond.false.1236:                                  ; preds = %cond.false.1234
  %234 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1237 = trunc i64 %234 to i32
  %cmp1238 = icmp slt i32 %conv1237, 0
  br i1 %cmp1238, label %cond.true.1240, label %cond.false.1276

cond.true.1240:                                   ; preds = %cond.false.1236
  %235 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1241 = trunc i64 %235 to i32
  %236 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1242 = trunc i64 %236 to i32
  %add1243 = add nsw i32 0, %conv1242
  %mul1244 = mul nsw i32 0, %add1243
  %sub1245 = sub nsw i32 %mul1244, 1
  %cmp1246 = icmp slt i32 %sub1245, 0
  br i1 %cmp1246, label %cond.true.1248, label %cond.false.1266

cond.true.1248:                                   ; preds = %cond.true.1240
  %237 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1249 = trunc i64 %237 to i32
  %add1250 = add nsw i32 0, %conv1249
  %mul1251 = mul nsw i32 0, %add1250
  %add1252 = add nsw i32 %mul1251, 0
  %neg1253 = xor i32 %add1252, -1
  %cmp1254 = icmp eq i32 %neg1253, -1
  %conv1255 = zext i1 %cmp1254 to i32
  %sub1256 = sub nsw i32 0, %conv1255
  %238 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1257 = trunc i64 %238 to i32
  %add1258 = add nsw i32 0, %conv1257
  %mul1259 = mul nsw i32 0, %add1258
  %add1260 = add nsw i32 %mul1259, 1
  %shl1261 = shl i32 %add1260, 30
  %sub1262 = sub nsw i32 %shl1261, 1
  %mul1263 = mul nsw i32 %sub1262, 2
  %add1264 = add nsw i32 %mul1263, 1
  %sub1265 = sub nsw i32 %sub1256, %add1264
  br label %cond.end.1271

cond.false.1266:                                  ; preds = %cond.true.1240
  %239 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1267 = trunc i64 %239 to i32
  %add1268 = add nsw i32 0, %conv1267
  %mul1269 = mul nsw i32 0, %add1268
  %add1270 = add nsw i32 %mul1269, 0
  br label %cond.end.1271

cond.end.1271:                                    ; preds = %cond.false.1266, %cond.true.1248
  %cond1272 = phi i32 [ %sub1265, %cond.true.1248 ], [ %add1270, %cond.false.1266 ]
  %div1273 = sdiv i32 %cond1272, 2
  %cmp1274 = icmp slt i32 %conv1241, %div1273
  br i1 %cmp1274, label %cond.true.1320, label %lor.lhs.false.1303

cond.false.1276:                                  ; preds = %cond.false.1236
  %240 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1277 = trunc i64 %240 to i32
  %add1278 = add nsw i32 0, %conv1277
  %mul1279 = mul nsw i32 0, %add1278
  %sub1280 = sub nsw i32 %mul1279, 1
  %cmp1281 = icmp slt i32 %sub1280, 0
  br i1 %cmp1281, label %cond.true.1283, label %cond.false.1292

cond.true.1283:                                   ; preds = %cond.false.1276
  %241 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1284 = trunc i64 %241 to i32
  %add1285 = add nsw i32 0, %conv1284
  %mul1286 = mul nsw i32 0, %add1285
  %add1287 = add nsw i32 %mul1286, 1
  %shl1288 = shl i32 %add1287, 30
  %sub1289 = sub nsw i32 %shl1288, 1
  %mul1290 = mul nsw i32 %sub1289, 2
  %add1291 = add nsw i32 %mul1290, 1
  br label %cond.end.1297

cond.false.1292:                                  ; preds = %cond.false.1276
  %242 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1293 = trunc i64 %242 to i32
  %add1294 = add nsw i32 0, %conv1293
  %mul1295 = mul nsw i32 0, %add1294
  %sub1296 = sub nsw i32 %mul1295, 1
  br label %cond.end.1297

cond.end.1297:                                    ; preds = %cond.false.1292, %cond.true.1283
  %cond1298 = phi i32 [ %add1291, %cond.true.1283 ], [ %sub1296, %cond.false.1292 ]
  %div1299 = sdiv i32 %cond1298, 2
  %243 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1300 = trunc i64 %243 to i32
  %cmp1301 = icmp slt i32 %div1299, %conv1300
  br i1 %cmp1301, label %cond.true.1320, label %lor.lhs.false.1303

lor.lhs.false.1303:                               ; preds = %cond.end.1297, %cond.end.1271, %cond.true.1235, %cond.end.1228, %cond.true.1197, %cond.end.1191
  %244 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1304 = trunc i64 %244 to i32
  %mul1305 = mul nsw i32 %conv1304, 2
  %mul1306 = mul nsw i32 0, %mul1305
  %sub1307 = sub nsw i32 %mul1306, 1
  %cmp1308 = icmp slt i32 %sub1307, 0
  br i1 %cmp1308, label %land.lhs.true.1310, label %lor.lhs.false.1315

land.lhs.true.1310:                               ; preds = %lor.lhs.false.1303
  %245 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1311 = trunc i64 %245 to i32
  %mul1312 = mul nsw i32 %conv1311, 2
  %cmp1313 = icmp slt i32 %mul1312, -2147483648
  br i1 %cmp1313, label %cond.true.1320, label %lor.lhs.false.1315

lor.lhs.false.1315:                               ; preds = %land.lhs.true.1310, %lor.lhs.false.1303
  %246 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1316 = trunc i64 %246 to i32
  %mul1317 = mul nsw i32 %conv1316, 2
  %cmp1318 = icmp slt i32 2147483647, %mul1317
  br i1 %cmp1318, label %cond.true.1320, label %cond.false.1336

cond.true.1320:                                   ; preds = %lor.lhs.false.1315, %land.lhs.true.1310, %cond.end.1297, %cond.end.1271, %cond.true.1235, %cond.end.1228, %cond.true.1197, %cond.end.1191, %land.lhs.true.1160
  %247 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1321 = trunc i64 %247 to i32
  %mul1322 = mul i32 %conv1321, 2
  %cmp1323 = icmp ule i32 %mul1322, 2147483647
  br i1 %cmp1323, label %cond.true.1325, label %cond.false.1328

cond.true.1325:                                   ; preds = %cond.true.1320
  %248 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1326 = trunc i64 %248 to i32
  %mul1327 = mul i32 %conv1326, 2
  br label %cond.end.1333

cond.false.1328:                                  ; preds = %cond.true.1320
  %249 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1329 = trunc i64 %249 to i32
  %mul1330 = mul i32 %conv1329, 2
  %sub1331 = sub i32 %mul1330, -2147483648
  %add1332 = add nsw i32 %sub1331, -2147483648
  br label %cond.end.1333

cond.end.1333:                                    ; preds = %cond.false.1328, %cond.true.1325
  %cond1334 = phi i32 [ %mul1327, %cond.true.1325 ], [ %add1332, %cond.false.1328 ]
  %conv1335 = sext i32 %cond1334 to i64
  store i64 %conv1335, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.1336:                                  ; preds = %lor.lhs.false.1315
  %250 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1337 = trunc i64 %250 to i32
  %mul1338 = mul i32 %conv1337, 2
  %cmp1339 = icmp ule i32 %mul1338, 2147483647
  br i1 %cmp1339, label %cond.true.1341, label %cond.false.1344

cond.true.1341:                                   ; preds = %cond.false.1336
  %251 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1342 = trunc i64 %251 to i32
  %mul1343 = mul i32 %conv1342, 2
  br label %cond.end.1349

cond.false.1344:                                  ; preds = %cond.false.1336
  %252 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1345 = trunc i64 %252 to i32
  %mul1346 = mul i32 %conv1345, 2
  %sub1347 = sub i32 %mul1346, -2147483648
  %add1348 = add nsw i32 %sub1347, -2147483648
  br label %cond.end.1349

cond.end.1349:                                    ; preds = %cond.false.1344, %cond.true.1341
  %cond1350 = phi i32 [ %mul1343, %cond.true.1341 ], [ %add1348, %cond.false.1344 ]
  %conv1351 = sext i32 %cond1350 to i64
  store i64 %conv1351, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

cond.false.1352:                                  ; preds = %cond.true.1125
  %253 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1353 = add nsw i64 0, %253
  %mul1354 = mul nsw i64 0, %add1353
  %sub1355 = sub nsw i64 %mul1354, 1
  %cmp1356 = icmp slt i64 %sub1355, 0
  br i1 %cmp1356, label %cond.true.1358, label %cond.false.1375

cond.true.1358:                                   ; preds = %cond.false.1352
  %254 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1359 = add nsw i64 0, %254
  %mul1360 = mul nsw i64 0, %add1359
  %add1361 = add nsw i64 %mul1360, 0
  %neg1362 = xor i64 %add1361, -1
  %cmp1363 = icmp eq i64 %neg1362, -1
  %conv1364 = zext i1 %cmp1363 to i32
  %sub1365 = sub nsw i32 0, %conv1364
  %conv1366 = sext i32 %sub1365 to i64
  %255 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1367 = add nsw i64 0, %255
  %mul1368 = mul nsw i64 0, %add1367
  %add1369 = add nsw i64 %mul1368, 1
  %shl1370 = shl i64 %add1369, 62
  %sub1371 = sub nsw i64 %shl1370, 1
  %mul1372 = mul nsw i64 %sub1371, 2
  %add1373 = add nsw i64 %mul1372, 1
  %sub1374 = sub nsw i64 %conv1366, %add1373
  br label %cond.end.1379

cond.false.1375:                                  ; preds = %cond.false.1352
  %256 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1376 = add nsw i64 0, %256
  %mul1377 = mul nsw i64 0, %add1376
  %add1378 = add nsw i64 %mul1377, 0
  br label %cond.end.1379

cond.end.1379:                                    ; preds = %cond.false.1375, %cond.true.1358
  %cond1380 = phi i64 [ %sub1374, %cond.true.1358 ], [ %add1378, %cond.false.1375 ]
  %cmp1381 = icmp eq i64 %cond1380, 0
  br i1 %cmp1381, label %land.lhs.true.1383, label %lor.lhs.false.1386

land.lhs.true.1383:                               ; preds = %cond.end.1379
  %257 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1384 = icmp slt i64 %257, 0
  br i1 %cmp1384, label %cond.true.1521, label %lor.lhs.false.1386

lor.lhs.false.1386:                               ; preds = %land.lhs.true.1383, %cond.end.1379
  br i1 false, label %cond.true.1387, label %cond.false.1447

cond.true.1387:                                   ; preds = %lor.lhs.false.1386
  %258 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1388 = icmp slt i64 %258, 0
  br i1 %cmp1388, label %cond.true.1390, label %cond.false.1413

cond.true.1390:                                   ; preds = %cond.true.1387
  %259 = load i64, i64* @scan_c_stream.name_size, align 8
  %260 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1391 = add nsw i64 0, %260
  %mul1392 = mul nsw i64 0, %add1391
  %sub1393 = sub nsw i64 %mul1392, 1
  %cmp1394 = icmp slt i64 %sub1393, 0
  br i1 %cmp1394, label %cond.true.1396, label %cond.false.1404

cond.true.1396:                                   ; preds = %cond.true.1390
  %261 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1397 = add nsw i64 0, %261
  %mul1398 = mul nsw i64 0, %add1397
  %add1399 = add nsw i64 %mul1398, 1
  %shl1400 = shl i64 %add1399, 62
  %sub1401 = sub nsw i64 %shl1400, 1
  %mul1402 = mul nsw i64 %sub1401, 2
  %add1403 = add nsw i64 %mul1402, 1
  br label %cond.end.1408

cond.false.1404:                                  ; preds = %cond.true.1390
  %262 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1405 = add nsw i64 0, %262
  %mul1406 = mul nsw i64 0, %add1405
  %sub1407 = sub nsw i64 %mul1406, 1
  br label %cond.end.1408

cond.end.1408:                                    ; preds = %cond.false.1404, %cond.true.1396
  %cond1409 = phi i64 [ %add1403, %cond.true.1396 ], [ %sub1407, %cond.false.1404 ]
  %div1410 = sdiv i64 %cond1409, 2
  %cmp1411 = icmp slt i64 %259, %div1410
  br i1 %cmp1411, label %cond.true.1521, label %lor.lhs.false.1507

cond.false.1413:                                  ; preds = %cond.true.1387
  br i1 false, label %cond.true.1414, label %cond.false.1415

cond.true.1414:                                   ; preds = %cond.false.1413
  br i1 false, label %cond.true.1521, label %lor.lhs.false.1507

cond.false.1415:                                  ; preds = %cond.false.1413
  %263 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1416 = add nsw i64 0, %263
  %mul1417 = mul nsw i64 0, %add1416
  %sub1418 = sub nsw i64 %mul1417, 1
  %cmp1419 = icmp slt i64 %sub1418, 0
  br i1 %cmp1419, label %cond.true.1421, label %cond.false.1438

cond.true.1421:                                   ; preds = %cond.false.1415
  %264 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1422 = add nsw i64 0, %264
  %mul1423 = mul nsw i64 0, %add1422
  %add1424 = add nsw i64 %mul1423, 0
  %neg1425 = xor i64 %add1424, -1
  %cmp1426 = icmp eq i64 %neg1425, -1
  %conv1427 = zext i1 %cmp1426 to i32
  %sub1428 = sub nsw i32 0, %conv1427
  %conv1429 = sext i32 %sub1428 to i64
  %265 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1430 = add nsw i64 0, %265
  %mul1431 = mul nsw i64 0, %add1430
  %add1432 = add nsw i64 %mul1431, 1
  %shl1433 = shl i64 %add1432, 62
  %sub1434 = sub nsw i64 %shl1433, 1
  %mul1435 = mul nsw i64 %sub1434, 2
  %add1436 = add nsw i64 %mul1435, 1
  %sub1437 = sub nsw i64 %conv1429, %add1436
  br label %cond.end.1442

cond.false.1438:                                  ; preds = %cond.false.1415
  %266 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1439 = add nsw i64 0, %266
  %mul1440 = mul nsw i64 0, %add1439
  %add1441 = add nsw i64 %mul1440, 0
  br label %cond.end.1442

cond.end.1442:                                    ; preds = %cond.false.1438, %cond.true.1421
  %cond1443 = phi i64 [ %sub1437, %cond.true.1421 ], [ %add1441, %cond.false.1438 ]
  %div1444 = sdiv i64 %cond1443, 2
  %267 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1445 = icmp slt i64 %div1444, %267
  br i1 %cmp1445, label %cond.true.1521, label %lor.lhs.false.1507

cond.false.1447:                                  ; preds = %lor.lhs.false.1386
  br i1 false, label %cond.true.1448, label %cond.false.1449

cond.true.1448:                                   ; preds = %cond.false.1447
  br i1 false, label %cond.true.1521, label %lor.lhs.false.1507

cond.false.1449:                                  ; preds = %cond.false.1447
  %268 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1450 = icmp slt i64 %268, 0
  br i1 %cmp1450, label %cond.true.1452, label %cond.false.1484

cond.true.1452:                                   ; preds = %cond.false.1449
  %269 = load i64, i64* @scan_c_stream.name_size, align 8
  %270 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1453 = add nsw i64 0, %270
  %mul1454 = mul nsw i64 0, %add1453
  %sub1455 = sub nsw i64 %mul1454, 1
  %cmp1456 = icmp slt i64 %sub1455, 0
  br i1 %cmp1456, label %cond.true.1458, label %cond.false.1475

cond.true.1458:                                   ; preds = %cond.true.1452
  %271 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1459 = add nsw i64 0, %271
  %mul1460 = mul nsw i64 0, %add1459
  %add1461 = add nsw i64 %mul1460, 0
  %neg1462 = xor i64 %add1461, -1
  %cmp1463 = icmp eq i64 %neg1462, -1
  %conv1464 = zext i1 %cmp1463 to i32
  %sub1465 = sub nsw i32 0, %conv1464
  %conv1466 = sext i32 %sub1465 to i64
  %272 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1467 = add nsw i64 0, %272
  %mul1468 = mul nsw i64 0, %add1467
  %add1469 = add nsw i64 %mul1468, 1
  %shl1470 = shl i64 %add1469, 62
  %sub1471 = sub nsw i64 %shl1470, 1
  %mul1472 = mul nsw i64 %sub1471, 2
  %add1473 = add nsw i64 %mul1472, 1
  %sub1474 = sub nsw i64 %conv1466, %add1473
  br label %cond.end.1479

cond.false.1475:                                  ; preds = %cond.true.1452
  %273 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1476 = add nsw i64 0, %273
  %mul1477 = mul nsw i64 0, %add1476
  %add1478 = add nsw i64 %mul1477, 0
  br label %cond.end.1479

cond.end.1479:                                    ; preds = %cond.false.1475, %cond.true.1458
  %cond1480 = phi i64 [ %sub1474, %cond.true.1458 ], [ %add1478, %cond.false.1475 ]
  %div1481 = sdiv i64 %cond1480, 2
  %cmp1482 = icmp slt i64 %269, %div1481
  br i1 %cmp1482, label %cond.true.1521, label %lor.lhs.false.1507

cond.false.1484:                                  ; preds = %cond.false.1449
  %274 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1485 = add nsw i64 0, %274
  %mul1486 = mul nsw i64 0, %add1485
  %sub1487 = sub nsw i64 %mul1486, 1
  %cmp1488 = icmp slt i64 %sub1487, 0
  br i1 %cmp1488, label %cond.true.1490, label %cond.false.1498

cond.true.1490:                                   ; preds = %cond.false.1484
  %275 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1491 = add nsw i64 0, %275
  %mul1492 = mul nsw i64 0, %add1491
  %add1493 = add nsw i64 %mul1492, 1
  %shl1494 = shl i64 %add1493, 62
  %sub1495 = sub nsw i64 %shl1494, 1
  %mul1496 = mul nsw i64 %sub1495, 2
  %add1497 = add nsw i64 %mul1496, 1
  br label %cond.end.1502

cond.false.1498:                                  ; preds = %cond.false.1484
  %276 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1499 = add nsw i64 0, %276
  %mul1500 = mul nsw i64 0, %add1499
  %sub1501 = sub nsw i64 %mul1500, 1
  br label %cond.end.1502

cond.end.1502:                                    ; preds = %cond.false.1498, %cond.true.1490
  %cond1503 = phi i64 [ %add1497, %cond.true.1490 ], [ %sub1501, %cond.false.1498 ]
  %div1504 = sdiv i64 %cond1503, 2
  %277 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1505 = icmp slt i64 %div1504, %277
  br i1 %cmp1505, label %cond.true.1521, label %lor.lhs.false.1507

lor.lhs.false.1507:                               ; preds = %cond.end.1502, %cond.end.1479, %cond.true.1448, %cond.end.1442, %cond.true.1414, %cond.end.1408
  %278 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1508 = mul nsw i64 %278, 2
  %mul1509 = mul nsw i64 0, %mul1508
  %sub1510 = sub nsw i64 %mul1509, 1
  %cmp1511 = icmp slt i64 %sub1510, 0
  br i1 %cmp1511, label %land.lhs.true.1513, label %lor.lhs.false.1517

land.lhs.true.1513:                               ; preds = %lor.lhs.false.1507
  %279 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1514 = mul nsw i64 %279, 2
  %cmp1515 = icmp slt i64 %mul1514, -2147483648
  br i1 %cmp1515, label %cond.true.1521, label %lor.lhs.false.1517

lor.lhs.false.1517:                               ; preds = %land.lhs.true.1513, %lor.lhs.false.1507
  %280 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1518 = mul nsw i64 %280, 2
  %cmp1519 = icmp slt i64 2147483647, %mul1518
  br i1 %cmp1519, label %cond.true.1521, label %cond.false.1537

cond.true.1521:                                   ; preds = %lor.lhs.false.1517, %land.lhs.true.1513, %cond.end.1502, %cond.end.1479, %cond.true.1448, %cond.end.1442, %cond.true.1414, %cond.end.1408, %land.lhs.true.1383
  %281 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1522 = trunc i64 %281 to i32
  %mul1523 = mul i32 %conv1522, 2
  %cmp1524 = icmp ule i32 %mul1523, 2147483647
  br i1 %cmp1524, label %cond.true.1526, label %cond.false.1529

cond.true.1526:                                   ; preds = %cond.true.1521
  %282 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1527 = trunc i64 %282 to i32
  %mul1528 = mul i32 %conv1527, 2
  br label %cond.end.1534

cond.false.1529:                                  ; preds = %cond.true.1521
  %283 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1530 = trunc i64 %283 to i32
  %mul1531 = mul i32 %conv1530, 2
  %sub1532 = sub i32 %mul1531, -2147483648
  %add1533 = add nsw i32 %sub1532, -2147483648
  br label %cond.end.1534

cond.end.1534:                                    ; preds = %cond.false.1529, %cond.true.1526
  %cond1535 = phi i32 [ %mul1528, %cond.true.1526 ], [ %add1533, %cond.false.1529 ]
  %conv1536 = sext i32 %cond1535 to i64
  store i64 %conv1536, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.1537:                                  ; preds = %lor.lhs.false.1517
  %284 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1538 = trunc i64 %284 to i32
  %mul1539 = mul i32 %conv1538, 2
  %cmp1540 = icmp ule i32 %mul1539, 2147483647
  br i1 %cmp1540, label %cond.true.1542, label %cond.false.1545

cond.true.1542:                                   ; preds = %cond.false.1537
  %285 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1543 = trunc i64 %285 to i32
  %mul1544 = mul i32 %conv1543, 2
  br label %cond.end.1550

cond.false.1545:                                  ; preds = %cond.false.1537
  %286 = load i64, i64* @scan_c_stream.name_size, align 8
  %conv1546 = trunc i64 %286 to i32
  %mul1547 = mul i32 %conv1546, 2
  %sub1548 = sub i32 %mul1547, -2147483648
  %add1549 = add nsw i32 %sub1548, -2147483648
  br label %cond.end.1550

cond.end.1550:                                    ; preds = %cond.false.1545, %cond.true.1542
  %cond1551 = phi i32 [ %mul1544, %cond.true.1542 ], [ %add1549, %cond.false.1545 ]
  %conv1552 = sext i32 %cond1551 to i64
  store i64 %conv1552, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

cond.false.1553:                                  ; preds = %cond.false.1124
  br i1 true, label %cond.true.1554, label %cond.false.1941

cond.true.1554:                                   ; preds = %cond.false.1553
  br i1 false, label %cond.true.1555, label %cond.false.1748

cond.true.1555:                                   ; preds = %cond.true.1554
  %287 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1556 = add nsw i64 0, %287
  %mul1557 = mul nsw i64 0, %add1556
  %sub1558 = sub nsw i64 %mul1557, 1
  %cmp1559 = icmp slt i64 %sub1558, 0
  br i1 %cmp1559, label %cond.true.1561, label %cond.false.1578

cond.true.1561:                                   ; preds = %cond.true.1555
  %288 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1562 = add nsw i64 0, %288
  %mul1563 = mul nsw i64 0, %add1562
  %add1564 = add nsw i64 %mul1563, 0
  %neg1565 = xor i64 %add1564, -1
  %cmp1566 = icmp eq i64 %neg1565, -1
  %conv1567 = zext i1 %cmp1566 to i32
  %sub1568 = sub nsw i32 0, %conv1567
  %conv1569 = sext i32 %sub1568 to i64
  %289 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1570 = add nsw i64 0, %289
  %mul1571 = mul nsw i64 0, %add1570
  %add1572 = add nsw i64 %mul1571, 1
  %shl1573 = shl i64 %add1572, 62
  %sub1574 = sub nsw i64 %shl1573, 1
  %mul1575 = mul nsw i64 %sub1574, 2
  %add1576 = add nsw i64 %mul1575, 1
  %sub1577 = sub nsw i64 %conv1569, %add1576
  br label %cond.end.1582

cond.false.1578:                                  ; preds = %cond.true.1555
  %290 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1579 = add nsw i64 0, %290
  %mul1580 = mul nsw i64 0, %add1579
  %add1581 = add nsw i64 %mul1580, 0
  br label %cond.end.1582

cond.end.1582:                                    ; preds = %cond.false.1578, %cond.true.1561
  %cond1583 = phi i64 [ %sub1577, %cond.true.1561 ], [ %add1581, %cond.false.1578 ]
  %cmp1584 = icmp eq i64 %cond1583, 0
  br i1 %cmp1584, label %land.lhs.true.1586, label %lor.lhs.false.1589

land.lhs.true.1586:                               ; preds = %cond.end.1582
  %291 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1587 = icmp slt i64 %291, 0
  br i1 %cmp1587, label %cond.true.1724, label %lor.lhs.false.1589

lor.lhs.false.1589:                               ; preds = %land.lhs.true.1586, %cond.end.1582
  br i1 false, label %cond.true.1590, label %cond.false.1650

cond.true.1590:                                   ; preds = %lor.lhs.false.1589
  %292 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1591 = icmp slt i64 %292, 0
  br i1 %cmp1591, label %cond.true.1593, label %cond.false.1616

cond.true.1593:                                   ; preds = %cond.true.1590
  %293 = load i64, i64* @scan_c_stream.name_size, align 8
  %294 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1594 = add nsw i64 0, %294
  %mul1595 = mul nsw i64 0, %add1594
  %sub1596 = sub nsw i64 %mul1595, 1
  %cmp1597 = icmp slt i64 %sub1596, 0
  br i1 %cmp1597, label %cond.true.1599, label %cond.false.1607

cond.true.1599:                                   ; preds = %cond.true.1593
  %295 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1600 = add nsw i64 0, %295
  %mul1601 = mul nsw i64 0, %add1600
  %add1602 = add nsw i64 %mul1601, 1
  %shl1603 = shl i64 %add1602, 62
  %sub1604 = sub nsw i64 %shl1603, 1
  %mul1605 = mul nsw i64 %sub1604, 2
  %add1606 = add nsw i64 %mul1605, 1
  br label %cond.end.1611

cond.false.1607:                                  ; preds = %cond.true.1593
  %296 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1608 = add nsw i64 0, %296
  %mul1609 = mul nsw i64 0, %add1608
  %sub1610 = sub nsw i64 %mul1609, 1
  br label %cond.end.1611

cond.end.1611:                                    ; preds = %cond.false.1607, %cond.true.1599
  %cond1612 = phi i64 [ %add1606, %cond.true.1599 ], [ %sub1610, %cond.false.1607 ]
  %div1613 = sdiv i64 %cond1612, 2
  %cmp1614 = icmp slt i64 %293, %div1613
  br i1 %cmp1614, label %cond.true.1724, label %lor.lhs.false.1710

cond.false.1616:                                  ; preds = %cond.true.1590
  br i1 false, label %cond.true.1617, label %cond.false.1618

cond.true.1617:                                   ; preds = %cond.false.1616
  br i1 false, label %cond.true.1724, label %lor.lhs.false.1710

cond.false.1618:                                  ; preds = %cond.false.1616
  %297 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1619 = add nsw i64 0, %297
  %mul1620 = mul nsw i64 0, %add1619
  %sub1621 = sub nsw i64 %mul1620, 1
  %cmp1622 = icmp slt i64 %sub1621, 0
  br i1 %cmp1622, label %cond.true.1624, label %cond.false.1641

cond.true.1624:                                   ; preds = %cond.false.1618
  %298 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1625 = add nsw i64 0, %298
  %mul1626 = mul nsw i64 0, %add1625
  %add1627 = add nsw i64 %mul1626, 0
  %neg1628 = xor i64 %add1627, -1
  %cmp1629 = icmp eq i64 %neg1628, -1
  %conv1630 = zext i1 %cmp1629 to i32
  %sub1631 = sub nsw i32 0, %conv1630
  %conv1632 = sext i32 %sub1631 to i64
  %299 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1633 = add nsw i64 0, %299
  %mul1634 = mul nsw i64 0, %add1633
  %add1635 = add nsw i64 %mul1634, 1
  %shl1636 = shl i64 %add1635, 62
  %sub1637 = sub nsw i64 %shl1636, 1
  %mul1638 = mul nsw i64 %sub1637, 2
  %add1639 = add nsw i64 %mul1638, 1
  %sub1640 = sub nsw i64 %conv1632, %add1639
  br label %cond.end.1645

cond.false.1641:                                  ; preds = %cond.false.1618
  %300 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1642 = add nsw i64 0, %300
  %mul1643 = mul nsw i64 0, %add1642
  %add1644 = add nsw i64 %mul1643, 0
  br label %cond.end.1645

cond.end.1645:                                    ; preds = %cond.false.1641, %cond.true.1624
  %cond1646 = phi i64 [ %sub1640, %cond.true.1624 ], [ %add1644, %cond.false.1641 ]
  %div1647 = sdiv i64 %cond1646, 2
  %301 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1648 = icmp slt i64 %div1647, %301
  br i1 %cmp1648, label %cond.true.1724, label %lor.lhs.false.1710

cond.false.1650:                                  ; preds = %lor.lhs.false.1589
  br i1 false, label %cond.true.1651, label %cond.false.1652

cond.true.1651:                                   ; preds = %cond.false.1650
  br i1 false, label %cond.true.1724, label %lor.lhs.false.1710

cond.false.1652:                                  ; preds = %cond.false.1650
  %302 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1653 = icmp slt i64 %302, 0
  br i1 %cmp1653, label %cond.true.1655, label %cond.false.1687

cond.true.1655:                                   ; preds = %cond.false.1652
  %303 = load i64, i64* @scan_c_stream.name_size, align 8
  %304 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1656 = add nsw i64 0, %304
  %mul1657 = mul nsw i64 0, %add1656
  %sub1658 = sub nsw i64 %mul1657, 1
  %cmp1659 = icmp slt i64 %sub1658, 0
  br i1 %cmp1659, label %cond.true.1661, label %cond.false.1678

cond.true.1661:                                   ; preds = %cond.true.1655
  %305 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1662 = add nsw i64 0, %305
  %mul1663 = mul nsw i64 0, %add1662
  %add1664 = add nsw i64 %mul1663, 0
  %neg1665 = xor i64 %add1664, -1
  %cmp1666 = icmp eq i64 %neg1665, -1
  %conv1667 = zext i1 %cmp1666 to i32
  %sub1668 = sub nsw i32 0, %conv1667
  %conv1669 = sext i32 %sub1668 to i64
  %306 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1670 = add nsw i64 0, %306
  %mul1671 = mul nsw i64 0, %add1670
  %add1672 = add nsw i64 %mul1671, 1
  %shl1673 = shl i64 %add1672, 62
  %sub1674 = sub nsw i64 %shl1673, 1
  %mul1675 = mul nsw i64 %sub1674, 2
  %add1676 = add nsw i64 %mul1675, 1
  %sub1677 = sub nsw i64 %conv1669, %add1676
  br label %cond.end.1682

cond.false.1678:                                  ; preds = %cond.true.1655
  %307 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1679 = add nsw i64 0, %307
  %mul1680 = mul nsw i64 0, %add1679
  %add1681 = add nsw i64 %mul1680, 0
  br label %cond.end.1682

cond.end.1682:                                    ; preds = %cond.false.1678, %cond.true.1661
  %cond1683 = phi i64 [ %sub1677, %cond.true.1661 ], [ %add1681, %cond.false.1678 ]
  %div1684 = sdiv i64 %cond1683, 2
  %cmp1685 = icmp slt i64 %303, %div1684
  br i1 %cmp1685, label %cond.true.1724, label %lor.lhs.false.1710

cond.false.1687:                                  ; preds = %cond.false.1652
  %308 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1688 = add nsw i64 0, %308
  %mul1689 = mul nsw i64 0, %add1688
  %sub1690 = sub nsw i64 %mul1689, 1
  %cmp1691 = icmp slt i64 %sub1690, 0
  br i1 %cmp1691, label %cond.true.1693, label %cond.false.1701

cond.true.1693:                                   ; preds = %cond.false.1687
  %309 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1694 = add nsw i64 0, %309
  %mul1695 = mul nsw i64 0, %add1694
  %add1696 = add nsw i64 %mul1695, 1
  %shl1697 = shl i64 %add1696, 62
  %sub1698 = sub nsw i64 %shl1697, 1
  %mul1699 = mul nsw i64 %sub1698, 2
  %add1700 = add nsw i64 %mul1699, 1
  br label %cond.end.1705

cond.false.1701:                                  ; preds = %cond.false.1687
  %310 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1702 = add nsw i64 0, %310
  %mul1703 = mul nsw i64 0, %add1702
  %sub1704 = sub nsw i64 %mul1703, 1
  br label %cond.end.1705

cond.end.1705:                                    ; preds = %cond.false.1701, %cond.true.1693
  %cond1706 = phi i64 [ %add1700, %cond.true.1693 ], [ %sub1704, %cond.false.1701 ]
  %div1707 = sdiv i64 %cond1706, 2
  %311 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1708 = icmp slt i64 %div1707, %311
  br i1 %cmp1708, label %cond.true.1724, label %lor.lhs.false.1710

lor.lhs.false.1710:                               ; preds = %cond.end.1705, %cond.end.1682, %cond.true.1651, %cond.end.1645, %cond.true.1617, %cond.end.1611
  %312 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1711 = mul nsw i64 %312, 2
  %mul1712 = mul nsw i64 0, %mul1711
  %sub1713 = sub nsw i64 %mul1712, 1
  %cmp1714 = icmp slt i64 %sub1713, 0
  br i1 %cmp1714, label %land.lhs.true.1716, label %lor.lhs.false.1720

land.lhs.true.1716:                               ; preds = %lor.lhs.false.1710
  %313 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1717 = mul nsw i64 %313, 2
  %cmp1718 = icmp slt i64 %mul1717, -9223372036854775808
  br i1 %cmp1718, label %cond.true.1724, label %lor.lhs.false.1720

lor.lhs.false.1720:                               ; preds = %land.lhs.true.1716, %lor.lhs.false.1710
  %314 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1721 = mul nsw i64 %314, 2
  %cmp1722 = icmp slt i64 9223372036854775807, %mul1721
  br i1 %cmp1722, label %cond.true.1724, label %cond.false.1736

cond.true.1724:                                   ; preds = %lor.lhs.false.1720, %land.lhs.true.1716, %cond.end.1705, %cond.end.1682, %cond.true.1651, %cond.end.1645, %cond.true.1617, %cond.end.1611, %land.lhs.true.1586
  %315 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1725 = mul i64 %315, 2
  %cmp1726 = icmp ule i64 %mul1725, 9223372036854775807
  br i1 %cmp1726, label %cond.true.1728, label %cond.false.1730

cond.true.1728:                                   ; preds = %cond.true.1724
  %316 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1729 = mul i64 %316, 2
  br label %cond.end.1734

cond.false.1730:                                  ; preds = %cond.true.1724
  %317 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1731 = mul i64 %317, 2
  %sub1732 = sub i64 %mul1731, -9223372036854775808
  %add1733 = add nsw i64 %sub1732, -9223372036854775808
  br label %cond.end.1734

cond.end.1734:                                    ; preds = %cond.false.1730, %cond.true.1728
  %cond1735 = phi i64 [ %mul1729, %cond.true.1728 ], [ %add1733, %cond.false.1730 ]
  store i64 %cond1735, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.1736:                                  ; preds = %lor.lhs.false.1720
  %318 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1737 = mul i64 %318, 2
  %cmp1738 = icmp ule i64 %mul1737, 9223372036854775807
  br i1 %cmp1738, label %cond.true.1740, label %cond.false.1742

cond.true.1740:                                   ; preds = %cond.false.1736
  %319 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1741 = mul i64 %319, 2
  br label %cond.end.1746

cond.false.1742:                                  ; preds = %cond.false.1736
  %320 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1743 = mul i64 %320, 2
  %sub1744 = sub i64 %mul1743, -9223372036854775808
  %add1745 = add nsw i64 %sub1744, -9223372036854775808
  br label %cond.end.1746

cond.end.1746:                                    ; preds = %cond.false.1742, %cond.true.1740
  %cond1747 = phi i64 [ %mul1741, %cond.true.1740 ], [ %add1745, %cond.false.1742 ]
  store i64 %cond1747, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

cond.false.1748:                                  ; preds = %cond.true.1554
  %321 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1749 = add nsw i64 0, %321
  %mul1750 = mul nsw i64 0, %add1749
  %sub1751 = sub nsw i64 %mul1750, 1
  %cmp1752 = icmp slt i64 %sub1751, 0
  br i1 %cmp1752, label %cond.true.1754, label %cond.false.1771

cond.true.1754:                                   ; preds = %cond.false.1748
  %322 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1755 = add nsw i64 0, %322
  %mul1756 = mul nsw i64 0, %add1755
  %add1757 = add nsw i64 %mul1756, 0
  %neg1758 = xor i64 %add1757, -1
  %cmp1759 = icmp eq i64 %neg1758, -1
  %conv1760 = zext i1 %cmp1759 to i32
  %sub1761 = sub nsw i32 0, %conv1760
  %conv1762 = sext i32 %sub1761 to i64
  %323 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1763 = add nsw i64 0, %323
  %mul1764 = mul nsw i64 0, %add1763
  %add1765 = add nsw i64 %mul1764, 1
  %shl1766 = shl i64 %add1765, 62
  %sub1767 = sub nsw i64 %shl1766, 1
  %mul1768 = mul nsw i64 %sub1767, 2
  %add1769 = add nsw i64 %mul1768, 1
  %sub1770 = sub nsw i64 %conv1762, %add1769
  br label %cond.end.1775

cond.false.1771:                                  ; preds = %cond.false.1748
  %324 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1772 = add nsw i64 0, %324
  %mul1773 = mul nsw i64 0, %add1772
  %add1774 = add nsw i64 %mul1773, 0
  br label %cond.end.1775

cond.end.1775:                                    ; preds = %cond.false.1771, %cond.true.1754
  %cond1776 = phi i64 [ %sub1770, %cond.true.1754 ], [ %add1774, %cond.false.1771 ]
  %cmp1777 = icmp eq i64 %cond1776, 0
  br i1 %cmp1777, label %land.lhs.true.1779, label %lor.lhs.false.1782

land.lhs.true.1779:                               ; preds = %cond.end.1775
  %325 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1780 = icmp slt i64 %325, 0
  br i1 %cmp1780, label %cond.true.1917, label %lor.lhs.false.1782

lor.lhs.false.1782:                               ; preds = %land.lhs.true.1779, %cond.end.1775
  br i1 false, label %cond.true.1783, label %cond.false.1843

cond.true.1783:                                   ; preds = %lor.lhs.false.1782
  %326 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1784 = icmp slt i64 %326, 0
  br i1 %cmp1784, label %cond.true.1786, label %cond.false.1809

cond.true.1786:                                   ; preds = %cond.true.1783
  %327 = load i64, i64* @scan_c_stream.name_size, align 8
  %328 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1787 = add nsw i64 0, %328
  %mul1788 = mul nsw i64 0, %add1787
  %sub1789 = sub nsw i64 %mul1788, 1
  %cmp1790 = icmp slt i64 %sub1789, 0
  br i1 %cmp1790, label %cond.true.1792, label %cond.false.1800

cond.true.1792:                                   ; preds = %cond.true.1786
  %329 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1793 = add nsw i64 0, %329
  %mul1794 = mul nsw i64 0, %add1793
  %add1795 = add nsw i64 %mul1794, 1
  %shl1796 = shl i64 %add1795, 62
  %sub1797 = sub nsw i64 %shl1796, 1
  %mul1798 = mul nsw i64 %sub1797, 2
  %add1799 = add nsw i64 %mul1798, 1
  br label %cond.end.1804

cond.false.1800:                                  ; preds = %cond.true.1786
  %330 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1801 = add nsw i64 0, %330
  %mul1802 = mul nsw i64 0, %add1801
  %sub1803 = sub nsw i64 %mul1802, 1
  br label %cond.end.1804

cond.end.1804:                                    ; preds = %cond.false.1800, %cond.true.1792
  %cond1805 = phi i64 [ %add1799, %cond.true.1792 ], [ %sub1803, %cond.false.1800 ]
  %div1806 = sdiv i64 %cond1805, 2
  %cmp1807 = icmp slt i64 %327, %div1806
  br i1 %cmp1807, label %cond.true.1917, label %lor.lhs.false.1903

cond.false.1809:                                  ; preds = %cond.true.1783
  br i1 false, label %cond.true.1810, label %cond.false.1811

cond.true.1810:                                   ; preds = %cond.false.1809
  br i1 false, label %cond.true.1917, label %lor.lhs.false.1903

cond.false.1811:                                  ; preds = %cond.false.1809
  %331 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1812 = add nsw i64 0, %331
  %mul1813 = mul nsw i64 0, %add1812
  %sub1814 = sub nsw i64 %mul1813, 1
  %cmp1815 = icmp slt i64 %sub1814, 0
  br i1 %cmp1815, label %cond.true.1817, label %cond.false.1834

cond.true.1817:                                   ; preds = %cond.false.1811
  %332 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1818 = add nsw i64 0, %332
  %mul1819 = mul nsw i64 0, %add1818
  %add1820 = add nsw i64 %mul1819, 0
  %neg1821 = xor i64 %add1820, -1
  %cmp1822 = icmp eq i64 %neg1821, -1
  %conv1823 = zext i1 %cmp1822 to i32
  %sub1824 = sub nsw i32 0, %conv1823
  %conv1825 = sext i32 %sub1824 to i64
  %333 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1826 = add nsw i64 0, %333
  %mul1827 = mul nsw i64 0, %add1826
  %add1828 = add nsw i64 %mul1827, 1
  %shl1829 = shl i64 %add1828, 62
  %sub1830 = sub nsw i64 %shl1829, 1
  %mul1831 = mul nsw i64 %sub1830, 2
  %add1832 = add nsw i64 %mul1831, 1
  %sub1833 = sub nsw i64 %conv1825, %add1832
  br label %cond.end.1838

cond.false.1834:                                  ; preds = %cond.false.1811
  %334 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1835 = add nsw i64 0, %334
  %mul1836 = mul nsw i64 0, %add1835
  %add1837 = add nsw i64 %mul1836, 0
  br label %cond.end.1838

cond.end.1838:                                    ; preds = %cond.false.1834, %cond.true.1817
  %cond1839 = phi i64 [ %sub1833, %cond.true.1817 ], [ %add1837, %cond.false.1834 ]
  %div1840 = sdiv i64 %cond1839, 2
  %335 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1841 = icmp slt i64 %div1840, %335
  br i1 %cmp1841, label %cond.true.1917, label %lor.lhs.false.1903

cond.false.1843:                                  ; preds = %lor.lhs.false.1782
  br i1 false, label %cond.true.1844, label %cond.false.1845

cond.true.1844:                                   ; preds = %cond.false.1843
  br i1 false, label %cond.true.1917, label %lor.lhs.false.1903

cond.false.1845:                                  ; preds = %cond.false.1843
  %336 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1846 = icmp slt i64 %336, 0
  br i1 %cmp1846, label %cond.true.1848, label %cond.false.1880

cond.true.1848:                                   ; preds = %cond.false.1845
  %337 = load i64, i64* @scan_c_stream.name_size, align 8
  %338 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1849 = add nsw i64 0, %338
  %mul1850 = mul nsw i64 0, %add1849
  %sub1851 = sub nsw i64 %mul1850, 1
  %cmp1852 = icmp slt i64 %sub1851, 0
  br i1 %cmp1852, label %cond.true.1854, label %cond.false.1871

cond.true.1854:                                   ; preds = %cond.true.1848
  %339 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1855 = add nsw i64 0, %339
  %mul1856 = mul nsw i64 0, %add1855
  %add1857 = add nsw i64 %mul1856, 0
  %neg1858 = xor i64 %add1857, -1
  %cmp1859 = icmp eq i64 %neg1858, -1
  %conv1860 = zext i1 %cmp1859 to i32
  %sub1861 = sub nsw i32 0, %conv1860
  %conv1862 = sext i32 %sub1861 to i64
  %340 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1863 = add nsw i64 0, %340
  %mul1864 = mul nsw i64 0, %add1863
  %add1865 = add nsw i64 %mul1864, 1
  %shl1866 = shl i64 %add1865, 62
  %sub1867 = sub nsw i64 %shl1866, 1
  %mul1868 = mul nsw i64 %sub1867, 2
  %add1869 = add nsw i64 %mul1868, 1
  %sub1870 = sub nsw i64 %conv1862, %add1869
  br label %cond.end.1875

cond.false.1871:                                  ; preds = %cond.true.1848
  %341 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1872 = add nsw i64 0, %341
  %mul1873 = mul nsw i64 0, %add1872
  %add1874 = add nsw i64 %mul1873, 0
  br label %cond.end.1875

cond.end.1875:                                    ; preds = %cond.false.1871, %cond.true.1854
  %cond1876 = phi i64 [ %sub1870, %cond.true.1854 ], [ %add1874, %cond.false.1871 ]
  %div1877 = sdiv i64 %cond1876, 2
  %cmp1878 = icmp slt i64 %337, %div1877
  br i1 %cmp1878, label %cond.true.1917, label %lor.lhs.false.1903

cond.false.1880:                                  ; preds = %cond.false.1845
  %342 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1881 = add nsw i64 0, %342
  %mul1882 = mul nsw i64 0, %add1881
  %sub1883 = sub nsw i64 %mul1882, 1
  %cmp1884 = icmp slt i64 %sub1883, 0
  br i1 %cmp1884, label %cond.true.1886, label %cond.false.1894

cond.true.1886:                                   ; preds = %cond.false.1880
  %343 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1887 = add nsw i64 0, %343
  %mul1888 = mul nsw i64 0, %add1887
  %add1889 = add nsw i64 %mul1888, 1
  %shl1890 = shl i64 %add1889, 62
  %sub1891 = sub nsw i64 %shl1890, 1
  %mul1892 = mul nsw i64 %sub1891, 2
  %add1893 = add nsw i64 %mul1892, 1
  br label %cond.end.1898

cond.false.1894:                                  ; preds = %cond.false.1880
  %344 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1895 = add nsw i64 0, %344
  %mul1896 = mul nsw i64 0, %add1895
  %sub1897 = sub nsw i64 %mul1896, 1
  br label %cond.end.1898

cond.end.1898:                                    ; preds = %cond.false.1894, %cond.true.1886
  %cond1899 = phi i64 [ %add1893, %cond.true.1886 ], [ %sub1897, %cond.false.1894 ]
  %div1900 = sdiv i64 %cond1899, 2
  %345 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1901 = icmp slt i64 %div1900, %345
  br i1 %cmp1901, label %cond.true.1917, label %lor.lhs.false.1903

lor.lhs.false.1903:                               ; preds = %cond.end.1898, %cond.end.1875, %cond.true.1844, %cond.end.1838, %cond.true.1810, %cond.end.1804
  %346 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1904 = mul nsw i64 %346, 2
  %mul1905 = mul nsw i64 0, %mul1904
  %sub1906 = sub nsw i64 %mul1905, 1
  %cmp1907 = icmp slt i64 %sub1906, 0
  br i1 %cmp1907, label %land.lhs.true.1909, label %lor.lhs.false.1913

land.lhs.true.1909:                               ; preds = %lor.lhs.false.1903
  %347 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1910 = mul nsw i64 %347, 2
  %cmp1911 = icmp slt i64 %mul1910, -9223372036854775808
  br i1 %cmp1911, label %cond.true.1917, label %lor.lhs.false.1913

lor.lhs.false.1913:                               ; preds = %land.lhs.true.1909, %lor.lhs.false.1903
  %348 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1914 = mul nsw i64 %348, 2
  %cmp1915 = icmp slt i64 9223372036854775807, %mul1914
  br i1 %cmp1915, label %cond.true.1917, label %cond.false.1929

cond.true.1917:                                   ; preds = %lor.lhs.false.1913, %land.lhs.true.1909, %cond.end.1898, %cond.end.1875, %cond.true.1844, %cond.end.1838, %cond.true.1810, %cond.end.1804, %land.lhs.true.1779
  %349 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1918 = mul i64 %349, 2
  %cmp1919 = icmp ule i64 %mul1918, 9223372036854775807
  br i1 %cmp1919, label %cond.true.1921, label %cond.false.1923

cond.true.1921:                                   ; preds = %cond.true.1917
  %350 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1922 = mul i64 %350, 2
  br label %cond.end.1927

cond.false.1923:                                  ; preds = %cond.true.1917
  %351 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1924 = mul i64 %351, 2
  %sub1925 = sub i64 %mul1924, -9223372036854775808
  %add1926 = add nsw i64 %sub1925, -9223372036854775808
  br label %cond.end.1927

cond.end.1927:                                    ; preds = %cond.false.1923, %cond.true.1921
  %cond1928 = phi i64 [ %mul1922, %cond.true.1921 ], [ %add1926, %cond.false.1923 ]
  store i64 %cond1928, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.1929:                                  ; preds = %lor.lhs.false.1913
  %352 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1930 = mul i64 %352, 2
  %cmp1931 = icmp ule i64 %mul1930, 9223372036854775807
  br i1 %cmp1931, label %cond.true.1933, label %cond.false.1935

cond.true.1933:                                   ; preds = %cond.false.1929
  %353 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1934 = mul i64 %353, 2
  br label %cond.end.1939

cond.false.1935:                                  ; preds = %cond.false.1929
  %354 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul1936 = mul i64 %354, 2
  %sub1937 = sub i64 %mul1936, -9223372036854775808
  %add1938 = add nsw i64 %sub1937, -9223372036854775808
  br label %cond.end.1939

cond.end.1939:                                    ; preds = %cond.false.1935, %cond.true.1933
  %cond1940 = phi i64 [ %mul1934, %cond.true.1933 ], [ %add1938, %cond.false.1935 ]
  store i64 %cond1940, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

cond.false.1941:                                  ; preds = %cond.false.1553
  br i1 false, label %cond.true.1942, label %cond.false.2135

cond.true.1942:                                   ; preds = %cond.false.1941
  %355 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1943 = add nsw i64 0, %355
  %mul1944 = mul nsw i64 0, %add1943
  %sub1945 = sub nsw i64 %mul1944, 1
  %cmp1946 = icmp slt i64 %sub1945, 0
  br i1 %cmp1946, label %cond.true.1948, label %cond.false.1965

cond.true.1948:                                   ; preds = %cond.true.1942
  %356 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1949 = add nsw i64 0, %356
  %mul1950 = mul nsw i64 0, %add1949
  %add1951 = add nsw i64 %mul1950, 0
  %neg1952 = xor i64 %add1951, -1
  %cmp1953 = icmp eq i64 %neg1952, -1
  %conv1954 = zext i1 %cmp1953 to i32
  %sub1955 = sub nsw i32 0, %conv1954
  %conv1956 = sext i32 %sub1955 to i64
  %357 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1957 = add nsw i64 0, %357
  %mul1958 = mul nsw i64 0, %add1957
  %add1959 = add nsw i64 %mul1958, 1
  %shl1960 = shl i64 %add1959, 62
  %sub1961 = sub nsw i64 %shl1960, 1
  %mul1962 = mul nsw i64 %sub1961, 2
  %add1963 = add nsw i64 %mul1962, 1
  %sub1964 = sub nsw i64 %conv1956, %add1963
  br label %cond.end.1969

cond.false.1965:                                  ; preds = %cond.true.1942
  %358 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1966 = add nsw i64 0, %358
  %mul1967 = mul nsw i64 0, %add1966
  %add1968 = add nsw i64 %mul1967, 0
  br label %cond.end.1969

cond.end.1969:                                    ; preds = %cond.false.1965, %cond.true.1948
  %cond1970 = phi i64 [ %sub1964, %cond.true.1948 ], [ %add1968, %cond.false.1965 ]
  %cmp1971 = icmp eq i64 %cond1970, 0
  br i1 %cmp1971, label %land.lhs.true.1973, label %lor.lhs.false.1976

land.lhs.true.1973:                               ; preds = %cond.end.1969
  %359 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1974 = icmp slt i64 %359, 0
  br i1 %cmp1974, label %cond.true.2111, label %lor.lhs.false.1976

lor.lhs.false.1976:                               ; preds = %land.lhs.true.1973, %cond.end.1969
  br i1 false, label %cond.true.1977, label %cond.false.2037

cond.true.1977:                                   ; preds = %lor.lhs.false.1976
  %360 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp1978 = icmp slt i64 %360, 0
  br i1 %cmp1978, label %cond.true.1980, label %cond.false.2003

cond.true.1980:                                   ; preds = %cond.true.1977
  %361 = load i64, i64* @scan_c_stream.name_size, align 8
  %362 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1981 = add nsw i64 0, %362
  %mul1982 = mul nsw i64 0, %add1981
  %sub1983 = sub nsw i64 %mul1982, 1
  %cmp1984 = icmp slt i64 %sub1983, 0
  br i1 %cmp1984, label %cond.true.1986, label %cond.false.1994

cond.true.1986:                                   ; preds = %cond.true.1980
  %363 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1987 = add nsw i64 0, %363
  %mul1988 = mul nsw i64 0, %add1987
  %add1989 = add nsw i64 %mul1988, 1
  %shl1990 = shl i64 %add1989, 62
  %sub1991 = sub nsw i64 %shl1990, 1
  %mul1992 = mul nsw i64 %sub1991, 2
  %add1993 = add nsw i64 %mul1992, 1
  br label %cond.end.1998

cond.false.1994:                                  ; preds = %cond.true.1980
  %364 = load i64, i64* @scan_c_stream.name_size, align 8
  %add1995 = add nsw i64 0, %364
  %mul1996 = mul nsw i64 0, %add1995
  %sub1997 = sub nsw i64 %mul1996, 1
  br label %cond.end.1998

cond.end.1998:                                    ; preds = %cond.false.1994, %cond.true.1986
  %cond1999 = phi i64 [ %add1993, %cond.true.1986 ], [ %sub1997, %cond.false.1994 ]
  %div2000 = sdiv i64 %cond1999, 2
  %cmp2001 = icmp slt i64 %361, %div2000
  br i1 %cmp2001, label %cond.true.2111, label %lor.lhs.false.2097

cond.false.2003:                                  ; preds = %cond.true.1977
  br i1 false, label %cond.true.2004, label %cond.false.2005

cond.true.2004:                                   ; preds = %cond.false.2003
  br i1 false, label %cond.true.2111, label %lor.lhs.false.2097

cond.false.2005:                                  ; preds = %cond.false.2003
  %365 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2006 = add nsw i64 0, %365
  %mul2007 = mul nsw i64 0, %add2006
  %sub2008 = sub nsw i64 %mul2007, 1
  %cmp2009 = icmp slt i64 %sub2008, 0
  br i1 %cmp2009, label %cond.true.2011, label %cond.false.2028

cond.true.2011:                                   ; preds = %cond.false.2005
  %366 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2012 = add nsw i64 0, %366
  %mul2013 = mul nsw i64 0, %add2012
  %add2014 = add nsw i64 %mul2013, 0
  %neg2015 = xor i64 %add2014, -1
  %cmp2016 = icmp eq i64 %neg2015, -1
  %conv2017 = zext i1 %cmp2016 to i32
  %sub2018 = sub nsw i32 0, %conv2017
  %conv2019 = sext i32 %sub2018 to i64
  %367 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2020 = add nsw i64 0, %367
  %mul2021 = mul nsw i64 0, %add2020
  %add2022 = add nsw i64 %mul2021, 1
  %shl2023 = shl i64 %add2022, 62
  %sub2024 = sub nsw i64 %shl2023, 1
  %mul2025 = mul nsw i64 %sub2024, 2
  %add2026 = add nsw i64 %mul2025, 1
  %sub2027 = sub nsw i64 %conv2019, %add2026
  br label %cond.end.2032

cond.false.2028:                                  ; preds = %cond.false.2005
  %368 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2029 = add nsw i64 0, %368
  %mul2030 = mul nsw i64 0, %add2029
  %add2031 = add nsw i64 %mul2030, 0
  br label %cond.end.2032

cond.end.2032:                                    ; preds = %cond.false.2028, %cond.true.2011
  %cond2033 = phi i64 [ %sub2027, %cond.true.2011 ], [ %add2031, %cond.false.2028 ]
  %div2034 = sdiv i64 %cond2033, 2
  %369 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp2035 = icmp slt i64 %div2034, %369
  br i1 %cmp2035, label %cond.true.2111, label %lor.lhs.false.2097

cond.false.2037:                                  ; preds = %lor.lhs.false.1976
  br i1 false, label %cond.true.2038, label %cond.false.2039

cond.true.2038:                                   ; preds = %cond.false.2037
  br i1 false, label %cond.true.2111, label %lor.lhs.false.2097

cond.false.2039:                                  ; preds = %cond.false.2037
  %370 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp2040 = icmp slt i64 %370, 0
  br i1 %cmp2040, label %cond.true.2042, label %cond.false.2074

cond.true.2042:                                   ; preds = %cond.false.2039
  %371 = load i64, i64* @scan_c_stream.name_size, align 8
  %372 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2043 = add nsw i64 0, %372
  %mul2044 = mul nsw i64 0, %add2043
  %sub2045 = sub nsw i64 %mul2044, 1
  %cmp2046 = icmp slt i64 %sub2045, 0
  br i1 %cmp2046, label %cond.true.2048, label %cond.false.2065

cond.true.2048:                                   ; preds = %cond.true.2042
  %373 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2049 = add nsw i64 0, %373
  %mul2050 = mul nsw i64 0, %add2049
  %add2051 = add nsw i64 %mul2050, 0
  %neg2052 = xor i64 %add2051, -1
  %cmp2053 = icmp eq i64 %neg2052, -1
  %conv2054 = zext i1 %cmp2053 to i32
  %sub2055 = sub nsw i32 0, %conv2054
  %conv2056 = sext i32 %sub2055 to i64
  %374 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2057 = add nsw i64 0, %374
  %mul2058 = mul nsw i64 0, %add2057
  %add2059 = add nsw i64 %mul2058, 1
  %shl2060 = shl i64 %add2059, 62
  %sub2061 = sub nsw i64 %shl2060, 1
  %mul2062 = mul nsw i64 %sub2061, 2
  %add2063 = add nsw i64 %mul2062, 1
  %sub2064 = sub nsw i64 %conv2056, %add2063
  br label %cond.end.2069

cond.false.2065:                                  ; preds = %cond.true.2042
  %375 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2066 = add nsw i64 0, %375
  %mul2067 = mul nsw i64 0, %add2066
  %add2068 = add nsw i64 %mul2067, 0
  br label %cond.end.2069

cond.end.2069:                                    ; preds = %cond.false.2065, %cond.true.2048
  %cond2070 = phi i64 [ %sub2064, %cond.true.2048 ], [ %add2068, %cond.false.2065 ]
  %div2071 = sdiv i64 %cond2070, 2
  %cmp2072 = icmp slt i64 %371, %div2071
  br i1 %cmp2072, label %cond.true.2111, label %lor.lhs.false.2097

cond.false.2074:                                  ; preds = %cond.false.2039
  %376 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2075 = add nsw i64 0, %376
  %mul2076 = mul nsw i64 0, %add2075
  %sub2077 = sub nsw i64 %mul2076, 1
  %cmp2078 = icmp slt i64 %sub2077, 0
  br i1 %cmp2078, label %cond.true.2080, label %cond.false.2088

cond.true.2080:                                   ; preds = %cond.false.2074
  %377 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2081 = add nsw i64 0, %377
  %mul2082 = mul nsw i64 0, %add2081
  %add2083 = add nsw i64 %mul2082, 1
  %shl2084 = shl i64 %add2083, 62
  %sub2085 = sub nsw i64 %shl2084, 1
  %mul2086 = mul nsw i64 %sub2085, 2
  %add2087 = add nsw i64 %mul2086, 1
  br label %cond.end.2092

cond.false.2088:                                  ; preds = %cond.false.2074
  %378 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2089 = add nsw i64 0, %378
  %mul2090 = mul nsw i64 0, %add2089
  %sub2091 = sub nsw i64 %mul2090, 1
  br label %cond.end.2092

cond.end.2092:                                    ; preds = %cond.false.2088, %cond.true.2080
  %cond2093 = phi i64 [ %add2087, %cond.true.2080 ], [ %sub2091, %cond.false.2088 ]
  %div2094 = sdiv i64 %cond2093, 2
  %379 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp2095 = icmp slt i64 %div2094, %379
  br i1 %cmp2095, label %cond.true.2111, label %lor.lhs.false.2097

lor.lhs.false.2097:                               ; preds = %cond.end.2092, %cond.end.2069, %cond.true.2038, %cond.end.2032, %cond.true.2004, %cond.end.1998
  %380 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2098 = mul nsw i64 %380, 2
  %mul2099 = mul nsw i64 0, %mul2098
  %sub2100 = sub nsw i64 %mul2099, 1
  %cmp2101 = icmp slt i64 %sub2100, 0
  br i1 %cmp2101, label %land.lhs.true.2103, label %lor.lhs.false.2107

land.lhs.true.2103:                               ; preds = %lor.lhs.false.2097
  %381 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2104 = mul nsw i64 %381, 2
  %cmp2105 = icmp slt i64 %mul2104, -9223372036854775808
  br i1 %cmp2105, label %cond.true.2111, label %lor.lhs.false.2107

lor.lhs.false.2107:                               ; preds = %land.lhs.true.2103, %lor.lhs.false.2097
  %382 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2108 = mul nsw i64 %382, 2
  %cmp2109 = icmp slt i64 9223372036854775807, %mul2108
  br i1 %cmp2109, label %cond.true.2111, label %cond.false.2123

cond.true.2111:                                   ; preds = %lor.lhs.false.2107, %land.lhs.true.2103, %cond.end.2092, %cond.end.2069, %cond.true.2038, %cond.end.2032, %cond.true.2004, %cond.end.1998, %land.lhs.true.1973
  %383 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2112 = mul i64 %383, 2
  %cmp2113 = icmp ule i64 %mul2112, 9223372036854775807
  br i1 %cmp2113, label %cond.true.2115, label %cond.false.2117

cond.true.2115:                                   ; preds = %cond.true.2111
  %384 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2116 = mul i64 %384, 2
  br label %cond.end.2121

cond.false.2117:                                  ; preds = %cond.true.2111
  %385 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2118 = mul i64 %385, 2
  %sub2119 = sub i64 %mul2118, -9223372036854775808
  %add2120 = add nsw i64 %sub2119, -9223372036854775808
  br label %cond.end.2121

cond.end.2121:                                    ; preds = %cond.false.2117, %cond.true.2115
  %cond2122 = phi i64 [ %mul2116, %cond.true.2115 ], [ %add2120, %cond.false.2117 ]
  store i64 %cond2122, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.2123:                                  ; preds = %lor.lhs.false.2107
  %386 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2124 = mul i64 %386, 2
  %cmp2125 = icmp ule i64 %mul2124, 9223372036854775807
  br i1 %cmp2125, label %cond.true.2127, label %cond.false.2129

cond.true.2127:                                   ; preds = %cond.false.2123
  %387 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2128 = mul i64 %387, 2
  br label %cond.end.2133

cond.false.2129:                                  ; preds = %cond.false.2123
  %388 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2130 = mul i64 %388, 2
  %sub2131 = sub i64 %mul2130, -9223372036854775808
  %add2132 = add nsw i64 %sub2131, -9223372036854775808
  br label %cond.end.2133

cond.end.2133:                                    ; preds = %cond.false.2129, %cond.true.2127
  %cond2134 = phi i64 [ %mul2128, %cond.true.2127 ], [ %add2132, %cond.false.2129 ]
  store i64 %cond2134, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

cond.false.2135:                                  ; preds = %cond.false.1941
  %389 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2136 = add nsw i64 0, %389
  %mul2137 = mul nsw i64 0, %add2136
  %sub2138 = sub nsw i64 %mul2137, 1
  %cmp2139 = icmp slt i64 %sub2138, 0
  br i1 %cmp2139, label %cond.true.2141, label %cond.false.2158

cond.true.2141:                                   ; preds = %cond.false.2135
  %390 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2142 = add nsw i64 0, %390
  %mul2143 = mul nsw i64 0, %add2142
  %add2144 = add nsw i64 %mul2143, 0
  %neg2145 = xor i64 %add2144, -1
  %cmp2146 = icmp eq i64 %neg2145, -1
  %conv2147 = zext i1 %cmp2146 to i32
  %sub2148 = sub nsw i32 0, %conv2147
  %conv2149 = sext i32 %sub2148 to i64
  %391 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2150 = add nsw i64 0, %391
  %mul2151 = mul nsw i64 0, %add2150
  %add2152 = add nsw i64 %mul2151, 1
  %shl2153 = shl i64 %add2152, 62
  %sub2154 = sub nsw i64 %shl2153, 1
  %mul2155 = mul nsw i64 %sub2154, 2
  %add2156 = add nsw i64 %mul2155, 1
  %sub2157 = sub nsw i64 %conv2149, %add2156
  br label %cond.end.2162

cond.false.2158:                                  ; preds = %cond.false.2135
  %392 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2159 = add nsw i64 0, %392
  %mul2160 = mul nsw i64 0, %add2159
  %add2161 = add nsw i64 %mul2160, 0
  br label %cond.end.2162

cond.end.2162:                                    ; preds = %cond.false.2158, %cond.true.2141
  %cond2163 = phi i64 [ %sub2157, %cond.true.2141 ], [ %add2161, %cond.false.2158 ]
  %cmp2164 = icmp eq i64 %cond2163, 0
  br i1 %cmp2164, label %land.lhs.true.2166, label %lor.lhs.false.2169

land.lhs.true.2166:                               ; preds = %cond.end.2162
  %393 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp2167 = icmp slt i64 %393, 0
  br i1 %cmp2167, label %cond.true.2304, label %lor.lhs.false.2169

lor.lhs.false.2169:                               ; preds = %land.lhs.true.2166, %cond.end.2162
  br i1 false, label %cond.true.2170, label %cond.false.2230

cond.true.2170:                                   ; preds = %lor.lhs.false.2169
  %394 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp2171 = icmp slt i64 %394, 0
  br i1 %cmp2171, label %cond.true.2173, label %cond.false.2196

cond.true.2173:                                   ; preds = %cond.true.2170
  %395 = load i64, i64* @scan_c_stream.name_size, align 8
  %396 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2174 = add nsw i64 0, %396
  %mul2175 = mul nsw i64 0, %add2174
  %sub2176 = sub nsw i64 %mul2175, 1
  %cmp2177 = icmp slt i64 %sub2176, 0
  br i1 %cmp2177, label %cond.true.2179, label %cond.false.2187

cond.true.2179:                                   ; preds = %cond.true.2173
  %397 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2180 = add nsw i64 0, %397
  %mul2181 = mul nsw i64 0, %add2180
  %add2182 = add nsw i64 %mul2181, 1
  %shl2183 = shl i64 %add2182, 62
  %sub2184 = sub nsw i64 %shl2183, 1
  %mul2185 = mul nsw i64 %sub2184, 2
  %add2186 = add nsw i64 %mul2185, 1
  br label %cond.end.2191

cond.false.2187:                                  ; preds = %cond.true.2173
  %398 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2188 = add nsw i64 0, %398
  %mul2189 = mul nsw i64 0, %add2188
  %sub2190 = sub nsw i64 %mul2189, 1
  br label %cond.end.2191

cond.end.2191:                                    ; preds = %cond.false.2187, %cond.true.2179
  %cond2192 = phi i64 [ %add2186, %cond.true.2179 ], [ %sub2190, %cond.false.2187 ]
  %div2193 = sdiv i64 %cond2192, 2
  %cmp2194 = icmp slt i64 %395, %div2193
  br i1 %cmp2194, label %cond.true.2304, label %lor.lhs.false.2290

cond.false.2196:                                  ; preds = %cond.true.2170
  br i1 false, label %cond.true.2197, label %cond.false.2198

cond.true.2197:                                   ; preds = %cond.false.2196
  br i1 false, label %cond.true.2304, label %lor.lhs.false.2290

cond.false.2198:                                  ; preds = %cond.false.2196
  %399 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2199 = add nsw i64 0, %399
  %mul2200 = mul nsw i64 0, %add2199
  %sub2201 = sub nsw i64 %mul2200, 1
  %cmp2202 = icmp slt i64 %sub2201, 0
  br i1 %cmp2202, label %cond.true.2204, label %cond.false.2221

cond.true.2204:                                   ; preds = %cond.false.2198
  %400 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2205 = add nsw i64 0, %400
  %mul2206 = mul nsw i64 0, %add2205
  %add2207 = add nsw i64 %mul2206, 0
  %neg2208 = xor i64 %add2207, -1
  %cmp2209 = icmp eq i64 %neg2208, -1
  %conv2210 = zext i1 %cmp2209 to i32
  %sub2211 = sub nsw i32 0, %conv2210
  %conv2212 = sext i32 %sub2211 to i64
  %401 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2213 = add nsw i64 0, %401
  %mul2214 = mul nsw i64 0, %add2213
  %add2215 = add nsw i64 %mul2214, 1
  %shl2216 = shl i64 %add2215, 62
  %sub2217 = sub nsw i64 %shl2216, 1
  %mul2218 = mul nsw i64 %sub2217, 2
  %add2219 = add nsw i64 %mul2218, 1
  %sub2220 = sub nsw i64 %conv2212, %add2219
  br label %cond.end.2225

cond.false.2221:                                  ; preds = %cond.false.2198
  %402 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2222 = add nsw i64 0, %402
  %mul2223 = mul nsw i64 0, %add2222
  %add2224 = add nsw i64 %mul2223, 0
  br label %cond.end.2225

cond.end.2225:                                    ; preds = %cond.false.2221, %cond.true.2204
  %cond2226 = phi i64 [ %sub2220, %cond.true.2204 ], [ %add2224, %cond.false.2221 ]
  %div2227 = sdiv i64 %cond2226, 2
  %403 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp2228 = icmp slt i64 %div2227, %403
  br i1 %cmp2228, label %cond.true.2304, label %lor.lhs.false.2290

cond.false.2230:                                  ; preds = %lor.lhs.false.2169
  br i1 false, label %cond.true.2231, label %cond.false.2232

cond.true.2231:                                   ; preds = %cond.false.2230
  br i1 false, label %cond.true.2304, label %lor.lhs.false.2290

cond.false.2232:                                  ; preds = %cond.false.2230
  %404 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp2233 = icmp slt i64 %404, 0
  br i1 %cmp2233, label %cond.true.2235, label %cond.false.2267

cond.true.2235:                                   ; preds = %cond.false.2232
  %405 = load i64, i64* @scan_c_stream.name_size, align 8
  %406 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2236 = add nsw i64 0, %406
  %mul2237 = mul nsw i64 0, %add2236
  %sub2238 = sub nsw i64 %mul2237, 1
  %cmp2239 = icmp slt i64 %sub2238, 0
  br i1 %cmp2239, label %cond.true.2241, label %cond.false.2258

cond.true.2241:                                   ; preds = %cond.true.2235
  %407 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2242 = add nsw i64 0, %407
  %mul2243 = mul nsw i64 0, %add2242
  %add2244 = add nsw i64 %mul2243, 0
  %neg2245 = xor i64 %add2244, -1
  %cmp2246 = icmp eq i64 %neg2245, -1
  %conv2247 = zext i1 %cmp2246 to i32
  %sub2248 = sub nsw i32 0, %conv2247
  %conv2249 = sext i32 %sub2248 to i64
  %408 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2250 = add nsw i64 0, %408
  %mul2251 = mul nsw i64 0, %add2250
  %add2252 = add nsw i64 %mul2251, 1
  %shl2253 = shl i64 %add2252, 62
  %sub2254 = sub nsw i64 %shl2253, 1
  %mul2255 = mul nsw i64 %sub2254, 2
  %add2256 = add nsw i64 %mul2255, 1
  %sub2257 = sub nsw i64 %conv2249, %add2256
  br label %cond.end.2262

cond.false.2258:                                  ; preds = %cond.true.2235
  %409 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2259 = add nsw i64 0, %409
  %mul2260 = mul nsw i64 0, %add2259
  %add2261 = add nsw i64 %mul2260, 0
  br label %cond.end.2262

cond.end.2262:                                    ; preds = %cond.false.2258, %cond.true.2241
  %cond2263 = phi i64 [ %sub2257, %cond.true.2241 ], [ %add2261, %cond.false.2258 ]
  %div2264 = sdiv i64 %cond2263, 2
  %cmp2265 = icmp slt i64 %405, %div2264
  br i1 %cmp2265, label %cond.true.2304, label %lor.lhs.false.2290

cond.false.2267:                                  ; preds = %cond.false.2232
  %410 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2268 = add nsw i64 0, %410
  %mul2269 = mul nsw i64 0, %add2268
  %sub2270 = sub nsw i64 %mul2269, 1
  %cmp2271 = icmp slt i64 %sub2270, 0
  br i1 %cmp2271, label %cond.true.2273, label %cond.false.2281

cond.true.2273:                                   ; preds = %cond.false.2267
  %411 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2274 = add nsw i64 0, %411
  %mul2275 = mul nsw i64 0, %add2274
  %add2276 = add nsw i64 %mul2275, 1
  %shl2277 = shl i64 %add2276, 62
  %sub2278 = sub nsw i64 %shl2277, 1
  %mul2279 = mul nsw i64 %sub2278, 2
  %add2280 = add nsw i64 %mul2279, 1
  br label %cond.end.2285

cond.false.2281:                                  ; preds = %cond.false.2267
  %412 = load i64, i64* @scan_c_stream.name_size, align 8
  %add2282 = add nsw i64 0, %412
  %mul2283 = mul nsw i64 0, %add2282
  %sub2284 = sub nsw i64 %mul2283, 1
  br label %cond.end.2285

cond.end.2285:                                    ; preds = %cond.false.2281, %cond.true.2273
  %cond2286 = phi i64 [ %add2280, %cond.true.2273 ], [ %sub2284, %cond.false.2281 ]
  %div2287 = sdiv i64 %cond2286, 2
  %413 = load i64, i64* @scan_c_stream.name_size, align 8
  %cmp2288 = icmp slt i64 %div2287, %413
  br i1 %cmp2288, label %cond.true.2304, label %lor.lhs.false.2290

lor.lhs.false.2290:                               ; preds = %cond.end.2285, %cond.end.2262, %cond.true.2231, %cond.end.2225, %cond.true.2197, %cond.end.2191
  %414 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2291 = mul nsw i64 %414, 2
  %mul2292 = mul nsw i64 0, %mul2291
  %sub2293 = sub nsw i64 %mul2292, 1
  %cmp2294 = icmp slt i64 %sub2293, 0
  br i1 %cmp2294, label %land.lhs.true.2296, label %lor.lhs.false.2300

land.lhs.true.2296:                               ; preds = %lor.lhs.false.2290
  %415 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2297 = mul nsw i64 %415, 2
  %cmp2298 = icmp slt i64 %mul2297, -9223372036854775808
  br i1 %cmp2298, label %cond.true.2304, label %lor.lhs.false.2300

lor.lhs.false.2300:                               ; preds = %land.lhs.true.2296, %lor.lhs.false.2290
  %416 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2301 = mul nsw i64 %416, 2
  %cmp2302 = icmp slt i64 9223372036854775807, %mul2301
  br i1 %cmp2302, label %cond.true.2304, label %cond.false.2316

cond.true.2304:                                   ; preds = %lor.lhs.false.2300, %land.lhs.true.2296, %cond.end.2285, %cond.end.2262, %cond.true.2231, %cond.end.2225, %cond.true.2197, %cond.end.2191, %land.lhs.true.2166
  %417 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2305 = mul i64 %417, 2
  %cmp2306 = icmp ule i64 %mul2305, 9223372036854775807
  br i1 %cmp2306, label %cond.true.2308, label %cond.false.2310

cond.true.2308:                                   ; preds = %cond.true.2304
  %418 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2309 = mul i64 %418, 2
  br label %cond.end.2314

cond.false.2310:                                  ; preds = %cond.true.2304
  %419 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2311 = mul i64 %419, 2
  %sub2312 = sub i64 %mul2311, -9223372036854775808
  %add2313 = add nsw i64 %sub2312, -9223372036854775808
  br label %cond.end.2314

cond.end.2314:                                    ; preds = %cond.false.2310, %cond.true.2308
  %cond2315 = phi i64 [ %mul2309, %cond.true.2308 ], [ %add2313, %cond.false.2310 ]
  store i64 %cond2315, i64* %doubled, align 8
  br i1 true, label %if.end.2332, label %land.lhs.true.2328

cond.false.2316:                                  ; preds = %lor.lhs.false.2300
  %420 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2317 = mul i64 %420, 2
  %cmp2318 = icmp ule i64 %mul2317, 9223372036854775807
  br i1 %cmp2318, label %cond.true.2320, label %cond.false.2322

cond.true.2320:                                   ; preds = %cond.false.2316
  %421 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2321 = mul i64 %421, 2
  br label %cond.end.2326

cond.false.2322:                                  ; preds = %cond.false.2316
  %422 = load i64, i64* @scan_c_stream.name_size, align 8
  %mul2323 = mul i64 %422, 2
  %sub2324 = sub i64 %mul2323, -9223372036854775808
  %add2325 = add nsw i64 %sub2324, -9223372036854775808
  br label %cond.end.2326

cond.end.2326:                                    ; preds = %cond.false.2322, %cond.true.2320
  %cond2327 = phi i64 [ %mul2321, %cond.true.2320 ], [ %add2325, %cond.false.2322 ]
  store i64 %cond2327, i64* %doubled, align 8
  br i1 false, label %if.end.2332, label %land.lhs.true.2328

land.lhs.true.2328:                               ; preds = %cond.end.2326, %cond.end.2314, %cond.end.2133, %cond.end.2121, %cond.end.1939, %cond.end.1927, %cond.end.1746, %cond.end.1734, %cond.end.1550, %cond.end.1534, %cond.end.1349, %cond.end.1333, %cond.end.1121, %cond.end.1098, %cond.end.906, %cond.end.883, %cond.end.636, %cond.end.613, %cond.end.421, %cond.end.398
  %423 = load i64, i64* %doubled, align 8
  %cmp2329 = icmp ule i64 %423, -1
  br i1 %cmp2329, label %if.then.2331, label %if.end.2332

if.then.2331:                                     ; preds = %land.lhs.true.2328
  %424 = load i64, i64* %doubled, align 8
  store i64 %424, i64* @scan_c_stream.name_size, align 8
  br label %if.end.2332

if.end.2332:                                      ; preds = %if.then.2331, %land.lhs.true.2328, %cond.end.2326, %cond.end.2314, %cond.end.2133, %cond.end.2121, %cond.end.1939, %cond.end.1927, %cond.end.1746, %cond.end.1734, %cond.end.1550, %cond.end.1534, %cond.end.1349, %cond.end.1333, %cond.end.1121, %cond.end.1098, %cond.end.906, %cond.end.883, %cond.end.636, %cond.end.613, %cond.end.421, %cond.end.398
  %425 = load i64, i64* @scan_c_stream.name_size, align 8
  %call2333 = call i8* @xmalloc(i64 %425)
  store i8* %call2333, i8** @scan_c_stream.name, align 8
  br label %if.end.2334

if.end.2334:                                      ; preds = %if.end.2332, %do.end.159
  %426 = load i8*, i8** @scan_c_stream.name, align 8
  %427 = load i64, i64* %i, align 8
  %add2335 = add nsw i64 %427, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %426, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @input_buffer, i32 0, i32 0), i64 %add2335, i32 1, i1 false)
  %428 = load i32, i32* %type, align 4
  %cmp2336 = icmp eq i32 %428, 4
  br i1 %cmp2336, label %if.then.2338, label %if.end.2360

if.then.2338:                                     ; preds = %if.end.2334
  br label %do.body.2339

do.body.2339:                                     ; preds = %lor.end.2353, %if.then.2338
  %429 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2340 = call i32 @_IO_getc(%struct._IO_FILE* %429)
  store i32 %call2340, i32* %c, align 4
  br label %do.cond.2341

do.cond.2341:                                     ; preds = %do.body.2339
  %430 = load i32, i32* %c, align 4
  %cmp2342 = icmp eq i32 %430, 32
  br i1 %cmp2342, label %lor.end.2353, label %lor.lhs.false.2344

lor.lhs.false.2344:                               ; preds = %do.cond.2341
  %431 = load i32, i32* %c, align 4
  %cmp2345 = icmp eq i32 %431, 9
  br i1 %cmp2345, label %lor.end.2353, label %lor.lhs.false.2347

lor.lhs.false.2347:                               ; preds = %lor.lhs.false.2344
  %432 = load i32, i32* %c, align 4
  %cmp2348 = icmp eq i32 %432, 10
  br i1 %cmp2348, label %lor.end.2353, label %lor.rhs.2350

lor.rhs.2350:                                     ; preds = %lor.lhs.false.2347
  %433 = load i32, i32* %c, align 4
  %cmp2351 = icmp eq i32 %433, 13
  br label %lor.end.2353

lor.end.2353:                                     ; preds = %lor.rhs.2350, %lor.lhs.false.2347, %lor.lhs.false.2344, %do.cond.2341
  %434 = phi i1 [ true, %lor.lhs.false.2347 ], [ true, %lor.lhs.false.2344 ], [ true, %do.cond.2341 ], [ %cmp2351, %lor.rhs.2350 ]
  br i1 %434, label %do.body.2339, label %do.end.2354

do.end.2354:                                      ; preds = %lor.end.2353
  %435 = load i32, i32* %c, align 4
  %cmp2355 = icmp ne i32 %435, 34
  br i1 %cmp2355, label %if.then.2357, label %if.end.2358

if.then.2357:                                     ; preds = %do.end.2354
  br label %while.cond

if.end.2358:                                      ; preds = %do.end.2354
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2359 = call i32 @read_c_string_or_comment(%struct._IO_FILE* %436, i32 -1, i1 zeroext false, i8* null)
  store i32 %call2359, i32* %c, align 4
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @input_buffer, i32 0, i32 0), i8** %svalue, align 8
  br label %if.end.2360

if.end.2360:                                      ; preds = %if.end.2358, %if.end.2334
  %437 = load i8, i8* %defunflag, align 1
  %tobool2361 = trunc i8 %437 to i1
  br i1 %tobool2361, label %if.end.2364, label %if.then.2362

if.then.2362:                                     ; preds = %if.end.2360
  %438 = load i32, i32* %type, align 4
  %439 = load i8*, i8** @scan_c_stream.name, align 8
  %440 = load i8*, i8** %svalue, align 8
  %call2363 = call %struct.global* @add_global(i32 %438, i8* %439, i32 0, i8* %440)
  br label %while.cond

if.end.2364:                                      ; preds = %if.end.2360
  br label %if.end.2365

if.end.2365:                                      ; preds = %if.end.2364, %if.end.125
  %441 = load i32, i32* %type, align 4
  %cmp2366 = icmp eq i32 %441, 4
  br i1 %cmp2366, label %if.then.2368, label %if.end.2369

if.then.2368:                                     ; preds = %if.end.2365
  br label %while.cond

if.end.2369:                                      ; preds = %if.end.2365
  %442 = load i8, i8* %defunflag, align 1
  %tobool2370 = trunc i8 %442 to i1
  br i1 %tobool2370, label %if.then.2371, label %if.else.2375

if.then.2371:                                     ; preds = %if.end.2369
  %443 = load i8, i8* @generate_globals, align 1
  %tobool2372 = trunc i8 %443 to i1
  %cond2374 = select i1 %tobool2372, i32 4, i32 5
  store i32 %cond2374, i32* %commas, align 4
  br label %if.end.2384

if.else.2375:                                     ; preds = %if.end.2369
  %444 = load i8, i8* %defvarperbufferflag, align 1
  %tobool2376 = trunc i8 %444 to i1
  br i1 %tobool2376, label %if.then.2377, label %if.else.2378

if.then.2377:                                     ; preds = %if.else.2375
  store i32 3, i32* %commas, align 4
  br label %if.end.2383

if.else.2378:                                     ; preds = %if.else.2375
  %445 = load i8, i8* %defvarflag, align 1
  %tobool2379 = trunc i8 %445 to i1
  br i1 %tobool2379, label %if.then.2380, label %if.else.2381

if.then.2380:                                     ; preds = %if.else.2378
  store i32 1, i32* %commas, align 4
  br label %if.end.2382

if.else.2381:                                     ; preds = %if.else.2378
  store i32 2, i32* %commas, align 4
  br label %if.end.2382

if.end.2382:                                      ; preds = %if.else.2381, %if.then.2380
  br label %if.end.2383

if.end.2383:                                      ; preds = %if.end.2382, %if.then.2377
  br label %if.end.2384

if.end.2384:                                      ; preds = %if.end.2383, %if.then.2371
  br label %while.cond.2385

while.cond.2385:                                  ; preds = %if.end.2452, %if.end.2384
  %446 = load i32, i32* %commas, align 4
  %tobool2386 = icmp ne i32 %446, 0
  br i1 %tobool2386, label %while.body.2387, label %while.end.2454

while.body.2387:                                  ; preds = %while.cond.2385
  %447 = load i32, i32* %c, align 4
  %cmp2388 = icmp eq i32 %447, 44
  br i1 %cmp2388, label %if.then.2390, label %if.end.2448

if.then.2390:                                     ; preds = %while.body.2387
  %448 = load i32, i32* %commas, align 4
  %dec = add nsw i32 %448, -1
  store i32 %dec, i32* %commas, align 4
  %449 = load i8, i8* %defunflag, align 1
  %tobool2391 = trunc i8 %449 to i1
  br i1 %tobool2391, label %land.lhs.true.2393, label %if.end.2447

land.lhs.true.2393:                               ; preds = %if.then.2390
  %450 = load i32, i32* %commas, align 4
  %cmp2394 = icmp eq i32 %450, 1
  br i1 %cmp2394, label %if.then.2399, label %lor.lhs.false.2396

lor.lhs.false.2396:                               ; preds = %land.lhs.true.2393
  %451 = load i32, i32* %commas, align 4
  %cmp2397 = icmp eq i32 %451, 2
  br i1 %cmp2397, label %if.then.2399, label %if.end.2447

if.then.2399:                                     ; preds = %lor.lhs.false.2396, %land.lhs.true.2393
  store i32 0, i32* %scanned, align 4
  br label %do.body.2400

do.body.2400:                                     ; preds = %lor.end.2414, %if.then.2399
  %452 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2401 = call i32 @_IO_getc(%struct._IO_FILE* %452)
  store i32 %call2401, i32* %c, align 4
  br label %do.cond.2402

do.cond.2402:                                     ; preds = %do.body.2400
  %453 = load i32, i32* %c, align 4
  %cmp2403 = icmp eq i32 %453, 32
  br i1 %cmp2403, label %lor.end.2414, label %lor.lhs.false.2405

lor.lhs.false.2405:                               ; preds = %do.cond.2402
  %454 = load i32, i32* %c, align 4
  %cmp2406 = icmp eq i32 %454, 10
  br i1 %cmp2406, label %lor.end.2414, label %lor.lhs.false.2408

lor.lhs.false.2408:                               ; preds = %lor.lhs.false.2405
  %455 = load i32, i32* %c, align 4
  %cmp2409 = icmp eq i32 %455, 13
  br i1 %cmp2409, label %lor.end.2414, label %lor.rhs.2411

lor.rhs.2411:                                     ; preds = %lor.lhs.false.2408
  %456 = load i32, i32* %c, align 4
  %cmp2412 = icmp eq i32 %456, 9
  br label %lor.end.2414

lor.end.2414:                                     ; preds = %lor.rhs.2411, %lor.lhs.false.2408, %lor.lhs.false.2405, %do.cond.2402
  %457 = phi i1 [ true, %lor.lhs.false.2408 ], [ true, %lor.lhs.false.2405 ], [ true, %do.cond.2402 ], [ %cmp2412, %lor.rhs.2411 ]
  br i1 %457, label %do.body.2400, label %do.end.2415

do.end.2415:                                      ; preds = %lor.end.2414
  %458 = load i32, i32* %c, align 4
  %cmp2416 = icmp slt i32 %458, 0
  br i1 %cmp2416, label %if.then.2418, label %if.end.2419

if.then.2418:                                     ; preds = %do.end.2415
  br label %eof

if.end.2419:                                      ; preds = %do.end.2415
  %459 = load i32, i32* %c, align 4
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2420 = call i32 @ungetc(i32 %459, %struct._IO_FILE* %460)
  %461 = load i32, i32* %commas, align 4
  %cmp2421 = icmp eq i32 %461, 2
  br i1 %cmp2421, label %if.then.2423, label %if.else.2425

if.then.2423:                                     ; preds = %if.end.2419
  %462 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2424 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %462, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i32* %minargs)
  store i32 %call2424, i32* %scanned, align 4
  br label %if.end.2442

if.else.2425:                                     ; preds = %if.end.2419
  %463 = load i32, i32* %c, align 4
  %cmp2426 = icmp eq i32 %463, 77
  br i1 %cmp2426, label %if.then.2431, label %lor.lhs.false.2428

lor.lhs.false.2428:                               ; preds = %if.else.2425
  %464 = load i32, i32* %c, align 4
  %cmp2429 = icmp eq i32 %464, 85
  br i1 %cmp2429, label %if.then.2431, label %if.else.2439

if.then.2431:                                     ; preds = %lor.lhs.false.2428, %if.else.2425
  %465 = load i8, i8* @generate_globals, align 1
  %tobool2432 = trunc i8 %465 to i1
  br i1 %tobool2432, label %if.then.2433, label %if.else.2437

if.then.2433:                                     ; preds = %if.then.2431
  %466 = load i32, i32* %c, align 4
  %cmp2434 = icmp eq i32 %466, 77
  %cond2436 = select i1 %cmp2434, i32 -1, i32 -2
  store i32 %cond2436, i32* %maxargs, align 4
  br label %if.end.2438

if.else.2437:                                     ; preds = %if.then.2431
  store i32 -1, i32* %maxargs, align 4
  br label %if.end.2438

if.end.2438:                                      ; preds = %if.else.2437, %if.then.2433
  br label %if.end.2441

if.else.2439:                                     ; preds = %lor.lhs.false.2428
  %467 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2440 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %467, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i32* %maxargs)
  store i32 %call2440, i32* %scanned, align 4
  br label %if.end.2441

if.end.2441:                                      ; preds = %if.else.2439, %if.end.2438
  br label %if.end.2442

if.end.2442:                                      ; preds = %if.end.2441, %if.then.2423
  %468 = load i32, i32* %scanned, align 4
  %cmp2443 = icmp slt i32 %468, 0
  br i1 %cmp2443, label %if.then.2445, label %if.end.2446

if.then.2445:                                     ; preds = %if.end.2442
  br label %eof

if.end.2446:                                      ; preds = %if.end.2442
  br label %if.end.2447

if.end.2447:                                      ; preds = %if.end.2446, %lor.lhs.false.2396, %if.then.2390
  br label %if.end.2448

if.end.2448:                                      ; preds = %if.end.2447, %while.body.2387
  %469 = load i32, i32* %c, align 4
  %cmp2449 = icmp eq i32 %469, -1
  br i1 %cmp2449, label %if.then.2451, label %if.end.2452

if.then.2451:                                     ; preds = %if.end.2448
  br label %eof

if.end.2452:                                      ; preds = %if.end.2448
  %470 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2453 = call i32 @_IO_getc(%struct._IO_FILE* %470)
  store i32 %call2453, i32* %c, align 4
  br label %while.cond.2385

while.end.2454:                                   ; preds = %while.cond.2385
  %471 = load i8, i8* @generate_globals, align 1
  %tobool2455 = trunc i8 %471 to i1
  br i1 %tobool2455, label %if.then.2456, label %if.end.2540

if.then.2456:                                     ; preds = %while.end.2454
  %472 = load i8*, i8** @scan_c_stream.name, align 8
  %473 = load i32, i32* %maxargs, align 4
  %call2457 = call %struct.global* @add_global(i32 5, i8* %472, i32 %473, i8* null)
  store %struct.global* %call2457, %struct.global** %g, align 8
  %474 = load %struct.global*, %struct.global** %g, align 8
  %tobool2458 = icmp ne %struct.global* %474, null
  br i1 %tobool2458, label %if.end.2460, label %if.then.2459

if.then.2459:                                     ; preds = %if.then.2456
  br label %while.cond

if.end.2460:                                      ; preds = %if.then.2456
  %475 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2461 = call i32 @_IO_getc(%struct._IO_FILE* %475)
  store i32 %call2461, i32* %c, align 4
  %476 = load i32, i32* %c, align 4
  %cmp2462 = icmp eq i32 %476, -1
  br i1 %cmp2462, label %if.then.2464, label %if.end.2465

if.then.2464:                                     ; preds = %if.end.2460
  br label %eof

if.end.2465:                                      ; preds = %if.end.2460
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2466 = call i32 @_IO_getc(%struct._IO_FILE* %477)
  store i32 %call2466, i32* %d, align 4
  %478 = load i32, i32* %d, align 4
  %cmp2467 = icmp eq i32 %478, -1
  br i1 %cmp2467, label %if.then.2469, label %if.end.2470

if.then.2469:                                     ; preds = %if.end.2465
  br label %eof

if.end.2470:                                      ; preds = %if.end.2465
  br label %while.body.2472

while.body.2472:                                  ; preds = %if.end.2470, %if.end.2484
  %479 = load i32, i32* %c, align 4
  %cmp2473 = icmp eq i32 %479, 42
  br i1 %cmp2473, label %land.lhs.true.2475, label %if.end.2479

land.lhs.true.2475:                               ; preds = %while.body.2472
  %480 = load i32, i32* %d, align 4
  %cmp2476 = icmp eq i32 %480, 47
  br i1 %cmp2476, label %if.then.2478, label %if.end.2479

if.then.2478:                                     ; preds = %land.lhs.true.2475
  br label %while.end.2485

if.end.2479:                                      ; preds = %land.lhs.true.2475, %while.body.2472
  %481 = load i32, i32* %d, align 4
  store i32 %481, i32* %c, align 4
  %482 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2480 = call i32 @_IO_getc(%struct._IO_FILE* %482)
  store i32 %call2480, i32* %d, align 4
  %483 = load i32, i32* %d, align 4
  %cmp2481 = icmp eq i32 %483, -1
  br i1 %cmp2481, label %if.then.2483, label %if.end.2484

if.then.2483:                                     ; preds = %if.end.2479
  br label %eof

if.end.2484:                                      ; preds = %if.end.2479
  br label %while.body.2472

while.end.2485:                                   ; preds = %if.then.2478
  br label %do.body.2486

do.body.2486:                                     ; preds = %lor.end.2504, %while.end.2485
  %484 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2487 = call i32 @_IO_getc(%struct._IO_FILE* %484)
  store i32 %call2487, i32* %c, align 4
  %485 = load i32, i32* %c, align 4
  %cmp2488 = icmp eq i32 %485, -1
  br i1 %cmp2488, label %if.then.2490, label %if.end.2491

if.then.2490:                                     ; preds = %do.body.2486
  br label %eof

if.end.2491:                                      ; preds = %do.body.2486
  br label %do.cond.2492

do.cond.2492:                                     ; preds = %if.end.2491
  %486 = load i32, i32* %c, align 4
  %cmp2493 = icmp eq i32 %486, 32
  br i1 %cmp2493, label %lor.end.2504, label %lor.lhs.false.2495

lor.lhs.false.2495:                               ; preds = %do.cond.2492
  %487 = load i32, i32* %c, align 4
  %cmp2496 = icmp eq i32 %487, 10
  br i1 %cmp2496, label %lor.end.2504, label %lor.lhs.false.2498

lor.lhs.false.2498:                               ; preds = %lor.lhs.false.2495
  %488 = load i32, i32* %c, align 4
  %cmp2499 = icmp eq i32 %488, 13
  br i1 %cmp2499, label %lor.end.2504, label %lor.rhs.2501

lor.rhs.2501:                                     ; preds = %lor.lhs.false.2498
  %489 = load i32, i32* %c, align 4
  %cmp2502 = icmp eq i32 %489, 9
  br label %lor.end.2504

lor.end.2504:                                     ; preds = %lor.rhs.2501, %lor.lhs.false.2498, %lor.lhs.false.2495, %do.cond.2492
  %490 = phi i1 [ true, %lor.lhs.false.2498 ], [ true, %lor.lhs.false.2495 ], [ true, %do.cond.2492 ], [ %cmp2502, %lor.rhs.2501 ]
  br i1 %490, label %do.body.2486, label %do.end.2505

do.end.2505:                                      ; preds = %lor.end.2504
  %491 = load i32, i32* %c, align 4
  %cmp2506 = icmp eq i32 %491, 97
  br i1 %cmp2506, label %land.lhs.true.2508, label %if.end.2539

land.lhs.true.2508:                               ; preds = %do.end.2505
  %492 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2509 = call i32 @stream_match(%struct._IO_FILE* %492, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0))
  %tobool2510 = icmp ne i32 %call2509, 0
  br i1 %tobool2510, label %if.then.2511, label %if.end.2539

if.then.2511:                                     ; preds = %land.lhs.true.2508
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @input_buffer, i32 0, i32 0), i8** %p, align 8
  br label %while.body.2513

while.body.2513:                                  ; preds = %if.then.2511, %if.end.2526
  %493 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2514 = call i32 @_IO_getc(%struct._IO_FILE* %493)
  store i32 %call2514, i32* %c, align 4
  %494 = load i32, i32* %c, align 4
  %cmp2515 = icmp eq i32 %494, -1
  br i1 %cmp2515, label %if.then.2517, label %if.end.2518

if.then.2517:                                     ; preds = %while.body.2513
  br label %eof

if.end.2518:                                      ; preds = %while.body.2513
  %495 = load i32, i32* %c, align 4
  %cmp2519 = icmp eq i32 %495, 41
  br i1 %cmp2519, label %if.then.2521, label %if.end.2522

if.then.2521:                                     ; preds = %if.end.2518
  br label %while.end.2528

if.end.2522:                                      ; preds = %if.end.2518
  %496 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %496 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([128 x i8]* @input_buffer to i64)
  %cmp2523 = icmp ugt i64 %sub.ptr.sub, 128
  br i1 %cmp2523, label %if.then.2525, label %if.end.2526

if.then.2525:                                     ; preds = %if.end.2522
  call void @abort() #9
  unreachable

if.end.2526:                                      ; preds = %if.end.2522
  %497 = load i32, i32* %c, align 4
  %conv2527 = trunc i32 %497 to i8
  %498 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %498, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv2527, i8* %498, align 1
  br label %while.body.2513

while.end.2528:                                   ; preds = %if.then.2521
  %499 = load i8*, i8** %p, align 8
  store i8 0, i8* %499, align 1
  %call2529 = call i8* @strstr(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @input_buffer, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0)) #7
  %tobool2530 = icmp ne i8* %call2529, null
  br i1 %tobool2530, label %if.then.2531, label %if.end.2532

if.then.2531:                                     ; preds = %while.end.2528
  %500 = load %struct.global*, %struct.global** %g, align 8
  %flags = getelementptr inbounds %struct.global, %struct.global* %500, i32 0, i32 2
  %501 = load i32, i32* %flags, align 4
  %or = or i32 %501, 1
  store i32 %or, i32* %flags, align 4
  br label %if.end.2532

if.end.2532:                                      ; preds = %if.then.2531, %while.end.2528
  %call2533 = call i8* @strstr(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @input_buffer, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0)) #7
  %tobool2534 = icmp ne i8* %call2533, null
  br i1 %tobool2534, label %if.then.2535, label %if.end.2538

if.then.2535:                                     ; preds = %if.end.2532
  %502 = load %struct.global*, %struct.global** %g, align 8
  %flags2536 = getelementptr inbounds %struct.global, %struct.global* %502, i32 0, i32 2
  %503 = load i32, i32* %flags2536, align 4
  %or2537 = or i32 %503, 2
  store i32 %or2537, i32* %flags2536, align 4
  br label %if.end.2538

if.end.2538:                                      ; preds = %if.then.2535, %if.end.2532
  br label %if.end.2539

if.end.2539:                                      ; preds = %if.end.2538, %land.lhs.true.2508, %do.end.2505
  br label %while.cond

if.end.2540:                                      ; preds = %while.end.2454
  br label %while.cond.2541

while.cond.2541:                                  ; preds = %while.body.2554, %if.end.2540
  %504 = load i32, i32* %c, align 4
  %cmp2542 = icmp eq i32 %504, 32
  br i1 %cmp2542, label %lor.end.2553, label %lor.lhs.false.2544

lor.lhs.false.2544:                               ; preds = %while.cond.2541
  %505 = load i32, i32* %c, align 4
  %cmp2545 = icmp eq i32 %505, 10
  br i1 %cmp2545, label %lor.end.2553, label %lor.lhs.false.2547

lor.lhs.false.2547:                               ; preds = %lor.lhs.false.2544
  %506 = load i32, i32* %c, align 4
  %cmp2548 = icmp eq i32 %506, 13
  br i1 %cmp2548, label %lor.end.2553, label %lor.rhs.2550

lor.rhs.2550:                                     ; preds = %lor.lhs.false.2547
  %507 = load i32, i32* %c, align 4
  %cmp2551 = icmp eq i32 %507, 9
  br label %lor.end.2553

lor.end.2553:                                     ; preds = %lor.rhs.2550, %lor.lhs.false.2547, %lor.lhs.false.2544, %while.cond.2541
  %508 = phi i1 [ true, %lor.lhs.false.2547 ], [ true, %lor.lhs.false.2544 ], [ true, %while.cond.2541 ], [ %cmp2551, %lor.rhs.2550 ]
  br i1 %508, label %while.body.2554, label %while.end.2556

while.body.2554:                                  ; preds = %lor.end.2553
  %509 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2555 = call i32 @_IO_getc(%struct._IO_FILE* %509)
  store i32 %call2555, i32* %c, align 4
  br label %while.cond.2541

while.end.2556:                                   ; preds = %lor.end.2553
  %510 = load i32, i32* %c, align 4
  %cmp2557 = icmp eq i32 %510, 34
  br i1 %cmp2557, label %if.then.2559, label %if.end.2561

if.then.2559:                                     ; preds = %while.end.2556
  %511 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2560 = call i32 @read_c_string_or_comment(%struct._IO_FILE* %511, i32 0, i1 zeroext false, i8* null)
  store i32 %call2560, i32* %c, align 4
  br label %if.end.2561

if.end.2561:                                      ; preds = %if.then.2559, %while.end.2556
  br label %while.cond.2562

while.cond.2562:                                  ; preds = %while.body.2570, %if.end.2561
  %512 = load i32, i32* %c, align 4
  %cmp2563 = icmp ne i32 %512, -1
  br i1 %cmp2563, label %land.lhs.true.2565, label %land.end

land.lhs.true.2565:                               ; preds = %while.cond.2562
  %513 = load i32, i32* %c, align 4
  %cmp2566 = icmp ne i32 %513, 44
  br i1 %cmp2566, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.2565
  %514 = load i32, i32* %c, align 4
  %cmp2568 = icmp ne i32 %514, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2565, %while.cond.2562
  %515 = phi i1 [ false, %land.lhs.true.2565 ], [ false, %while.cond.2562 ], [ %cmp2568, %land.rhs ]
  br i1 %515, label %while.body.2570, label %while.end.2572

while.body.2570:                                  ; preds = %land.end
  %516 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2571 = call i32 @_IO_getc(%struct._IO_FILE* %516)
  store i32 %call2571, i32* %c, align 4
  br label %while.cond.2562

while.end.2572:                                   ; preds = %land.end
  %517 = load i32, i32* %c, align 4
  %cmp2573 = icmp eq i32 %517, 44
  br i1 %cmp2573, label %if.then.2575, label %if.end.2631

if.then.2575:                                     ; preds = %while.end.2572
  %518 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2576 = call i32 @_IO_getc(%struct._IO_FILE* %518)
  store i32 %call2576, i32* %c, align 4
  br label %while.cond.2577

while.cond.2577:                                  ; preds = %while.body.2590, %if.then.2575
  %519 = load i32, i32* %c, align 4
  %cmp2578 = icmp eq i32 %519, 32
  br i1 %cmp2578, label %lor.end.2589, label %lor.lhs.false.2580

lor.lhs.false.2580:                               ; preds = %while.cond.2577
  %520 = load i32, i32* %c, align 4
  %cmp2581 = icmp eq i32 %520, 10
  br i1 %cmp2581, label %lor.end.2589, label %lor.lhs.false.2583

lor.lhs.false.2583:                               ; preds = %lor.lhs.false.2580
  %521 = load i32, i32* %c, align 4
  %cmp2584 = icmp eq i32 %521, 13
  br i1 %cmp2584, label %lor.end.2589, label %lor.rhs.2586

lor.rhs.2586:                                     ; preds = %lor.lhs.false.2583
  %522 = load i32, i32* %c, align 4
  %cmp2587 = icmp eq i32 %522, 9
  br label %lor.end.2589

lor.end.2589:                                     ; preds = %lor.rhs.2586, %lor.lhs.false.2583, %lor.lhs.false.2580, %while.cond.2577
  %523 = phi i1 [ true, %lor.lhs.false.2583 ], [ true, %lor.lhs.false.2580 ], [ true, %while.cond.2577 ], [ %cmp2587, %lor.rhs.2586 ]
  br i1 %523, label %while.body.2590, label %while.end.2592

while.body.2590:                                  ; preds = %lor.end.2589
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2591 = call i32 @_IO_getc(%struct._IO_FILE* %524)
  store i32 %call2591, i32* %c, align 4
  br label %while.cond.2577

while.end.2592:                                   ; preds = %lor.end.2589
  br label %while.cond.2593

while.cond.2593:                                  ; preds = %while.body.2607, %while.end.2592
  %525 = load i32, i32* %c, align 4
  %cmp2594 = icmp sge i32 %525, 97
  br i1 %cmp2594, label %land.lhs.true.2596, label %lor.rhs.2599

land.lhs.true.2596:                               ; preds = %while.cond.2593
  %526 = load i32, i32* %c, align 4
  %cmp2597 = icmp sle i32 %526, 122
  br i1 %cmp2597, label %lor.end.2606, label %lor.rhs.2599

lor.rhs.2599:                                     ; preds = %land.lhs.true.2596, %while.cond.2593
  %527 = load i32, i32* %c, align 4
  %cmp2600 = icmp sge i32 %527, 90
  br i1 %cmp2600, label %land.rhs.2602, label %land.end.2605

land.rhs.2602:                                    ; preds = %lor.rhs.2599
  %528 = load i32, i32* %c, align 4
  %cmp2603 = icmp sle i32 %528, 90
  br label %land.end.2605

land.end.2605:                                    ; preds = %land.rhs.2602, %lor.rhs.2599
  %529 = phi i1 [ false, %lor.rhs.2599 ], [ %cmp2603, %land.rhs.2602 ]
  br label %lor.end.2606

lor.end.2606:                                     ; preds = %land.end.2605, %land.lhs.true.2596
  %530 = phi i1 [ true, %land.lhs.true.2596 ], [ %529, %land.end.2605 ]
  br i1 %530, label %while.body.2607, label %while.end.2609

while.body.2607:                                  ; preds = %lor.end.2606
  %531 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2608 = call i32 @_IO_getc(%struct._IO_FILE* %531)
  store i32 %call2608, i32* %c, align 4
  br label %while.cond.2593

while.end.2609:                                   ; preds = %lor.end.2606
  %532 = load i32, i32* %c, align 4
  %cmp2610 = icmp eq i32 %532, 58
  br i1 %cmp2610, label %if.then.2612, label %if.end.2630

if.then.2612:                                     ; preds = %while.end.2609
  store i8 1, i8* %doc_keyword, align 1
  %533 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2613 = call i32 @_IO_getc(%struct._IO_FILE* %533)
  store i32 %call2613, i32* %c, align 4
  br label %while.cond.2614

while.cond.2614:                                  ; preds = %while.body.2627, %if.then.2612
  %534 = load i32, i32* %c, align 4
  %cmp2615 = icmp eq i32 %534, 32
  br i1 %cmp2615, label %lor.end.2626, label %lor.lhs.false.2617

lor.lhs.false.2617:                               ; preds = %while.cond.2614
  %535 = load i32, i32* %c, align 4
  %cmp2618 = icmp eq i32 %535, 10
  br i1 %cmp2618, label %lor.end.2626, label %lor.lhs.false.2620

lor.lhs.false.2620:                               ; preds = %lor.lhs.false.2617
  %536 = load i32, i32* %c, align 4
  %cmp2621 = icmp eq i32 %536, 13
  br i1 %cmp2621, label %lor.end.2626, label %lor.rhs.2623

lor.rhs.2623:                                     ; preds = %lor.lhs.false.2620
  %537 = load i32, i32* %c, align 4
  %cmp2624 = icmp eq i32 %537, 9
  br label %lor.end.2626

lor.end.2626:                                     ; preds = %lor.rhs.2623, %lor.lhs.false.2620, %lor.lhs.false.2617, %while.cond.2614
  %538 = phi i1 [ true, %lor.lhs.false.2620 ], [ true, %lor.lhs.false.2617 ], [ true, %while.cond.2614 ], [ %cmp2624, %lor.rhs.2623 ]
  br i1 %538, label %while.body.2627, label %while.end.2629

while.body.2627:                                  ; preds = %lor.end.2626
  %539 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2628 = call i32 @_IO_getc(%struct._IO_FILE* %539)
  store i32 %call2628, i32* %c, align 4
  br label %while.cond.2614

while.end.2629:                                   ; preds = %lor.end.2626
  br label %if.end.2630

if.end.2630:                                      ; preds = %while.end.2629, %while.end.2609
  br label %if.end.2631

if.end.2631:                                      ; preds = %if.end.2630, %while.end.2572
  %540 = load i32, i32* %c, align 4
  %cmp2632 = icmp eq i32 %540, 34
  br i1 %cmp2632, label %if.then.2642, label %lor.lhs.false.2634

lor.lhs.false.2634:                               ; preds = %if.end.2631
  %541 = load i32, i32* %c, align 4
  %cmp2635 = icmp eq i32 %541, 47
  br i1 %cmp2635, label %land.lhs.true.2637, label %if.end.2715

land.lhs.true.2637:                               ; preds = %lor.lhs.false.2634
  %542 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2638 = call i32 @_IO_getc(%struct._IO_FILE* %542)
  store i32 %call2638, i32* %c, align 4
  %543 = load i32, i32* %c, align 4
  %544 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2639 = call i32 @ungetc(i32 %543, %struct._IO_FILE* %544)
  %545 = load i32, i32* %c, align 4
  %cmp2640 = icmp eq i32 %545, 42
  br i1 %cmp2640, label %if.then.2642, label %if.end.2715

if.then.2642:                                     ; preds = %land.lhs.true.2637, %if.end.2631
  %546 = load i32, i32* %c, align 4
  %cmp2643 = icmp ne i32 %546, 34
  %frombool2645 = zext i1 %cmp2643 to i8
  store i8 %frombool2645, i8* %comment, align 1
  %547 = load i8, i8* %defvarflag, align 1
  %tobool2646 = trunc i8 %547 to i1
  %cond2648 = select i1 %tobool2646, i32 86, i32 70
  %call2649 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %cond2648, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @input_buffer, i32 0, i32 0))
  %548 = load i8, i8* %comment, align 1
  %tobool2650 = trunc i8 %548 to i1
  br i1 %tobool2650, label %if.then.2651, label %if.end.2653

if.then.2651:                                     ; preds = %if.then.2642
  %549 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2652 = call i32 @_IO_getc(%struct._IO_FILE* %549)
  br label %if.end.2653

if.end.2653:                                      ; preds = %if.then.2651, %if.then.2642
  %550 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %551 = load i8, i8* %comment, align 1
  %tobool2654 = trunc i8 %551 to i1
  %call2655 = call i32 @read_c_string_or_comment(%struct._IO_FILE* %550, i32 1, i1 zeroext %tobool2654, i8* %saw_usage)
  store i32 %call2655, i32* %c, align 4
  %552 = load i8, i8* %defunflag, align 1
  %tobool2656 = trunc i8 %552 to i1
  br i1 %tobool2656, label %land.lhs.true.2658, label %if.else.2703

land.lhs.true.2658:                               ; preds = %if.end.2653
  %553 = load i32, i32* %maxargs, align 4
  %cmp2659 = icmp ne i32 %553, -1
  br i1 %cmp2659, label %land.lhs.true.2661, label %if.else.2703

land.lhs.true.2661:                               ; preds = %land.lhs.true.2658
  %554 = load i8, i8* %saw_usage, align 1
  %tobool2662 = trunc i8 %554 to i1
  br i1 %tobool2662, label %if.else.2703, label %if.then.2663

if.then.2663:                                     ; preds = %land.lhs.true.2661
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %argbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %p2664, align 8
  %555 = load i8, i8* %comment, align 1
  %tobool2665 = trunc i8 %555 to i1
  br i1 %tobool2665, label %lor.lhs.false.2666, label %if.then.2669

lor.lhs.false.2666:                               ; preds = %if.then.2663
  %556 = load i8, i8* %doc_keyword, align 1
  %tobool2667 = trunc i8 %556 to i1
  br i1 %tobool2667, label %if.then.2669, label %if.end.2680

if.then.2669:                                     ; preds = %lor.lhs.false.2666, %if.then.2663
  br label %while.cond.2670

while.cond.2670:                                  ; preds = %if.end.2677, %if.then.2669
  %557 = load i32, i32* %c, align 4
  %cmp2671 = icmp ne i32 %557, 41
  br i1 %cmp2671, label %while.body.2673, label %while.end.2679

while.body.2673:                                  ; preds = %while.cond.2670
  %558 = load i32, i32* %c, align 4
  %cmp2674 = icmp slt i32 %558, 0
  br i1 %cmp2674, label %if.then.2676, label %if.end.2677

if.then.2676:                                     ; preds = %while.body.2673
  br label %eof

if.end.2677:                                      ; preds = %while.body.2673
  %559 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2678 = call i32 @_IO_getc(%struct._IO_FILE* %559)
  store i32 %call2678, i32* %c, align 4
  br label %while.cond.2670

while.end.2679:                                   ; preds = %while.cond.2670
  br label %if.end.2680

if.end.2680:                                      ; preds = %while.end.2679, %lor.lhs.false.2666
  br label %while.cond.2681

while.cond.2681:                                  ; preds = %if.end.2688, %if.end.2680
  %560 = load i32, i32* %c, align 4
  %cmp2682 = icmp ne i32 %560, 40
  br i1 %cmp2682, label %while.body.2684, label %while.end.2690

while.body.2684:                                  ; preds = %while.cond.2681
  %561 = load i32, i32* %c, align 4
  %cmp2685 = icmp slt i32 %561, 0
  br i1 %cmp2685, label %if.then.2687, label %if.end.2688

if.then.2687:                                     ; preds = %while.body.2684
  br label %eof

if.end.2688:                                      ; preds = %while.body.2684
  %562 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2689 = call i32 @_IO_getc(%struct._IO_FILE* %562)
  store i32 %call2689, i32* %c, align 4
  br label %while.cond.2681

while.end.2690:                                   ; preds = %while.cond.2681
  %563 = load i32, i32* %c, align 4
  %conv2691 = trunc i32 %563 to i8
  %564 = load i8*, i8** %p2664, align 8
  %incdec.ptr2692 = getelementptr inbounds i8, i8* %564, i32 1
  store i8* %incdec.ptr2692, i8** %p2664, align 8
  store i8 %conv2691, i8* %564, align 1
  br label %do.body.2693

do.body.2693:                                     ; preds = %do.cond.2697, %while.end.2690
  %565 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2694 = call i32 @_IO_getc(%struct._IO_FILE* %565)
  store i32 %call2694, i32* %c, align 4
  %conv2695 = trunc i32 %call2694 to i8
  %566 = load i8*, i8** %p2664, align 8
  %incdec.ptr2696 = getelementptr inbounds i8, i8* %566, i32 1
  store i8* %incdec.ptr2696, i8** %p2664, align 8
  store i8 %conv2695, i8* %566, align 1
  br label %do.cond.2697

do.cond.2697:                                     ; preds = %do.body.2693
  %567 = load i32, i32* %c, align 4
  %cmp2698 = icmp ne i32 %567, 41
  br i1 %cmp2698, label %do.body.2693, label %do.end.2700

do.end.2700:                                      ; preds = %do.cond.2697
  %568 = load i8*, i8** %p2664, align 8
  store i8 0, i8* %568, align 1
  %569 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2701 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0), %struct._IO_FILE* %569)
  %arraydecay2702 = getelementptr inbounds [1024 x i8], [1024 x i8]* %argbuf, i32 0, i32 0
  %570 = load i32, i32* %minargs, align 4
  %571 = load i32, i32* %maxargs, align 4
  call void @write_c_args(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @input_buffer, i32 0, i32 0), i8* %arraydecay2702, i32 %570, i32 %571)
  br label %if.end.2714

if.else.2703:                                     ; preds = %land.lhs.true.2661, %land.lhs.true.2658, %if.end.2653
  %572 = load i8, i8* %defunflag, align 1
  %tobool2704 = trunc i8 %572 to i1
  br i1 %tobool2704, label %land.lhs.true.2706, label %if.end.2713

land.lhs.true.2706:                               ; preds = %if.else.2703
  %573 = load i32, i32* %maxargs, align 4
  %cmp2707 = icmp eq i32 %573, -1
  br i1 %cmp2707, label %land.lhs.true.2709, label %if.end.2713

land.lhs.true.2709:                               ; preds = %land.lhs.true.2706
  %574 = load i8, i8* %saw_usage, align 1
  %tobool2710 = trunc i8 %574 to i1
  br i1 %tobool2710, label %if.end.2713, label %if.then.2711

if.then.2711:                                     ; preds = %land.lhs.true.2709
  %575 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2712 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %575, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @input_buffer, i32 0, i32 0))
  br label %if.end.2713

if.end.2713:                                      ; preds = %if.then.2711, %land.lhs.true.2709, %land.lhs.true.2706, %if.else.2703
  br label %if.end.2714

if.end.2714:                                      ; preds = %if.end.2713, %do.end.2700
  br label %if.end.2715

if.end.2715:                                      ; preds = %if.end.2714, %land.lhs.true.2637, %lor.lhs.false.2634
  br label %while.cond

while.end.2716:                                   ; preds = %while.cond
  br label %eof

eof:                                              ; preds = %while.end.2716, %if.then.2687, %if.then.2676, %if.then.2517, %if.then.2490, %if.then.2483, %if.then.2469, %if.then.2464, %if.then.2451, %if.then.2445, %if.then.2418, %if.then.139, %if.then.114
  %576 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2717 = call i32 @ferror(%struct._IO_FILE* %576) #5
  %tobool2718 = icmp ne i32 %call2717, 0
  br i1 %tobool2718, label %if.then.2723, label %lor.lhs.false.2719

lor.lhs.false.2719:                               ; preds = %eof
  %577 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call2720 = call i32 @fclose(%struct._IO_FILE* %577)
  %cmp2721 = icmp ne i32 %call2720, 0
  br i1 %cmp2721, label %if.then.2723, label %if.end.2724

if.then.2723:                                     ; preds = %lor.lhs.false.2719, %eof
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0)) #8
  unreachable

if.end.2724:                                      ; preds = %lor.lhs.false.2719
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scan_file(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  store i64 %call, i64* %len, align 8
  %1 = load i8, i8* @generate_globals, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  call void @put_filename(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %len, align 8
  %cmp = icmp sgt i64 %3, 4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -4
  %call2 = call i32 @strcmp(i8* %add.ptr1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #7
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %filename.addr, align 8
  call void @scan_lisp_file(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %if.end
  %7 = load i64, i64* %len, align 8
  %cmp5 = icmp sgt i64 %7, 3
  br i1 %cmp5, label %land.lhs.true.6, label %if.else.12

land.lhs.true.6:                                  ; preds = %if.else
  %8 = load i8*, i8** %filename.addr, align 8
  %9 = load i64, i64* %len, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %8, i64 %9
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr7, i64 -3
  %call9 = call i32 @strcmp(i8* %add.ptr8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #7
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.6
  %10 = load i8*, i8** %filename.addr, align 8
  call void @scan_lisp_file(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.13

if.else.12:                                       ; preds = %land.lhs.true.6, %if.else
  %11 = load i8*, i8** %filename.addr, align 8
  call void @scan_c_file(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_globals() #0 {
entry:
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %seen_defun = alloca i8, align 1
  %symnum = alloca i64, align 8
  %num_symbols = alloca i64, align 8
  %type31 = alloca i8*, align 8
  %i111 = alloca i64, align 8
  %i132 = alloca i64, align 8
  store i8 0, i8* %seen_defun, align 1
  store i64 0, i64* %symnum, align 8
  store i64 0, i64* %num_symbols, align 8
  %0 = load %struct.global*, %struct.global** @globals, align 8
  %1 = bitcast %struct.global* %0 to i8*
  %2 = load i64, i64* @num_globals, align 8
  call void @qsort(i8* %1, i64 %2, i64 32, i32 (i8*, i8*)* @compare_globals)
  store i64 0, i64* %j, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* @num_globals, align 8
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %5 = load i64, i64* %i, align 8
  %add = add nsw i64 %5, 1
  %6 = load i64, i64* @num_globals, align 8
  %cmp1 = icmp slt i64 %add, %6
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx = getelementptr inbounds %struct.global, %struct.global* %8, i64 %7
  %name = getelementptr inbounds %struct.global, %struct.global* %arrayidx, i32 0, i32 1
  %9 = load i8*, i8** %name, align 8
  %10 = load i64, i64* %i, align 8
  %add2 = add nsw i64 %10, 1
  %11 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx3 = getelementptr inbounds %struct.global, %struct.global* %11, i64 %add2
  %name4 = getelementptr inbounds %struct.global, %struct.global* %arrayidx3, i32 0, i32 1
  %12 = load i8*, i8** %name4, align 8
  %call = call i32 @strcmp(i8* %9, i8* %12) #7
  %cmp5 = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i64, i64* %i, align 8
  %15 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx6 = getelementptr inbounds %struct.global, %struct.global* %15, i64 %14
  %type = getelementptr inbounds %struct.global, %struct.global* %arrayidx6, i32 0, i32 0
  %16 = load i32, i32* %type, align 4
  %cmp7 = icmp eq i32 %16, 5
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx8 = getelementptr inbounds %struct.global, %struct.global* %18, i64 %17
  %v = getelementptr inbounds %struct.global, %struct.global* %arrayidx8, i32 0, i32 3
  %value = bitcast %union.anon* %v to i32*
  %19 = load i32, i32* %value, align 4
  %20 = load i64, i64* %i, align 8
  %add9 = add nsw i64 %20, 1
  %21 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx10 = getelementptr inbounds %struct.global, %struct.global* %21, i64 %add9
  %v11 = getelementptr inbounds %struct.global, %struct.global* %arrayidx10, i32 0, i32 3
  %value12 = bitcast %union.anon* %v11 to i32*
  %22 = load i32, i32* %value12, align 4
  %cmp13 = icmp ne i32 %19, %22
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %23 = load i64, i64* %i, align 8
  %24 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx14 = getelementptr inbounds %struct.global, %struct.global* %24, i64 %23
  %name15 = getelementptr inbounds %struct.global, %struct.global* %arrayidx14, i32 0, i32 1
  %25 = load i8*, i8** %name15, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.53, i32 0, i32 0), i8* %25)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %26 = load i64, i64* %i, align 8
  %27 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx16 = getelementptr inbounds %struct.global, %struct.global* %27, i64 %26
  %name17 = getelementptr inbounds %struct.global, %struct.global* %arrayidx16, i32 0, i32 1
  %28 = load i8*, i8** %name17, align 8
  call void @free(i8* %28) #5
  %29 = load i64, i64* %i, align 8
  %inc = add nsw i64 %29, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %30 = load i64, i64* %i, align 8
  %31 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx18 = getelementptr inbounds %struct.global, %struct.global* %31, i64 %30
  %type19 = getelementptr inbounds %struct.global, %struct.global* %arrayidx18, i32 0, i32 0
  %32 = load i32, i32* %type19, align 4
  %cmp20 = icmp eq i32 %32, 4
  %conv = zext i1 %cmp20 to i32
  %conv21 = sext i32 %conv to i64
  %33 = load i64, i64* %num_symbols, align 8
  %add22 = add nsw i64 %33, %conv21
  store i64 %add22, i64* %num_symbols, align 8
  %34 = load i64, i64* %j, align 8
  %inc23 = add nsw i64 %34, 1
  store i64 %inc23, i64* %j, align 8
  %35 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx24 = getelementptr inbounds %struct.global, %struct.global* %35, i64 %34
  %36 = load i64, i64* %i, align 8
  %37 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx25 = getelementptr inbounds %struct.global, %struct.global* %37, i64 %36
  %38 = bitcast %struct.global* %arrayidx24 to i8*
  %39 = bitcast %struct.global* %arrayidx25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %40 = load i64, i64* %i, align 8
  %inc26 = add nsw i64 %40, 1
  store i64 %inc26, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i64, i64* %j, align 8
  store i64 %41, i64* @num_globals, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.103, %for.end
  %42 = load i64, i64* %i, align 8
  %43 = load i64, i64* @num_globals, align 8
  %cmp28 = icmp slt i64 %42, %43
  br i1 %cmp28, label %for.body.30, label %for.end.105

for.body.30:                                      ; preds = %for.cond.27
  store i8* null, i8** %type31, align 8
  %44 = load i64, i64* %i, align 8
  %45 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx32 = getelementptr inbounds %struct.global, %struct.global* %45, i64 %44
  %type33 = getelementptr inbounds %struct.global, %struct.global* %arrayidx32, i32 0, i32 0
  %46 = load i32, i32* %type33, align 4
  switch i32 %46, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.34
    i32 1, label %sw.bb.35
    i32 4, label %sw.bb.36
    i32 5, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %for.body.30
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8** %type31, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %for.body.30
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8** %type31, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %for.body.30
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i8** %type31, align 8
  br label %sw.epilog

sw.bb.36:                                         ; preds = %for.body.30, %for.body.30
  %47 = load i8, i8* %seen_defun, align 1
  %tobool = trunc i8 %47 to i1
  br i1 %tobool, label %if.end.39, label %if.then.37

if.then.37:                                       ; preds = %sw.bb.36
  %48 = load i64, i64* %num_symbols, align 8
  call void @close_emacs_globals(i64 %48)
  %call38 = call i32 @putchar(i32 10)
  store i8 1, i8* %seen_defun, align 1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %sw.bb.36
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.30
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0)) #8
  unreachable

sw.epilog:                                        ; preds = %if.end.39, %sw.bb.35, %sw.bb.34, %sw.bb
  %49 = load i8*, i8** %type31, align 8
  %tobool40 = icmp ne i8* %49, null
  br i1 %tobool40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %sw.epilog
  %50 = load i8*, i8** %type31, align 8
  %51 = load i64, i64* %i, align 8
  %52 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx42 = getelementptr inbounds %struct.global, %struct.global* %52, i64 %51
  %name43 = getelementptr inbounds %struct.global, %struct.global* %arrayidx42, i32 0, i32 1
  %53 = load i8*, i8** %name43, align 8
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* %50, i8* %53)
  %54 = load i64, i64* %i, align 8
  %55 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx45 = getelementptr inbounds %struct.global, %struct.global* %55, i64 %54
  %name46 = getelementptr inbounds %struct.global, %struct.global* %arrayidx45, i32 0, i32 1
  %56 = load i8*, i8** %name46, align 8
  %57 = load i64, i64* %i, align 8
  %58 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx47 = getelementptr inbounds %struct.global, %struct.global* %58, i64 %57
  %name48 = getelementptr inbounds %struct.global, %struct.global* %arrayidx47, i32 0, i32 1
  %59 = load i8*, i8** %name48, align 8
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i32 0, i32 0), i8* %56, i8* %59)
  br label %if.end.102

if.else:                                          ; preds = %sw.epilog
  %60 = load i64, i64* %i, align 8
  %61 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx50 = getelementptr inbounds %struct.global, %struct.global* %61, i64 %60
  %type51 = getelementptr inbounds %struct.global, %struct.global* %arrayidx50, i32 0, i32 0
  %62 = load i32, i32* %type51, align 4
  %cmp52 = icmp eq i32 %62, 4
  br i1 %cmp52, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %if.else
  %63 = load i64, i64* %i, align 8
  %64 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx55 = getelementptr inbounds %struct.global, %struct.global* %64, i64 %63
  %name56 = getelementptr inbounds %struct.global, %struct.global* %arrayidx55, i32 0, i32 1
  %65 = load i8*, i8** %name56, align 8
  %66 = load i64, i64* %symnum, align 8
  %inc57 = add nsw i64 %66, 1
  store i64 %inc57, i64* %symnum, align 8
  %67 = load i64, i64* %i, align 8
  %68 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx58 = getelementptr inbounds %struct.global, %struct.global* %68, i64 %67
  %name59 = getelementptr inbounds %struct.global, %struct.global* %arrayidx58, i32 0, i32 1
  %69 = load i8*, i8** %name59, align 8
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i32 0, i32 0), i8* %65, i64 %66, i8* %69)
  br label %if.end.101

if.else.61:                                       ; preds = %if.else
  %70 = load i64, i64* %i, align 8
  %71 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx62 = getelementptr inbounds %struct.global, %struct.global* %71, i64 %70
  %flags = getelementptr inbounds %struct.global, %struct.global* %arrayidx62, i32 0, i32 2
  %72 = load i32, i32* %flags, align 4
  %and = and i32 %72, 1
  %tobool63 = icmp ne i32 %and, 0
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.else.61
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call65 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), %struct._IO_FILE* %73)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.else.61
  %74 = load i64, i64* %i, align 8
  %75 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx67 = getelementptr inbounds %struct.global, %struct.global* %75, i64 %74
  %name68 = getelementptr inbounds %struct.global, %struct.global* %arrayidx67, i32 0, i32 1
  %76 = load i8*, i8** %name68, align 8
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8* %76)
  %77 = load i64, i64* %i, align 8
  %78 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx70 = getelementptr inbounds %struct.global, %struct.global* %78, i64 %77
  %v71 = getelementptr inbounds %struct.global, %struct.global* %arrayidx70, i32 0, i32 3
  %value72 = bitcast %union.anon* %v71 to i32*
  %79 = load i32, i32* %value72, align 4
  %cmp73 = icmp eq i32 %79, -1
  br i1 %cmp73, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %if.end.66
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call76 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %80)
  br label %if.end.91

if.else.77:                                       ; preds = %if.end.66
  %81 = load i64, i64* %i, align 8
  %82 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx78 = getelementptr inbounds %struct.global, %struct.global* %82, i64 %81
  %v79 = getelementptr inbounds %struct.global, %struct.global* %arrayidx78, i32 0, i32 3
  %value80 = bitcast %union.anon* %v79 to i32*
  %83 = load i32, i32* %value80, align 4
  %cmp81 = icmp eq i32 %83, -2
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %if.else.77
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call84 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), %struct._IO_FILE* %84)
  br label %if.end.90

if.else.85:                                       ; preds = %if.else.77
  %85 = load i64, i64* %i, align 8
  %86 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx86 = getelementptr inbounds %struct.global, %struct.global* %86, i64 %85
  %v87 = getelementptr inbounds %struct.global, %struct.global* %arrayidx86, i32 0, i32 3
  %value88 = bitcast %union.anon* %v87 to i32*
  %87 = load i32, i32* %value88, align 4
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i32 %87)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.85, %if.then.83
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.75
  %call92 = call i32 @putchar(i32 41)
  %88 = load i64, i64* %i, align 8
  %89 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx93 = getelementptr inbounds %struct.global, %struct.global* %89, i64 %88
  %flags94 = getelementptr inbounds %struct.global, %struct.global* %arrayidx93, i32 0, i32 2
  %90 = load i32, i32* %flags94, align 4
  %and95 = and i32 %90, 2
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.end.91
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call98 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), %struct._IO_FILE* %91)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.end.91
  %call100 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0))
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.99, %if.then.54
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.41
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %92 = load i64, i64* %i, align 8
  %inc104 = add nsw i64 %92, 1
  store i64 %inc104, i64* %i, align 8
  br label %for.cond.27

for.end.105:                                      ; preds = %for.cond.27
  %93 = load i8, i8* %seen_defun, align 1
  %tobool106 = trunc i8 %93 to i1
  br i1 %tobool106, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %for.end.105
  %94 = load i64, i64* %num_symbols, align 8
  call void @close_emacs_globals(i64 %94)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %for.end.105
  %call109 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i32 0, i32 0))
  %call110 = call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.69, i32 0, i32 0))
  store i64 0, i64* %i111, align 8
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.125, %if.end.108
  %95 = load i64, i64* %i111, align 8
  %96 = load i64, i64* @num_globals, align 8
  %cmp113 = icmp slt i64 %95, %96
  br i1 %cmp113, label %for.body.115, label %for.end.127

for.body.115:                                     ; preds = %for.cond.112
  %97 = load i64, i64* %i111, align 8
  %98 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx116 = getelementptr inbounds %struct.global, %struct.global* %98, i64 %97
  %type117 = getelementptr inbounds %struct.global, %struct.global* %arrayidx116, i32 0, i32 0
  %99 = load i32, i32* %type117, align 4
  %cmp118 = icmp eq i32 %99, 4
  br i1 %cmp118, label %if.then.120, label %if.end.124

if.then.120:                                      ; preds = %for.body.115
  %100 = load i64, i64* %i111, align 8
  %101 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx121 = getelementptr inbounds %struct.global, %struct.global* %101, i64 %100
  %v122 = getelementptr inbounds %struct.global, %struct.global* %arrayidx121, i32 0, i32 3
  %svalue = bitcast %union.anon* %v122 to i8**
  %102 = load i8*, i8** %svalue, align 8
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i8* %102)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.120, %for.body.115
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %103 = load i64, i64* %i111, align 8
  %inc126 = add nsw i64 %103, 1
  store i64 %inc126, i64* %i111, align 8
  br label %for.cond.112

for.end.127:                                      ; preds = %for.cond.112
  %call128 = call i32 @puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0))
  %call129 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0))
  %call130 = call i32 @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.73, i32 0, i32 0))
  %call131 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.74, i32 0, i32 0))
  store i64 0, i64* %num_symbols, align 8
  store i64 0, i64* %i132, align 8
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.150, %for.end.127
  %104 = load i64, i64* %i132, align 8
  %105 = load i64, i64* @num_globals, align 8
  %cmp134 = icmp slt i64 %104, %105
  br i1 %cmp134, label %for.body.136, label %for.end.152

for.body.136:                                     ; preds = %for.cond.133
  %106 = load i64, i64* %i132, align 8
  %107 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx137 = getelementptr inbounds %struct.global, %struct.global* %107, i64 %106
  %type138 = getelementptr inbounds %struct.global, %struct.global* %arrayidx137, i32 0, i32 0
  %108 = load i32, i32* %type138, align 4
  %cmp139 = icmp eq i32 %108, 4
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.149

land.lhs.true.141:                                ; preds = %for.body.136
  %109 = load i64, i64* %num_symbols, align 8
  %inc142 = add nsw i64 %109, 1
  store i64 %inc142, i64* %num_symbols, align 8
  %cmp143 = icmp ne i64 %109, 0
  br i1 %cmp143, label %if.then.145, label %if.end.149

if.then.145:                                      ; preds = %land.lhs.true.141
  %110 = load i64, i64* %i132, align 8
  %111 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx146 = getelementptr inbounds %struct.global, %struct.global* %111, i64 %110
  %name147 = getelementptr inbounds %struct.global, %struct.global* %arrayidx146, i32 0, i32 1
  %112 = load i8*, i8** %name147, align 8
  %113 = load i64, i64* %num_symbols, align 8
  %sub = sub nsw i64 %113, 1
  %call148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.75, i32 0, i32 0), i8* %112, i64 %sub)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.145, %land.lhs.true.141, %for.body.136
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %114 = load i64, i64* %i132, align 8
  %inc151 = add nsw i64 %114, 1
  store i64 %inc151, i64* %i132, align 8
  br label %for.cond.133

for.end.152:                                      ; preds = %for.cond.133
  %call153 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @fatal(i8* %m, ...) #4 {
entry:
  %m.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %m, i8** %m.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %m.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @verror(i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  call void @exit(i32 1) #9
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @verror(i8* %m, %struct.__va_list_tag* %ap) #0 {
entry:
  %m.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  store i8* %m, i8** %m.addr, align 8
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progname, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %m.addr, align 8
  %4 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8
  %call1 = call i32 @vfprintf(%struct._IO_FILE* %2, i8* %3, %struct.__va_list_tag* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @put_filename(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  store i8* %0, i8** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %tmp, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %tmp, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %tmp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  store i8* %add.ptr, i8** %filename.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scan_lisp_file(i8* %filename, i8* %mode) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %saved_string = alloca i8*, align 8
  %i = alloca i32, align 4
  %flen = alloca i32, align 4
  %match = alloca i8, align 1
  %buffer = alloca [8192 x i8], align 16
  %type = alloca i8, align 1
  %length = alloca i64, align 8
  %i73 = alloca i64, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store i8* null, i8** %saved_string, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %flen, align 4
  %1 = load i8, i8* @generate_globals, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %flen, align 4
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %filename.addr, align 8
  %4 = load i32, i32* %flen, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 -3
  %call3 = call i32 @strcmp(i8* %add.ptr2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #7
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.43, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  store i8 0, i8* %match, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %5 = load i32, i32* %i, align 4
  %conv6 = sext i32 %5 to i64
  %cmp7 = icmp ult i64 %conv6, 5
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @scan_lisp_file.uncompiled, i32 0, i64 %idxprom
  %fl = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %fl, align 4
  %8 = load i32, i32* %flen, align 4
  %cmp9 = icmp sle i32 %7, %8
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.39

land.lhs.true.11:                                 ; preds = %for.body
  %9 = load i8*, i8** %filename.addr, align 8
  %10 = load i32, i32* %flen, align 4
  %idx.ext12 = sext i32 %10 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %9, i64 %idx.ext12
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @scan_lisp_file.uncompiled, i32 0, i64 %idxprom14
  %fl16 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx15, i32 0, i32 1
  %12 = load i32, i32* %fl16, align 4
  %idx.ext17 = sext i32 %12 to i64
  %idx.neg = sub i64 0, %idx.ext17
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idx.neg
  %13 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @scan_lisp_file.uncompiled, i32 0, i64 %idxprom19
  %fn = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx20, i32 0, i32 0
  %14 = load i8*, i8** %fn, align 8
  %call21 = call i32 @strcmp(i8* %add.ptr18, i8* %14) #7
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.39, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %land.lhs.true.11
  %15 = load i32, i32* %flen, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @scan_lisp_file.uncompiled, i32 0, i64 %idxprom24
  %fl26 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx25, i32 0, i32 1
  %17 = load i32, i32* %fl26, align 4
  %cmp27 = icmp eq i32 %15, %17
  br i1 %cmp27, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.23
  %18 = load i32, i32* %flen, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @scan_lisp_file.uncompiled, i32 0, i64 %idxprom29
  %fl31 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx30, i32 0, i32 1
  %20 = load i32, i32* %fl31, align 4
  %sub = sub nsw i32 %18, %20
  %sub32 = sub nsw i32 %sub, 1
  %idxprom33 = sext i32 %sub32 to i64
  %21 = load i8*, i8** %filename.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %21, i64 %idxprom33
  %22 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %22 to i32
  %cmp36 = icmp eq i32 %conv35, 47
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %land.lhs.true.23
  store i8 1, i8* %match, align 1
  br label %for.end

if.end.39:                                        ; preds = %lor.lhs.false, %land.lhs.true.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.38, %for.cond
  %24 = load i8, i8* %match, align 1
  %tobool40 = trunc i8 %24 to i1
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %for.end
  %25 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), i8* %25) #8
  unreachable

if.end.42:                                        ; preds = %for.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %if.end
  %26 = load i8*, i8** %filename.addr, align 8
  %27 = load i8*, i8** %mode.addr, align 8
  %call44 = call %struct._IO_FILE* @fopen(i8* %26, i8* %27)
  store %struct._IO_FILE* %call44, %struct._IO_FILE** %infile, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %cmp45 = icmp eq %struct._IO_FILE* %28, null
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.43
  %29 = load i8*, i8** %filename.addr, align 8
  call void @perror(i8* %29)
  call void @exit(i32 1) #9
  unreachable

if.end.48:                                        ; preds = %if.end.43
  store i32 10, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.4898, %if.else.4884, %if.then.4881, %if.then.4872, %if.then.4865, %if.then.4858, %if.then.4851, %if.then.4835, %if.then.4827, %if.then.4820, %if.then.4813, %if.then.4793, %if.then.4785, %if.then.4778, %if.then.4771, %if.then.4751, %if.then.4731, %if.then.4705, %if.then.4699, %if.then.4673, %if.end.4669, %if.then.56, %if.end.48
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call49 = call i32 @feof(%struct._IO_FILE* %30) #5
  %tobool50 = icmp ne i32 %call49, 0
  %lnot = xor i1 %tobool50, true
  br i1 %lnot, label %while.body, label %while.end.4899

while.body:                                       ; preds = %while.cond
  %31 = load i32, i32* %c, align 4
  %cmp51 = icmp ne i32 %31, 10
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.58

land.lhs.true.53:                                 ; preds = %while.body
  %32 = load i32, i32* %c, align 4
  %cmp54 = icmp ne i32 %32, 13
  br i1 %cmp54, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %land.lhs.true.53
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call57 = call i32 @_IO_getc(%struct._IO_FILE* %33)
  store i32 %call57, i32* %c, align 4
  br label %while.cond

if.end.58:                                        ; preds = %land.lhs.true.53, %while.body
  br label %while.cond.59

while.cond.59:                                    ; preds = %while.body.64, %if.end.58
  %34 = load i32, i32* %c, align 4
  %cmp60 = icmp eq i32 %34, 10
  br i1 %cmp60, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.59
  %35 = load i32, i32* %c, align 4
  %cmp62 = icmp eq i32 %35, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.59
  %36 = phi i1 [ true, %while.cond.59 ], [ %cmp62, %lor.rhs ]
  br i1 %36, label %while.body.64, label %while.end

while.body.64:                                    ; preds = %lor.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call65 = call i32 @_IO_getc(%struct._IO_FILE* %37)
  store i32 %call65, i32* %c, align 4
  br label %while.cond.59

while.end:                                        ; preds = %lor.end
  %38 = load i32, i32* %c, align 4
  %cmp66 = icmp eq i32 %38, 35
  br i1 %cmp66, label %if.then.68, label %if.end.4670

if.then.68:                                       ; preds = %while.end
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call69 = call i32 @_IO_getc(%struct._IO_FILE* %39)
  store i32 %call69, i32* %c, align 4
  %40 = load i32, i32* %c, align 4
  %cmp70 = icmp eq i32 %40, 64
  br i1 %cmp70, label %if.then.72, label %if.end.4669

if.then.72:                                       ; preds = %if.then.68
  store i64 0, i64* %length, align 8
  br label %while.cond.74

while.cond.74:                                    ; preds = %if.end.4626, %if.then.72
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call75 = call i32 @_IO_getc(%struct._IO_FILE* %41)
  store i32 %call75, i32* %c, align 4
  %42 = load i32, i32* %c, align 4
  %cmp76 = icmp sge i32 %42, 48
  br i1 %cmp76, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.74
  %43 = load i32, i32* %c, align 4
  %cmp78 = icmp sle i32 %43, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.74
  %44 = phi i1 [ false, %while.cond.74 ], [ %cmp78, %land.rhs ]
  br i1 %44, label %while.body.80, label %while.end.4627

while.body.80:                                    ; preds = %land.end
  br i1 false, label %cond.true, label %cond.false.556

cond.true:                                        ; preds = %while.body.80
  br i1 false, label %cond.true.81, label %cond.false.341

cond.true.81:                                     ; preds = %cond.true
  %45 = load i64, i64* %length, align 8
  %conv82 = trunc i64 %45 to i8
  %conv83 = sext i8 %conv82 to i32
  %add = add nsw i32 0, %conv83
  %mul = mul nsw i32 0, %add
  %sub84 = sub nsw i32 %mul, 1
  %cmp85 = icmp slt i32 %sub84, 0
  br i1 %cmp85, label %cond.true.87, label %cond.false

cond.true.87:                                     ; preds = %cond.true.81
  %46 = load i64, i64* %length, align 8
  %conv88 = trunc i64 %46 to i8
  %conv89 = sext i8 %conv88 to i32
  %add90 = add nsw i32 0, %conv89
  %mul91 = mul nsw i32 0, %add90
  %add92 = add nsw i32 %mul91, 0
  %neg = xor i32 %add92, -1
  %cmp93 = icmp eq i32 %neg, -1
  %conv94 = zext i1 %cmp93 to i32
  %sub95 = sub nsw i32 0, %conv94
  %47 = load i64, i64* %length, align 8
  %conv96 = trunc i64 %47 to i8
  %conv97 = sext i8 %conv96 to i32
  %add98 = add nsw i32 0, %conv97
  %mul99 = mul nsw i32 0, %add98
  %add100 = add nsw i32 %mul99, 1
  %shl = shl i32 %add100, 30
  %sub101 = sub nsw i32 %shl, 1
  %mul102 = mul nsw i32 %sub101, 2
  %add103 = add nsw i32 %mul102, 1
  %sub104 = sub nsw i32 %sub95, %add103
  br label %cond.end

cond.false:                                       ; preds = %cond.true.81
  %48 = load i64, i64* %length, align 8
  %conv105 = trunc i64 %48 to i8
  %conv106 = sext i8 %conv105 to i32
  %add107 = add nsw i32 0, %conv106
  %mul108 = mul nsw i32 0, %add107
  %add109 = add nsw i32 %mul108, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.87
  %cond = phi i32 [ %sub104, %cond.true.87 ], [ %add109, %cond.false ]
  %cmp110 = icmp eq i32 %cond, 0
  br i1 %cmp110, label %land.lhs.true.112, label %lor.lhs.false.117

land.lhs.true.112:                                ; preds = %cond.end
  %49 = load i64, i64* %length, align 8
  %conv113 = trunc i64 %49 to i8
  %conv114 = sext i8 %conv113 to i32
  %cmp115 = icmp slt i32 %conv114, 0
  br i1 %cmp115, label %cond.true.295, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %land.lhs.true.112, %cond.end
  br i1 false, label %cond.true.118, label %cond.false.196

cond.true.118:                                    ; preds = %lor.lhs.false.117
  %50 = load i64, i64* %length, align 8
  %conv119 = trunc i64 %50 to i8
  %conv120 = sext i8 %conv119 to i32
  %cmp121 = icmp slt i32 %conv120, 0
  br i1 %cmp121, label %cond.true.123, label %cond.false.153

cond.true.123:                                    ; preds = %cond.true.118
  %51 = load i64, i64* %length, align 8
  %conv124 = trunc i64 %51 to i8
  %conv125 = sext i8 %conv124 to i32
  %52 = load i64, i64* %length, align 8
  %conv126 = trunc i64 %52 to i8
  %conv127 = sext i8 %conv126 to i32
  %add128 = add nsw i32 0, %conv127
  %mul129 = mul nsw i32 0, %add128
  %sub130 = sub nsw i32 %mul129, 1
  %cmp131 = icmp slt i32 %sub130, 0
  br i1 %cmp131, label %cond.true.133, label %cond.false.143

cond.true.133:                                    ; preds = %cond.true.123
  %53 = load i64, i64* %length, align 8
  %conv134 = trunc i64 %53 to i8
  %conv135 = sext i8 %conv134 to i32
  %add136 = add nsw i32 0, %conv135
  %mul137 = mul nsw i32 0, %add136
  %add138 = add nsw i32 %mul137, 1
  %shl139 = shl i32 %add138, 30
  %sub140 = sub nsw i32 %shl139, 1
  %mul141 = mul nsw i32 %sub140, 2
  %add142 = add nsw i32 %mul141, 1
  br label %cond.end.149

cond.false.143:                                   ; preds = %cond.true.123
  %54 = load i64, i64* %length, align 8
  %conv144 = trunc i64 %54 to i8
  %conv145 = sext i8 %conv144 to i32
  %add146 = add nsw i32 0, %conv145
  %mul147 = mul nsw i32 0, %add146
  %sub148 = sub nsw i32 %mul147, 1
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.143, %cond.true.133
  %cond150 = phi i32 [ %add142, %cond.true.133 ], [ %sub148, %cond.false.143 ]
  %div = sdiv i32 %cond150, 10
  %cmp151 = icmp slt i32 %conv125, %div
  br i1 %cmp151, label %cond.true.295, label %lor.lhs.false.275

cond.false.153:                                   ; preds = %cond.true.118
  br i1 false, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.false.153
  br i1 false, label %cond.true.295, label %lor.lhs.false.275

cond.false.155:                                   ; preds = %cond.false.153
  %55 = load i64, i64* %length, align 8
  %conv156 = trunc i64 %55 to i8
  %conv157 = sext i8 %conv156 to i32
  %add158 = add nsw i32 0, %conv157
  %mul159 = mul nsw i32 0, %add158
  %sub160 = sub nsw i32 %mul159, 1
  %cmp161 = icmp slt i32 %sub160, 0
  br i1 %cmp161, label %cond.true.163, label %cond.false.183

cond.true.163:                                    ; preds = %cond.false.155
  %56 = load i64, i64* %length, align 8
  %conv164 = trunc i64 %56 to i8
  %conv165 = sext i8 %conv164 to i32
  %add166 = add nsw i32 0, %conv165
  %mul167 = mul nsw i32 0, %add166
  %add168 = add nsw i32 %mul167, 0
  %neg169 = xor i32 %add168, -1
  %cmp170 = icmp eq i32 %neg169, -1
  %conv171 = zext i1 %cmp170 to i32
  %sub172 = sub nsw i32 0, %conv171
  %57 = load i64, i64* %length, align 8
  %conv173 = trunc i64 %57 to i8
  %conv174 = sext i8 %conv173 to i32
  %add175 = add nsw i32 0, %conv174
  %mul176 = mul nsw i32 0, %add175
  %add177 = add nsw i32 %mul176, 1
  %shl178 = shl i32 %add177, 30
  %sub179 = sub nsw i32 %shl178, 1
  %mul180 = mul nsw i32 %sub179, 2
  %add181 = add nsw i32 %mul180, 1
  %sub182 = sub nsw i32 %sub172, %add181
  br label %cond.end.189

cond.false.183:                                   ; preds = %cond.false.155
  %58 = load i64, i64* %length, align 8
  %conv184 = trunc i64 %58 to i8
  %conv185 = sext i8 %conv184 to i32
  %add186 = add nsw i32 0, %conv185
  %mul187 = mul nsw i32 0, %add186
  %add188 = add nsw i32 %mul187, 0
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.183, %cond.true.163
  %cond190 = phi i32 [ %sub182, %cond.true.163 ], [ %add188, %cond.false.183 ]
  %div191 = sdiv i32 %cond190, 10
  %59 = load i64, i64* %length, align 8
  %conv192 = trunc i64 %59 to i8
  %conv193 = sext i8 %conv192 to i32
  %cmp194 = icmp slt i32 %div191, %conv193
  br i1 %cmp194, label %cond.true.295, label %lor.lhs.false.275

cond.false.196:                                   ; preds = %lor.lhs.false.117
  br i1 false, label %cond.true.197, label %cond.false.198

cond.true.197:                                    ; preds = %cond.false.196
  br i1 false, label %cond.true.295, label %lor.lhs.false.275

cond.false.198:                                   ; preds = %cond.false.196
  %60 = load i64, i64* %length, align 8
  %conv199 = trunc i64 %60 to i8
  %conv200 = sext i8 %conv199 to i32
  %cmp201 = icmp slt i32 %conv200, 0
  br i1 %cmp201, label %cond.true.203, label %cond.false.244

cond.true.203:                                    ; preds = %cond.false.198
  %61 = load i64, i64* %length, align 8
  %conv204 = trunc i64 %61 to i8
  %conv205 = sext i8 %conv204 to i32
  %62 = load i64, i64* %length, align 8
  %conv206 = trunc i64 %62 to i8
  %conv207 = sext i8 %conv206 to i32
  %add208 = add nsw i32 0, %conv207
  %mul209 = mul nsw i32 0, %add208
  %sub210 = sub nsw i32 %mul209, 1
  %cmp211 = icmp slt i32 %sub210, 0
  br i1 %cmp211, label %cond.true.213, label %cond.false.233

cond.true.213:                                    ; preds = %cond.true.203
  %63 = load i64, i64* %length, align 8
  %conv214 = trunc i64 %63 to i8
  %conv215 = sext i8 %conv214 to i32
  %add216 = add nsw i32 0, %conv215
  %mul217 = mul nsw i32 0, %add216
  %add218 = add nsw i32 %mul217, 0
  %neg219 = xor i32 %add218, -1
  %cmp220 = icmp eq i32 %neg219, -1
  %conv221 = zext i1 %cmp220 to i32
  %sub222 = sub nsw i32 0, %conv221
  %64 = load i64, i64* %length, align 8
  %conv223 = trunc i64 %64 to i8
  %conv224 = sext i8 %conv223 to i32
  %add225 = add nsw i32 0, %conv224
  %mul226 = mul nsw i32 0, %add225
  %add227 = add nsw i32 %mul226, 1
  %shl228 = shl i32 %add227, 30
  %sub229 = sub nsw i32 %shl228, 1
  %mul230 = mul nsw i32 %sub229, 2
  %add231 = add nsw i32 %mul230, 1
  %sub232 = sub nsw i32 %sub222, %add231
  br label %cond.end.239

cond.false.233:                                   ; preds = %cond.true.203
  %65 = load i64, i64* %length, align 8
  %conv234 = trunc i64 %65 to i8
  %conv235 = sext i8 %conv234 to i32
  %add236 = add nsw i32 0, %conv235
  %mul237 = mul nsw i32 0, %add236
  %add238 = add nsw i32 %mul237, 0
  br label %cond.end.239

cond.end.239:                                     ; preds = %cond.false.233, %cond.true.213
  %cond240 = phi i32 [ %sub232, %cond.true.213 ], [ %add238, %cond.false.233 ]
  %div241 = sdiv i32 %cond240, 10
  %cmp242 = icmp slt i32 %conv205, %div241
  br i1 %cmp242, label %cond.true.295, label %lor.lhs.false.275

cond.false.244:                                   ; preds = %cond.false.198
  %66 = load i64, i64* %length, align 8
  %conv245 = trunc i64 %66 to i8
  %conv246 = sext i8 %conv245 to i32
  %add247 = add nsw i32 0, %conv246
  %mul248 = mul nsw i32 0, %add247
  %sub249 = sub nsw i32 %mul248, 1
  %cmp250 = icmp slt i32 %sub249, 0
  br i1 %cmp250, label %cond.true.252, label %cond.false.262

cond.true.252:                                    ; preds = %cond.false.244
  %67 = load i64, i64* %length, align 8
  %conv253 = trunc i64 %67 to i8
  %conv254 = sext i8 %conv253 to i32
  %add255 = add nsw i32 0, %conv254
  %mul256 = mul nsw i32 0, %add255
  %add257 = add nsw i32 %mul256, 1
  %shl258 = shl i32 %add257, 30
  %sub259 = sub nsw i32 %shl258, 1
  %mul260 = mul nsw i32 %sub259, 2
  %add261 = add nsw i32 %mul260, 1
  br label %cond.end.268

cond.false.262:                                   ; preds = %cond.false.244
  %68 = load i64, i64* %length, align 8
  %conv263 = trunc i64 %68 to i8
  %conv264 = sext i8 %conv263 to i32
  %add265 = add nsw i32 0, %conv264
  %mul266 = mul nsw i32 0, %add265
  %sub267 = sub nsw i32 %mul266, 1
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.false.262, %cond.true.252
  %cond269 = phi i32 [ %add261, %cond.true.252 ], [ %sub267, %cond.false.262 ]
  %div270 = sdiv i32 %cond269, 10
  %69 = load i64, i64* %length, align 8
  %conv271 = trunc i64 %69 to i8
  %conv272 = sext i8 %conv271 to i32
  %cmp273 = icmp slt i32 %div270, %conv272
  br i1 %cmp273, label %cond.true.295, label %lor.lhs.false.275

lor.lhs.false.275:                                ; preds = %cond.end.268, %cond.end.239, %cond.true.197, %cond.end.189, %cond.true.154, %cond.end.149
  %70 = load i64, i64* %length, align 8
  %conv276 = trunc i64 %70 to i8
  %conv277 = sext i8 %conv276 to i32
  %mul278 = mul nsw i32 %conv277, 10
  %mul279 = mul nsw i32 0, %mul278
  %sub280 = sub nsw i32 %mul279, 1
  %cmp281 = icmp slt i32 %sub280, 0
  br i1 %cmp281, label %land.lhs.true.283, label %lor.lhs.false.289

land.lhs.true.283:                                ; preds = %lor.lhs.false.275
  %71 = load i64, i64* %length, align 8
  %conv284 = trunc i64 %71 to i8
  %conv285 = sext i8 %conv284 to i32
  %mul286 = mul nsw i32 %conv285, 10
  %cmp287 = icmp slt i32 %mul286, -128
  br i1 %cmp287, label %cond.true.295, label %lor.lhs.false.289

lor.lhs.false.289:                                ; preds = %land.lhs.true.283, %lor.lhs.false.275
  %72 = load i64, i64* %length, align 8
  %conv290 = trunc i64 %72 to i8
  %conv291 = sext i8 %conv290 to i32
  %mul292 = mul nsw i32 %conv291, 10
  %cmp293 = icmp slt i32 127, %mul292
  br i1 %cmp293, label %cond.true.295, label %cond.false.318

cond.true.295:                                    ; preds = %lor.lhs.false.289, %land.lhs.true.283, %cond.end.268, %cond.end.239, %cond.true.197, %cond.end.189, %cond.true.154, %cond.end.149, %land.lhs.true.112
  %73 = load i64, i64* %length, align 8
  %conv296 = trunc i64 %73 to i8
  %conv297 = zext i8 %conv296 to i32
  %mul298 = mul nsw i32 %conv297, 10
  %cmp299 = icmp sle i32 %mul298, 127
  br i1 %cmp299, label %cond.true.301, label %cond.false.307

cond.true.301:                                    ; preds = %cond.true.295
  %74 = load i64, i64* %length, align 8
  %conv302 = trunc i64 %74 to i8
  %conv303 = zext i8 %conv302 to i32
  %mul304 = mul nsw i32 %conv303, 10
  %conv305 = trunc i32 %mul304 to i8
  %conv306 = sext i8 %conv305 to i32
  br label %cond.end.315

cond.false.307:                                   ; preds = %cond.true.295
  %75 = load i64, i64* %length, align 8
  %conv308 = trunc i64 %75 to i8
  %conv309 = zext i8 %conv308 to i32
  %mul310 = mul nsw i32 %conv309, 10
  %sub311 = sub nsw i32 %mul310, -128
  %conv312 = trunc i32 %sub311 to i8
  %conv313 = sext i8 %conv312 to i32
  %add314 = add nsw i32 %conv313, -128
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.307, %cond.true.301
  %cond316 = phi i32 [ %conv306, %cond.true.301 ], [ %add314, %cond.false.307 ]
  %conv317 = sext i32 %cond316 to i64
  store i64 %conv317, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.318:                                   ; preds = %lor.lhs.false.289
  %76 = load i64, i64* %length, align 8
  %conv319 = trunc i64 %76 to i8
  %conv320 = zext i8 %conv319 to i32
  %mul321 = mul nsw i32 %conv320, 10
  %cmp322 = icmp sle i32 %mul321, 127
  br i1 %cmp322, label %cond.true.324, label %cond.false.330

cond.true.324:                                    ; preds = %cond.false.318
  %77 = load i64, i64* %length, align 8
  %conv325 = trunc i64 %77 to i8
  %conv326 = zext i8 %conv325 to i32
  %mul327 = mul nsw i32 %conv326, 10
  %conv328 = trunc i32 %mul327 to i8
  %conv329 = sext i8 %conv328 to i32
  br label %cond.end.338

cond.false.330:                                   ; preds = %cond.false.318
  %78 = load i64, i64* %length, align 8
  %conv331 = trunc i64 %78 to i8
  %conv332 = zext i8 %conv331 to i32
  %mul333 = mul nsw i32 %conv332, 10
  %sub334 = sub nsw i32 %mul333, -128
  %conv335 = trunc i32 %sub334 to i8
  %conv336 = sext i8 %conv335 to i32
  %add337 = add nsw i32 %conv336, -128
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.330, %cond.true.324
  %cond339 = phi i32 [ %conv329, %cond.true.324 ], [ %add337, %cond.false.330 ]
  %conv340 = sext i32 %cond339 to i64
  store i64 %conv340, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

cond.false.341:                                   ; preds = %cond.true
  %79 = load i64, i64* %length, align 8
  %add342 = add nsw i64 0, %79
  %mul343 = mul nsw i64 0, %add342
  %sub344 = sub nsw i64 %mul343, 1
  %cmp345 = icmp slt i64 %sub344, 0
  br i1 %cmp345, label %cond.true.347, label %cond.false.364

cond.true.347:                                    ; preds = %cond.false.341
  %80 = load i64, i64* %length, align 8
  %add348 = add nsw i64 0, %80
  %mul349 = mul nsw i64 0, %add348
  %add350 = add nsw i64 %mul349, 0
  %neg351 = xor i64 %add350, -1
  %cmp352 = icmp eq i64 %neg351, -1
  %conv353 = zext i1 %cmp352 to i32
  %sub354 = sub nsw i32 0, %conv353
  %conv355 = sext i32 %sub354 to i64
  %81 = load i64, i64* %length, align 8
  %add356 = add nsw i64 0, %81
  %mul357 = mul nsw i64 0, %add356
  %add358 = add nsw i64 %mul357, 1
  %shl359 = shl i64 %add358, 62
  %sub360 = sub nsw i64 %shl359, 1
  %mul361 = mul nsw i64 %sub360, 2
  %add362 = add nsw i64 %mul361, 1
  %sub363 = sub nsw i64 %conv355, %add362
  br label %cond.end.368

cond.false.364:                                   ; preds = %cond.false.341
  %82 = load i64, i64* %length, align 8
  %add365 = add nsw i64 0, %82
  %mul366 = mul nsw i64 0, %add365
  %add367 = add nsw i64 %mul366, 0
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.false.364, %cond.true.347
  %cond369 = phi i64 [ %sub363, %cond.true.347 ], [ %add367, %cond.false.364 ]
  %cmp370 = icmp eq i64 %cond369, 0
  br i1 %cmp370, label %land.lhs.true.372, label %lor.lhs.false.375

land.lhs.true.372:                                ; preds = %cond.end.368
  %83 = load i64, i64* %length, align 8
  %cmp373 = icmp slt i64 %83, 0
  br i1 %cmp373, label %cond.true.510, label %lor.lhs.false.375

lor.lhs.false.375:                                ; preds = %land.lhs.true.372, %cond.end.368
  br i1 false, label %cond.true.376, label %cond.false.436

cond.true.376:                                    ; preds = %lor.lhs.false.375
  %84 = load i64, i64* %length, align 8
  %cmp377 = icmp slt i64 %84, 0
  br i1 %cmp377, label %cond.true.379, label %cond.false.402

cond.true.379:                                    ; preds = %cond.true.376
  %85 = load i64, i64* %length, align 8
  %86 = load i64, i64* %length, align 8
  %add380 = add nsw i64 0, %86
  %mul381 = mul nsw i64 0, %add380
  %sub382 = sub nsw i64 %mul381, 1
  %cmp383 = icmp slt i64 %sub382, 0
  br i1 %cmp383, label %cond.true.385, label %cond.false.393

cond.true.385:                                    ; preds = %cond.true.379
  %87 = load i64, i64* %length, align 8
  %add386 = add nsw i64 0, %87
  %mul387 = mul nsw i64 0, %add386
  %add388 = add nsw i64 %mul387, 1
  %shl389 = shl i64 %add388, 62
  %sub390 = sub nsw i64 %shl389, 1
  %mul391 = mul nsw i64 %sub390, 2
  %add392 = add nsw i64 %mul391, 1
  br label %cond.end.397

cond.false.393:                                   ; preds = %cond.true.379
  %88 = load i64, i64* %length, align 8
  %add394 = add nsw i64 0, %88
  %mul395 = mul nsw i64 0, %add394
  %sub396 = sub nsw i64 %mul395, 1
  br label %cond.end.397

cond.end.397:                                     ; preds = %cond.false.393, %cond.true.385
  %cond398 = phi i64 [ %add392, %cond.true.385 ], [ %sub396, %cond.false.393 ]
  %div399 = sdiv i64 %cond398, 10
  %cmp400 = icmp slt i64 %85, %div399
  br i1 %cmp400, label %cond.true.510, label %lor.lhs.false.496

cond.false.402:                                   ; preds = %cond.true.376
  br i1 false, label %cond.true.403, label %cond.false.404

cond.true.403:                                    ; preds = %cond.false.402
  br i1 false, label %cond.true.510, label %lor.lhs.false.496

cond.false.404:                                   ; preds = %cond.false.402
  %89 = load i64, i64* %length, align 8
  %add405 = add nsw i64 0, %89
  %mul406 = mul nsw i64 0, %add405
  %sub407 = sub nsw i64 %mul406, 1
  %cmp408 = icmp slt i64 %sub407, 0
  br i1 %cmp408, label %cond.true.410, label %cond.false.427

cond.true.410:                                    ; preds = %cond.false.404
  %90 = load i64, i64* %length, align 8
  %add411 = add nsw i64 0, %90
  %mul412 = mul nsw i64 0, %add411
  %add413 = add nsw i64 %mul412, 0
  %neg414 = xor i64 %add413, -1
  %cmp415 = icmp eq i64 %neg414, -1
  %conv416 = zext i1 %cmp415 to i32
  %sub417 = sub nsw i32 0, %conv416
  %conv418 = sext i32 %sub417 to i64
  %91 = load i64, i64* %length, align 8
  %add419 = add nsw i64 0, %91
  %mul420 = mul nsw i64 0, %add419
  %add421 = add nsw i64 %mul420, 1
  %shl422 = shl i64 %add421, 62
  %sub423 = sub nsw i64 %shl422, 1
  %mul424 = mul nsw i64 %sub423, 2
  %add425 = add nsw i64 %mul424, 1
  %sub426 = sub nsw i64 %conv418, %add425
  br label %cond.end.431

cond.false.427:                                   ; preds = %cond.false.404
  %92 = load i64, i64* %length, align 8
  %add428 = add nsw i64 0, %92
  %mul429 = mul nsw i64 0, %add428
  %add430 = add nsw i64 %mul429, 0
  br label %cond.end.431

cond.end.431:                                     ; preds = %cond.false.427, %cond.true.410
  %cond432 = phi i64 [ %sub426, %cond.true.410 ], [ %add430, %cond.false.427 ]
  %div433 = sdiv i64 %cond432, 10
  %93 = load i64, i64* %length, align 8
  %cmp434 = icmp slt i64 %div433, %93
  br i1 %cmp434, label %cond.true.510, label %lor.lhs.false.496

cond.false.436:                                   ; preds = %lor.lhs.false.375
  br i1 false, label %cond.true.437, label %cond.false.438

cond.true.437:                                    ; preds = %cond.false.436
  br i1 false, label %cond.true.510, label %lor.lhs.false.496

cond.false.438:                                   ; preds = %cond.false.436
  %94 = load i64, i64* %length, align 8
  %cmp439 = icmp slt i64 %94, 0
  br i1 %cmp439, label %cond.true.441, label %cond.false.473

cond.true.441:                                    ; preds = %cond.false.438
  %95 = load i64, i64* %length, align 8
  %96 = load i64, i64* %length, align 8
  %add442 = add nsw i64 0, %96
  %mul443 = mul nsw i64 0, %add442
  %sub444 = sub nsw i64 %mul443, 1
  %cmp445 = icmp slt i64 %sub444, 0
  br i1 %cmp445, label %cond.true.447, label %cond.false.464

cond.true.447:                                    ; preds = %cond.true.441
  %97 = load i64, i64* %length, align 8
  %add448 = add nsw i64 0, %97
  %mul449 = mul nsw i64 0, %add448
  %add450 = add nsw i64 %mul449, 0
  %neg451 = xor i64 %add450, -1
  %cmp452 = icmp eq i64 %neg451, -1
  %conv453 = zext i1 %cmp452 to i32
  %sub454 = sub nsw i32 0, %conv453
  %conv455 = sext i32 %sub454 to i64
  %98 = load i64, i64* %length, align 8
  %add456 = add nsw i64 0, %98
  %mul457 = mul nsw i64 0, %add456
  %add458 = add nsw i64 %mul457, 1
  %shl459 = shl i64 %add458, 62
  %sub460 = sub nsw i64 %shl459, 1
  %mul461 = mul nsw i64 %sub460, 2
  %add462 = add nsw i64 %mul461, 1
  %sub463 = sub nsw i64 %conv455, %add462
  br label %cond.end.468

cond.false.464:                                   ; preds = %cond.true.441
  %99 = load i64, i64* %length, align 8
  %add465 = add nsw i64 0, %99
  %mul466 = mul nsw i64 0, %add465
  %add467 = add nsw i64 %mul466, 0
  br label %cond.end.468

cond.end.468:                                     ; preds = %cond.false.464, %cond.true.447
  %cond469 = phi i64 [ %sub463, %cond.true.447 ], [ %add467, %cond.false.464 ]
  %div470 = sdiv i64 %cond469, 10
  %cmp471 = icmp slt i64 %95, %div470
  br i1 %cmp471, label %cond.true.510, label %lor.lhs.false.496

cond.false.473:                                   ; preds = %cond.false.438
  %100 = load i64, i64* %length, align 8
  %add474 = add nsw i64 0, %100
  %mul475 = mul nsw i64 0, %add474
  %sub476 = sub nsw i64 %mul475, 1
  %cmp477 = icmp slt i64 %sub476, 0
  br i1 %cmp477, label %cond.true.479, label %cond.false.487

cond.true.479:                                    ; preds = %cond.false.473
  %101 = load i64, i64* %length, align 8
  %add480 = add nsw i64 0, %101
  %mul481 = mul nsw i64 0, %add480
  %add482 = add nsw i64 %mul481, 1
  %shl483 = shl i64 %add482, 62
  %sub484 = sub nsw i64 %shl483, 1
  %mul485 = mul nsw i64 %sub484, 2
  %add486 = add nsw i64 %mul485, 1
  br label %cond.end.491

cond.false.487:                                   ; preds = %cond.false.473
  %102 = load i64, i64* %length, align 8
  %add488 = add nsw i64 0, %102
  %mul489 = mul nsw i64 0, %add488
  %sub490 = sub nsw i64 %mul489, 1
  br label %cond.end.491

cond.end.491:                                     ; preds = %cond.false.487, %cond.true.479
  %cond492 = phi i64 [ %add486, %cond.true.479 ], [ %sub490, %cond.false.487 ]
  %div493 = sdiv i64 %cond492, 10
  %103 = load i64, i64* %length, align 8
  %cmp494 = icmp slt i64 %div493, %103
  br i1 %cmp494, label %cond.true.510, label %lor.lhs.false.496

lor.lhs.false.496:                                ; preds = %cond.end.491, %cond.end.468, %cond.true.437, %cond.end.431, %cond.true.403, %cond.end.397
  %104 = load i64, i64* %length, align 8
  %mul497 = mul nsw i64 %104, 10
  %mul498 = mul nsw i64 0, %mul497
  %sub499 = sub nsw i64 %mul498, 1
  %cmp500 = icmp slt i64 %sub499, 0
  br i1 %cmp500, label %land.lhs.true.502, label %lor.lhs.false.506

land.lhs.true.502:                                ; preds = %lor.lhs.false.496
  %105 = load i64, i64* %length, align 8
  %mul503 = mul nsw i64 %105, 10
  %cmp504 = icmp slt i64 %mul503, -128
  br i1 %cmp504, label %cond.true.510, label %lor.lhs.false.506

lor.lhs.false.506:                                ; preds = %land.lhs.true.502, %lor.lhs.false.496
  %106 = load i64, i64* %length, align 8
  %mul507 = mul nsw i64 %106, 10
  %cmp508 = icmp slt i64 127, %mul507
  br i1 %cmp508, label %cond.true.510, label %cond.false.533

cond.true.510:                                    ; preds = %lor.lhs.false.506, %land.lhs.true.502, %cond.end.491, %cond.end.468, %cond.true.437, %cond.end.431, %cond.true.403, %cond.end.397, %land.lhs.true.372
  %107 = load i64, i64* %length, align 8
  %conv511 = trunc i64 %107 to i8
  %conv512 = zext i8 %conv511 to i32
  %mul513 = mul nsw i32 %conv512, 10
  %cmp514 = icmp sle i32 %mul513, 127
  br i1 %cmp514, label %cond.true.516, label %cond.false.522

cond.true.516:                                    ; preds = %cond.true.510
  %108 = load i64, i64* %length, align 8
  %conv517 = trunc i64 %108 to i8
  %conv518 = zext i8 %conv517 to i32
  %mul519 = mul nsw i32 %conv518, 10
  %conv520 = trunc i32 %mul519 to i8
  %conv521 = sext i8 %conv520 to i32
  br label %cond.end.530

cond.false.522:                                   ; preds = %cond.true.510
  %109 = load i64, i64* %length, align 8
  %conv523 = trunc i64 %109 to i8
  %conv524 = zext i8 %conv523 to i32
  %mul525 = mul nsw i32 %conv524, 10
  %sub526 = sub nsw i32 %mul525, -128
  %conv527 = trunc i32 %sub526 to i8
  %conv528 = sext i8 %conv527 to i32
  %add529 = add nsw i32 %conv528, -128
  br label %cond.end.530

cond.end.530:                                     ; preds = %cond.false.522, %cond.true.516
  %cond531 = phi i32 [ %conv521, %cond.true.516 ], [ %add529, %cond.false.522 ]
  %conv532 = sext i32 %cond531 to i64
  store i64 %conv532, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.533:                                   ; preds = %lor.lhs.false.506
  %110 = load i64, i64* %length, align 8
  %conv534 = trunc i64 %110 to i8
  %conv535 = zext i8 %conv534 to i32
  %mul536 = mul nsw i32 %conv535, 10
  %cmp537 = icmp sle i32 %mul536, 127
  br i1 %cmp537, label %cond.true.539, label %cond.false.545

cond.true.539:                                    ; preds = %cond.false.533
  %111 = load i64, i64* %length, align 8
  %conv540 = trunc i64 %111 to i8
  %conv541 = zext i8 %conv540 to i32
  %mul542 = mul nsw i32 %conv541, 10
  %conv543 = trunc i32 %mul542 to i8
  %conv544 = sext i8 %conv543 to i32
  br label %cond.end.553

cond.false.545:                                   ; preds = %cond.false.533
  %112 = load i64, i64* %length, align 8
  %conv546 = trunc i64 %112 to i8
  %conv547 = zext i8 %conv546 to i32
  %mul548 = mul nsw i32 %conv547, 10
  %sub549 = sub nsw i32 %mul548, -128
  %conv550 = trunc i32 %sub549 to i8
  %conv551 = sext i8 %conv550 to i32
  %add552 = add nsw i32 %conv551, -128
  br label %cond.end.553

cond.end.553:                                     ; preds = %cond.false.545, %cond.true.539
  %cond554 = phi i32 [ %conv544, %cond.true.539 ], [ %add552, %cond.false.545 ]
  %conv555 = sext i32 %cond554 to i64
  store i64 %conv555, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

cond.false.556:                                   ; preds = %while.body.80
  br i1 false, label %cond.true.557, label %cond.false.1041

cond.true.557:                                    ; preds = %cond.false.556
  br i1 false, label %cond.true.558, label %cond.false.826

cond.true.558:                                    ; preds = %cond.true.557
  %113 = load i64, i64* %length, align 8
  %conv559 = trunc i64 %113 to i16
  %conv560 = sext i16 %conv559 to i32
  %add561 = add nsw i32 0, %conv560
  %mul562 = mul nsw i32 0, %add561
  %sub563 = sub nsw i32 %mul562, 1
  %cmp564 = icmp slt i32 %sub563, 0
  br i1 %cmp564, label %cond.true.566, label %cond.false.586

cond.true.566:                                    ; preds = %cond.true.558
  %114 = load i64, i64* %length, align 8
  %conv567 = trunc i64 %114 to i16
  %conv568 = sext i16 %conv567 to i32
  %add569 = add nsw i32 0, %conv568
  %mul570 = mul nsw i32 0, %add569
  %add571 = add nsw i32 %mul570, 0
  %neg572 = xor i32 %add571, -1
  %cmp573 = icmp eq i32 %neg572, -1
  %conv574 = zext i1 %cmp573 to i32
  %sub575 = sub nsw i32 0, %conv574
  %115 = load i64, i64* %length, align 8
  %conv576 = trunc i64 %115 to i16
  %conv577 = sext i16 %conv576 to i32
  %add578 = add nsw i32 0, %conv577
  %mul579 = mul nsw i32 0, %add578
  %add580 = add nsw i32 %mul579, 1
  %shl581 = shl i32 %add580, 30
  %sub582 = sub nsw i32 %shl581, 1
  %mul583 = mul nsw i32 %sub582, 2
  %add584 = add nsw i32 %mul583, 1
  %sub585 = sub nsw i32 %sub575, %add584
  br label %cond.end.592

cond.false.586:                                   ; preds = %cond.true.558
  %116 = load i64, i64* %length, align 8
  %conv587 = trunc i64 %116 to i16
  %conv588 = sext i16 %conv587 to i32
  %add589 = add nsw i32 0, %conv588
  %mul590 = mul nsw i32 0, %add589
  %add591 = add nsw i32 %mul590, 0
  br label %cond.end.592

cond.end.592:                                     ; preds = %cond.false.586, %cond.true.566
  %cond593 = phi i32 [ %sub585, %cond.true.566 ], [ %add591, %cond.false.586 ]
  %cmp594 = icmp eq i32 %cond593, 0
  br i1 %cmp594, label %land.lhs.true.596, label %lor.lhs.false.601

land.lhs.true.596:                                ; preds = %cond.end.592
  %117 = load i64, i64* %length, align 8
  %conv597 = trunc i64 %117 to i16
  %conv598 = sext i16 %conv597 to i32
  %cmp599 = icmp slt i32 %conv598, 0
  br i1 %cmp599, label %cond.true.780, label %lor.lhs.false.601

lor.lhs.false.601:                                ; preds = %land.lhs.true.596, %cond.end.592
  br i1 false, label %cond.true.602, label %cond.false.681

cond.true.602:                                    ; preds = %lor.lhs.false.601
  %118 = load i64, i64* %length, align 8
  %conv603 = trunc i64 %118 to i16
  %conv604 = sext i16 %conv603 to i32
  %cmp605 = icmp slt i32 %conv604, 0
  br i1 %cmp605, label %cond.true.607, label %cond.false.638

cond.true.607:                                    ; preds = %cond.true.602
  %119 = load i64, i64* %length, align 8
  %conv608 = trunc i64 %119 to i16
  %conv609 = sext i16 %conv608 to i32
  %120 = load i64, i64* %length, align 8
  %conv610 = trunc i64 %120 to i16
  %conv611 = sext i16 %conv610 to i32
  %add612 = add nsw i32 0, %conv611
  %mul613 = mul nsw i32 0, %add612
  %sub614 = sub nsw i32 %mul613, 1
  %cmp615 = icmp slt i32 %sub614, 0
  br i1 %cmp615, label %cond.true.617, label %cond.false.627

cond.true.617:                                    ; preds = %cond.true.607
  %121 = load i64, i64* %length, align 8
  %conv618 = trunc i64 %121 to i16
  %conv619 = sext i16 %conv618 to i32
  %add620 = add nsw i32 0, %conv619
  %mul621 = mul nsw i32 0, %add620
  %add622 = add nsw i32 %mul621, 1
  %shl623 = shl i32 %add622, 30
  %sub624 = sub nsw i32 %shl623, 1
  %mul625 = mul nsw i32 %sub624, 2
  %add626 = add nsw i32 %mul625, 1
  br label %cond.end.633

cond.false.627:                                   ; preds = %cond.true.607
  %122 = load i64, i64* %length, align 8
  %conv628 = trunc i64 %122 to i16
  %conv629 = sext i16 %conv628 to i32
  %add630 = add nsw i32 0, %conv629
  %mul631 = mul nsw i32 0, %add630
  %sub632 = sub nsw i32 %mul631, 1
  br label %cond.end.633

cond.end.633:                                     ; preds = %cond.false.627, %cond.true.617
  %cond634 = phi i32 [ %add626, %cond.true.617 ], [ %sub632, %cond.false.627 ]
  %div635 = sdiv i32 %cond634, 10
  %cmp636 = icmp slt i32 %conv609, %div635
  br i1 %cmp636, label %cond.true.780, label %lor.lhs.false.760

cond.false.638:                                   ; preds = %cond.true.602
  br i1 false, label %cond.true.639, label %cond.false.640

cond.true.639:                                    ; preds = %cond.false.638
  br i1 false, label %cond.true.780, label %lor.lhs.false.760

cond.false.640:                                   ; preds = %cond.false.638
  %123 = load i64, i64* %length, align 8
  %conv641 = trunc i64 %123 to i16
  %conv642 = sext i16 %conv641 to i32
  %add643 = add nsw i32 0, %conv642
  %mul644 = mul nsw i32 0, %add643
  %sub645 = sub nsw i32 %mul644, 1
  %cmp646 = icmp slt i32 %sub645, 0
  br i1 %cmp646, label %cond.true.648, label %cond.false.668

cond.true.648:                                    ; preds = %cond.false.640
  %124 = load i64, i64* %length, align 8
  %conv649 = trunc i64 %124 to i16
  %conv650 = sext i16 %conv649 to i32
  %add651 = add nsw i32 0, %conv650
  %mul652 = mul nsw i32 0, %add651
  %add653 = add nsw i32 %mul652, 0
  %neg654 = xor i32 %add653, -1
  %cmp655 = icmp eq i32 %neg654, -1
  %conv656 = zext i1 %cmp655 to i32
  %sub657 = sub nsw i32 0, %conv656
  %125 = load i64, i64* %length, align 8
  %conv658 = trunc i64 %125 to i16
  %conv659 = sext i16 %conv658 to i32
  %add660 = add nsw i32 0, %conv659
  %mul661 = mul nsw i32 0, %add660
  %add662 = add nsw i32 %mul661, 1
  %shl663 = shl i32 %add662, 30
  %sub664 = sub nsw i32 %shl663, 1
  %mul665 = mul nsw i32 %sub664, 2
  %add666 = add nsw i32 %mul665, 1
  %sub667 = sub nsw i32 %sub657, %add666
  br label %cond.end.674

cond.false.668:                                   ; preds = %cond.false.640
  %126 = load i64, i64* %length, align 8
  %conv669 = trunc i64 %126 to i16
  %conv670 = sext i16 %conv669 to i32
  %add671 = add nsw i32 0, %conv670
  %mul672 = mul nsw i32 0, %add671
  %add673 = add nsw i32 %mul672, 0
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.false.668, %cond.true.648
  %cond675 = phi i32 [ %sub667, %cond.true.648 ], [ %add673, %cond.false.668 ]
  %div676 = sdiv i32 %cond675, 10
  %127 = load i64, i64* %length, align 8
  %conv677 = trunc i64 %127 to i16
  %conv678 = sext i16 %conv677 to i32
  %cmp679 = icmp slt i32 %div676, %conv678
  br i1 %cmp679, label %cond.true.780, label %lor.lhs.false.760

cond.false.681:                                   ; preds = %lor.lhs.false.601
  br i1 false, label %cond.true.682, label %cond.false.683

cond.true.682:                                    ; preds = %cond.false.681
  br i1 false, label %cond.true.780, label %lor.lhs.false.760

cond.false.683:                                   ; preds = %cond.false.681
  %128 = load i64, i64* %length, align 8
  %conv684 = trunc i64 %128 to i16
  %conv685 = sext i16 %conv684 to i32
  %cmp686 = icmp slt i32 %conv685, 0
  br i1 %cmp686, label %cond.true.688, label %cond.false.729

cond.true.688:                                    ; preds = %cond.false.683
  %129 = load i64, i64* %length, align 8
  %conv689 = trunc i64 %129 to i16
  %conv690 = sext i16 %conv689 to i32
  %130 = load i64, i64* %length, align 8
  %conv691 = trunc i64 %130 to i16
  %conv692 = sext i16 %conv691 to i32
  %add693 = add nsw i32 0, %conv692
  %mul694 = mul nsw i32 0, %add693
  %sub695 = sub nsw i32 %mul694, 1
  %cmp696 = icmp slt i32 %sub695, 0
  br i1 %cmp696, label %cond.true.698, label %cond.false.718

cond.true.698:                                    ; preds = %cond.true.688
  %131 = load i64, i64* %length, align 8
  %conv699 = trunc i64 %131 to i16
  %conv700 = sext i16 %conv699 to i32
  %add701 = add nsw i32 0, %conv700
  %mul702 = mul nsw i32 0, %add701
  %add703 = add nsw i32 %mul702, 0
  %neg704 = xor i32 %add703, -1
  %cmp705 = icmp eq i32 %neg704, -1
  %conv706 = zext i1 %cmp705 to i32
  %sub707 = sub nsw i32 0, %conv706
  %132 = load i64, i64* %length, align 8
  %conv708 = trunc i64 %132 to i16
  %conv709 = sext i16 %conv708 to i32
  %add710 = add nsw i32 0, %conv709
  %mul711 = mul nsw i32 0, %add710
  %add712 = add nsw i32 %mul711, 1
  %shl713 = shl i32 %add712, 30
  %sub714 = sub nsw i32 %shl713, 1
  %mul715 = mul nsw i32 %sub714, 2
  %add716 = add nsw i32 %mul715, 1
  %sub717 = sub nsw i32 %sub707, %add716
  br label %cond.end.724

cond.false.718:                                   ; preds = %cond.true.688
  %133 = load i64, i64* %length, align 8
  %conv719 = trunc i64 %133 to i16
  %conv720 = sext i16 %conv719 to i32
  %add721 = add nsw i32 0, %conv720
  %mul722 = mul nsw i32 0, %add721
  %add723 = add nsw i32 %mul722, 0
  br label %cond.end.724

cond.end.724:                                     ; preds = %cond.false.718, %cond.true.698
  %cond725 = phi i32 [ %sub717, %cond.true.698 ], [ %add723, %cond.false.718 ]
  %div726 = sdiv i32 %cond725, 10
  %cmp727 = icmp slt i32 %conv690, %div726
  br i1 %cmp727, label %cond.true.780, label %lor.lhs.false.760

cond.false.729:                                   ; preds = %cond.false.683
  %134 = load i64, i64* %length, align 8
  %conv730 = trunc i64 %134 to i16
  %conv731 = sext i16 %conv730 to i32
  %add732 = add nsw i32 0, %conv731
  %mul733 = mul nsw i32 0, %add732
  %sub734 = sub nsw i32 %mul733, 1
  %cmp735 = icmp slt i32 %sub734, 0
  br i1 %cmp735, label %cond.true.737, label %cond.false.747

cond.true.737:                                    ; preds = %cond.false.729
  %135 = load i64, i64* %length, align 8
  %conv738 = trunc i64 %135 to i16
  %conv739 = sext i16 %conv738 to i32
  %add740 = add nsw i32 0, %conv739
  %mul741 = mul nsw i32 0, %add740
  %add742 = add nsw i32 %mul741, 1
  %shl743 = shl i32 %add742, 30
  %sub744 = sub nsw i32 %shl743, 1
  %mul745 = mul nsw i32 %sub744, 2
  %add746 = add nsw i32 %mul745, 1
  br label %cond.end.753

cond.false.747:                                   ; preds = %cond.false.729
  %136 = load i64, i64* %length, align 8
  %conv748 = trunc i64 %136 to i16
  %conv749 = sext i16 %conv748 to i32
  %add750 = add nsw i32 0, %conv749
  %mul751 = mul nsw i32 0, %add750
  %sub752 = sub nsw i32 %mul751, 1
  br label %cond.end.753

cond.end.753:                                     ; preds = %cond.false.747, %cond.true.737
  %cond754 = phi i32 [ %add746, %cond.true.737 ], [ %sub752, %cond.false.747 ]
  %div755 = sdiv i32 %cond754, 10
  %137 = load i64, i64* %length, align 8
  %conv756 = trunc i64 %137 to i16
  %conv757 = sext i16 %conv756 to i32
  %cmp758 = icmp slt i32 %div755, %conv757
  br i1 %cmp758, label %cond.true.780, label %lor.lhs.false.760

lor.lhs.false.760:                                ; preds = %cond.end.753, %cond.end.724, %cond.true.682, %cond.end.674, %cond.true.639, %cond.end.633
  %138 = load i64, i64* %length, align 8
  %conv761 = trunc i64 %138 to i16
  %conv762 = sext i16 %conv761 to i32
  %mul763 = mul nsw i32 %conv762, 10
  %mul764 = mul nsw i32 0, %mul763
  %sub765 = sub nsw i32 %mul764, 1
  %cmp766 = icmp slt i32 %sub765, 0
  br i1 %cmp766, label %land.lhs.true.768, label %lor.lhs.false.774

land.lhs.true.768:                                ; preds = %lor.lhs.false.760
  %139 = load i64, i64* %length, align 8
  %conv769 = trunc i64 %139 to i16
  %conv770 = sext i16 %conv769 to i32
  %mul771 = mul nsw i32 %conv770, 10
  %cmp772 = icmp slt i32 %mul771, -32768
  br i1 %cmp772, label %cond.true.780, label %lor.lhs.false.774

lor.lhs.false.774:                                ; preds = %land.lhs.true.768, %lor.lhs.false.760
  %140 = load i64, i64* %length, align 8
  %conv775 = trunc i64 %140 to i16
  %conv776 = sext i16 %conv775 to i32
  %mul777 = mul nsw i32 %conv776, 10
  %cmp778 = icmp slt i32 32767, %mul777
  br i1 %cmp778, label %cond.true.780, label %cond.false.803

cond.true.780:                                    ; preds = %lor.lhs.false.774, %land.lhs.true.768, %cond.end.753, %cond.end.724, %cond.true.682, %cond.end.674, %cond.true.639, %cond.end.633, %land.lhs.true.596
  %141 = load i64, i64* %length, align 8
  %conv781 = trunc i64 %141 to i16
  %conv782 = zext i16 %conv781 to i32
  %mul783 = mul nsw i32 %conv782, 10
  %cmp784 = icmp sle i32 %mul783, 32767
  br i1 %cmp784, label %cond.true.786, label %cond.false.792

cond.true.786:                                    ; preds = %cond.true.780
  %142 = load i64, i64* %length, align 8
  %conv787 = trunc i64 %142 to i16
  %conv788 = zext i16 %conv787 to i32
  %mul789 = mul nsw i32 %conv788, 10
  %conv790 = trunc i32 %mul789 to i16
  %conv791 = sext i16 %conv790 to i32
  br label %cond.end.800

cond.false.792:                                   ; preds = %cond.true.780
  %143 = load i64, i64* %length, align 8
  %conv793 = trunc i64 %143 to i16
  %conv794 = zext i16 %conv793 to i32
  %mul795 = mul nsw i32 %conv794, 10
  %sub796 = sub nsw i32 %mul795, -32768
  %conv797 = trunc i32 %sub796 to i16
  %conv798 = sext i16 %conv797 to i32
  %add799 = add nsw i32 %conv798, -32768
  br label %cond.end.800

cond.end.800:                                     ; preds = %cond.false.792, %cond.true.786
  %cond801 = phi i32 [ %conv791, %cond.true.786 ], [ %add799, %cond.false.792 ]
  %conv802 = sext i32 %cond801 to i64
  store i64 %conv802, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.803:                                   ; preds = %lor.lhs.false.774
  %144 = load i64, i64* %length, align 8
  %conv804 = trunc i64 %144 to i16
  %conv805 = zext i16 %conv804 to i32
  %mul806 = mul nsw i32 %conv805, 10
  %cmp807 = icmp sle i32 %mul806, 32767
  br i1 %cmp807, label %cond.true.809, label %cond.false.815

cond.true.809:                                    ; preds = %cond.false.803
  %145 = load i64, i64* %length, align 8
  %conv810 = trunc i64 %145 to i16
  %conv811 = zext i16 %conv810 to i32
  %mul812 = mul nsw i32 %conv811, 10
  %conv813 = trunc i32 %mul812 to i16
  %conv814 = sext i16 %conv813 to i32
  br label %cond.end.823

cond.false.815:                                   ; preds = %cond.false.803
  %146 = load i64, i64* %length, align 8
  %conv816 = trunc i64 %146 to i16
  %conv817 = zext i16 %conv816 to i32
  %mul818 = mul nsw i32 %conv817, 10
  %sub819 = sub nsw i32 %mul818, -32768
  %conv820 = trunc i32 %sub819 to i16
  %conv821 = sext i16 %conv820 to i32
  %add822 = add nsw i32 %conv821, -32768
  br label %cond.end.823

cond.end.823:                                     ; preds = %cond.false.815, %cond.true.809
  %cond824 = phi i32 [ %conv814, %cond.true.809 ], [ %add822, %cond.false.815 ]
  %conv825 = sext i32 %cond824 to i64
  store i64 %conv825, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

cond.false.826:                                   ; preds = %cond.true.557
  %147 = load i64, i64* %length, align 8
  %add827 = add nsw i64 0, %147
  %mul828 = mul nsw i64 0, %add827
  %sub829 = sub nsw i64 %mul828, 1
  %cmp830 = icmp slt i64 %sub829, 0
  br i1 %cmp830, label %cond.true.832, label %cond.false.849

cond.true.832:                                    ; preds = %cond.false.826
  %148 = load i64, i64* %length, align 8
  %add833 = add nsw i64 0, %148
  %mul834 = mul nsw i64 0, %add833
  %add835 = add nsw i64 %mul834, 0
  %neg836 = xor i64 %add835, -1
  %cmp837 = icmp eq i64 %neg836, -1
  %conv838 = zext i1 %cmp837 to i32
  %sub839 = sub nsw i32 0, %conv838
  %conv840 = sext i32 %sub839 to i64
  %149 = load i64, i64* %length, align 8
  %add841 = add nsw i64 0, %149
  %mul842 = mul nsw i64 0, %add841
  %add843 = add nsw i64 %mul842, 1
  %shl844 = shl i64 %add843, 62
  %sub845 = sub nsw i64 %shl844, 1
  %mul846 = mul nsw i64 %sub845, 2
  %add847 = add nsw i64 %mul846, 1
  %sub848 = sub nsw i64 %conv840, %add847
  br label %cond.end.853

cond.false.849:                                   ; preds = %cond.false.826
  %150 = load i64, i64* %length, align 8
  %add850 = add nsw i64 0, %150
  %mul851 = mul nsw i64 0, %add850
  %add852 = add nsw i64 %mul851, 0
  br label %cond.end.853

cond.end.853:                                     ; preds = %cond.false.849, %cond.true.832
  %cond854 = phi i64 [ %sub848, %cond.true.832 ], [ %add852, %cond.false.849 ]
  %cmp855 = icmp eq i64 %cond854, 0
  br i1 %cmp855, label %land.lhs.true.857, label %lor.lhs.false.860

land.lhs.true.857:                                ; preds = %cond.end.853
  %151 = load i64, i64* %length, align 8
  %cmp858 = icmp slt i64 %151, 0
  br i1 %cmp858, label %cond.true.995, label %lor.lhs.false.860

lor.lhs.false.860:                                ; preds = %land.lhs.true.857, %cond.end.853
  br i1 false, label %cond.true.861, label %cond.false.921

cond.true.861:                                    ; preds = %lor.lhs.false.860
  %152 = load i64, i64* %length, align 8
  %cmp862 = icmp slt i64 %152, 0
  br i1 %cmp862, label %cond.true.864, label %cond.false.887

cond.true.864:                                    ; preds = %cond.true.861
  %153 = load i64, i64* %length, align 8
  %154 = load i64, i64* %length, align 8
  %add865 = add nsw i64 0, %154
  %mul866 = mul nsw i64 0, %add865
  %sub867 = sub nsw i64 %mul866, 1
  %cmp868 = icmp slt i64 %sub867, 0
  br i1 %cmp868, label %cond.true.870, label %cond.false.878

cond.true.870:                                    ; preds = %cond.true.864
  %155 = load i64, i64* %length, align 8
  %add871 = add nsw i64 0, %155
  %mul872 = mul nsw i64 0, %add871
  %add873 = add nsw i64 %mul872, 1
  %shl874 = shl i64 %add873, 62
  %sub875 = sub nsw i64 %shl874, 1
  %mul876 = mul nsw i64 %sub875, 2
  %add877 = add nsw i64 %mul876, 1
  br label %cond.end.882

cond.false.878:                                   ; preds = %cond.true.864
  %156 = load i64, i64* %length, align 8
  %add879 = add nsw i64 0, %156
  %mul880 = mul nsw i64 0, %add879
  %sub881 = sub nsw i64 %mul880, 1
  br label %cond.end.882

cond.end.882:                                     ; preds = %cond.false.878, %cond.true.870
  %cond883 = phi i64 [ %add877, %cond.true.870 ], [ %sub881, %cond.false.878 ]
  %div884 = sdiv i64 %cond883, 10
  %cmp885 = icmp slt i64 %153, %div884
  br i1 %cmp885, label %cond.true.995, label %lor.lhs.false.981

cond.false.887:                                   ; preds = %cond.true.861
  br i1 false, label %cond.true.888, label %cond.false.889

cond.true.888:                                    ; preds = %cond.false.887
  br i1 false, label %cond.true.995, label %lor.lhs.false.981

cond.false.889:                                   ; preds = %cond.false.887
  %157 = load i64, i64* %length, align 8
  %add890 = add nsw i64 0, %157
  %mul891 = mul nsw i64 0, %add890
  %sub892 = sub nsw i64 %mul891, 1
  %cmp893 = icmp slt i64 %sub892, 0
  br i1 %cmp893, label %cond.true.895, label %cond.false.912

cond.true.895:                                    ; preds = %cond.false.889
  %158 = load i64, i64* %length, align 8
  %add896 = add nsw i64 0, %158
  %mul897 = mul nsw i64 0, %add896
  %add898 = add nsw i64 %mul897, 0
  %neg899 = xor i64 %add898, -1
  %cmp900 = icmp eq i64 %neg899, -1
  %conv901 = zext i1 %cmp900 to i32
  %sub902 = sub nsw i32 0, %conv901
  %conv903 = sext i32 %sub902 to i64
  %159 = load i64, i64* %length, align 8
  %add904 = add nsw i64 0, %159
  %mul905 = mul nsw i64 0, %add904
  %add906 = add nsw i64 %mul905, 1
  %shl907 = shl i64 %add906, 62
  %sub908 = sub nsw i64 %shl907, 1
  %mul909 = mul nsw i64 %sub908, 2
  %add910 = add nsw i64 %mul909, 1
  %sub911 = sub nsw i64 %conv903, %add910
  br label %cond.end.916

cond.false.912:                                   ; preds = %cond.false.889
  %160 = load i64, i64* %length, align 8
  %add913 = add nsw i64 0, %160
  %mul914 = mul nsw i64 0, %add913
  %add915 = add nsw i64 %mul914, 0
  br label %cond.end.916

cond.end.916:                                     ; preds = %cond.false.912, %cond.true.895
  %cond917 = phi i64 [ %sub911, %cond.true.895 ], [ %add915, %cond.false.912 ]
  %div918 = sdiv i64 %cond917, 10
  %161 = load i64, i64* %length, align 8
  %cmp919 = icmp slt i64 %div918, %161
  br i1 %cmp919, label %cond.true.995, label %lor.lhs.false.981

cond.false.921:                                   ; preds = %lor.lhs.false.860
  br i1 false, label %cond.true.922, label %cond.false.923

cond.true.922:                                    ; preds = %cond.false.921
  br i1 false, label %cond.true.995, label %lor.lhs.false.981

cond.false.923:                                   ; preds = %cond.false.921
  %162 = load i64, i64* %length, align 8
  %cmp924 = icmp slt i64 %162, 0
  br i1 %cmp924, label %cond.true.926, label %cond.false.958

cond.true.926:                                    ; preds = %cond.false.923
  %163 = load i64, i64* %length, align 8
  %164 = load i64, i64* %length, align 8
  %add927 = add nsw i64 0, %164
  %mul928 = mul nsw i64 0, %add927
  %sub929 = sub nsw i64 %mul928, 1
  %cmp930 = icmp slt i64 %sub929, 0
  br i1 %cmp930, label %cond.true.932, label %cond.false.949

cond.true.932:                                    ; preds = %cond.true.926
  %165 = load i64, i64* %length, align 8
  %add933 = add nsw i64 0, %165
  %mul934 = mul nsw i64 0, %add933
  %add935 = add nsw i64 %mul934, 0
  %neg936 = xor i64 %add935, -1
  %cmp937 = icmp eq i64 %neg936, -1
  %conv938 = zext i1 %cmp937 to i32
  %sub939 = sub nsw i32 0, %conv938
  %conv940 = sext i32 %sub939 to i64
  %166 = load i64, i64* %length, align 8
  %add941 = add nsw i64 0, %166
  %mul942 = mul nsw i64 0, %add941
  %add943 = add nsw i64 %mul942, 1
  %shl944 = shl i64 %add943, 62
  %sub945 = sub nsw i64 %shl944, 1
  %mul946 = mul nsw i64 %sub945, 2
  %add947 = add nsw i64 %mul946, 1
  %sub948 = sub nsw i64 %conv940, %add947
  br label %cond.end.953

cond.false.949:                                   ; preds = %cond.true.926
  %167 = load i64, i64* %length, align 8
  %add950 = add nsw i64 0, %167
  %mul951 = mul nsw i64 0, %add950
  %add952 = add nsw i64 %mul951, 0
  br label %cond.end.953

cond.end.953:                                     ; preds = %cond.false.949, %cond.true.932
  %cond954 = phi i64 [ %sub948, %cond.true.932 ], [ %add952, %cond.false.949 ]
  %div955 = sdiv i64 %cond954, 10
  %cmp956 = icmp slt i64 %163, %div955
  br i1 %cmp956, label %cond.true.995, label %lor.lhs.false.981

cond.false.958:                                   ; preds = %cond.false.923
  %168 = load i64, i64* %length, align 8
  %add959 = add nsw i64 0, %168
  %mul960 = mul nsw i64 0, %add959
  %sub961 = sub nsw i64 %mul960, 1
  %cmp962 = icmp slt i64 %sub961, 0
  br i1 %cmp962, label %cond.true.964, label %cond.false.972

cond.true.964:                                    ; preds = %cond.false.958
  %169 = load i64, i64* %length, align 8
  %add965 = add nsw i64 0, %169
  %mul966 = mul nsw i64 0, %add965
  %add967 = add nsw i64 %mul966, 1
  %shl968 = shl i64 %add967, 62
  %sub969 = sub nsw i64 %shl968, 1
  %mul970 = mul nsw i64 %sub969, 2
  %add971 = add nsw i64 %mul970, 1
  br label %cond.end.976

cond.false.972:                                   ; preds = %cond.false.958
  %170 = load i64, i64* %length, align 8
  %add973 = add nsw i64 0, %170
  %mul974 = mul nsw i64 0, %add973
  %sub975 = sub nsw i64 %mul974, 1
  br label %cond.end.976

cond.end.976:                                     ; preds = %cond.false.972, %cond.true.964
  %cond977 = phi i64 [ %add971, %cond.true.964 ], [ %sub975, %cond.false.972 ]
  %div978 = sdiv i64 %cond977, 10
  %171 = load i64, i64* %length, align 8
  %cmp979 = icmp slt i64 %div978, %171
  br i1 %cmp979, label %cond.true.995, label %lor.lhs.false.981

lor.lhs.false.981:                                ; preds = %cond.end.976, %cond.end.953, %cond.true.922, %cond.end.916, %cond.true.888, %cond.end.882
  %172 = load i64, i64* %length, align 8
  %mul982 = mul nsw i64 %172, 10
  %mul983 = mul nsw i64 0, %mul982
  %sub984 = sub nsw i64 %mul983, 1
  %cmp985 = icmp slt i64 %sub984, 0
  br i1 %cmp985, label %land.lhs.true.987, label %lor.lhs.false.991

land.lhs.true.987:                                ; preds = %lor.lhs.false.981
  %173 = load i64, i64* %length, align 8
  %mul988 = mul nsw i64 %173, 10
  %cmp989 = icmp slt i64 %mul988, -32768
  br i1 %cmp989, label %cond.true.995, label %lor.lhs.false.991

lor.lhs.false.991:                                ; preds = %land.lhs.true.987, %lor.lhs.false.981
  %174 = load i64, i64* %length, align 8
  %mul992 = mul nsw i64 %174, 10
  %cmp993 = icmp slt i64 32767, %mul992
  br i1 %cmp993, label %cond.true.995, label %cond.false.1018

cond.true.995:                                    ; preds = %lor.lhs.false.991, %land.lhs.true.987, %cond.end.976, %cond.end.953, %cond.true.922, %cond.end.916, %cond.true.888, %cond.end.882, %land.lhs.true.857
  %175 = load i64, i64* %length, align 8
  %conv996 = trunc i64 %175 to i16
  %conv997 = zext i16 %conv996 to i32
  %mul998 = mul nsw i32 %conv997, 10
  %cmp999 = icmp sle i32 %mul998, 32767
  br i1 %cmp999, label %cond.true.1001, label %cond.false.1007

cond.true.1001:                                   ; preds = %cond.true.995
  %176 = load i64, i64* %length, align 8
  %conv1002 = trunc i64 %176 to i16
  %conv1003 = zext i16 %conv1002 to i32
  %mul1004 = mul nsw i32 %conv1003, 10
  %conv1005 = trunc i32 %mul1004 to i16
  %conv1006 = sext i16 %conv1005 to i32
  br label %cond.end.1015

cond.false.1007:                                  ; preds = %cond.true.995
  %177 = load i64, i64* %length, align 8
  %conv1008 = trunc i64 %177 to i16
  %conv1009 = zext i16 %conv1008 to i32
  %mul1010 = mul nsw i32 %conv1009, 10
  %sub1011 = sub nsw i32 %mul1010, -32768
  %conv1012 = trunc i32 %sub1011 to i16
  %conv1013 = sext i16 %conv1012 to i32
  %add1014 = add nsw i32 %conv1013, -32768
  br label %cond.end.1015

cond.end.1015:                                    ; preds = %cond.false.1007, %cond.true.1001
  %cond1016 = phi i32 [ %conv1006, %cond.true.1001 ], [ %add1014, %cond.false.1007 ]
  %conv1017 = sext i32 %cond1016 to i64
  store i64 %conv1017, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1018:                                  ; preds = %lor.lhs.false.991
  %178 = load i64, i64* %length, align 8
  %conv1019 = trunc i64 %178 to i16
  %conv1020 = zext i16 %conv1019 to i32
  %mul1021 = mul nsw i32 %conv1020, 10
  %cmp1022 = icmp sle i32 %mul1021, 32767
  br i1 %cmp1022, label %cond.true.1024, label %cond.false.1030

cond.true.1024:                                   ; preds = %cond.false.1018
  %179 = load i64, i64* %length, align 8
  %conv1025 = trunc i64 %179 to i16
  %conv1026 = zext i16 %conv1025 to i32
  %mul1027 = mul nsw i32 %conv1026, 10
  %conv1028 = trunc i32 %mul1027 to i16
  %conv1029 = sext i16 %conv1028 to i32
  br label %cond.end.1038

cond.false.1030:                                  ; preds = %cond.false.1018
  %180 = load i64, i64* %length, align 8
  %conv1031 = trunc i64 %180 to i16
  %conv1032 = zext i16 %conv1031 to i32
  %mul1033 = mul nsw i32 %conv1032, 10
  %sub1034 = sub nsw i32 %mul1033, -32768
  %conv1035 = trunc i32 %sub1034 to i16
  %conv1036 = sext i16 %conv1035 to i32
  %add1037 = add nsw i32 %conv1036, -32768
  br label %cond.end.1038

cond.end.1038:                                    ; preds = %cond.false.1030, %cond.true.1024
  %cond1039 = phi i32 [ %conv1029, %cond.true.1024 ], [ %add1037, %cond.false.1030 ]
  %conv1040 = sext i32 %cond1039 to i64
  store i64 %conv1040, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1041:                                  ; preds = %cond.false.556
  br i1 false, label %cond.true.1042, label %cond.false.1470

cond.true.1042:                                   ; preds = %cond.false.1041
  br i1 false, label %cond.true.1043, label %cond.false.1269

cond.true.1043:                                   ; preds = %cond.true.1042
  %181 = load i64, i64* %length, align 8
  %conv1044 = trunc i64 %181 to i32
  %add1045 = add nsw i32 0, %conv1044
  %mul1046 = mul nsw i32 0, %add1045
  %sub1047 = sub nsw i32 %mul1046, 1
  %cmp1048 = icmp slt i32 %sub1047, 0
  br i1 %cmp1048, label %cond.true.1050, label %cond.false.1068

cond.true.1050:                                   ; preds = %cond.true.1043
  %182 = load i64, i64* %length, align 8
  %conv1051 = trunc i64 %182 to i32
  %add1052 = add nsw i32 0, %conv1051
  %mul1053 = mul nsw i32 0, %add1052
  %add1054 = add nsw i32 %mul1053, 0
  %neg1055 = xor i32 %add1054, -1
  %cmp1056 = icmp eq i32 %neg1055, -1
  %conv1057 = zext i1 %cmp1056 to i32
  %sub1058 = sub nsw i32 0, %conv1057
  %183 = load i64, i64* %length, align 8
  %conv1059 = trunc i64 %183 to i32
  %add1060 = add nsw i32 0, %conv1059
  %mul1061 = mul nsw i32 0, %add1060
  %add1062 = add nsw i32 %mul1061, 1
  %shl1063 = shl i32 %add1062, 30
  %sub1064 = sub nsw i32 %shl1063, 1
  %mul1065 = mul nsw i32 %sub1064, 2
  %add1066 = add nsw i32 %mul1065, 1
  %sub1067 = sub nsw i32 %sub1058, %add1066
  br label %cond.end.1073

cond.false.1068:                                  ; preds = %cond.true.1043
  %184 = load i64, i64* %length, align 8
  %conv1069 = trunc i64 %184 to i32
  %add1070 = add nsw i32 0, %conv1069
  %mul1071 = mul nsw i32 0, %add1070
  %add1072 = add nsw i32 %mul1071, 0
  br label %cond.end.1073

cond.end.1073:                                    ; preds = %cond.false.1068, %cond.true.1050
  %cond1074 = phi i32 [ %sub1067, %cond.true.1050 ], [ %add1072, %cond.false.1068 ]
  %cmp1075 = icmp eq i32 %cond1074, 0
  br i1 %cmp1075, label %land.lhs.true.1077, label %lor.lhs.false.1081

land.lhs.true.1077:                               ; preds = %cond.end.1073
  %185 = load i64, i64* %length, align 8
  %conv1078 = trunc i64 %185 to i32
  %cmp1079 = icmp slt i32 %conv1078, 0
  br i1 %cmp1079, label %cond.true.1237, label %lor.lhs.false.1081

lor.lhs.false.1081:                               ; preds = %land.lhs.true.1077, %cond.end.1073
  br i1 false, label %cond.true.1082, label %cond.false.1151

cond.true.1082:                                   ; preds = %lor.lhs.false.1081
  %186 = load i64, i64* %length, align 8
  %conv1083 = trunc i64 %186 to i32
  %cmp1084 = icmp slt i32 %conv1083, 0
  br i1 %cmp1084, label %cond.true.1086, label %cond.false.1113

cond.true.1086:                                   ; preds = %cond.true.1082
  %187 = load i64, i64* %length, align 8
  %conv1087 = trunc i64 %187 to i32
  %188 = load i64, i64* %length, align 8
  %conv1088 = trunc i64 %188 to i32
  %add1089 = add nsw i32 0, %conv1088
  %mul1090 = mul nsw i32 0, %add1089
  %sub1091 = sub nsw i32 %mul1090, 1
  %cmp1092 = icmp slt i32 %sub1091, 0
  br i1 %cmp1092, label %cond.true.1094, label %cond.false.1103

cond.true.1094:                                   ; preds = %cond.true.1086
  %189 = load i64, i64* %length, align 8
  %conv1095 = trunc i64 %189 to i32
  %add1096 = add nsw i32 0, %conv1095
  %mul1097 = mul nsw i32 0, %add1096
  %add1098 = add nsw i32 %mul1097, 1
  %shl1099 = shl i32 %add1098, 30
  %sub1100 = sub nsw i32 %shl1099, 1
  %mul1101 = mul nsw i32 %sub1100, 2
  %add1102 = add nsw i32 %mul1101, 1
  br label %cond.end.1108

cond.false.1103:                                  ; preds = %cond.true.1086
  %190 = load i64, i64* %length, align 8
  %conv1104 = trunc i64 %190 to i32
  %add1105 = add nsw i32 0, %conv1104
  %mul1106 = mul nsw i32 0, %add1105
  %sub1107 = sub nsw i32 %mul1106, 1
  br label %cond.end.1108

cond.end.1108:                                    ; preds = %cond.false.1103, %cond.true.1094
  %cond1109 = phi i32 [ %add1102, %cond.true.1094 ], [ %sub1107, %cond.false.1103 ]
  %div1110 = sdiv i32 %cond1109, 10
  %cmp1111 = icmp slt i32 %conv1087, %div1110
  br i1 %cmp1111, label %cond.true.1237, label %lor.lhs.false.1220

cond.false.1113:                                  ; preds = %cond.true.1082
  br i1 false, label %cond.true.1114, label %cond.false.1115

cond.true.1114:                                   ; preds = %cond.false.1113
  br i1 false, label %cond.true.1237, label %lor.lhs.false.1220

cond.false.1115:                                  ; preds = %cond.false.1113
  %191 = load i64, i64* %length, align 8
  %conv1116 = trunc i64 %191 to i32
  %add1117 = add nsw i32 0, %conv1116
  %mul1118 = mul nsw i32 0, %add1117
  %sub1119 = sub nsw i32 %mul1118, 1
  %cmp1120 = icmp slt i32 %sub1119, 0
  br i1 %cmp1120, label %cond.true.1122, label %cond.false.1140

cond.true.1122:                                   ; preds = %cond.false.1115
  %192 = load i64, i64* %length, align 8
  %conv1123 = trunc i64 %192 to i32
  %add1124 = add nsw i32 0, %conv1123
  %mul1125 = mul nsw i32 0, %add1124
  %add1126 = add nsw i32 %mul1125, 0
  %neg1127 = xor i32 %add1126, -1
  %cmp1128 = icmp eq i32 %neg1127, -1
  %conv1129 = zext i1 %cmp1128 to i32
  %sub1130 = sub nsw i32 0, %conv1129
  %193 = load i64, i64* %length, align 8
  %conv1131 = trunc i64 %193 to i32
  %add1132 = add nsw i32 0, %conv1131
  %mul1133 = mul nsw i32 0, %add1132
  %add1134 = add nsw i32 %mul1133, 1
  %shl1135 = shl i32 %add1134, 30
  %sub1136 = sub nsw i32 %shl1135, 1
  %mul1137 = mul nsw i32 %sub1136, 2
  %add1138 = add nsw i32 %mul1137, 1
  %sub1139 = sub nsw i32 %sub1130, %add1138
  br label %cond.end.1145

cond.false.1140:                                  ; preds = %cond.false.1115
  %194 = load i64, i64* %length, align 8
  %conv1141 = trunc i64 %194 to i32
  %add1142 = add nsw i32 0, %conv1141
  %mul1143 = mul nsw i32 0, %add1142
  %add1144 = add nsw i32 %mul1143, 0
  br label %cond.end.1145

cond.end.1145:                                    ; preds = %cond.false.1140, %cond.true.1122
  %cond1146 = phi i32 [ %sub1139, %cond.true.1122 ], [ %add1144, %cond.false.1140 ]
  %div1147 = sdiv i32 %cond1146, 10
  %195 = load i64, i64* %length, align 8
  %conv1148 = trunc i64 %195 to i32
  %cmp1149 = icmp slt i32 %div1147, %conv1148
  br i1 %cmp1149, label %cond.true.1237, label %lor.lhs.false.1220

cond.false.1151:                                  ; preds = %lor.lhs.false.1081
  br i1 false, label %cond.true.1152, label %cond.false.1153

cond.true.1152:                                   ; preds = %cond.false.1151
  br i1 false, label %cond.true.1237, label %lor.lhs.false.1220

cond.false.1153:                                  ; preds = %cond.false.1151
  %196 = load i64, i64* %length, align 8
  %conv1154 = trunc i64 %196 to i32
  %cmp1155 = icmp slt i32 %conv1154, 0
  br i1 %cmp1155, label %cond.true.1157, label %cond.false.1193

cond.true.1157:                                   ; preds = %cond.false.1153
  %197 = load i64, i64* %length, align 8
  %conv1158 = trunc i64 %197 to i32
  %198 = load i64, i64* %length, align 8
  %conv1159 = trunc i64 %198 to i32
  %add1160 = add nsw i32 0, %conv1159
  %mul1161 = mul nsw i32 0, %add1160
  %sub1162 = sub nsw i32 %mul1161, 1
  %cmp1163 = icmp slt i32 %sub1162, 0
  br i1 %cmp1163, label %cond.true.1165, label %cond.false.1183

cond.true.1165:                                   ; preds = %cond.true.1157
  %199 = load i64, i64* %length, align 8
  %conv1166 = trunc i64 %199 to i32
  %add1167 = add nsw i32 0, %conv1166
  %mul1168 = mul nsw i32 0, %add1167
  %add1169 = add nsw i32 %mul1168, 0
  %neg1170 = xor i32 %add1169, -1
  %cmp1171 = icmp eq i32 %neg1170, -1
  %conv1172 = zext i1 %cmp1171 to i32
  %sub1173 = sub nsw i32 0, %conv1172
  %200 = load i64, i64* %length, align 8
  %conv1174 = trunc i64 %200 to i32
  %add1175 = add nsw i32 0, %conv1174
  %mul1176 = mul nsw i32 0, %add1175
  %add1177 = add nsw i32 %mul1176, 1
  %shl1178 = shl i32 %add1177, 30
  %sub1179 = sub nsw i32 %shl1178, 1
  %mul1180 = mul nsw i32 %sub1179, 2
  %add1181 = add nsw i32 %mul1180, 1
  %sub1182 = sub nsw i32 %sub1173, %add1181
  br label %cond.end.1188

cond.false.1183:                                  ; preds = %cond.true.1157
  %201 = load i64, i64* %length, align 8
  %conv1184 = trunc i64 %201 to i32
  %add1185 = add nsw i32 0, %conv1184
  %mul1186 = mul nsw i32 0, %add1185
  %add1187 = add nsw i32 %mul1186, 0
  br label %cond.end.1188

cond.end.1188:                                    ; preds = %cond.false.1183, %cond.true.1165
  %cond1189 = phi i32 [ %sub1182, %cond.true.1165 ], [ %add1187, %cond.false.1183 ]
  %div1190 = sdiv i32 %cond1189, 10
  %cmp1191 = icmp slt i32 %conv1158, %div1190
  br i1 %cmp1191, label %cond.true.1237, label %lor.lhs.false.1220

cond.false.1193:                                  ; preds = %cond.false.1153
  %202 = load i64, i64* %length, align 8
  %conv1194 = trunc i64 %202 to i32
  %add1195 = add nsw i32 0, %conv1194
  %mul1196 = mul nsw i32 0, %add1195
  %sub1197 = sub nsw i32 %mul1196, 1
  %cmp1198 = icmp slt i32 %sub1197, 0
  br i1 %cmp1198, label %cond.true.1200, label %cond.false.1209

cond.true.1200:                                   ; preds = %cond.false.1193
  %203 = load i64, i64* %length, align 8
  %conv1201 = trunc i64 %203 to i32
  %add1202 = add nsw i32 0, %conv1201
  %mul1203 = mul nsw i32 0, %add1202
  %add1204 = add nsw i32 %mul1203, 1
  %shl1205 = shl i32 %add1204, 30
  %sub1206 = sub nsw i32 %shl1205, 1
  %mul1207 = mul nsw i32 %sub1206, 2
  %add1208 = add nsw i32 %mul1207, 1
  br label %cond.end.1214

cond.false.1209:                                  ; preds = %cond.false.1193
  %204 = load i64, i64* %length, align 8
  %conv1210 = trunc i64 %204 to i32
  %add1211 = add nsw i32 0, %conv1210
  %mul1212 = mul nsw i32 0, %add1211
  %sub1213 = sub nsw i32 %mul1212, 1
  br label %cond.end.1214

cond.end.1214:                                    ; preds = %cond.false.1209, %cond.true.1200
  %cond1215 = phi i32 [ %add1208, %cond.true.1200 ], [ %sub1213, %cond.false.1209 ]
  %div1216 = sdiv i32 %cond1215, 10
  %205 = load i64, i64* %length, align 8
  %conv1217 = trunc i64 %205 to i32
  %cmp1218 = icmp slt i32 %div1216, %conv1217
  br i1 %cmp1218, label %cond.true.1237, label %lor.lhs.false.1220

lor.lhs.false.1220:                               ; preds = %cond.end.1214, %cond.end.1188, %cond.true.1152, %cond.end.1145, %cond.true.1114, %cond.end.1108
  %206 = load i64, i64* %length, align 8
  %conv1221 = trunc i64 %206 to i32
  %mul1222 = mul nsw i32 %conv1221, 10
  %mul1223 = mul nsw i32 0, %mul1222
  %sub1224 = sub nsw i32 %mul1223, 1
  %cmp1225 = icmp slt i32 %sub1224, 0
  br i1 %cmp1225, label %land.lhs.true.1227, label %lor.lhs.false.1232

land.lhs.true.1227:                               ; preds = %lor.lhs.false.1220
  %207 = load i64, i64* %length, align 8
  %conv1228 = trunc i64 %207 to i32
  %mul1229 = mul nsw i32 %conv1228, 10
  %cmp1230 = icmp slt i32 %mul1229, -2147483648
  br i1 %cmp1230, label %cond.true.1237, label %lor.lhs.false.1232

lor.lhs.false.1232:                               ; preds = %land.lhs.true.1227, %lor.lhs.false.1220
  %208 = load i64, i64* %length, align 8
  %conv1233 = trunc i64 %208 to i32
  %mul1234 = mul nsw i32 %conv1233, 10
  %cmp1235 = icmp slt i32 2147483647, %mul1234
  br i1 %cmp1235, label %cond.true.1237, label %cond.false.1253

cond.true.1237:                                   ; preds = %lor.lhs.false.1232, %land.lhs.true.1227, %cond.end.1214, %cond.end.1188, %cond.true.1152, %cond.end.1145, %cond.true.1114, %cond.end.1108, %land.lhs.true.1077
  %209 = load i64, i64* %length, align 8
  %conv1238 = trunc i64 %209 to i32
  %mul1239 = mul i32 %conv1238, 10
  %cmp1240 = icmp ule i32 %mul1239, 2147483647
  br i1 %cmp1240, label %cond.true.1242, label %cond.false.1245

cond.true.1242:                                   ; preds = %cond.true.1237
  %210 = load i64, i64* %length, align 8
  %conv1243 = trunc i64 %210 to i32
  %mul1244 = mul i32 %conv1243, 10
  br label %cond.end.1250

cond.false.1245:                                  ; preds = %cond.true.1237
  %211 = load i64, i64* %length, align 8
  %conv1246 = trunc i64 %211 to i32
  %mul1247 = mul i32 %conv1246, 10
  %sub1248 = sub i32 %mul1247, -2147483648
  %add1249 = add nsw i32 %sub1248, -2147483648
  br label %cond.end.1250

cond.end.1250:                                    ; preds = %cond.false.1245, %cond.true.1242
  %cond1251 = phi i32 [ %mul1244, %cond.true.1242 ], [ %add1249, %cond.false.1245 ]
  %conv1252 = sext i32 %cond1251 to i64
  store i64 %conv1252, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1253:                                  ; preds = %lor.lhs.false.1232
  %212 = load i64, i64* %length, align 8
  %conv1254 = trunc i64 %212 to i32
  %mul1255 = mul i32 %conv1254, 10
  %cmp1256 = icmp ule i32 %mul1255, 2147483647
  br i1 %cmp1256, label %cond.true.1258, label %cond.false.1261

cond.true.1258:                                   ; preds = %cond.false.1253
  %213 = load i64, i64* %length, align 8
  %conv1259 = trunc i64 %213 to i32
  %mul1260 = mul i32 %conv1259, 10
  br label %cond.end.1266

cond.false.1261:                                  ; preds = %cond.false.1253
  %214 = load i64, i64* %length, align 8
  %conv1262 = trunc i64 %214 to i32
  %mul1263 = mul i32 %conv1262, 10
  %sub1264 = sub i32 %mul1263, -2147483648
  %add1265 = add nsw i32 %sub1264, -2147483648
  br label %cond.end.1266

cond.end.1266:                                    ; preds = %cond.false.1261, %cond.true.1258
  %cond1267 = phi i32 [ %mul1260, %cond.true.1258 ], [ %add1265, %cond.false.1261 ]
  %conv1268 = sext i32 %cond1267 to i64
  store i64 %conv1268, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1269:                                  ; preds = %cond.true.1042
  %215 = load i64, i64* %length, align 8
  %add1270 = add nsw i64 0, %215
  %mul1271 = mul nsw i64 0, %add1270
  %sub1272 = sub nsw i64 %mul1271, 1
  %cmp1273 = icmp slt i64 %sub1272, 0
  br i1 %cmp1273, label %cond.true.1275, label %cond.false.1292

cond.true.1275:                                   ; preds = %cond.false.1269
  %216 = load i64, i64* %length, align 8
  %add1276 = add nsw i64 0, %216
  %mul1277 = mul nsw i64 0, %add1276
  %add1278 = add nsw i64 %mul1277, 0
  %neg1279 = xor i64 %add1278, -1
  %cmp1280 = icmp eq i64 %neg1279, -1
  %conv1281 = zext i1 %cmp1280 to i32
  %sub1282 = sub nsw i32 0, %conv1281
  %conv1283 = sext i32 %sub1282 to i64
  %217 = load i64, i64* %length, align 8
  %add1284 = add nsw i64 0, %217
  %mul1285 = mul nsw i64 0, %add1284
  %add1286 = add nsw i64 %mul1285, 1
  %shl1287 = shl i64 %add1286, 62
  %sub1288 = sub nsw i64 %shl1287, 1
  %mul1289 = mul nsw i64 %sub1288, 2
  %add1290 = add nsw i64 %mul1289, 1
  %sub1291 = sub nsw i64 %conv1283, %add1290
  br label %cond.end.1296

cond.false.1292:                                  ; preds = %cond.false.1269
  %218 = load i64, i64* %length, align 8
  %add1293 = add nsw i64 0, %218
  %mul1294 = mul nsw i64 0, %add1293
  %add1295 = add nsw i64 %mul1294, 0
  br label %cond.end.1296

cond.end.1296:                                    ; preds = %cond.false.1292, %cond.true.1275
  %cond1297 = phi i64 [ %sub1291, %cond.true.1275 ], [ %add1295, %cond.false.1292 ]
  %cmp1298 = icmp eq i64 %cond1297, 0
  br i1 %cmp1298, label %land.lhs.true.1300, label %lor.lhs.false.1303

land.lhs.true.1300:                               ; preds = %cond.end.1296
  %219 = load i64, i64* %length, align 8
  %cmp1301 = icmp slt i64 %219, 0
  br i1 %cmp1301, label %cond.true.1438, label %lor.lhs.false.1303

lor.lhs.false.1303:                               ; preds = %land.lhs.true.1300, %cond.end.1296
  br i1 false, label %cond.true.1304, label %cond.false.1364

cond.true.1304:                                   ; preds = %lor.lhs.false.1303
  %220 = load i64, i64* %length, align 8
  %cmp1305 = icmp slt i64 %220, 0
  br i1 %cmp1305, label %cond.true.1307, label %cond.false.1330

cond.true.1307:                                   ; preds = %cond.true.1304
  %221 = load i64, i64* %length, align 8
  %222 = load i64, i64* %length, align 8
  %add1308 = add nsw i64 0, %222
  %mul1309 = mul nsw i64 0, %add1308
  %sub1310 = sub nsw i64 %mul1309, 1
  %cmp1311 = icmp slt i64 %sub1310, 0
  br i1 %cmp1311, label %cond.true.1313, label %cond.false.1321

cond.true.1313:                                   ; preds = %cond.true.1307
  %223 = load i64, i64* %length, align 8
  %add1314 = add nsw i64 0, %223
  %mul1315 = mul nsw i64 0, %add1314
  %add1316 = add nsw i64 %mul1315, 1
  %shl1317 = shl i64 %add1316, 62
  %sub1318 = sub nsw i64 %shl1317, 1
  %mul1319 = mul nsw i64 %sub1318, 2
  %add1320 = add nsw i64 %mul1319, 1
  br label %cond.end.1325

cond.false.1321:                                  ; preds = %cond.true.1307
  %224 = load i64, i64* %length, align 8
  %add1322 = add nsw i64 0, %224
  %mul1323 = mul nsw i64 0, %add1322
  %sub1324 = sub nsw i64 %mul1323, 1
  br label %cond.end.1325

cond.end.1325:                                    ; preds = %cond.false.1321, %cond.true.1313
  %cond1326 = phi i64 [ %add1320, %cond.true.1313 ], [ %sub1324, %cond.false.1321 ]
  %div1327 = sdiv i64 %cond1326, 10
  %cmp1328 = icmp slt i64 %221, %div1327
  br i1 %cmp1328, label %cond.true.1438, label %lor.lhs.false.1424

cond.false.1330:                                  ; preds = %cond.true.1304
  br i1 false, label %cond.true.1331, label %cond.false.1332

cond.true.1331:                                   ; preds = %cond.false.1330
  br i1 false, label %cond.true.1438, label %lor.lhs.false.1424

cond.false.1332:                                  ; preds = %cond.false.1330
  %225 = load i64, i64* %length, align 8
  %add1333 = add nsw i64 0, %225
  %mul1334 = mul nsw i64 0, %add1333
  %sub1335 = sub nsw i64 %mul1334, 1
  %cmp1336 = icmp slt i64 %sub1335, 0
  br i1 %cmp1336, label %cond.true.1338, label %cond.false.1355

cond.true.1338:                                   ; preds = %cond.false.1332
  %226 = load i64, i64* %length, align 8
  %add1339 = add nsw i64 0, %226
  %mul1340 = mul nsw i64 0, %add1339
  %add1341 = add nsw i64 %mul1340, 0
  %neg1342 = xor i64 %add1341, -1
  %cmp1343 = icmp eq i64 %neg1342, -1
  %conv1344 = zext i1 %cmp1343 to i32
  %sub1345 = sub nsw i32 0, %conv1344
  %conv1346 = sext i32 %sub1345 to i64
  %227 = load i64, i64* %length, align 8
  %add1347 = add nsw i64 0, %227
  %mul1348 = mul nsw i64 0, %add1347
  %add1349 = add nsw i64 %mul1348, 1
  %shl1350 = shl i64 %add1349, 62
  %sub1351 = sub nsw i64 %shl1350, 1
  %mul1352 = mul nsw i64 %sub1351, 2
  %add1353 = add nsw i64 %mul1352, 1
  %sub1354 = sub nsw i64 %conv1346, %add1353
  br label %cond.end.1359

cond.false.1355:                                  ; preds = %cond.false.1332
  %228 = load i64, i64* %length, align 8
  %add1356 = add nsw i64 0, %228
  %mul1357 = mul nsw i64 0, %add1356
  %add1358 = add nsw i64 %mul1357, 0
  br label %cond.end.1359

cond.end.1359:                                    ; preds = %cond.false.1355, %cond.true.1338
  %cond1360 = phi i64 [ %sub1354, %cond.true.1338 ], [ %add1358, %cond.false.1355 ]
  %div1361 = sdiv i64 %cond1360, 10
  %229 = load i64, i64* %length, align 8
  %cmp1362 = icmp slt i64 %div1361, %229
  br i1 %cmp1362, label %cond.true.1438, label %lor.lhs.false.1424

cond.false.1364:                                  ; preds = %lor.lhs.false.1303
  br i1 false, label %cond.true.1365, label %cond.false.1366

cond.true.1365:                                   ; preds = %cond.false.1364
  br i1 false, label %cond.true.1438, label %lor.lhs.false.1424

cond.false.1366:                                  ; preds = %cond.false.1364
  %230 = load i64, i64* %length, align 8
  %cmp1367 = icmp slt i64 %230, 0
  br i1 %cmp1367, label %cond.true.1369, label %cond.false.1401

cond.true.1369:                                   ; preds = %cond.false.1366
  %231 = load i64, i64* %length, align 8
  %232 = load i64, i64* %length, align 8
  %add1370 = add nsw i64 0, %232
  %mul1371 = mul nsw i64 0, %add1370
  %sub1372 = sub nsw i64 %mul1371, 1
  %cmp1373 = icmp slt i64 %sub1372, 0
  br i1 %cmp1373, label %cond.true.1375, label %cond.false.1392

cond.true.1375:                                   ; preds = %cond.true.1369
  %233 = load i64, i64* %length, align 8
  %add1376 = add nsw i64 0, %233
  %mul1377 = mul nsw i64 0, %add1376
  %add1378 = add nsw i64 %mul1377, 0
  %neg1379 = xor i64 %add1378, -1
  %cmp1380 = icmp eq i64 %neg1379, -1
  %conv1381 = zext i1 %cmp1380 to i32
  %sub1382 = sub nsw i32 0, %conv1381
  %conv1383 = sext i32 %sub1382 to i64
  %234 = load i64, i64* %length, align 8
  %add1384 = add nsw i64 0, %234
  %mul1385 = mul nsw i64 0, %add1384
  %add1386 = add nsw i64 %mul1385, 1
  %shl1387 = shl i64 %add1386, 62
  %sub1388 = sub nsw i64 %shl1387, 1
  %mul1389 = mul nsw i64 %sub1388, 2
  %add1390 = add nsw i64 %mul1389, 1
  %sub1391 = sub nsw i64 %conv1383, %add1390
  br label %cond.end.1396

cond.false.1392:                                  ; preds = %cond.true.1369
  %235 = load i64, i64* %length, align 8
  %add1393 = add nsw i64 0, %235
  %mul1394 = mul nsw i64 0, %add1393
  %add1395 = add nsw i64 %mul1394, 0
  br label %cond.end.1396

cond.end.1396:                                    ; preds = %cond.false.1392, %cond.true.1375
  %cond1397 = phi i64 [ %sub1391, %cond.true.1375 ], [ %add1395, %cond.false.1392 ]
  %div1398 = sdiv i64 %cond1397, 10
  %cmp1399 = icmp slt i64 %231, %div1398
  br i1 %cmp1399, label %cond.true.1438, label %lor.lhs.false.1424

cond.false.1401:                                  ; preds = %cond.false.1366
  %236 = load i64, i64* %length, align 8
  %add1402 = add nsw i64 0, %236
  %mul1403 = mul nsw i64 0, %add1402
  %sub1404 = sub nsw i64 %mul1403, 1
  %cmp1405 = icmp slt i64 %sub1404, 0
  br i1 %cmp1405, label %cond.true.1407, label %cond.false.1415

cond.true.1407:                                   ; preds = %cond.false.1401
  %237 = load i64, i64* %length, align 8
  %add1408 = add nsw i64 0, %237
  %mul1409 = mul nsw i64 0, %add1408
  %add1410 = add nsw i64 %mul1409, 1
  %shl1411 = shl i64 %add1410, 62
  %sub1412 = sub nsw i64 %shl1411, 1
  %mul1413 = mul nsw i64 %sub1412, 2
  %add1414 = add nsw i64 %mul1413, 1
  br label %cond.end.1419

cond.false.1415:                                  ; preds = %cond.false.1401
  %238 = load i64, i64* %length, align 8
  %add1416 = add nsw i64 0, %238
  %mul1417 = mul nsw i64 0, %add1416
  %sub1418 = sub nsw i64 %mul1417, 1
  br label %cond.end.1419

cond.end.1419:                                    ; preds = %cond.false.1415, %cond.true.1407
  %cond1420 = phi i64 [ %add1414, %cond.true.1407 ], [ %sub1418, %cond.false.1415 ]
  %div1421 = sdiv i64 %cond1420, 10
  %239 = load i64, i64* %length, align 8
  %cmp1422 = icmp slt i64 %div1421, %239
  br i1 %cmp1422, label %cond.true.1438, label %lor.lhs.false.1424

lor.lhs.false.1424:                               ; preds = %cond.end.1419, %cond.end.1396, %cond.true.1365, %cond.end.1359, %cond.true.1331, %cond.end.1325
  %240 = load i64, i64* %length, align 8
  %mul1425 = mul nsw i64 %240, 10
  %mul1426 = mul nsw i64 0, %mul1425
  %sub1427 = sub nsw i64 %mul1426, 1
  %cmp1428 = icmp slt i64 %sub1427, 0
  br i1 %cmp1428, label %land.lhs.true.1430, label %lor.lhs.false.1434

land.lhs.true.1430:                               ; preds = %lor.lhs.false.1424
  %241 = load i64, i64* %length, align 8
  %mul1431 = mul nsw i64 %241, 10
  %cmp1432 = icmp slt i64 %mul1431, -2147483648
  br i1 %cmp1432, label %cond.true.1438, label %lor.lhs.false.1434

lor.lhs.false.1434:                               ; preds = %land.lhs.true.1430, %lor.lhs.false.1424
  %242 = load i64, i64* %length, align 8
  %mul1435 = mul nsw i64 %242, 10
  %cmp1436 = icmp slt i64 2147483647, %mul1435
  br i1 %cmp1436, label %cond.true.1438, label %cond.false.1454

cond.true.1438:                                   ; preds = %lor.lhs.false.1434, %land.lhs.true.1430, %cond.end.1419, %cond.end.1396, %cond.true.1365, %cond.end.1359, %cond.true.1331, %cond.end.1325, %land.lhs.true.1300
  %243 = load i64, i64* %length, align 8
  %conv1439 = trunc i64 %243 to i32
  %mul1440 = mul i32 %conv1439, 10
  %cmp1441 = icmp ule i32 %mul1440, 2147483647
  br i1 %cmp1441, label %cond.true.1443, label %cond.false.1446

cond.true.1443:                                   ; preds = %cond.true.1438
  %244 = load i64, i64* %length, align 8
  %conv1444 = trunc i64 %244 to i32
  %mul1445 = mul i32 %conv1444, 10
  br label %cond.end.1451

cond.false.1446:                                  ; preds = %cond.true.1438
  %245 = load i64, i64* %length, align 8
  %conv1447 = trunc i64 %245 to i32
  %mul1448 = mul i32 %conv1447, 10
  %sub1449 = sub i32 %mul1448, -2147483648
  %add1450 = add nsw i32 %sub1449, -2147483648
  br label %cond.end.1451

cond.end.1451:                                    ; preds = %cond.false.1446, %cond.true.1443
  %cond1452 = phi i32 [ %mul1445, %cond.true.1443 ], [ %add1450, %cond.false.1446 ]
  %conv1453 = sext i32 %cond1452 to i64
  store i64 %conv1453, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1454:                                  ; preds = %lor.lhs.false.1434
  %246 = load i64, i64* %length, align 8
  %conv1455 = trunc i64 %246 to i32
  %mul1456 = mul i32 %conv1455, 10
  %cmp1457 = icmp ule i32 %mul1456, 2147483647
  br i1 %cmp1457, label %cond.true.1459, label %cond.false.1462

cond.true.1459:                                   ; preds = %cond.false.1454
  %247 = load i64, i64* %length, align 8
  %conv1460 = trunc i64 %247 to i32
  %mul1461 = mul i32 %conv1460, 10
  br label %cond.end.1467

cond.false.1462:                                  ; preds = %cond.false.1454
  %248 = load i64, i64* %length, align 8
  %conv1463 = trunc i64 %248 to i32
  %mul1464 = mul i32 %conv1463, 10
  %sub1465 = sub i32 %mul1464, -2147483648
  %add1466 = add nsw i32 %sub1465, -2147483648
  br label %cond.end.1467

cond.end.1467:                                    ; preds = %cond.false.1462, %cond.true.1459
  %cond1468 = phi i32 [ %mul1461, %cond.true.1459 ], [ %add1466, %cond.false.1462 ]
  %conv1469 = sext i32 %cond1468 to i64
  store i64 %conv1469, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1470:                                  ; preds = %cond.false.1041
  br i1 true, label %cond.true.1471, label %cond.false.1858

cond.true.1471:                                   ; preds = %cond.false.1470
  br i1 false, label %cond.true.1472, label %cond.false.1665

cond.true.1472:                                   ; preds = %cond.true.1471
  %249 = load i64, i64* %length, align 8
  %add1473 = add nsw i64 0, %249
  %mul1474 = mul nsw i64 0, %add1473
  %sub1475 = sub nsw i64 %mul1474, 1
  %cmp1476 = icmp slt i64 %sub1475, 0
  br i1 %cmp1476, label %cond.true.1478, label %cond.false.1495

cond.true.1478:                                   ; preds = %cond.true.1472
  %250 = load i64, i64* %length, align 8
  %add1479 = add nsw i64 0, %250
  %mul1480 = mul nsw i64 0, %add1479
  %add1481 = add nsw i64 %mul1480, 0
  %neg1482 = xor i64 %add1481, -1
  %cmp1483 = icmp eq i64 %neg1482, -1
  %conv1484 = zext i1 %cmp1483 to i32
  %sub1485 = sub nsw i32 0, %conv1484
  %conv1486 = sext i32 %sub1485 to i64
  %251 = load i64, i64* %length, align 8
  %add1487 = add nsw i64 0, %251
  %mul1488 = mul nsw i64 0, %add1487
  %add1489 = add nsw i64 %mul1488, 1
  %shl1490 = shl i64 %add1489, 62
  %sub1491 = sub nsw i64 %shl1490, 1
  %mul1492 = mul nsw i64 %sub1491, 2
  %add1493 = add nsw i64 %mul1492, 1
  %sub1494 = sub nsw i64 %conv1486, %add1493
  br label %cond.end.1499

cond.false.1495:                                  ; preds = %cond.true.1472
  %252 = load i64, i64* %length, align 8
  %add1496 = add nsw i64 0, %252
  %mul1497 = mul nsw i64 0, %add1496
  %add1498 = add nsw i64 %mul1497, 0
  br label %cond.end.1499

cond.end.1499:                                    ; preds = %cond.false.1495, %cond.true.1478
  %cond1500 = phi i64 [ %sub1494, %cond.true.1478 ], [ %add1498, %cond.false.1495 ]
  %cmp1501 = icmp eq i64 %cond1500, 0
  br i1 %cmp1501, label %land.lhs.true.1503, label %lor.lhs.false.1506

land.lhs.true.1503:                               ; preds = %cond.end.1499
  %253 = load i64, i64* %length, align 8
  %cmp1504 = icmp slt i64 %253, 0
  br i1 %cmp1504, label %cond.true.1641, label %lor.lhs.false.1506

lor.lhs.false.1506:                               ; preds = %land.lhs.true.1503, %cond.end.1499
  br i1 false, label %cond.true.1507, label %cond.false.1567

cond.true.1507:                                   ; preds = %lor.lhs.false.1506
  %254 = load i64, i64* %length, align 8
  %cmp1508 = icmp slt i64 %254, 0
  br i1 %cmp1508, label %cond.true.1510, label %cond.false.1533

cond.true.1510:                                   ; preds = %cond.true.1507
  %255 = load i64, i64* %length, align 8
  %256 = load i64, i64* %length, align 8
  %add1511 = add nsw i64 0, %256
  %mul1512 = mul nsw i64 0, %add1511
  %sub1513 = sub nsw i64 %mul1512, 1
  %cmp1514 = icmp slt i64 %sub1513, 0
  br i1 %cmp1514, label %cond.true.1516, label %cond.false.1524

cond.true.1516:                                   ; preds = %cond.true.1510
  %257 = load i64, i64* %length, align 8
  %add1517 = add nsw i64 0, %257
  %mul1518 = mul nsw i64 0, %add1517
  %add1519 = add nsw i64 %mul1518, 1
  %shl1520 = shl i64 %add1519, 62
  %sub1521 = sub nsw i64 %shl1520, 1
  %mul1522 = mul nsw i64 %sub1521, 2
  %add1523 = add nsw i64 %mul1522, 1
  br label %cond.end.1528

cond.false.1524:                                  ; preds = %cond.true.1510
  %258 = load i64, i64* %length, align 8
  %add1525 = add nsw i64 0, %258
  %mul1526 = mul nsw i64 0, %add1525
  %sub1527 = sub nsw i64 %mul1526, 1
  br label %cond.end.1528

cond.end.1528:                                    ; preds = %cond.false.1524, %cond.true.1516
  %cond1529 = phi i64 [ %add1523, %cond.true.1516 ], [ %sub1527, %cond.false.1524 ]
  %div1530 = sdiv i64 %cond1529, 10
  %cmp1531 = icmp slt i64 %255, %div1530
  br i1 %cmp1531, label %cond.true.1641, label %lor.lhs.false.1627

cond.false.1533:                                  ; preds = %cond.true.1507
  br i1 false, label %cond.true.1534, label %cond.false.1535

cond.true.1534:                                   ; preds = %cond.false.1533
  br i1 false, label %cond.true.1641, label %lor.lhs.false.1627

cond.false.1535:                                  ; preds = %cond.false.1533
  %259 = load i64, i64* %length, align 8
  %add1536 = add nsw i64 0, %259
  %mul1537 = mul nsw i64 0, %add1536
  %sub1538 = sub nsw i64 %mul1537, 1
  %cmp1539 = icmp slt i64 %sub1538, 0
  br i1 %cmp1539, label %cond.true.1541, label %cond.false.1558

cond.true.1541:                                   ; preds = %cond.false.1535
  %260 = load i64, i64* %length, align 8
  %add1542 = add nsw i64 0, %260
  %mul1543 = mul nsw i64 0, %add1542
  %add1544 = add nsw i64 %mul1543, 0
  %neg1545 = xor i64 %add1544, -1
  %cmp1546 = icmp eq i64 %neg1545, -1
  %conv1547 = zext i1 %cmp1546 to i32
  %sub1548 = sub nsw i32 0, %conv1547
  %conv1549 = sext i32 %sub1548 to i64
  %261 = load i64, i64* %length, align 8
  %add1550 = add nsw i64 0, %261
  %mul1551 = mul nsw i64 0, %add1550
  %add1552 = add nsw i64 %mul1551, 1
  %shl1553 = shl i64 %add1552, 62
  %sub1554 = sub nsw i64 %shl1553, 1
  %mul1555 = mul nsw i64 %sub1554, 2
  %add1556 = add nsw i64 %mul1555, 1
  %sub1557 = sub nsw i64 %conv1549, %add1556
  br label %cond.end.1562

cond.false.1558:                                  ; preds = %cond.false.1535
  %262 = load i64, i64* %length, align 8
  %add1559 = add nsw i64 0, %262
  %mul1560 = mul nsw i64 0, %add1559
  %add1561 = add nsw i64 %mul1560, 0
  br label %cond.end.1562

cond.end.1562:                                    ; preds = %cond.false.1558, %cond.true.1541
  %cond1563 = phi i64 [ %sub1557, %cond.true.1541 ], [ %add1561, %cond.false.1558 ]
  %div1564 = sdiv i64 %cond1563, 10
  %263 = load i64, i64* %length, align 8
  %cmp1565 = icmp slt i64 %div1564, %263
  br i1 %cmp1565, label %cond.true.1641, label %lor.lhs.false.1627

cond.false.1567:                                  ; preds = %lor.lhs.false.1506
  br i1 false, label %cond.true.1568, label %cond.false.1569

cond.true.1568:                                   ; preds = %cond.false.1567
  br i1 false, label %cond.true.1641, label %lor.lhs.false.1627

cond.false.1569:                                  ; preds = %cond.false.1567
  %264 = load i64, i64* %length, align 8
  %cmp1570 = icmp slt i64 %264, 0
  br i1 %cmp1570, label %cond.true.1572, label %cond.false.1604

cond.true.1572:                                   ; preds = %cond.false.1569
  %265 = load i64, i64* %length, align 8
  %266 = load i64, i64* %length, align 8
  %add1573 = add nsw i64 0, %266
  %mul1574 = mul nsw i64 0, %add1573
  %sub1575 = sub nsw i64 %mul1574, 1
  %cmp1576 = icmp slt i64 %sub1575, 0
  br i1 %cmp1576, label %cond.true.1578, label %cond.false.1595

cond.true.1578:                                   ; preds = %cond.true.1572
  %267 = load i64, i64* %length, align 8
  %add1579 = add nsw i64 0, %267
  %mul1580 = mul nsw i64 0, %add1579
  %add1581 = add nsw i64 %mul1580, 0
  %neg1582 = xor i64 %add1581, -1
  %cmp1583 = icmp eq i64 %neg1582, -1
  %conv1584 = zext i1 %cmp1583 to i32
  %sub1585 = sub nsw i32 0, %conv1584
  %conv1586 = sext i32 %sub1585 to i64
  %268 = load i64, i64* %length, align 8
  %add1587 = add nsw i64 0, %268
  %mul1588 = mul nsw i64 0, %add1587
  %add1589 = add nsw i64 %mul1588, 1
  %shl1590 = shl i64 %add1589, 62
  %sub1591 = sub nsw i64 %shl1590, 1
  %mul1592 = mul nsw i64 %sub1591, 2
  %add1593 = add nsw i64 %mul1592, 1
  %sub1594 = sub nsw i64 %conv1586, %add1593
  br label %cond.end.1599

cond.false.1595:                                  ; preds = %cond.true.1572
  %269 = load i64, i64* %length, align 8
  %add1596 = add nsw i64 0, %269
  %mul1597 = mul nsw i64 0, %add1596
  %add1598 = add nsw i64 %mul1597, 0
  br label %cond.end.1599

cond.end.1599:                                    ; preds = %cond.false.1595, %cond.true.1578
  %cond1600 = phi i64 [ %sub1594, %cond.true.1578 ], [ %add1598, %cond.false.1595 ]
  %div1601 = sdiv i64 %cond1600, 10
  %cmp1602 = icmp slt i64 %265, %div1601
  br i1 %cmp1602, label %cond.true.1641, label %lor.lhs.false.1627

cond.false.1604:                                  ; preds = %cond.false.1569
  %270 = load i64, i64* %length, align 8
  %add1605 = add nsw i64 0, %270
  %mul1606 = mul nsw i64 0, %add1605
  %sub1607 = sub nsw i64 %mul1606, 1
  %cmp1608 = icmp slt i64 %sub1607, 0
  br i1 %cmp1608, label %cond.true.1610, label %cond.false.1618

cond.true.1610:                                   ; preds = %cond.false.1604
  %271 = load i64, i64* %length, align 8
  %add1611 = add nsw i64 0, %271
  %mul1612 = mul nsw i64 0, %add1611
  %add1613 = add nsw i64 %mul1612, 1
  %shl1614 = shl i64 %add1613, 62
  %sub1615 = sub nsw i64 %shl1614, 1
  %mul1616 = mul nsw i64 %sub1615, 2
  %add1617 = add nsw i64 %mul1616, 1
  br label %cond.end.1622

cond.false.1618:                                  ; preds = %cond.false.1604
  %272 = load i64, i64* %length, align 8
  %add1619 = add nsw i64 0, %272
  %mul1620 = mul nsw i64 0, %add1619
  %sub1621 = sub nsw i64 %mul1620, 1
  br label %cond.end.1622

cond.end.1622:                                    ; preds = %cond.false.1618, %cond.true.1610
  %cond1623 = phi i64 [ %add1617, %cond.true.1610 ], [ %sub1621, %cond.false.1618 ]
  %div1624 = sdiv i64 %cond1623, 10
  %273 = load i64, i64* %length, align 8
  %cmp1625 = icmp slt i64 %div1624, %273
  br i1 %cmp1625, label %cond.true.1641, label %lor.lhs.false.1627

lor.lhs.false.1627:                               ; preds = %cond.end.1622, %cond.end.1599, %cond.true.1568, %cond.end.1562, %cond.true.1534, %cond.end.1528
  %274 = load i64, i64* %length, align 8
  %mul1628 = mul nsw i64 %274, 10
  %mul1629 = mul nsw i64 0, %mul1628
  %sub1630 = sub nsw i64 %mul1629, 1
  %cmp1631 = icmp slt i64 %sub1630, 0
  br i1 %cmp1631, label %land.lhs.true.1633, label %lor.lhs.false.1637

land.lhs.true.1633:                               ; preds = %lor.lhs.false.1627
  %275 = load i64, i64* %length, align 8
  %mul1634 = mul nsw i64 %275, 10
  %cmp1635 = icmp slt i64 %mul1634, -9223372036854775808
  br i1 %cmp1635, label %cond.true.1641, label %lor.lhs.false.1637

lor.lhs.false.1637:                               ; preds = %land.lhs.true.1633, %lor.lhs.false.1627
  %276 = load i64, i64* %length, align 8
  %mul1638 = mul nsw i64 %276, 10
  %cmp1639 = icmp slt i64 9223372036854775807, %mul1638
  br i1 %cmp1639, label %cond.true.1641, label %cond.false.1653

cond.true.1641:                                   ; preds = %lor.lhs.false.1637, %land.lhs.true.1633, %cond.end.1622, %cond.end.1599, %cond.true.1568, %cond.end.1562, %cond.true.1534, %cond.end.1528, %land.lhs.true.1503
  %277 = load i64, i64* %length, align 8
  %mul1642 = mul i64 %277, 10
  %cmp1643 = icmp ule i64 %mul1642, 9223372036854775807
  br i1 %cmp1643, label %cond.true.1645, label %cond.false.1647

cond.true.1645:                                   ; preds = %cond.true.1641
  %278 = load i64, i64* %length, align 8
  %mul1646 = mul i64 %278, 10
  br label %cond.end.1651

cond.false.1647:                                  ; preds = %cond.true.1641
  %279 = load i64, i64* %length, align 8
  %mul1648 = mul i64 %279, 10
  %sub1649 = sub i64 %mul1648, -9223372036854775808
  %add1650 = add nsw i64 %sub1649, -9223372036854775808
  br label %cond.end.1651

cond.end.1651:                                    ; preds = %cond.false.1647, %cond.true.1645
  %cond1652 = phi i64 [ %mul1646, %cond.true.1645 ], [ %add1650, %cond.false.1647 ]
  store i64 %cond1652, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1653:                                  ; preds = %lor.lhs.false.1637
  %280 = load i64, i64* %length, align 8
  %mul1654 = mul i64 %280, 10
  %cmp1655 = icmp ule i64 %mul1654, 9223372036854775807
  br i1 %cmp1655, label %cond.true.1657, label %cond.false.1659

cond.true.1657:                                   ; preds = %cond.false.1653
  %281 = load i64, i64* %length, align 8
  %mul1658 = mul i64 %281, 10
  br label %cond.end.1663

cond.false.1659:                                  ; preds = %cond.false.1653
  %282 = load i64, i64* %length, align 8
  %mul1660 = mul i64 %282, 10
  %sub1661 = sub i64 %mul1660, -9223372036854775808
  %add1662 = add nsw i64 %sub1661, -9223372036854775808
  br label %cond.end.1663

cond.end.1663:                                    ; preds = %cond.false.1659, %cond.true.1657
  %cond1664 = phi i64 [ %mul1658, %cond.true.1657 ], [ %add1662, %cond.false.1659 ]
  store i64 %cond1664, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1665:                                  ; preds = %cond.true.1471
  %283 = load i64, i64* %length, align 8
  %add1666 = add nsw i64 0, %283
  %mul1667 = mul nsw i64 0, %add1666
  %sub1668 = sub nsw i64 %mul1667, 1
  %cmp1669 = icmp slt i64 %sub1668, 0
  br i1 %cmp1669, label %cond.true.1671, label %cond.false.1688

cond.true.1671:                                   ; preds = %cond.false.1665
  %284 = load i64, i64* %length, align 8
  %add1672 = add nsw i64 0, %284
  %mul1673 = mul nsw i64 0, %add1672
  %add1674 = add nsw i64 %mul1673, 0
  %neg1675 = xor i64 %add1674, -1
  %cmp1676 = icmp eq i64 %neg1675, -1
  %conv1677 = zext i1 %cmp1676 to i32
  %sub1678 = sub nsw i32 0, %conv1677
  %conv1679 = sext i32 %sub1678 to i64
  %285 = load i64, i64* %length, align 8
  %add1680 = add nsw i64 0, %285
  %mul1681 = mul nsw i64 0, %add1680
  %add1682 = add nsw i64 %mul1681, 1
  %shl1683 = shl i64 %add1682, 62
  %sub1684 = sub nsw i64 %shl1683, 1
  %mul1685 = mul nsw i64 %sub1684, 2
  %add1686 = add nsw i64 %mul1685, 1
  %sub1687 = sub nsw i64 %conv1679, %add1686
  br label %cond.end.1692

cond.false.1688:                                  ; preds = %cond.false.1665
  %286 = load i64, i64* %length, align 8
  %add1689 = add nsw i64 0, %286
  %mul1690 = mul nsw i64 0, %add1689
  %add1691 = add nsw i64 %mul1690, 0
  br label %cond.end.1692

cond.end.1692:                                    ; preds = %cond.false.1688, %cond.true.1671
  %cond1693 = phi i64 [ %sub1687, %cond.true.1671 ], [ %add1691, %cond.false.1688 ]
  %cmp1694 = icmp eq i64 %cond1693, 0
  br i1 %cmp1694, label %land.lhs.true.1696, label %lor.lhs.false.1699

land.lhs.true.1696:                               ; preds = %cond.end.1692
  %287 = load i64, i64* %length, align 8
  %cmp1697 = icmp slt i64 %287, 0
  br i1 %cmp1697, label %cond.true.1834, label %lor.lhs.false.1699

lor.lhs.false.1699:                               ; preds = %land.lhs.true.1696, %cond.end.1692
  br i1 false, label %cond.true.1700, label %cond.false.1760

cond.true.1700:                                   ; preds = %lor.lhs.false.1699
  %288 = load i64, i64* %length, align 8
  %cmp1701 = icmp slt i64 %288, 0
  br i1 %cmp1701, label %cond.true.1703, label %cond.false.1726

cond.true.1703:                                   ; preds = %cond.true.1700
  %289 = load i64, i64* %length, align 8
  %290 = load i64, i64* %length, align 8
  %add1704 = add nsw i64 0, %290
  %mul1705 = mul nsw i64 0, %add1704
  %sub1706 = sub nsw i64 %mul1705, 1
  %cmp1707 = icmp slt i64 %sub1706, 0
  br i1 %cmp1707, label %cond.true.1709, label %cond.false.1717

cond.true.1709:                                   ; preds = %cond.true.1703
  %291 = load i64, i64* %length, align 8
  %add1710 = add nsw i64 0, %291
  %mul1711 = mul nsw i64 0, %add1710
  %add1712 = add nsw i64 %mul1711, 1
  %shl1713 = shl i64 %add1712, 62
  %sub1714 = sub nsw i64 %shl1713, 1
  %mul1715 = mul nsw i64 %sub1714, 2
  %add1716 = add nsw i64 %mul1715, 1
  br label %cond.end.1721

cond.false.1717:                                  ; preds = %cond.true.1703
  %292 = load i64, i64* %length, align 8
  %add1718 = add nsw i64 0, %292
  %mul1719 = mul nsw i64 0, %add1718
  %sub1720 = sub nsw i64 %mul1719, 1
  br label %cond.end.1721

cond.end.1721:                                    ; preds = %cond.false.1717, %cond.true.1709
  %cond1722 = phi i64 [ %add1716, %cond.true.1709 ], [ %sub1720, %cond.false.1717 ]
  %div1723 = sdiv i64 %cond1722, 10
  %cmp1724 = icmp slt i64 %289, %div1723
  br i1 %cmp1724, label %cond.true.1834, label %lor.lhs.false.1820

cond.false.1726:                                  ; preds = %cond.true.1700
  br i1 false, label %cond.true.1727, label %cond.false.1728

cond.true.1727:                                   ; preds = %cond.false.1726
  br i1 false, label %cond.true.1834, label %lor.lhs.false.1820

cond.false.1728:                                  ; preds = %cond.false.1726
  %293 = load i64, i64* %length, align 8
  %add1729 = add nsw i64 0, %293
  %mul1730 = mul nsw i64 0, %add1729
  %sub1731 = sub nsw i64 %mul1730, 1
  %cmp1732 = icmp slt i64 %sub1731, 0
  br i1 %cmp1732, label %cond.true.1734, label %cond.false.1751

cond.true.1734:                                   ; preds = %cond.false.1728
  %294 = load i64, i64* %length, align 8
  %add1735 = add nsw i64 0, %294
  %mul1736 = mul nsw i64 0, %add1735
  %add1737 = add nsw i64 %mul1736, 0
  %neg1738 = xor i64 %add1737, -1
  %cmp1739 = icmp eq i64 %neg1738, -1
  %conv1740 = zext i1 %cmp1739 to i32
  %sub1741 = sub nsw i32 0, %conv1740
  %conv1742 = sext i32 %sub1741 to i64
  %295 = load i64, i64* %length, align 8
  %add1743 = add nsw i64 0, %295
  %mul1744 = mul nsw i64 0, %add1743
  %add1745 = add nsw i64 %mul1744, 1
  %shl1746 = shl i64 %add1745, 62
  %sub1747 = sub nsw i64 %shl1746, 1
  %mul1748 = mul nsw i64 %sub1747, 2
  %add1749 = add nsw i64 %mul1748, 1
  %sub1750 = sub nsw i64 %conv1742, %add1749
  br label %cond.end.1755

cond.false.1751:                                  ; preds = %cond.false.1728
  %296 = load i64, i64* %length, align 8
  %add1752 = add nsw i64 0, %296
  %mul1753 = mul nsw i64 0, %add1752
  %add1754 = add nsw i64 %mul1753, 0
  br label %cond.end.1755

cond.end.1755:                                    ; preds = %cond.false.1751, %cond.true.1734
  %cond1756 = phi i64 [ %sub1750, %cond.true.1734 ], [ %add1754, %cond.false.1751 ]
  %div1757 = sdiv i64 %cond1756, 10
  %297 = load i64, i64* %length, align 8
  %cmp1758 = icmp slt i64 %div1757, %297
  br i1 %cmp1758, label %cond.true.1834, label %lor.lhs.false.1820

cond.false.1760:                                  ; preds = %lor.lhs.false.1699
  br i1 false, label %cond.true.1761, label %cond.false.1762

cond.true.1761:                                   ; preds = %cond.false.1760
  br i1 false, label %cond.true.1834, label %lor.lhs.false.1820

cond.false.1762:                                  ; preds = %cond.false.1760
  %298 = load i64, i64* %length, align 8
  %cmp1763 = icmp slt i64 %298, 0
  br i1 %cmp1763, label %cond.true.1765, label %cond.false.1797

cond.true.1765:                                   ; preds = %cond.false.1762
  %299 = load i64, i64* %length, align 8
  %300 = load i64, i64* %length, align 8
  %add1766 = add nsw i64 0, %300
  %mul1767 = mul nsw i64 0, %add1766
  %sub1768 = sub nsw i64 %mul1767, 1
  %cmp1769 = icmp slt i64 %sub1768, 0
  br i1 %cmp1769, label %cond.true.1771, label %cond.false.1788

cond.true.1771:                                   ; preds = %cond.true.1765
  %301 = load i64, i64* %length, align 8
  %add1772 = add nsw i64 0, %301
  %mul1773 = mul nsw i64 0, %add1772
  %add1774 = add nsw i64 %mul1773, 0
  %neg1775 = xor i64 %add1774, -1
  %cmp1776 = icmp eq i64 %neg1775, -1
  %conv1777 = zext i1 %cmp1776 to i32
  %sub1778 = sub nsw i32 0, %conv1777
  %conv1779 = sext i32 %sub1778 to i64
  %302 = load i64, i64* %length, align 8
  %add1780 = add nsw i64 0, %302
  %mul1781 = mul nsw i64 0, %add1780
  %add1782 = add nsw i64 %mul1781, 1
  %shl1783 = shl i64 %add1782, 62
  %sub1784 = sub nsw i64 %shl1783, 1
  %mul1785 = mul nsw i64 %sub1784, 2
  %add1786 = add nsw i64 %mul1785, 1
  %sub1787 = sub nsw i64 %conv1779, %add1786
  br label %cond.end.1792

cond.false.1788:                                  ; preds = %cond.true.1765
  %303 = load i64, i64* %length, align 8
  %add1789 = add nsw i64 0, %303
  %mul1790 = mul nsw i64 0, %add1789
  %add1791 = add nsw i64 %mul1790, 0
  br label %cond.end.1792

cond.end.1792:                                    ; preds = %cond.false.1788, %cond.true.1771
  %cond1793 = phi i64 [ %sub1787, %cond.true.1771 ], [ %add1791, %cond.false.1788 ]
  %div1794 = sdiv i64 %cond1793, 10
  %cmp1795 = icmp slt i64 %299, %div1794
  br i1 %cmp1795, label %cond.true.1834, label %lor.lhs.false.1820

cond.false.1797:                                  ; preds = %cond.false.1762
  %304 = load i64, i64* %length, align 8
  %add1798 = add nsw i64 0, %304
  %mul1799 = mul nsw i64 0, %add1798
  %sub1800 = sub nsw i64 %mul1799, 1
  %cmp1801 = icmp slt i64 %sub1800, 0
  br i1 %cmp1801, label %cond.true.1803, label %cond.false.1811

cond.true.1803:                                   ; preds = %cond.false.1797
  %305 = load i64, i64* %length, align 8
  %add1804 = add nsw i64 0, %305
  %mul1805 = mul nsw i64 0, %add1804
  %add1806 = add nsw i64 %mul1805, 1
  %shl1807 = shl i64 %add1806, 62
  %sub1808 = sub nsw i64 %shl1807, 1
  %mul1809 = mul nsw i64 %sub1808, 2
  %add1810 = add nsw i64 %mul1809, 1
  br label %cond.end.1815

cond.false.1811:                                  ; preds = %cond.false.1797
  %306 = load i64, i64* %length, align 8
  %add1812 = add nsw i64 0, %306
  %mul1813 = mul nsw i64 0, %add1812
  %sub1814 = sub nsw i64 %mul1813, 1
  br label %cond.end.1815

cond.end.1815:                                    ; preds = %cond.false.1811, %cond.true.1803
  %cond1816 = phi i64 [ %add1810, %cond.true.1803 ], [ %sub1814, %cond.false.1811 ]
  %div1817 = sdiv i64 %cond1816, 10
  %307 = load i64, i64* %length, align 8
  %cmp1818 = icmp slt i64 %div1817, %307
  br i1 %cmp1818, label %cond.true.1834, label %lor.lhs.false.1820

lor.lhs.false.1820:                               ; preds = %cond.end.1815, %cond.end.1792, %cond.true.1761, %cond.end.1755, %cond.true.1727, %cond.end.1721
  %308 = load i64, i64* %length, align 8
  %mul1821 = mul nsw i64 %308, 10
  %mul1822 = mul nsw i64 0, %mul1821
  %sub1823 = sub nsw i64 %mul1822, 1
  %cmp1824 = icmp slt i64 %sub1823, 0
  br i1 %cmp1824, label %land.lhs.true.1826, label %lor.lhs.false.1830

land.lhs.true.1826:                               ; preds = %lor.lhs.false.1820
  %309 = load i64, i64* %length, align 8
  %mul1827 = mul nsw i64 %309, 10
  %cmp1828 = icmp slt i64 %mul1827, -9223372036854775808
  br i1 %cmp1828, label %cond.true.1834, label %lor.lhs.false.1830

lor.lhs.false.1830:                               ; preds = %land.lhs.true.1826, %lor.lhs.false.1820
  %310 = load i64, i64* %length, align 8
  %mul1831 = mul nsw i64 %310, 10
  %cmp1832 = icmp slt i64 9223372036854775807, %mul1831
  br i1 %cmp1832, label %cond.true.1834, label %cond.false.1846

cond.true.1834:                                   ; preds = %lor.lhs.false.1830, %land.lhs.true.1826, %cond.end.1815, %cond.end.1792, %cond.true.1761, %cond.end.1755, %cond.true.1727, %cond.end.1721, %land.lhs.true.1696
  %311 = load i64, i64* %length, align 8
  %mul1835 = mul i64 %311, 10
  %cmp1836 = icmp ule i64 %mul1835, 9223372036854775807
  br i1 %cmp1836, label %cond.true.1838, label %cond.false.1840

cond.true.1838:                                   ; preds = %cond.true.1834
  %312 = load i64, i64* %length, align 8
  %mul1839 = mul i64 %312, 10
  br label %cond.end.1844

cond.false.1840:                                  ; preds = %cond.true.1834
  %313 = load i64, i64* %length, align 8
  %mul1841 = mul i64 %313, 10
  %sub1842 = sub i64 %mul1841, -9223372036854775808
  %add1843 = add nsw i64 %sub1842, -9223372036854775808
  br label %cond.end.1844

cond.end.1844:                                    ; preds = %cond.false.1840, %cond.true.1838
  %cond1845 = phi i64 [ %mul1839, %cond.true.1838 ], [ %add1843, %cond.false.1840 ]
  store i64 %cond1845, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1846:                                  ; preds = %lor.lhs.false.1830
  %314 = load i64, i64* %length, align 8
  %mul1847 = mul i64 %314, 10
  %cmp1848 = icmp ule i64 %mul1847, 9223372036854775807
  br i1 %cmp1848, label %cond.true.1850, label %cond.false.1852

cond.true.1850:                                   ; preds = %cond.false.1846
  %315 = load i64, i64* %length, align 8
  %mul1851 = mul i64 %315, 10
  br label %cond.end.1856

cond.false.1852:                                  ; preds = %cond.false.1846
  %316 = load i64, i64* %length, align 8
  %mul1853 = mul i64 %316, 10
  %sub1854 = sub i64 %mul1853, -9223372036854775808
  %add1855 = add nsw i64 %sub1854, -9223372036854775808
  br label %cond.end.1856

cond.end.1856:                                    ; preds = %cond.false.1852, %cond.true.1850
  %cond1857 = phi i64 [ %mul1851, %cond.true.1850 ], [ %add1855, %cond.false.1852 ]
  store i64 %cond1857, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

cond.false.1858:                                  ; preds = %cond.false.1470
  br i1 false, label %cond.true.1859, label %cond.false.2052

cond.true.1859:                                   ; preds = %cond.false.1858
  %317 = load i64, i64* %length, align 8
  %add1860 = add nsw i64 0, %317
  %mul1861 = mul nsw i64 0, %add1860
  %sub1862 = sub nsw i64 %mul1861, 1
  %cmp1863 = icmp slt i64 %sub1862, 0
  br i1 %cmp1863, label %cond.true.1865, label %cond.false.1882

cond.true.1865:                                   ; preds = %cond.true.1859
  %318 = load i64, i64* %length, align 8
  %add1866 = add nsw i64 0, %318
  %mul1867 = mul nsw i64 0, %add1866
  %add1868 = add nsw i64 %mul1867, 0
  %neg1869 = xor i64 %add1868, -1
  %cmp1870 = icmp eq i64 %neg1869, -1
  %conv1871 = zext i1 %cmp1870 to i32
  %sub1872 = sub nsw i32 0, %conv1871
  %conv1873 = sext i32 %sub1872 to i64
  %319 = load i64, i64* %length, align 8
  %add1874 = add nsw i64 0, %319
  %mul1875 = mul nsw i64 0, %add1874
  %add1876 = add nsw i64 %mul1875, 1
  %shl1877 = shl i64 %add1876, 62
  %sub1878 = sub nsw i64 %shl1877, 1
  %mul1879 = mul nsw i64 %sub1878, 2
  %add1880 = add nsw i64 %mul1879, 1
  %sub1881 = sub nsw i64 %conv1873, %add1880
  br label %cond.end.1886

cond.false.1882:                                  ; preds = %cond.true.1859
  %320 = load i64, i64* %length, align 8
  %add1883 = add nsw i64 0, %320
  %mul1884 = mul nsw i64 0, %add1883
  %add1885 = add nsw i64 %mul1884, 0
  br label %cond.end.1886

cond.end.1886:                                    ; preds = %cond.false.1882, %cond.true.1865
  %cond1887 = phi i64 [ %sub1881, %cond.true.1865 ], [ %add1885, %cond.false.1882 ]
  %cmp1888 = icmp eq i64 %cond1887, 0
  br i1 %cmp1888, label %land.lhs.true.1890, label %lor.lhs.false.1893

land.lhs.true.1890:                               ; preds = %cond.end.1886
  %321 = load i64, i64* %length, align 8
  %cmp1891 = icmp slt i64 %321, 0
  br i1 %cmp1891, label %cond.true.2028, label %lor.lhs.false.1893

lor.lhs.false.1893:                               ; preds = %land.lhs.true.1890, %cond.end.1886
  br i1 false, label %cond.true.1894, label %cond.false.1954

cond.true.1894:                                   ; preds = %lor.lhs.false.1893
  %322 = load i64, i64* %length, align 8
  %cmp1895 = icmp slt i64 %322, 0
  br i1 %cmp1895, label %cond.true.1897, label %cond.false.1920

cond.true.1897:                                   ; preds = %cond.true.1894
  %323 = load i64, i64* %length, align 8
  %324 = load i64, i64* %length, align 8
  %add1898 = add nsw i64 0, %324
  %mul1899 = mul nsw i64 0, %add1898
  %sub1900 = sub nsw i64 %mul1899, 1
  %cmp1901 = icmp slt i64 %sub1900, 0
  br i1 %cmp1901, label %cond.true.1903, label %cond.false.1911

cond.true.1903:                                   ; preds = %cond.true.1897
  %325 = load i64, i64* %length, align 8
  %add1904 = add nsw i64 0, %325
  %mul1905 = mul nsw i64 0, %add1904
  %add1906 = add nsw i64 %mul1905, 1
  %shl1907 = shl i64 %add1906, 62
  %sub1908 = sub nsw i64 %shl1907, 1
  %mul1909 = mul nsw i64 %sub1908, 2
  %add1910 = add nsw i64 %mul1909, 1
  br label %cond.end.1915

cond.false.1911:                                  ; preds = %cond.true.1897
  %326 = load i64, i64* %length, align 8
  %add1912 = add nsw i64 0, %326
  %mul1913 = mul nsw i64 0, %add1912
  %sub1914 = sub nsw i64 %mul1913, 1
  br label %cond.end.1915

cond.end.1915:                                    ; preds = %cond.false.1911, %cond.true.1903
  %cond1916 = phi i64 [ %add1910, %cond.true.1903 ], [ %sub1914, %cond.false.1911 ]
  %div1917 = sdiv i64 %cond1916, 10
  %cmp1918 = icmp slt i64 %323, %div1917
  br i1 %cmp1918, label %cond.true.2028, label %lor.lhs.false.2014

cond.false.1920:                                  ; preds = %cond.true.1894
  br i1 false, label %cond.true.1921, label %cond.false.1922

cond.true.1921:                                   ; preds = %cond.false.1920
  br i1 false, label %cond.true.2028, label %lor.lhs.false.2014

cond.false.1922:                                  ; preds = %cond.false.1920
  %327 = load i64, i64* %length, align 8
  %add1923 = add nsw i64 0, %327
  %mul1924 = mul nsw i64 0, %add1923
  %sub1925 = sub nsw i64 %mul1924, 1
  %cmp1926 = icmp slt i64 %sub1925, 0
  br i1 %cmp1926, label %cond.true.1928, label %cond.false.1945

cond.true.1928:                                   ; preds = %cond.false.1922
  %328 = load i64, i64* %length, align 8
  %add1929 = add nsw i64 0, %328
  %mul1930 = mul nsw i64 0, %add1929
  %add1931 = add nsw i64 %mul1930, 0
  %neg1932 = xor i64 %add1931, -1
  %cmp1933 = icmp eq i64 %neg1932, -1
  %conv1934 = zext i1 %cmp1933 to i32
  %sub1935 = sub nsw i32 0, %conv1934
  %conv1936 = sext i32 %sub1935 to i64
  %329 = load i64, i64* %length, align 8
  %add1937 = add nsw i64 0, %329
  %mul1938 = mul nsw i64 0, %add1937
  %add1939 = add nsw i64 %mul1938, 1
  %shl1940 = shl i64 %add1939, 62
  %sub1941 = sub nsw i64 %shl1940, 1
  %mul1942 = mul nsw i64 %sub1941, 2
  %add1943 = add nsw i64 %mul1942, 1
  %sub1944 = sub nsw i64 %conv1936, %add1943
  br label %cond.end.1949

cond.false.1945:                                  ; preds = %cond.false.1922
  %330 = load i64, i64* %length, align 8
  %add1946 = add nsw i64 0, %330
  %mul1947 = mul nsw i64 0, %add1946
  %add1948 = add nsw i64 %mul1947, 0
  br label %cond.end.1949

cond.end.1949:                                    ; preds = %cond.false.1945, %cond.true.1928
  %cond1950 = phi i64 [ %sub1944, %cond.true.1928 ], [ %add1948, %cond.false.1945 ]
  %div1951 = sdiv i64 %cond1950, 10
  %331 = load i64, i64* %length, align 8
  %cmp1952 = icmp slt i64 %div1951, %331
  br i1 %cmp1952, label %cond.true.2028, label %lor.lhs.false.2014

cond.false.1954:                                  ; preds = %lor.lhs.false.1893
  br i1 false, label %cond.true.1955, label %cond.false.1956

cond.true.1955:                                   ; preds = %cond.false.1954
  br i1 false, label %cond.true.2028, label %lor.lhs.false.2014

cond.false.1956:                                  ; preds = %cond.false.1954
  %332 = load i64, i64* %length, align 8
  %cmp1957 = icmp slt i64 %332, 0
  br i1 %cmp1957, label %cond.true.1959, label %cond.false.1991

cond.true.1959:                                   ; preds = %cond.false.1956
  %333 = load i64, i64* %length, align 8
  %334 = load i64, i64* %length, align 8
  %add1960 = add nsw i64 0, %334
  %mul1961 = mul nsw i64 0, %add1960
  %sub1962 = sub nsw i64 %mul1961, 1
  %cmp1963 = icmp slt i64 %sub1962, 0
  br i1 %cmp1963, label %cond.true.1965, label %cond.false.1982

cond.true.1965:                                   ; preds = %cond.true.1959
  %335 = load i64, i64* %length, align 8
  %add1966 = add nsw i64 0, %335
  %mul1967 = mul nsw i64 0, %add1966
  %add1968 = add nsw i64 %mul1967, 0
  %neg1969 = xor i64 %add1968, -1
  %cmp1970 = icmp eq i64 %neg1969, -1
  %conv1971 = zext i1 %cmp1970 to i32
  %sub1972 = sub nsw i32 0, %conv1971
  %conv1973 = sext i32 %sub1972 to i64
  %336 = load i64, i64* %length, align 8
  %add1974 = add nsw i64 0, %336
  %mul1975 = mul nsw i64 0, %add1974
  %add1976 = add nsw i64 %mul1975, 1
  %shl1977 = shl i64 %add1976, 62
  %sub1978 = sub nsw i64 %shl1977, 1
  %mul1979 = mul nsw i64 %sub1978, 2
  %add1980 = add nsw i64 %mul1979, 1
  %sub1981 = sub nsw i64 %conv1973, %add1980
  br label %cond.end.1986

cond.false.1982:                                  ; preds = %cond.true.1959
  %337 = load i64, i64* %length, align 8
  %add1983 = add nsw i64 0, %337
  %mul1984 = mul nsw i64 0, %add1983
  %add1985 = add nsw i64 %mul1984, 0
  br label %cond.end.1986

cond.end.1986:                                    ; preds = %cond.false.1982, %cond.true.1965
  %cond1987 = phi i64 [ %sub1981, %cond.true.1965 ], [ %add1985, %cond.false.1982 ]
  %div1988 = sdiv i64 %cond1987, 10
  %cmp1989 = icmp slt i64 %333, %div1988
  br i1 %cmp1989, label %cond.true.2028, label %lor.lhs.false.2014

cond.false.1991:                                  ; preds = %cond.false.1956
  %338 = load i64, i64* %length, align 8
  %add1992 = add nsw i64 0, %338
  %mul1993 = mul nsw i64 0, %add1992
  %sub1994 = sub nsw i64 %mul1993, 1
  %cmp1995 = icmp slt i64 %sub1994, 0
  br i1 %cmp1995, label %cond.true.1997, label %cond.false.2005

cond.true.1997:                                   ; preds = %cond.false.1991
  %339 = load i64, i64* %length, align 8
  %add1998 = add nsw i64 0, %339
  %mul1999 = mul nsw i64 0, %add1998
  %add2000 = add nsw i64 %mul1999, 1
  %shl2001 = shl i64 %add2000, 62
  %sub2002 = sub nsw i64 %shl2001, 1
  %mul2003 = mul nsw i64 %sub2002, 2
  %add2004 = add nsw i64 %mul2003, 1
  br label %cond.end.2009

cond.false.2005:                                  ; preds = %cond.false.1991
  %340 = load i64, i64* %length, align 8
  %add2006 = add nsw i64 0, %340
  %mul2007 = mul nsw i64 0, %add2006
  %sub2008 = sub nsw i64 %mul2007, 1
  br label %cond.end.2009

cond.end.2009:                                    ; preds = %cond.false.2005, %cond.true.1997
  %cond2010 = phi i64 [ %add2004, %cond.true.1997 ], [ %sub2008, %cond.false.2005 ]
  %div2011 = sdiv i64 %cond2010, 10
  %341 = load i64, i64* %length, align 8
  %cmp2012 = icmp slt i64 %div2011, %341
  br i1 %cmp2012, label %cond.true.2028, label %lor.lhs.false.2014

lor.lhs.false.2014:                               ; preds = %cond.end.2009, %cond.end.1986, %cond.true.1955, %cond.end.1949, %cond.true.1921, %cond.end.1915
  %342 = load i64, i64* %length, align 8
  %mul2015 = mul nsw i64 %342, 10
  %mul2016 = mul nsw i64 0, %mul2015
  %sub2017 = sub nsw i64 %mul2016, 1
  %cmp2018 = icmp slt i64 %sub2017, 0
  br i1 %cmp2018, label %land.lhs.true.2020, label %lor.lhs.false.2024

land.lhs.true.2020:                               ; preds = %lor.lhs.false.2014
  %343 = load i64, i64* %length, align 8
  %mul2021 = mul nsw i64 %343, 10
  %cmp2022 = icmp slt i64 %mul2021, -9223372036854775808
  br i1 %cmp2022, label %cond.true.2028, label %lor.lhs.false.2024

lor.lhs.false.2024:                               ; preds = %land.lhs.true.2020, %lor.lhs.false.2014
  %344 = load i64, i64* %length, align 8
  %mul2025 = mul nsw i64 %344, 10
  %cmp2026 = icmp slt i64 9223372036854775807, %mul2025
  br i1 %cmp2026, label %cond.true.2028, label %cond.false.2040

cond.true.2028:                                   ; preds = %lor.lhs.false.2024, %land.lhs.true.2020, %cond.end.2009, %cond.end.1986, %cond.true.1955, %cond.end.1949, %cond.true.1921, %cond.end.1915, %land.lhs.true.1890
  %345 = load i64, i64* %length, align 8
  %mul2029 = mul i64 %345, 10
  %cmp2030 = icmp ule i64 %mul2029, 9223372036854775807
  br i1 %cmp2030, label %cond.true.2032, label %cond.false.2034

cond.true.2032:                                   ; preds = %cond.true.2028
  %346 = load i64, i64* %length, align 8
  %mul2033 = mul i64 %346, 10
  br label %cond.end.2038

cond.false.2034:                                  ; preds = %cond.true.2028
  %347 = load i64, i64* %length, align 8
  %mul2035 = mul i64 %347, 10
  %sub2036 = sub i64 %mul2035, -9223372036854775808
  %add2037 = add nsw i64 %sub2036, -9223372036854775808
  br label %cond.end.2038

cond.end.2038:                                    ; preds = %cond.false.2034, %cond.true.2032
  %cond2039 = phi i64 [ %mul2033, %cond.true.2032 ], [ %add2037, %cond.false.2034 ]
  store i64 %cond2039, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.2040:                                  ; preds = %lor.lhs.false.2024
  %348 = load i64, i64* %length, align 8
  %mul2041 = mul i64 %348, 10
  %cmp2042 = icmp ule i64 %mul2041, 9223372036854775807
  br i1 %cmp2042, label %cond.true.2044, label %cond.false.2046

cond.true.2044:                                   ; preds = %cond.false.2040
  %349 = load i64, i64* %length, align 8
  %mul2045 = mul i64 %349, 10
  br label %cond.end.2050

cond.false.2046:                                  ; preds = %cond.false.2040
  %350 = load i64, i64* %length, align 8
  %mul2047 = mul i64 %350, 10
  %sub2048 = sub i64 %mul2047, -9223372036854775808
  %add2049 = add nsw i64 %sub2048, -9223372036854775808
  br label %cond.end.2050

cond.end.2050:                                    ; preds = %cond.false.2046, %cond.true.2044
  %cond2051 = phi i64 [ %mul2045, %cond.true.2044 ], [ %add2049, %cond.false.2046 ]
  store i64 %cond2051, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

cond.false.2052:                                  ; preds = %cond.false.1858
  %351 = load i64, i64* %length, align 8
  %add2053 = add nsw i64 0, %351
  %mul2054 = mul nsw i64 0, %add2053
  %sub2055 = sub nsw i64 %mul2054, 1
  %cmp2056 = icmp slt i64 %sub2055, 0
  br i1 %cmp2056, label %cond.true.2058, label %cond.false.2075

cond.true.2058:                                   ; preds = %cond.false.2052
  %352 = load i64, i64* %length, align 8
  %add2059 = add nsw i64 0, %352
  %mul2060 = mul nsw i64 0, %add2059
  %add2061 = add nsw i64 %mul2060, 0
  %neg2062 = xor i64 %add2061, -1
  %cmp2063 = icmp eq i64 %neg2062, -1
  %conv2064 = zext i1 %cmp2063 to i32
  %sub2065 = sub nsw i32 0, %conv2064
  %conv2066 = sext i32 %sub2065 to i64
  %353 = load i64, i64* %length, align 8
  %add2067 = add nsw i64 0, %353
  %mul2068 = mul nsw i64 0, %add2067
  %add2069 = add nsw i64 %mul2068, 1
  %shl2070 = shl i64 %add2069, 62
  %sub2071 = sub nsw i64 %shl2070, 1
  %mul2072 = mul nsw i64 %sub2071, 2
  %add2073 = add nsw i64 %mul2072, 1
  %sub2074 = sub nsw i64 %conv2066, %add2073
  br label %cond.end.2079

cond.false.2075:                                  ; preds = %cond.false.2052
  %354 = load i64, i64* %length, align 8
  %add2076 = add nsw i64 0, %354
  %mul2077 = mul nsw i64 0, %add2076
  %add2078 = add nsw i64 %mul2077, 0
  br label %cond.end.2079

cond.end.2079:                                    ; preds = %cond.false.2075, %cond.true.2058
  %cond2080 = phi i64 [ %sub2074, %cond.true.2058 ], [ %add2078, %cond.false.2075 ]
  %cmp2081 = icmp eq i64 %cond2080, 0
  br i1 %cmp2081, label %land.lhs.true.2083, label %lor.lhs.false.2086

land.lhs.true.2083:                               ; preds = %cond.end.2079
  %355 = load i64, i64* %length, align 8
  %cmp2084 = icmp slt i64 %355, 0
  br i1 %cmp2084, label %cond.true.2221, label %lor.lhs.false.2086

lor.lhs.false.2086:                               ; preds = %land.lhs.true.2083, %cond.end.2079
  br i1 false, label %cond.true.2087, label %cond.false.2147

cond.true.2087:                                   ; preds = %lor.lhs.false.2086
  %356 = load i64, i64* %length, align 8
  %cmp2088 = icmp slt i64 %356, 0
  br i1 %cmp2088, label %cond.true.2090, label %cond.false.2113

cond.true.2090:                                   ; preds = %cond.true.2087
  %357 = load i64, i64* %length, align 8
  %358 = load i64, i64* %length, align 8
  %add2091 = add nsw i64 0, %358
  %mul2092 = mul nsw i64 0, %add2091
  %sub2093 = sub nsw i64 %mul2092, 1
  %cmp2094 = icmp slt i64 %sub2093, 0
  br i1 %cmp2094, label %cond.true.2096, label %cond.false.2104

cond.true.2096:                                   ; preds = %cond.true.2090
  %359 = load i64, i64* %length, align 8
  %add2097 = add nsw i64 0, %359
  %mul2098 = mul nsw i64 0, %add2097
  %add2099 = add nsw i64 %mul2098, 1
  %shl2100 = shl i64 %add2099, 62
  %sub2101 = sub nsw i64 %shl2100, 1
  %mul2102 = mul nsw i64 %sub2101, 2
  %add2103 = add nsw i64 %mul2102, 1
  br label %cond.end.2108

cond.false.2104:                                  ; preds = %cond.true.2090
  %360 = load i64, i64* %length, align 8
  %add2105 = add nsw i64 0, %360
  %mul2106 = mul nsw i64 0, %add2105
  %sub2107 = sub nsw i64 %mul2106, 1
  br label %cond.end.2108

cond.end.2108:                                    ; preds = %cond.false.2104, %cond.true.2096
  %cond2109 = phi i64 [ %add2103, %cond.true.2096 ], [ %sub2107, %cond.false.2104 ]
  %div2110 = sdiv i64 %cond2109, 10
  %cmp2111 = icmp slt i64 %357, %div2110
  br i1 %cmp2111, label %cond.true.2221, label %lor.lhs.false.2207

cond.false.2113:                                  ; preds = %cond.true.2087
  br i1 false, label %cond.true.2114, label %cond.false.2115

cond.true.2114:                                   ; preds = %cond.false.2113
  br i1 false, label %cond.true.2221, label %lor.lhs.false.2207

cond.false.2115:                                  ; preds = %cond.false.2113
  %361 = load i64, i64* %length, align 8
  %add2116 = add nsw i64 0, %361
  %mul2117 = mul nsw i64 0, %add2116
  %sub2118 = sub nsw i64 %mul2117, 1
  %cmp2119 = icmp slt i64 %sub2118, 0
  br i1 %cmp2119, label %cond.true.2121, label %cond.false.2138

cond.true.2121:                                   ; preds = %cond.false.2115
  %362 = load i64, i64* %length, align 8
  %add2122 = add nsw i64 0, %362
  %mul2123 = mul nsw i64 0, %add2122
  %add2124 = add nsw i64 %mul2123, 0
  %neg2125 = xor i64 %add2124, -1
  %cmp2126 = icmp eq i64 %neg2125, -1
  %conv2127 = zext i1 %cmp2126 to i32
  %sub2128 = sub nsw i32 0, %conv2127
  %conv2129 = sext i32 %sub2128 to i64
  %363 = load i64, i64* %length, align 8
  %add2130 = add nsw i64 0, %363
  %mul2131 = mul nsw i64 0, %add2130
  %add2132 = add nsw i64 %mul2131, 1
  %shl2133 = shl i64 %add2132, 62
  %sub2134 = sub nsw i64 %shl2133, 1
  %mul2135 = mul nsw i64 %sub2134, 2
  %add2136 = add nsw i64 %mul2135, 1
  %sub2137 = sub nsw i64 %conv2129, %add2136
  br label %cond.end.2142

cond.false.2138:                                  ; preds = %cond.false.2115
  %364 = load i64, i64* %length, align 8
  %add2139 = add nsw i64 0, %364
  %mul2140 = mul nsw i64 0, %add2139
  %add2141 = add nsw i64 %mul2140, 0
  br label %cond.end.2142

cond.end.2142:                                    ; preds = %cond.false.2138, %cond.true.2121
  %cond2143 = phi i64 [ %sub2137, %cond.true.2121 ], [ %add2141, %cond.false.2138 ]
  %div2144 = sdiv i64 %cond2143, 10
  %365 = load i64, i64* %length, align 8
  %cmp2145 = icmp slt i64 %div2144, %365
  br i1 %cmp2145, label %cond.true.2221, label %lor.lhs.false.2207

cond.false.2147:                                  ; preds = %lor.lhs.false.2086
  br i1 false, label %cond.true.2148, label %cond.false.2149

cond.true.2148:                                   ; preds = %cond.false.2147
  br i1 false, label %cond.true.2221, label %lor.lhs.false.2207

cond.false.2149:                                  ; preds = %cond.false.2147
  %366 = load i64, i64* %length, align 8
  %cmp2150 = icmp slt i64 %366, 0
  br i1 %cmp2150, label %cond.true.2152, label %cond.false.2184

cond.true.2152:                                   ; preds = %cond.false.2149
  %367 = load i64, i64* %length, align 8
  %368 = load i64, i64* %length, align 8
  %add2153 = add nsw i64 0, %368
  %mul2154 = mul nsw i64 0, %add2153
  %sub2155 = sub nsw i64 %mul2154, 1
  %cmp2156 = icmp slt i64 %sub2155, 0
  br i1 %cmp2156, label %cond.true.2158, label %cond.false.2175

cond.true.2158:                                   ; preds = %cond.true.2152
  %369 = load i64, i64* %length, align 8
  %add2159 = add nsw i64 0, %369
  %mul2160 = mul nsw i64 0, %add2159
  %add2161 = add nsw i64 %mul2160, 0
  %neg2162 = xor i64 %add2161, -1
  %cmp2163 = icmp eq i64 %neg2162, -1
  %conv2164 = zext i1 %cmp2163 to i32
  %sub2165 = sub nsw i32 0, %conv2164
  %conv2166 = sext i32 %sub2165 to i64
  %370 = load i64, i64* %length, align 8
  %add2167 = add nsw i64 0, %370
  %mul2168 = mul nsw i64 0, %add2167
  %add2169 = add nsw i64 %mul2168, 1
  %shl2170 = shl i64 %add2169, 62
  %sub2171 = sub nsw i64 %shl2170, 1
  %mul2172 = mul nsw i64 %sub2171, 2
  %add2173 = add nsw i64 %mul2172, 1
  %sub2174 = sub nsw i64 %conv2166, %add2173
  br label %cond.end.2179

cond.false.2175:                                  ; preds = %cond.true.2152
  %371 = load i64, i64* %length, align 8
  %add2176 = add nsw i64 0, %371
  %mul2177 = mul nsw i64 0, %add2176
  %add2178 = add nsw i64 %mul2177, 0
  br label %cond.end.2179

cond.end.2179:                                    ; preds = %cond.false.2175, %cond.true.2158
  %cond2180 = phi i64 [ %sub2174, %cond.true.2158 ], [ %add2178, %cond.false.2175 ]
  %div2181 = sdiv i64 %cond2180, 10
  %cmp2182 = icmp slt i64 %367, %div2181
  br i1 %cmp2182, label %cond.true.2221, label %lor.lhs.false.2207

cond.false.2184:                                  ; preds = %cond.false.2149
  %372 = load i64, i64* %length, align 8
  %add2185 = add nsw i64 0, %372
  %mul2186 = mul nsw i64 0, %add2185
  %sub2187 = sub nsw i64 %mul2186, 1
  %cmp2188 = icmp slt i64 %sub2187, 0
  br i1 %cmp2188, label %cond.true.2190, label %cond.false.2198

cond.true.2190:                                   ; preds = %cond.false.2184
  %373 = load i64, i64* %length, align 8
  %add2191 = add nsw i64 0, %373
  %mul2192 = mul nsw i64 0, %add2191
  %add2193 = add nsw i64 %mul2192, 1
  %shl2194 = shl i64 %add2193, 62
  %sub2195 = sub nsw i64 %shl2194, 1
  %mul2196 = mul nsw i64 %sub2195, 2
  %add2197 = add nsw i64 %mul2196, 1
  br label %cond.end.2202

cond.false.2198:                                  ; preds = %cond.false.2184
  %374 = load i64, i64* %length, align 8
  %add2199 = add nsw i64 0, %374
  %mul2200 = mul nsw i64 0, %add2199
  %sub2201 = sub nsw i64 %mul2200, 1
  br label %cond.end.2202

cond.end.2202:                                    ; preds = %cond.false.2198, %cond.true.2190
  %cond2203 = phi i64 [ %add2197, %cond.true.2190 ], [ %sub2201, %cond.false.2198 ]
  %div2204 = sdiv i64 %cond2203, 10
  %375 = load i64, i64* %length, align 8
  %cmp2205 = icmp slt i64 %div2204, %375
  br i1 %cmp2205, label %cond.true.2221, label %lor.lhs.false.2207

lor.lhs.false.2207:                               ; preds = %cond.end.2202, %cond.end.2179, %cond.true.2148, %cond.end.2142, %cond.true.2114, %cond.end.2108
  %376 = load i64, i64* %length, align 8
  %mul2208 = mul nsw i64 %376, 10
  %mul2209 = mul nsw i64 0, %mul2208
  %sub2210 = sub nsw i64 %mul2209, 1
  %cmp2211 = icmp slt i64 %sub2210, 0
  br i1 %cmp2211, label %land.lhs.true.2213, label %lor.lhs.false.2217

land.lhs.true.2213:                               ; preds = %lor.lhs.false.2207
  %377 = load i64, i64* %length, align 8
  %mul2214 = mul nsw i64 %377, 10
  %cmp2215 = icmp slt i64 %mul2214, -9223372036854775808
  br i1 %cmp2215, label %cond.true.2221, label %lor.lhs.false.2217

lor.lhs.false.2217:                               ; preds = %land.lhs.true.2213, %lor.lhs.false.2207
  %378 = load i64, i64* %length, align 8
  %mul2218 = mul nsw i64 %378, 10
  %cmp2219 = icmp slt i64 9223372036854775807, %mul2218
  br i1 %cmp2219, label %cond.true.2221, label %cond.false.2233

cond.true.2221:                                   ; preds = %lor.lhs.false.2217, %land.lhs.true.2213, %cond.end.2202, %cond.end.2179, %cond.true.2148, %cond.end.2142, %cond.true.2114, %cond.end.2108, %land.lhs.true.2083
  %379 = load i64, i64* %length, align 8
  %mul2222 = mul i64 %379, 10
  %cmp2223 = icmp ule i64 %mul2222, 9223372036854775807
  br i1 %cmp2223, label %cond.true.2225, label %cond.false.2227

cond.true.2225:                                   ; preds = %cond.true.2221
  %380 = load i64, i64* %length, align 8
  %mul2226 = mul i64 %380, 10
  br label %cond.end.2231

cond.false.2227:                                  ; preds = %cond.true.2221
  %381 = load i64, i64* %length, align 8
  %mul2228 = mul i64 %381, 10
  %sub2229 = sub i64 %mul2228, -9223372036854775808
  %add2230 = add nsw i64 %sub2229, -9223372036854775808
  br label %cond.end.2231

cond.end.2231:                                    ; preds = %cond.false.2227, %cond.true.2225
  %cond2232 = phi i64 [ %mul2226, %cond.true.2225 ], [ %add2230, %cond.false.2227 ]
  store i64 %cond2232, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.2245

cond.false.2233:                                  ; preds = %lor.lhs.false.2217
  %382 = load i64, i64* %length, align 8
  %mul2234 = mul i64 %382, 10
  %cmp2235 = icmp ule i64 %mul2234, 9223372036854775807
  br i1 %cmp2235, label %cond.true.2237, label %cond.false.2239

cond.true.2237:                                   ; preds = %cond.false.2233
  %383 = load i64, i64* %length, align 8
  %mul2238 = mul i64 %383, 10
  br label %cond.end.2243

cond.false.2239:                                  ; preds = %cond.false.2233
  %384 = load i64, i64* %length, align 8
  %mul2240 = mul i64 %384, 10
  %sub2241 = sub i64 %mul2240, -9223372036854775808
  %add2242 = add nsw i64 %sub2241, -9223372036854775808
  br label %cond.end.2243

cond.end.2243:                                    ; preds = %cond.false.2239, %cond.true.2237
  %cond2244 = phi i64 [ %mul2238, %cond.true.2237 ], [ %add2242, %cond.false.2239 ]
  store i64 %cond2244, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.2245

lor.lhs.false.2245:                               ; preds = %cond.end.2243, %cond.end.2231, %cond.end.2050, %cond.end.2038, %cond.end.1856, %cond.end.1844, %cond.end.1663, %cond.end.1651, %cond.end.1467, %cond.end.1451, %cond.end.1266, %cond.end.1250, %cond.end.1038, %cond.end.1015, %cond.end.823, %cond.end.800, %cond.end.553, %cond.end.530, %cond.end.338, %cond.end.315
  br i1 false, label %cond.true.2246, label %cond.false.2792

cond.true.2246:                                   ; preds = %lor.lhs.false.2245
  br i1 false, label %cond.true.2247, label %cond.false.2552

cond.true.2247:                                   ; preds = %cond.true.2246
  %385 = load i32, i32* %c, align 4
  %sub2248 = sub nsw i32 %385, 48
  %conv2249 = trunc i32 %sub2248 to i8
  %conv2250 = sext i8 %conv2249 to i32
  %mul2251 = mul nsw i32 0, %conv2250
  %386 = load i64, i64* %length, align 8
  %conv2252 = trunc i64 %386 to i8
  %conv2253 = sext i8 %conv2252 to i32
  %add2254 = add nsw i32 %mul2251, %conv2253
  %mul2255 = mul nsw i32 0, %add2254
  %sub2256 = sub nsw i32 %mul2255, 1
  %cmp2257 = icmp slt i32 %sub2256, 0
  br i1 %cmp2257, label %cond.true.2259, label %cond.false.2287

cond.true.2259:                                   ; preds = %cond.true.2247
  %387 = load i32, i32* %c, align 4
  %sub2260 = sub nsw i32 %387, 48
  %conv2261 = trunc i32 %sub2260 to i8
  %conv2262 = sext i8 %conv2261 to i32
  %mul2263 = mul nsw i32 0, %conv2262
  %388 = load i64, i64* %length, align 8
  %conv2264 = trunc i64 %388 to i8
  %conv2265 = sext i8 %conv2264 to i32
  %add2266 = add nsw i32 %mul2263, %conv2265
  %mul2267 = mul nsw i32 0, %add2266
  %add2268 = add nsw i32 %mul2267, 0
  %neg2269 = xor i32 %add2268, -1
  %cmp2270 = icmp eq i32 %neg2269, -1
  %conv2271 = zext i1 %cmp2270 to i32
  %sub2272 = sub nsw i32 0, %conv2271
  %389 = load i32, i32* %c, align 4
  %sub2273 = sub nsw i32 %389, 48
  %conv2274 = trunc i32 %sub2273 to i8
  %conv2275 = sext i8 %conv2274 to i32
  %mul2276 = mul nsw i32 0, %conv2275
  %390 = load i64, i64* %length, align 8
  %conv2277 = trunc i64 %390 to i8
  %conv2278 = sext i8 %conv2277 to i32
  %add2279 = add nsw i32 %mul2276, %conv2278
  %mul2280 = mul nsw i32 0, %add2279
  %add2281 = add nsw i32 %mul2280, 1
  %shl2282 = shl i32 %add2281, 30
  %sub2283 = sub nsw i32 %shl2282, 1
  %mul2284 = mul nsw i32 %sub2283, 2
  %add2285 = add nsw i32 %mul2284, 1
  %sub2286 = sub nsw i32 %sub2272, %add2285
  br label %cond.end.2297

cond.false.2287:                                  ; preds = %cond.true.2247
  %391 = load i32, i32* %c, align 4
  %sub2288 = sub nsw i32 %391, 48
  %conv2289 = trunc i32 %sub2288 to i8
  %conv2290 = sext i8 %conv2289 to i32
  %mul2291 = mul nsw i32 0, %conv2290
  %392 = load i64, i64* %length, align 8
  %conv2292 = trunc i64 %392 to i8
  %conv2293 = sext i8 %conv2292 to i32
  %add2294 = add nsw i32 %mul2291, %conv2293
  %mul2295 = mul nsw i32 0, %add2294
  %add2296 = add nsw i32 %mul2295, 0
  br label %cond.end.2297

cond.end.2297:                                    ; preds = %cond.false.2287, %cond.true.2259
  %cond2298 = phi i32 [ %sub2286, %cond.true.2259 ], [ %add2296, %cond.false.2287 ]
  %cmp2299 = icmp slt i32 %cond2298, 0
  br i1 %cmp2299, label %cond.true.2301, label %cond.false.2413

cond.true.2301:                                   ; preds = %cond.end.2297
  %393 = load i32, i32* %c, align 4
  %sub2302 = sub nsw i32 %393, 48
  %conv2303 = trunc i32 %sub2302 to i8
  %conv2304 = sext i8 %conv2303 to i32
  %cmp2305 = icmp slt i32 %conv2304, 0
  br i1 %cmp2305, label %cond.true.2307, label %cond.false.2367

cond.true.2307:                                   ; preds = %cond.true.2301
  %394 = load i64, i64* %length, align 8
  %conv2308 = trunc i64 %394 to i8
  %conv2309 = sext i8 %conv2308 to i32
  %395 = load i32, i32* %c, align 4
  %sub2310 = sub nsw i32 %395, 48
  %conv2311 = trunc i32 %sub2310 to i8
  %conv2312 = sext i8 %conv2311 to i32
  %mul2313 = mul nsw i32 0, %conv2312
  %396 = load i64, i64* %length, align 8
  %conv2314 = trunc i64 %396 to i8
  %conv2315 = sext i8 %conv2314 to i32
  %add2316 = add nsw i32 %mul2313, %conv2315
  %mul2317 = mul nsw i32 0, %add2316
  %sub2318 = sub nsw i32 %mul2317, 1
  %cmp2319 = icmp slt i32 %sub2318, 0
  br i1 %cmp2319, label %cond.true.2321, label %cond.false.2349

cond.true.2321:                                   ; preds = %cond.true.2307
  %397 = load i32, i32* %c, align 4
  %sub2322 = sub nsw i32 %397, 48
  %conv2323 = trunc i32 %sub2322 to i8
  %conv2324 = sext i8 %conv2323 to i32
  %mul2325 = mul nsw i32 0, %conv2324
  %398 = load i64, i64* %length, align 8
  %conv2326 = trunc i64 %398 to i8
  %conv2327 = sext i8 %conv2326 to i32
  %add2328 = add nsw i32 %mul2325, %conv2327
  %mul2329 = mul nsw i32 0, %add2328
  %add2330 = add nsw i32 %mul2329, 0
  %neg2331 = xor i32 %add2330, -1
  %cmp2332 = icmp eq i32 %neg2331, -1
  %conv2333 = zext i1 %cmp2332 to i32
  %sub2334 = sub nsw i32 0, %conv2333
  %399 = load i32, i32* %c, align 4
  %sub2335 = sub nsw i32 %399, 48
  %conv2336 = trunc i32 %sub2335 to i8
  %conv2337 = sext i8 %conv2336 to i32
  %mul2338 = mul nsw i32 0, %conv2337
  %400 = load i64, i64* %length, align 8
  %conv2339 = trunc i64 %400 to i8
  %conv2340 = sext i8 %conv2339 to i32
  %add2341 = add nsw i32 %mul2338, %conv2340
  %mul2342 = mul nsw i32 0, %add2341
  %add2343 = add nsw i32 %mul2342, 1
  %shl2344 = shl i32 %add2343, 30
  %sub2345 = sub nsw i32 %shl2344, 1
  %mul2346 = mul nsw i32 %sub2345, 2
  %add2347 = add nsw i32 %mul2346, 1
  %sub2348 = sub nsw i32 %sub2334, %add2347
  br label %cond.end.2359

cond.false.2349:                                  ; preds = %cond.true.2307
  %401 = load i32, i32* %c, align 4
  %sub2350 = sub nsw i32 %401, 48
  %conv2351 = trunc i32 %sub2350 to i8
  %conv2352 = sext i8 %conv2351 to i32
  %mul2353 = mul nsw i32 0, %conv2352
  %402 = load i64, i64* %length, align 8
  %conv2354 = trunc i64 %402 to i8
  %conv2355 = sext i8 %conv2354 to i32
  %add2356 = add nsw i32 %mul2353, %conv2355
  %mul2357 = mul nsw i32 0, %add2356
  %add2358 = add nsw i32 %mul2357, 0
  br label %cond.end.2359

cond.end.2359:                                    ; preds = %cond.false.2349, %cond.true.2321
  %cond2360 = phi i32 [ %sub2348, %cond.true.2321 ], [ %add2358, %cond.false.2349 ]
  %403 = load i32, i32* %c, align 4
  %sub2361 = sub nsw i32 %403, 48
  %conv2362 = trunc i32 %sub2361 to i8
  %conv2363 = sext i8 %conv2362 to i32
  %sub2364 = sub nsw i32 %cond2360, %conv2363
  %cmp2365 = icmp slt i32 %conv2309, %sub2364
  br i1 %cmp2365, label %cond.true.2488, label %lor.lhs.false.2459

cond.false.2367:                                  ; preds = %cond.true.2301
  %404 = load i32, i32* %c, align 4
  %sub2368 = sub nsw i32 %404, 48
  %conv2369 = trunc i32 %sub2368 to i8
  %conv2370 = sext i8 %conv2369 to i32
  %mul2371 = mul nsw i32 0, %conv2370
  %405 = load i64, i64* %length, align 8
  %conv2372 = trunc i64 %405 to i8
  %conv2373 = sext i8 %conv2372 to i32
  %add2374 = add nsw i32 %mul2371, %conv2373
  %mul2375 = mul nsw i32 0, %add2374
  %sub2376 = sub nsw i32 %mul2375, 1
  %cmp2377 = icmp slt i32 %sub2376, 0
  br i1 %cmp2377, label %cond.true.2379, label %cond.false.2393

cond.true.2379:                                   ; preds = %cond.false.2367
  %406 = load i32, i32* %c, align 4
  %sub2380 = sub nsw i32 %406, 48
  %conv2381 = trunc i32 %sub2380 to i8
  %conv2382 = sext i8 %conv2381 to i32
  %mul2383 = mul nsw i32 0, %conv2382
  %407 = load i64, i64* %length, align 8
  %conv2384 = trunc i64 %407 to i8
  %conv2385 = sext i8 %conv2384 to i32
  %add2386 = add nsw i32 %mul2383, %conv2385
  %mul2387 = mul nsw i32 0, %add2386
  %add2388 = add nsw i32 %mul2387, 1
  %shl2389 = shl i32 %add2388, 30
  %sub2390 = sub nsw i32 %shl2389, 1
  %mul2391 = mul nsw i32 %sub2390, 2
  %add2392 = add nsw i32 %mul2391, 1
  br label %cond.end.2403

cond.false.2393:                                  ; preds = %cond.false.2367
  %408 = load i32, i32* %c, align 4
  %sub2394 = sub nsw i32 %408, 48
  %conv2395 = trunc i32 %sub2394 to i8
  %conv2396 = sext i8 %conv2395 to i32
  %mul2397 = mul nsw i32 0, %conv2396
  %409 = load i64, i64* %length, align 8
  %conv2398 = trunc i64 %409 to i8
  %conv2399 = sext i8 %conv2398 to i32
  %add2400 = add nsw i32 %mul2397, %conv2399
  %mul2401 = mul nsw i32 0, %add2400
  %sub2402 = sub nsw i32 %mul2401, 1
  br label %cond.end.2403

cond.end.2403:                                    ; preds = %cond.false.2393, %cond.true.2379
  %cond2404 = phi i32 [ %add2392, %cond.true.2379 ], [ %sub2402, %cond.false.2393 ]
  %410 = load i32, i32* %c, align 4
  %sub2405 = sub nsw i32 %410, 48
  %conv2406 = trunc i32 %sub2405 to i8
  %conv2407 = sext i8 %conv2406 to i32
  %sub2408 = sub nsw i32 %cond2404, %conv2407
  %411 = load i64, i64* %length, align 8
  %conv2409 = trunc i64 %411 to i8
  %conv2410 = sext i8 %conv2409 to i32
  %cmp2411 = icmp slt i32 %sub2408, %conv2410
  br i1 %cmp2411, label %cond.true.2488, label %lor.lhs.false.2459

cond.false.2413:                                  ; preds = %cond.end.2297
  %412 = load i64, i64* %length, align 8
  %conv2414 = trunc i64 %412 to i8
  %conv2415 = sext i8 %conv2414 to i32
  %cmp2416 = icmp slt i32 %conv2415, 0
  br i1 %cmp2416, label %cond.true.2418, label %cond.false.2430

cond.true.2418:                                   ; preds = %cond.false.2413
  %413 = load i32, i32* %c, align 4
  %sub2419 = sub nsw i32 %413, 48
  %conv2420 = trunc i32 %sub2419 to i8
  %conv2421 = sext i8 %conv2420 to i32
  %414 = load i64, i64* %length, align 8
  %conv2422 = trunc i64 %414 to i8
  %conv2423 = sext i8 %conv2422 to i32
  %415 = load i32, i32* %c, align 4
  %sub2424 = sub nsw i32 %415, 48
  %conv2425 = trunc i32 %sub2424 to i8
  %conv2426 = sext i8 %conv2425 to i32
  %add2427 = add nsw i32 %conv2423, %conv2426
  %cmp2428 = icmp sle i32 %conv2421, %add2427
  br i1 %cmp2428, label %cond.true.2488, label %lor.lhs.false.2459

cond.false.2430:                                  ; preds = %cond.false.2413
  %416 = load i32, i32* %c, align 4
  %sub2431 = sub nsw i32 %416, 48
  %conv2432 = trunc i32 %sub2431 to i8
  %conv2433 = sext i8 %conv2432 to i32
  %cmp2434 = icmp slt i32 %conv2433, 0
  br i1 %cmp2434, label %cond.true.2436, label %cond.false.2447

cond.true.2436:                                   ; preds = %cond.false.2430
  %417 = load i64, i64* %length, align 8
  %conv2437 = trunc i64 %417 to i8
  %conv2438 = sext i8 %conv2437 to i32
  %418 = load i64, i64* %length, align 8
  %conv2439 = trunc i64 %418 to i8
  %conv2440 = sext i8 %conv2439 to i32
  %419 = load i32, i32* %c, align 4
  %sub2441 = sub nsw i32 %419, 48
  %conv2442 = trunc i32 %sub2441 to i8
  %conv2443 = sext i8 %conv2442 to i32
  %add2444 = add nsw i32 %conv2440, %conv2443
  %cmp2445 = icmp sle i32 %conv2438, %add2444
  br i1 %cmp2445, label %cond.true.2488, label %lor.lhs.false.2459

cond.false.2447:                                  ; preds = %cond.false.2430
  %420 = load i64, i64* %length, align 8
  %conv2448 = trunc i64 %420 to i8
  %conv2449 = sext i8 %conv2448 to i32
  %421 = load i32, i32* %c, align 4
  %sub2450 = sub nsw i32 %421, 48
  %conv2451 = trunc i32 %sub2450 to i8
  %conv2452 = sext i8 %conv2451 to i32
  %add2453 = add nsw i32 %conv2449, %conv2452
  %422 = load i32, i32* %c, align 4
  %sub2454 = sub nsw i32 %422, 48
  %conv2455 = trunc i32 %sub2454 to i8
  %conv2456 = sext i8 %conv2455 to i32
  %cmp2457 = icmp slt i32 %add2453, %conv2456
  br i1 %cmp2457, label %cond.true.2488, label %lor.lhs.false.2459

lor.lhs.false.2459:                               ; preds = %cond.false.2447, %cond.true.2436, %cond.true.2418, %cond.end.2403, %cond.end.2359
  %423 = load i64, i64* %length, align 8
  %conv2460 = trunc i64 %423 to i8
  %conv2461 = sext i8 %conv2460 to i32
  %424 = load i32, i32* %c, align 4
  %sub2462 = sub nsw i32 %424, 48
  %conv2463 = trunc i32 %sub2462 to i8
  %conv2464 = sext i8 %conv2463 to i32
  %add2465 = add nsw i32 %conv2461, %conv2464
  %mul2466 = mul nsw i32 0, %add2465
  %sub2467 = sub nsw i32 %mul2466, 1
  %cmp2468 = icmp slt i32 %sub2467, 0
  br i1 %cmp2468, label %land.lhs.true.2470, label %lor.lhs.false.2479

land.lhs.true.2470:                               ; preds = %lor.lhs.false.2459
  %425 = load i64, i64* %length, align 8
  %conv2471 = trunc i64 %425 to i8
  %conv2472 = sext i8 %conv2471 to i32
  %426 = load i32, i32* %c, align 4
  %sub2473 = sub nsw i32 %426, 48
  %conv2474 = trunc i32 %sub2473 to i8
  %conv2475 = sext i8 %conv2474 to i32
  %add2476 = add nsw i32 %conv2472, %conv2475
  %cmp2477 = icmp slt i32 %add2476, -128
  br i1 %cmp2477, label %cond.true.2488, label %lor.lhs.false.2479

lor.lhs.false.2479:                               ; preds = %land.lhs.true.2470, %lor.lhs.false.2459
  %427 = load i64, i64* %length, align 8
  %conv2480 = trunc i64 %427 to i8
  %conv2481 = sext i8 %conv2480 to i32
  %428 = load i32, i32* %c, align 4
  %sub2482 = sub nsw i32 %428, 48
  %conv2483 = trunc i32 %sub2482 to i8
  %conv2484 = sext i8 %conv2483 to i32
  %add2485 = add nsw i32 %conv2481, %conv2484
  %cmp2486 = icmp slt i32 127, %add2485
  br i1 %cmp2486, label %cond.true.2488, label %cond.false.2520

cond.true.2488:                                   ; preds = %lor.lhs.false.2479, %land.lhs.true.2470, %cond.false.2447, %cond.true.2436, %cond.true.2418, %cond.end.2403, %cond.end.2359
  %429 = load i64, i64* %length, align 8
  %conv2489 = trunc i64 %429 to i8
  %conv2490 = zext i8 %conv2489 to i32
  %430 = load i32, i32* %c, align 4
  %sub2491 = sub nsw i32 %430, 48
  %conv2492 = trunc i32 %sub2491 to i8
  %conv2493 = zext i8 %conv2492 to i32
  %add2494 = add nsw i32 %conv2490, %conv2493
  %cmp2495 = icmp sle i32 %add2494, 127
  br i1 %cmp2495, label %cond.true.2497, label %cond.false.2506

cond.true.2497:                                   ; preds = %cond.true.2488
  %431 = load i64, i64* %length, align 8
  %conv2498 = trunc i64 %431 to i8
  %conv2499 = zext i8 %conv2498 to i32
  %432 = load i32, i32* %c, align 4
  %sub2500 = sub nsw i32 %432, 48
  %conv2501 = trunc i32 %sub2500 to i8
  %conv2502 = zext i8 %conv2501 to i32
  %add2503 = add nsw i32 %conv2499, %conv2502
  %conv2504 = trunc i32 %add2503 to i8
  %conv2505 = sext i8 %conv2504 to i32
  br label %cond.end.2517

cond.false.2506:                                  ; preds = %cond.true.2488
  %433 = load i64, i64* %length, align 8
  %conv2507 = trunc i64 %433 to i8
  %conv2508 = zext i8 %conv2507 to i32
  %434 = load i32, i32* %c, align 4
  %sub2509 = sub nsw i32 %434, 48
  %conv2510 = trunc i32 %sub2509 to i8
  %conv2511 = zext i8 %conv2510 to i32
  %add2512 = add nsw i32 %conv2508, %conv2511
  %sub2513 = sub nsw i32 %add2512, -128
  %conv2514 = trunc i32 %sub2513 to i8
  %conv2515 = sext i8 %conv2514 to i32
  %add2516 = add nsw i32 %conv2515, -128
  br label %cond.end.2517

cond.end.2517:                                    ; preds = %cond.false.2506, %cond.true.2497
  %cond2518 = phi i32 [ %conv2505, %cond.true.2497 ], [ %add2516, %cond.false.2506 ]
  %conv2519 = sext i32 %cond2518 to i64
  store i64 %conv2519, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.2520:                                  ; preds = %lor.lhs.false.2479
  %435 = load i64, i64* %length, align 8
  %conv2521 = trunc i64 %435 to i8
  %conv2522 = zext i8 %conv2521 to i32
  %436 = load i32, i32* %c, align 4
  %sub2523 = sub nsw i32 %436, 48
  %conv2524 = trunc i32 %sub2523 to i8
  %conv2525 = zext i8 %conv2524 to i32
  %add2526 = add nsw i32 %conv2522, %conv2525
  %cmp2527 = icmp sle i32 %add2526, 127
  br i1 %cmp2527, label %cond.true.2529, label %cond.false.2538

cond.true.2529:                                   ; preds = %cond.false.2520
  %437 = load i64, i64* %length, align 8
  %conv2530 = trunc i64 %437 to i8
  %conv2531 = zext i8 %conv2530 to i32
  %438 = load i32, i32* %c, align 4
  %sub2532 = sub nsw i32 %438, 48
  %conv2533 = trunc i32 %sub2532 to i8
  %conv2534 = zext i8 %conv2533 to i32
  %add2535 = add nsw i32 %conv2531, %conv2534
  %conv2536 = trunc i32 %add2535 to i8
  %conv2537 = sext i8 %conv2536 to i32
  br label %cond.end.2549

cond.false.2538:                                  ; preds = %cond.false.2520
  %439 = load i64, i64* %length, align 8
  %conv2539 = trunc i64 %439 to i8
  %conv2540 = zext i8 %conv2539 to i32
  %440 = load i32, i32* %c, align 4
  %sub2541 = sub nsw i32 %440, 48
  %conv2542 = trunc i32 %sub2541 to i8
  %conv2543 = zext i8 %conv2542 to i32
  %add2544 = add nsw i32 %conv2540, %conv2543
  %sub2545 = sub nsw i32 %add2544, -128
  %conv2546 = trunc i32 %sub2545 to i8
  %conv2547 = sext i8 %conv2546 to i32
  %add2548 = add nsw i32 %conv2547, -128
  br label %cond.end.2549

cond.end.2549:                                    ; preds = %cond.false.2538, %cond.true.2529
  %cond2550 = phi i32 [ %conv2537, %cond.true.2529 ], [ %add2548, %cond.false.2538 ]
  %conv2551 = sext i32 %cond2550 to i64
  store i64 %conv2551, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

cond.false.2552:                                  ; preds = %cond.true.2246
  %441 = load i32, i32* %c, align 4
  %sub2553 = sub nsw i32 %441, 48
  %mul2554 = mul nsw i32 0, %sub2553
  %conv2555 = sext i32 %mul2554 to i64
  %442 = load i64, i64* %length, align 8
  %add2556 = add nsw i64 %conv2555, %442
  %mul2557 = mul nsw i64 0, %add2556
  %sub2558 = sub nsw i64 %mul2557, 1
  %cmp2559 = icmp slt i64 %sub2558, 0
  br i1 %cmp2559, label %cond.true.2561, label %cond.false.2584

cond.true.2561:                                   ; preds = %cond.false.2552
  %443 = load i32, i32* %c, align 4
  %sub2562 = sub nsw i32 %443, 48
  %mul2563 = mul nsw i32 0, %sub2562
  %conv2564 = sext i32 %mul2563 to i64
  %444 = load i64, i64* %length, align 8
  %add2565 = add nsw i64 %conv2564, %444
  %mul2566 = mul nsw i64 0, %add2565
  %add2567 = add nsw i64 %mul2566, 0
  %neg2568 = xor i64 %add2567, -1
  %cmp2569 = icmp eq i64 %neg2568, -1
  %conv2570 = zext i1 %cmp2569 to i32
  %sub2571 = sub nsw i32 0, %conv2570
  %conv2572 = sext i32 %sub2571 to i64
  %445 = load i32, i32* %c, align 4
  %sub2573 = sub nsw i32 %445, 48
  %mul2574 = mul nsw i32 0, %sub2573
  %conv2575 = sext i32 %mul2574 to i64
  %446 = load i64, i64* %length, align 8
  %add2576 = add nsw i64 %conv2575, %446
  %mul2577 = mul nsw i64 0, %add2576
  %add2578 = add nsw i64 %mul2577, 1
  %shl2579 = shl i64 %add2578, 62
  %sub2580 = sub nsw i64 %shl2579, 1
  %mul2581 = mul nsw i64 %sub2580, 2
  %add2582 = add nsw i64 %mul2581, 1
  %sub2583 = sub nsw i64 %conv2572, %add2582
  br label %cond.end.2591

cond.false.2584:                                  ; preds = %cond.false.2552
  %447 = load i32, i32* %c, align 4
  %sub2585 = sub nsw i32 %447, 48
  %mul2586 = mul nsw i32 0, %sub2585
  %conv2587 = sext i32 %mul2586 to i64
  %448 = load i64, i64* %length, align 8
  %add2588 = add nsw i64 %conv2587, %448
  %mul2589 = mul nsw i64 0, %add2588
  %add2590 = add nsw i64 %mul2589, 0
  br label %cond.end.2591

cond.end.2591:                                    ; preds = %cond.false.2584, %cond.true.2561
  %cond2592 = phi i64 [ %sub2583, %cond.true.2561 ], [ %add2590, %cond.false.2584 ]
  %cmp2593 = icmp slt i64 %cond2592, 0
  br i1 %cmp2593, label %cond.true.2595, label %cond.false.2679

cond.true.2595:                                   ; preds = %cond.end.2591
  %449 = load i32, i32* %c, align 4
  %sub2596 = sub nsw i32 %449, 48
  %cmp2597 = icmp slt i32 %sub2596, 0
  br i1 %cmp2597, label %cond.true.2599, label %cond.false.2645

cond.true.2599:                                   ; preds = %cond.true.2595
  %450 = load i64, i64* %length, align 8
  %451 = load i32, i32* %c, align 4
  %sub2600 = sub nsw i32 %451, 48
  %mul2601 = mul nsw i32 0, %sub2600
  %conv2602 = sext i32 %mul2601 to i64
  %452 = load i64, i64* %length, align 8
  %add2603 = add nsw i64 %conv2602, %452
  %mul2604 = mul nsw i64 0, %add2603
  %sub2605 = sub nsw i64 %mul2604, 1
  %cmp2606 = icmp slt i64 %sub2605, 0
  br i1 %cmp2606, label %cond.true.2608, label %cond.false.2631

cond.true.2608:                                   ; preds = %cond.true.2599
  %453 = load i32, i32* %c, align 4
  %sub2609 = sub nsw i32 %453, 48
  %mul2610 = mul nsw i32 0, %sub2609
  %conv2611 = sext i32 %mul2610 to i64
  %454 = load i64, i64* %length, align 8
  %add2612 = add nsw i64 %conv2611, %454
  %mul2613 = mul nsw i64 0, %add2612
  %add2614 = add nsw i64 %mul2613, 0
  %neg2615 = xor i64 %add2614, -1
  %cmp2616 = icmp eq i64 %neg2615, -1
  %conv2617 = zext i1 %cmp2616 to i32
  %sub2618 = sub nsw i32 0, %conv2617
  %conv2619 = sext i32 %sub2618 to i64
  %455 = load i32, i32* %c, align 4
  %sub2620 = sub nsw i32 %455, 48
  %mul2621 = mul nsw i32 0, %sub2620
  %conv2622 = sext i32 %mul2621 to i64
  %456 = load i64, i64* %length, align 8
  %add2623 = add nsw i64 %conv2622, %456
  %mul2624 = mul nsw i64 0, %add2623
  %add2625 = add nsw i64 %mul2624, 1
  %shl2626 = shl i64 %add2625, 62
  %sub2627 = sub nsw i64 %shl2626, 1
  %mul2628 = mul nsw i64 %sub2627, 2
  %add2629 = add nsw i64 %mul2628, 1
  %sub2630 = sub nsw i64 %conv2619, %add2629
  br label %cond.end.2638

cond.false.2631:                                  ; preds = %cond.true.2599
  %457 = load i32, i32* %c, align 4
  %sub2632 = sub nsw i32 %457, 48
  %mul2633 = mul nsw i32 0, %sub2632
  %conv2634 = sext i32 %mul2633 to i64
  %458 = load i64, i64* %length, align 8
  %add2635 = add nsw i64 %conv2634, %458
  %mul2636 = mul nsw i64 0, %add2635
  %add2637 = add nsw i64 %mul2636, 0
  br label %cond.end.2638

cond.end.2638:                                    ; preds = %cond.false.2631, %cond.true.2608
  %cond2639 = phi i64 [ %sub2630, %cond.true.2608 ], [ %add2637, %cond.false.2631 ]
  %459 = load i32, i32* %c, align 4
  %sub2640 = sub nsw i32 %459, 48
  %conv2641 = sext i32 %sub2640 to i64
  %sub2642 = sub nsw i64 %cond2639, %conv2641
  %cmp2643 = icmp slt i64 %450, %sub2642
  br i1 %cmp2643, label %cond.true.2728, label %lor.lhs.false.2708

cond.false.2645:                                  ; preds = %cond.true.2595
  %460 = load i32, i32* %c, align 4
  %sub2646 = sub nsw i32 %460, 48
  %mul2647 = mul nsw i32 0, %sub2646
  %conv2648 = sext i32 %mul2647 to i64
  %461 = load i64, i64* %length, align 8
  %add2649 = add nsw i64 %conv2648, %461
  %mul2650 = mul nsw i64 0, %add2649
  %sub2651 = sub nsw i64 %mul2650, 1
  %cmp2652 = icmp slt i64 %sub2651, 0
  br i1 %cmp2652, label %cond.true.2654, label %cond.false.2665

cond.true.2654:                                   ; preds = %cond.false.2645
  %462 = load i32, i32* %c, align 4
  %sub2655 = sub nsw i32 %462, 48
  %mul2656 = mul nsw i32 0, %sub2655
  %conv2657 = sext i32 %mul2656 to i64
  %463 = load i64, i64* %length, align 8
  %add2658 = add nsw i64 %conv2657, %463
  %mul2659 = mul nsw i64 0, %add2658
  %add2660 = add nsw i64 %mul2659, 1
  %shl2661 = shl i64 %add2660, 62
  %sub2662 = sub nsw i64 %shl2661, 1
  %mul2663 = mul nsw i64 %sub2662, 2
  %add2664 = add nsw i64 %mul2663, 1
  br label %cond.end.2672

cond.false.2665:                                  ; preds = %cond.false.2645
  %464 = load i32, i32* %c, align 4
  %sub2666 = sub nsw i32 %464, 48
  %mul2667 = mul nsw i32 0, %sub2666
  %conv2668 = sext i32 %mul2667 to i64
  %465 = load i64, i64* %length, align 8
  %add2669 = add nsw i64 %conv2668, %465
  %mul2670 = mul nsw i64 0, %add2669
  %sub2671 = sub nsw i64 %mul2670, 1
  br label %cond.end.2672

cond.end.2672:                                    ; preds = %cond.false.2665, %cond.true.2654
  %cond2673 = phi i64 [ %add2664, %cond.true.2654 ], [ %sub2671, %cond.false.2665 ]
  %466 = load i32, i32* %c, align 4
  %sub2674 = sub nsw i32 %466, 48
  %conv2675 = sext i32 %sub2674 to i64
  %sub2676 = sub nsw i64 %cond2673, %conv2675
  %467 = load i64, i64* %length, align 8
  %cmp2677 = icmp slt i64 %sub2676, %467
  br i1 %cmp2677, label %cond.true.2728, label %lor.lhs.false.2708

cond.false.2679:                                  ; preds = %cond.end.2591
  %468 = load i64, i64* %length, align 8
  %cmp2680 = icmp slt i64 %468, 0
  br i1 %cmp2680, label %cond.true.2682, label %cond.false.2690

cond.true.2682:                                   ; preds = %cond.false.2679
  %469 = load i32, i32* %c, align 4
  %sub2683 = sub nsw i32 %469, 48
  %conv2684 = sext i32 %sub2683 to i64
  %470 = load i64, i64* %length, align 8
  %471 = load i32, i32* %c, align 4
  %sub2685 = sub nsw i32 %471, 48
  %conv2686 = sext i32 %sub2685 to i64
  %add2687 = add nsw i64 %470, %conv2686
  %cmp2688 = icmp sle i64 %conv2684, %add2687
  br i1 %cmp2688, label %cond.true.2728, label %lor.lhs.false.2708

cond.false.2690:                                  ; preds = %cond.false.2679
  %472 = load i32, i32* %c, align 4
  %sub2691 = sub nsw i32 %472, 48
  %cmp2692 = icmp slt i32 %sub2691, 0
  br i1 %cmp2692, label %cond.true.2694, label %cond.false.2700

cond.true.2694:                                   ; preds = %cond.false.2690
  %473 = load i64, i64* %length, align 8
  %474 = load i64, i64* %length, align 8
  %475 = load i32, i32* %c, align 4
  %sub2695 = sub nsw i32 %475, 48
  %conv2696 = sext i32 %sub2695 to i64
  %add2697 = add nsw i64 %474, %conv2696
  %cmp2698 = icmp sle i64 %473, %add2697
  br i1 %cmp2698, label %cond.true.2728, label %lor.lhs.false.2708

cond.false.2700:                                  ; preds = %cond.false.2690
  %476 = load i64, i64* %length, align 8
  %477 = load i32, i32* %c, align 4
  %sub2701 = sub nsw i32 %477, 48
  %conv2702 = sext i32 %sub2701 to i64
  %add2703 = add nsw i64 %476, %conv2702
  %478 = load i32, i32* %c, align 4
  %sub2704 = sub nsw i32 %478, 48
  %conv2705 = sext i32 %sub2704 to i64
  %cmp2706 = icmp slt i64 %add2703, %conv2705
  br i1 %cmp2706, label %cond.true.2728, label %lor.lhs.false.2708

lor.lhs.false.2708:                               ; preds = %cond.false.2700, %cond.true.2694, %cond.true.2682, %cond.end.2672, %cond.end.2638
  %479 = load i64, i64* %length, align 8
  %480 = load i32, i32* %c, align 4
  %sub2709 = sub nsw i32 %480, 48
  %conv2710 = sext i32 %sub2709 to i64
  %add2711 = add nsw i64 %479, %conv2710
  %mul2712 = mul nsw i64 0, %add2711
  %sub2713 = sub nsw i64 %mul2712, 1
  %cmp2714 = icmp slt i64 %sub2713, 0
  br i1 %cmp2714, label %land.lhs.true.2716, label %lor.lhs.false.2722

land.lhs.true.2716:                               ; preds = %lor.lhs.false.2708
  %481 = load i64, i64* %length, align 8
  %482 = load i32, i32* %c, align 4
  %sub2717 = sub nsw i32 %482, 48
  %conv2718 = sext i32 %sub2717 to i64
  %add2719 = add nsw i64 %481, %conv2718
  %cmp2720 = icmp slt i64 %add2719, -128
  br i1 %cmp2720, label %cond.true.2728, label %lor.lhs.false.2722

lor.lhs.false.2722:                               ; preds = %land.lhs.true.2716, %lor.lhs.false.2708
  %483 = load i64, i64* %length, align 8
  %484 = load i32, i32* %c, align 4
  %sub2723 = sub nsw i32 %484, 48
  %conv2724 = sext i32 %sub2723 to i64
  %add2725 = add nsw i64 %483, %conv2724
  %cmp2726 = icmp slt i64 127, %add2725
  br i1 %cmp2726, label %cond.true.2728, label %cond.false.2760

cond.true.2728:                                   ; preds = %lor.lhs.false.2722, %land.lhs.true.2716, %cond.false.2700, %cond.true.2694, %cond.true.2682, %cond.end.2672, %cond.end.2638
  %485 = load i64, i64* %length, align 8
  %conv2729 = trunc i64 %485 to i8
  %conv2730 = zext i8 %conv2729 to i32
  %486 = load i32, i32* %c, align 4
  %sub2731 = sub nsw i32 %486, 48
  %conv2732 = trunc i32 %sub2731 to i8
  %conv2733 = zext i8 %conv2732 to i32
  %add2734 = add nsw i32 %conv2730, %conv2733
  %cmp2735 = icmp sle i32 %add2734, 127
  br i1 %cmp2735, label %cond.true.2737, label %cond.false.2746

cond.true.2737:                                   ; preds = %cond.true.2728
  %487 = load i64, i64* %length, align 8
  %conv2738 = trunc i64 %487 to i8
  %conv2739 = zext i8 %conv2738 to i32
  %488 = load i32, i32* %c, align 4
  %sub2740 = sub nsw i32 %488, 48
  %conv2741 = trunc i32 %sub2740 to i8
  %conv2742 = zext i8 %conv2741 to i32
  %add2743 = add nsw i32 %conv2739, %conv2742
  %conv2744 = trunc i32 %add2743 to i8
  %conv2745 = sext i8 %conv2744 to i32
  br label %cond.end.2757

cond.false.2746:                                  ; preds = %cond.true.2728
  %489 = load i64, i64* %length, align 8
  %conv2747 = trunc i64 %489 to i8
  %conv2748 = zext i8 %conv2747 to i32
  %490 = load i32, i32* %c, align 4
  %sub2749 = sub nsw i32 %490, 48
  %conv2750 = trunc i32 %sub2749 to i8
  %conv2751 = zext i8 %conv2750 to i32
  %add2752 = add nsw i32 %conv2748, %conv2751
  %sub2753 = sub nsw i32 %add2752, -128
  %conv2754 = trunc i32 %sub2753 to i8
  %conv2755 = sext i8 %conv2754 to i32
  %add2756 = add nsw i32 %conv2755, -128
  br label %cond.end.2757

cond.end.2757:                                    ; preds = %cond.false.2746, %cond.true.2737
  %cond2758 = phi i32 [ %conv2745, %cond.true.2737 ], [ %add2756, %cond.false.2746 ]
  %conv2759 = sext i32 %cond2758 to i64
  store i64 %conv2759, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.2760:                                  ; preds = %lor.lhs.false.2722
  %491 = load i64, i64* %length, align 8
  %conv2761 = trunc i64 %491 to i8
  %conv2762 = zext i8 %conv2761 to i32
  %492 = load i32, i32* %c, align 4
  %sub2763 = sub nsw i32 %492, 48
  %conv2764 = trunc i32 %sub2763 to i8
  %conv2765 = zext i8 %conv2764 to i32
  %add2766 = add nsw i32 %conv2762, %conv2765
  %cmp2767 = icmp sle i32 %add2766, 127
  br i1 %cmp2767, label %cond.true.2769, label %cond.false.2778

cond.true.2769:                                   ; preds = %cond.false.2760
  %493 = load i64, i64* %length, align 8
  %conv2770 = trunc i64 %493 to i8
  %conv2771 = zext i8 %conv2770 to i32
  %494 = load i32, i32* %c, align 4
  %sub2772 = sub nsw i32 %494, 48
  %conv2773 = trunc i32 %sub2772 to i8
  %conv2774 = zext i8 %conv2773 to i32
  %add2775 = add nsw i32 %conv2771, %conv2774
  %conv2776 = trunc i32 %add2775 to i8
  %conv2777 = sext i8 %conv2776 to i32
  br label %cond.end.2789

cond.false.2778:                                  ; preds = %cond.false.2760
  %495 = load i64, i64* %length, align 8
  %conv2779 = trunc i64 %495 to i8
  %conv2780 = zext i8 %conv2779 to i32
  %496 = load i32, i32* %c, align 4
  %sub2781 = sub nsw i32 %496, 48
  %conv2782 = trunc i32 %sub2781 to i8
  %conv2783 = zext i8 %conv2782 to i32
  %add2784 = add nsw i32 %conv2780, %conv2783
  %sub2785 = sub nsw i32 %add2784, -128
  %conv2786 = trunc i32 %sub2785 to i8
  %conv2787 = sext i8 %conv2786 to i32
  %add2788 = add nsw i32 %conv2787, -128
  br label %cond.end.2789

cond.end.2789:                                    ; preds = %cond.false.2778, %cond.true.2769
  %cond2790 = phi i32 [ %conv2777, %cond.true.2769 ], [ %add2788, %cond.false.2778 ]
  %conv2791 = sext i32 %cond2790 to i64
  store i64 %conv2791, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

cond.false.2792:                                  ; preds = %lor.lhs.false.2245
  br i1 false, label %cond.true.2793, label %cond.false.3339

cond.true.2793:                                   ; preds = %cond.false.2792
  br i1 false, label %cond.true.2794, label %cond.false.3099

cond.true.2794:                                   ; preds = %cond.true.2793
  %497 = load i32, i32* %c, align 4
  %sub2795 = sub nsw i32 %497, 48
  %conv2796 = trunc i32 %sub2795 to i16
  %conv2797 = sext i16 %conv2796 to i32
  %mul2798 = mul nsw i32 0, %conv2797
  %498 = load i64, i64* %length, align 8
  %conv2799 = trunc i64 %498 to i16
  %conv2800 = sext i16 %conv2799 to i32
  %add2801 = add nsw i32 %mul2798, %conv2800
  %mul2802 = mul nsw i32 0, %add2801
  %sub2803 = sub nsw i32 %mul2802, 1
  %cmp2804 = icmp slt i32 %sub2803, 0
  br i1 %cmp2804, label %cond.true.2806, label %cond.false.2834

cond.true.2806:                                   ; preds = %cond.true.2794
  %499 = load i32, i32* %c, align 4
  %sub2807 = sub nsw i32 %499, 48
  %conv2808 = trunc i32 %sub2807 to i16
  %conv2809 = sext i16 %conv2808 to i32
  %mul2810 = mul nsw i32 0, %conv2809
  %500 = load i64, i64* %length, align 8
  %conv2811 = trunc i64 %500 to i16
  %conv2812 = sext i16 %conv2811 to i32
  %add2813 = add nsw i32 %mul2810, %conv2812
  %mul2814 = mul nsw i32 0, %add2813
  %add2815 = add nsw i32 %mul2814, 0
  %neg2816 = xor i32 %add2815, -1
  %cmp2817 = icmp eq i32 %neg2816, -1
  %conv2818 = zext i1 %cmp2817 to i32
  %sub2819 = sub nsw i32 0, %conv2818
  %501 = load i32, i32* %c, align 4
  %sub2820 = sub nsw i32 %501, 48
  %conv2821 = trunc i32 %sub2820 to i16
  %conv2822 = sext i16 %conv2821 to i32
  %mul2823 = mul nsw i32 0, %conv2822
  %502 = load i64, i64* %length, align 8
  %conv2824 = trunc i64 %502 to i16
  %conv2825 = sext i16 %conv2824 to i32
  %add2826 = add nsw i32 %mul2823, %conv2825
  %mul2827 = mul nsw i32 0, %add2826
  %add2828 = add nsw i32 %mul2827, 1
  %shl2829 = shl i32 %add2828, 30
  %sub2830 = sub nsw i32 %shl2829, 1
  %mul2831 = mul nsw i32 %sub2830, 2
  %add2832 = add nsw i32 %mul2831, 1
  %sub2833 = sub nsw i32 %sub2819, %add2832
  br label %cond.end.2844

cond.false.2834:                                  ; preds = %cond.true.2794
  %503 = load i32, i32* %c, align 4
  %sub2835 = sub nsw i32 %503, 48
  %conv2836 = trunc i32 %sub2835 to i16
  %conv2837 = sext i16 %conv2836 to i32
  %mul2838 = mul nsw i32 0, %conv2837
  %504 = load i64, i64* %length, align 8
  %conv2839 = trunc i64 %504 to i16
  %conv2840 = sext i16 %conv2839 to i32
  %add2841 = add nsw i32 %mul2838, %conv2840
  %mul2842 = mul nsw i32 0, %add2841
  %add2843 = add nsw i32 %mul2842, 0
  br label %cond.end.2844

cond.end.2844:                                    ; preds = %cond.false.2834, %cond.true.2806
  %cond2845 = phi i32 [ %sub2833, %cond.true.2806 ], [ %add2843, %cond.false.2834 ]
  %cmp2846 = icmp slt i32 %cond2845, 0
  br i1 %cmp2846, label %cond.true.2848, label %cond.false.2960

cond.true.2848:                                   ; preds = %cond.end.2844
  %505 = load i32, i32* %c, align 4
  %sub2849 = sub nsw i32 %505, 48
  %conv2850 = trunc i32 %sub2849 to i16
  %conv2851 = sext i16 %conv2850 to i32
  %cmp2852 = icmp slt i32 %conv2851, 0
  br i1 %cmp2852, label %cond.true.2854, label %cond.false.2914

cond.true.2854:                                   ; preds = %cond.true.2848
  %506 = load i64, i64* %length, align 8
  %conv2855 = trunc i64 %506 to i16
  %conv2856 = sext i16 %conv2855 to i32
  %507 = load i32, i32* %c, align 4
  %sub2857 = sub nsw i32 %507, 48
  %conv2858 = trunc i32 %sub2857 to i16
  %conv2859 = sext i16 %conv2858 to i32
  %mul2860 = mul nsw i32 0, %conv2859
  %508 = load i64, i64* %length, align 8
  %conv2861 = trunc i64 %508 to i16
  %conv2862 = sext i16 %conv2861 to i32
  %add2863 = add nsw i32 %mul2860, %conv2862
  %mul2864 = mul nsw i32 0, %add2863
  %sub2865 = sub nsw i32 %mul2864, 1
  %cmp2866 = icmp slt i32 %sub2865, 0
  br i1 %cmp2866, label %cond.true.2868, label %cond.false.2896

cond.true.2868:                                   ; preds = %cond.true.2854
  %509 = load i32, i32* %c, align 4
  %sub2869 = sub nsw i32 %509, 48
  %conv2870 = trunc i32 %sub2869 to i16
  %conv2871 = sext i16 %conv2870 to i32
  %mul2872 = mul nsw i32 0, %conv2871
  %510 = load i64, i64* %length, align 8
  %conv2873 = trunc i64 %510 to i16
  %conv2874 = sext i16 %conv2873 to i32
  %add2875 = add nsw i32 %mul2872, %conv2874
  %mul2876 = mul nsw i32 0, %add2875
  %add2877 = add nsw i32 %mul2876, 0
  %neg2878 = xor i32 %add2877, -1
  %cmp2879 = icmp eq i32 %neg2878, -1
  %conv2880 = zext i1 %cmp2879 to i32
  %sub2881 = sub nsw i32 0, %conv2880
  %511 = load i32, i32* %c, align 4
  %sub2882 = sub nsw i32 %511, 48
  %conv2883 = trunc i32 %sub2882 to i16
  %conv2884 = sext i16 %conv2883 to i32
  %mul2885 = mul nsw i32 0, %conv2884
  %512 = load i64, i64* %length, align 8
  %conv2886 = trunc i64 %512 to i16
  %conv2887 = sext i16 %conv2886 to i32
  %add2888 = add nsw i32 %mul2885, %conv2887
  %mul2889 = mul nsw i32 0, %add2888
  %add2890 = add nsw i32 %mul2889, 1
  %shl2891 = shl i32 %add2890, 30
  %sub2892 = sub nsw i32 %shl2891, 1
  %mul2893 = mul nsw i32 %sub2892, 2
  %add2894 = add nsw i32 %mul2893, 1
  %sub2895 = sub nsw i32 %sub2881, %add2894
  br label %cond.end.2906

cond.false.2896:                                  ; preds = %cond.true.2854
  %513 = load i32, i32* %c, align 4
  %sub2897 = sub nsw i32 %513, 48
  %conv2898 = trunc i32 %sub2897 to i16
  %conv2899 = sext i16 %conv2898 to i32
  %mul2900 = mul nsw i32 0, %conv2899
  %514 = load i64, i64* %length, align 8
  %conv2901 = trunc i64 %514 to i16
  %conv2902 = sext i16 %conv2901 to i32
  %add2903 = add nsw i32 %mul2900, %conv2902
  %mul2904 = mul nsw i32 0, %add2903
  %add2905 = add nsw i32 %mul2904, 0
  br label %cond.end.2906

cond.end.2906:                                    ; preds = %cond.false.2896, %cond.true.2868
  %cond2907 = phi i32 [ %sub2895, %cond.true.2868 ], [ %add2905, %cond.false.2896 ]
  %515 = load i32, i32* %c, align 4
  %sub2908 = sub nsw i32 %515, 48
  %conv2909 = trunc i32 %sub2908 to i16
  %conv2910 = sext i16 %conv2909 to i32
  %sub2911 = sub nsw i32 %cond2907, %conv2910
  %cmp2912 = icmp slt i32 %conv2856, %sub2911
  br i1 %cmp2912, label %cond.true.3035, label %lor.lhs.false.3006

cond.false.2914:                                  ; preds = %cond.true.2848
  %516 = load i32, i32* %c, align 4
  %sub2915 = sub nsw i32 %516, 48
  %conv2916 = trunc i32 %sub2915 to i16
  %conv2917 = sext i16 %conv2916 to i32
  %mul2918 = mul nsw i32 0, %conv2917
  %517 = load i64, i64* %length, align 8
  %conv2919 = trunc i64 %517 to i16
  %conv2920 = sext i16 %conv2919 to i32
  %add2921 = add nsw i32 %mul2918, %conv2920
  %mul2922 = mul nsw i32 0, %add2921
  %sub2923 = sub nsw i32 %mul2922, 1
  %cmp2924 = icmp slt i32 %sub2923, 0
  br i1 %cmp2924, label %cond.true.2926, label %cond.false.2940

cond.true.2926:                                   ; preds = %cond.false.2914
  %518 = load i32, i32* %c, align 4
  %sub2927 = sub nsw i32 %518, 48
  %conv2928 = trunc i32 %sub2927 to i16
  %conv2929 = sext i16 %conv2928 to i32
  %mul2930 = mul nsw i32 0, %conv2929
  %519 = load i64, i64* %length, align 8
  %conv2931 = trunc i64 %519 to i16
  %conv2932 = sext i16 %conv2931 to i32
  %add2933 = add nsw i32 %mul2930, %conv2932
  %mul2934 = mul nsw i32 0, %add2933
  %add2935 = add nsw i32 %mul2934, 1
  %shl2936 = shl i32 %add2935, 30
  %sub2937 = sub nsw i32 %shl2936, 1
  %mul2938 = mul nsw i32 %sub2937, 2
  %add2939 = add nsw i32 %mul2938, 1
  br label %cond.end.2950

cond.false.2940:                                  ; preds = %cond.false.2914
  %520 = load i32, i32* %c, align 4
  %sub2941 = sub nsw i32 %520, 48
  %conv2942 = trunc i32 %sub2941 to i16
  %conv2943 = sext i16 %conv2942 to i32
  %mul2944 = mul nsw i32 0, %conv2943
  %521 = load i64, i64* %length, align 8
  %conv2945 = trunc i64 %521 to i16
  %conv2946 = sext i16 %conv2945 to i32
  %add2947 = add nsw i32 %mul2944, %conv2946
  %mul2948 = mul nsw i32 0, %add2947
  %sub2949 = sub nsw i32 %mul2948, 1
  br label %cond.end.2950

cond.end.2950:                                    ; preds = %cond.false.2940, %cond.true.2926
  %cond2951 = phi i32 [ %add2939, %cond.true.2926 ], [ %sub2949, %cond.false.2940 ]
  %522 = load i32, i32* %c, align 4
  %sub2952 = sub nsw i32 %522, 48
  %conv2953 = trunc i32 %sub2952 to i16
  %conv2954 = sext i16 %conv2953 to i32
  %sub2955 = sub nsw i32 %cond2951, %conv2954
  %523 = load i64, i64* %length, align 8
  %conv2956 = trunc i64 %523 to i16
  %conv2957 = sext i16 %conv2956 to i32
  %cmp2958 = icmp slt i32 %sub2955, %conv2957
  br i1 %cmp2958, label %cond.true.3035, label %lor.lhs.false.3006

cond.false.2960:                                  ; preds = %cond.end.2844
  %524 = load i64, i64* %length, align 8
  %conv2961 = trunc i64 %524 to i16
  %conv2962 = sext i16 %conv2961 to i32
  %cmp2963 = icmp slt i32 %conv2962, 0
  br i1 %cmp2963, label %cond.true.2965, label %cond.false.2977

cond.true.2965:                                   ; preds = %cond.false.2960
  %525 = load i32, i32* %c, align 4
  %sub2966 = sub nsw i32 %525, 48
  %conv2967 = trunc i32 %sub2966 to i16
  %conv2968 = sext i16 %conv2967 to i32
  %526 = load i64, i64* %length, align 8
  %conv2969 = trunc i64 %526 to i16
  %conv2970 = sext i16 %conv2969 to i32
  %527 = load i32, i32* %c, align 4
  %sub2971 = sub nsw i32 %527, 48
  %conv2972 = trunc i32 %sub2971 to i16
  %conv2973 = sext i16 %conv2972 to i32
  %add2974 = add nsw i32 %conv2970, %conv2973
  %cmp2975 = icmp sle i32 %conv2968, %add2974
  br i1 %cmp2975, label %cond.true.3035, label %lor.lhs.false.3006

cond.false.2977:                                  ; preds = %cond.false.2960
  %528 = load i32, i32* %c, align 4
  %sub2978 = sub nsw i32 %528, 48
  %conv2979 = trunc i32 %sub2978 to i16
  %conv2980 = sext i16 %conv2979 to i32
  %cmp2981 = icmp slt i32 %conv2980, 0
  br i1 %cmp2981, label %cond.true.2983, label %cond.false.2994

cond.true.2983:                                   ; preds = %cond.false.2977
  %529 = load i64, i64* %length, align 8
  %conv2984 = trunc i64 %529 to i16
  %conv2985 = sext i16 %conv2984 to i32
  %530 = load i64, i64* %length, align 8
  %conv2986 = trunc i64 %530 to i16
  %conv2987 = sext i16 %conv2986 to i32
  %531 = load i32, i32* %c, align 4
  %sub2988 = sub nsw i32 %531, 48
  %conv2989 = trunc i32 %sub2988 to i16
  %conv2990 = sext i16 %conv2989 to i32
  %add2991 = add nsw i32 %conv2987, %conv2990
  %cmp2992 = icmp sle i32 %conv2985, %add2991
  br i1 %cmp2992, label %cond.true.3035, label %lor.lhs.false.3006

cond.false.2994:                                  ; preds = %cond.false.2977
  %532 = load i64, i64* %length, align 8
  %conv2995 = trunc i64 %532 to i16
  %conv2996 = sext i16 %conv2995 to i32
  %533 = load i32, i32* %c, align 4
  %sub2997 = sub nsw i32 %533, 48
  %conv2998 = trunc i32 %sub2997 to i16
  %conv2999 = sext i16 %conv2998 to i32
  %add3000 = add nsw i32 %conv2996, %conv2999
  %534 = load i32, i32* %c, align 4
  %sub3001 = sub nsw i32 %534, 48
  %conv3002 = trunc i32 %sub3001 to i16
  %conv3003 = sext i16 %conv3002 to i32
  %cmp3004 = icmp slt i32 %add3000, %conv3003
  br i1 %cmp3004, label %cond.true.3035, label %lor.lhs.false.3006

lor.lhs.false.3006:                               ; preds = %cond.false.2994, %cond.true.2983, %cond.true.2965, %cond.end.2950, %cond.end.2906
  %535 = load i64, i64* %length, align 8
  %conv3007 = trunc i64 %535 to i16
  %conv3008 = sext i16 %conv3007 to i32
  %536 = load i32, i32* %c, align 4
  %sub3009 = sub nsw i32 %536, 48
  %conv3010 = trunc i32 %sub3009 to i16
  %conv3011 = sext i16 %conv3010 to i32
  %add3012 = add nsw i32 %conv3008, %conv3011
  %mul3013 = mul nsw i32 0, %add3012
  %sub3014 = sub nsw i32 %mul3013, 1
  %cmp3015 = icmp slt i32 %sub3014, 0
  br i1 %cmp3015, label %land.lhs.true.3017, label %lor.lhs.false.3026

land.lhs.true.3017:                               ; preds = %lor.lhs.false.3006
  %537 = load i64, i64* %length, align 8
  %conv3018 = trunc i64 %537 to i16
  %conv3019 = sext i16 %conv3018 to i32
  %538 = load i32, i32* %c, align 4
  %sub3020 = sub nsw i32 %538, 48
  %conv3021 = trunc i32 %sub3020 to i16
  %conv3022 = sext i16 %conv3021 to i32
  %add3023 = add nsw i32 %conv3019, %conv3022
  %cmp3024 = icmp slt i32 %add3023, -32768
  br i1 %cmp3024, label %cond.true.3035, label %lor.lhs.false.3026

lor.lhs.false.3026:                               ; preds = %land.lhs.true.3017, %lor.lhs.false.3006
  %539 = load i64, i64* %length, align 8
  %conv3027 = trunc i64 %539 to i16
  %conv3028 = sext i16 %conv3027 to i32
  %540 = load i32, i32* %c, align 4
  %sub3029 = sub nsw i32 %540, 48
  %conv3030 = trunc i32 %sub3029 to i16
  %conv3031 = sext i16 %conv3030 to i32
  %add3032 = add nsw i32 %conv3028, %conv3031
  %cmp3033 = icmp slt i32 32767, %add3032
  br i1 %cmp3033, label %cond.true.3035, label %cond.false.3067

cond.true.3035:                                   ; preds = %lor.lhs.false.3026, %land.lhs.true.3017, %cond.false.2994, %cond.true.2983, %cond.true.2965, %cond.end.2950, %cond.end.2906
  %541 = load i64, i64* %length, align 8
  %conv3036 = trunc i64 %541 to i16
  %conv3037 = zext i16 %conv3036 to i32
  %542 = load i32, i32* %c, align 4
  %sub3038 = sub nsw i32 %542, 48
  %conv3039 = trunc i32 %sub3038 to i16
  %conv3040 = zext i16 %conv3039 to i32
  %add3041 = add nsw i32 %conv3037, %conv3040
  %cmp3042 = icmp sle i32 %add3041, 32767
  br i1 %cmp3042, label %cond.true.3044, label %cond.false.3053

cond.true.3044:                                   ; preds = %cond.true.3035
  %543 = load i64, i64* %length, align 8
  %conv3045 = trunc i64 %543 to i16
  %conv3046 = zext i16 %conv3045 to i32
  %544 = load i32, i32* %c, align 4
  %sub3047 = sub nsw i32 %544, 48
  %conv3048 = trunc i32 %sub3047 to i16
  %conv3049 = zext i16 %conv3048 to i32
  %add3050 = add nsw i32 %conv3046, %conv3049
  %conv3051 = trunc i32 %add3050 to i16
  %conv3052 = sext i16 %conv3051 to i32
  br label %cond.end.3064

cond.false.3053:                                  ; preds = %cond.true.3035
  %545 = load i64, i64* %length, align 8
  %conv3054 = trunc i64 %545 to i16
  %conv3055 = zext i16 %conv3054 to i32
  %546 = load i32, i32* %c, align 4
  %sub3056 = sub nsw i32 %546, 48
  %conv3057 = trunc i32 %sub3056 to i16
  %conv3058 = zext i16 %conv3057 to i32
  %add3059 = add nsw i32 %conv3055, %conv3058
  %sub3060 = sub nsw i32 %add3059, -32768
  %conv3061 = trunc i32 %sub3060 to i16
  %conv3062 = sext i16 %conv3061 to i32
  %add3063 = add nsw i32 %conv3062, -32768
  br label %cond.end.3064

cond.end.3064:                                    ; preds = %cond.false.3053, %cond.true.3044
  %cond3065 = phi i32 [ %conv3052, %cond.true.3044 ], [ %add3063, %cond.false.3053 ]
  %conv3066 = sext i32 %cond3065 to i64
  store i64 %conv3066, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3067:                                  ; preds = %lor.lhs.false.3026
  %547 = load i64, i64* %length, align 8
  %conv3068 = trunc i64 %547 to i16
  %conv3069 = zext i16 %conv3068 to i32
  %548 = load i32, i32* %c, align 4
  %sub3070 = sub nsw i32 %548, 48
  %conv3071 = trunc i32 %sub3070 to i16
  %conv3072 = zext i16 %conv3071 to i32
  %add3073 = add nsw i32 %conv3069, %conv3072
  %cmp3074 = icmp sle i32 %add3073, 32767
  br i1 %cmp3074, label %cond.true.3076, label %cond.false.3085

cond.true.3076:                                   ; preds = %cond.false.3067
  %549 = load i64, i64* %length, align 8
  %conv3077 = trunc i64 %549 to i16
  %conv3078 = zext i16 %conv3077 to i32
  %550 = load i32, i32* %c, align 4
  %sub3079 = sub nsw i32 %550, 48
  %conv3080 = trunc i32 %sub3079 to i16
  %conv3081 = zext i16 %conv3080 to i32
  %add3082 = add nsw i32 %conv3078, %conv3081
  %conv3083 = trunc i32 %add3082 to i16
  %conv3084 = sext i16 %conv3083 to i32
  br label %cond.end.3096

cond.false.3085:                                  ; preds = %cond.false.3067
  %551 = load i64, i64* %length, align 8
  %conv3086 = trunc i64 %551 to i16
  %conv3087 = zext i16 %conv3086 to i32
  %552 = load i32, i32* %c, align 4
  %sub3088 = sub nsw i32 %552, 48
  %conv3089 = trunc i32 %sub3088 to i16
  %conv3090 = zext i16 %conv3089 to i32
  %add3091 = add nsw i32 %conv3087, %conv3090
  %sub3092 = sub nsw i32 %add3091, -32768
  %conv3093 = trunc i32 %sub3092 to i16
  %conv3094 = sext i16 %conv3093 to i32
  %add3095 = add nsw i32 %conv3094, -32768
  br label %cond.end.3096

cond.end.3096:                                    ; preds = %cond.false.3085, %cond.true.3076
  %cond3097 = phi i32 [ %conv3084, %cond.true.3076 ], [ %add3095, %cond.false.3085 ]
  %conv3098 = sext i32 %cond3097 to i64
  store i64 %conv3098, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3099:                                  ; preds = %cond.true.2793
  %553 = load i32, i32* %c, align 4
  %sub3100 = sub nsw i32 %553, 48
  %mul3101 = mul nsw i32 0, %sub3100
  %conv3102 = sext i32 %mul3101 to i64
  %554 = load i64, i64* %length, align 8
  %add3103 = add nsw i64 %conv3102, %554
  %mul3104 = mul nsw i64 0, %add3103
  %sub3105 = sub nsw i64 %mul3104, 1
  %cmp3106 = icmp slt i64 %sub3105, 0
  br i1 %cmp3106, label %cond.true.3108, label %cond.false.3131

cond.true.3108:                                   ; preds = %cond.false.3099
  %555 = load i32, i32* %c, align 4
  %sub3109 = sub nsw i32 %555, 48
  %mul3110 = mul nsw i32 0, %sub3109
  %conv3111 = sext i32 %mul3110 to i64
  %556 = load i64, i64* %length, align 8
  %add3112 = add nsw i64 %conv3111, %556
  %mul3113 = mul nsw i64 0, %add3112
  %add3114 = add nsw i64 %mul3113, 0
  %neg3115 = xor i64 %add3114, -1
  %cmp3116 = icmp eq i64 %neg3115, -1
  %conv3117 = zext i1 %cmp3116 to i32
  %sub3118 = sub nsw i32 0, %conv3117
  %conv3119 = sext i32 %sub3118 to i64
  %557 = load i32, i32* %c, align 4
  %sub3120 = sub nsw i32 %557, 48
  %mul3121 = mul nsw i32 0, %sub3120
  %conv3122 = sext i32 %mul3121 to i64
  %558 = load i64, i64* %length, align 8
  %add3123 = add nsw i64 %conv3122, %558
  %mul3124 = mul nsw i64 0, %add3123
  %add3125 = add nsw i64 %mul3124, 1
  %shl3126 = shl i64 %add3125, 62
  %sub3127 = sub nsw i64 %shl3126, 1
  %mul3128 = mul nsw i64 %sub3127, 2
  %add3129 = add nsw i64 %mul3128, 1
  %sub3130 = sub nsw i64 %conv3119, %add3129
  br label %cond.end.3138

cond.false.3131:                                  ; preds = %cond.false.3099
  %559 = load i32, i32* %c, align 4
  %sub3132 = sub nsw i32 %559, 48
  %mul3133 = mul nsw i32 0, %sub3132
  %conv3134 = sext i32 %mul3133 to i64
  %560 = load i64, i64* %length, align 8
  %add3135 = add nsw i64 %conv3134, %560
  %mul3136 = mul nsw i64 0, %add3135
  %add3137 = add nsw i64 %mul3136, 0
  br label %cond.end.3138

cond.end.3138:                                    ; preds = %cond.false.3131, %cond.true.3108
  %cond3139 = phi i64 [ %sub3130, %cond.true.3108 ], [ %add3137, %cond.false.3131 ]
  %cmp3140 = icmp slt i64 %cond3139, 0
  br i1 %cmp3140, label %cond.true.3142, label %cond.false.3226

cond.true.3142:                                   ; preds = %cond.end.3138
  %561 = load i32, i32* %c, align 4
  %sub3143 = sub nsw i32 %561, 48
  %cmp3144 = icmp slt i32 %sub3143, 0
  br i1 %cmp3144, label %cond.true.3146, label %cond.false.3192

cond.true.3146:                                   ; preds = %cond.true.3142
  %562 = load i64, i64* %length, align 8
  %563 = load i32, i32* %c, align 4
  %sub3147 = sub nsw i32 %563, 48
  %mul3148 = mul nsw i32 0, %sub3147
  %conv3149 = sext i32 %mul3148 to i64
  %564 = load i64, i64* %length, align 8
  %add3150 = add nsw i64 %conv3149, %564
  %mul3151 = mul nsw i64 0, %add3150
  %sub3152 = sub nsw i64 %mul3151, 1
  %cmp3153 = icmp slt i64 %sub3152, 0
  br i1 %cmp3153, label %cond.true.3155, label %cond.false.3178

cond.true.3155:                                   ; preds = %cond.true.3146
  %565 = load i32, i32* %c, align 4
  %sub3156 = sub nsw i32 %565, 48
  %mul3157 = mul nsw i32 0, %sub3156
  %conv3158 = sext i32 %mul3157 to i64
  %566 = load i64, i64* %length, align 8
  %add3159 = add nsw i64 %conv3158, %566
  %mul3160 = mul nsw i64 0, %add3159
  %add3161 = add nsw i64 %mul3160, 0
  %neg3162 = xor i64 %add3161, -1
  %cmp3163 = icmp eq i64 %neg3162, -1
  %conv3164 = zext i1 %cmp3163 to i32
  %sub3165 = sub nsw i32 0, %conv3164
  %conv3166 = sext i32 %sub3165 to i64
  %567 = load i32, i32* %c, align 4
  %sub3167 = sub nsw i32 %567, 48
  %mul3168 = mul nsw i32 0, %sub3167
  %conv3169 = sext i32 %mul3168 to i64
  %568 = load i64, i64* %length, align 8
  %add3170 = add nsw i64 %conv3169, %568
  %mul3171 = mul nsw i64 0, %add3170
  %add3172 = add nsw i64 %mul3171, 1
  %shl3173 = shl i64 %add3172, 62
  %sub3174 = sub nsw i64 %shl3173, 1
  %mul3175 = mul nsw i64 %sub3174, 2
  %add3176 = add nsw i64 %mul3175, 1
  %sub3177 = sub nsw i64 %conv3166, %add3176
  br label %cond.end.3185

cond.false.3178:                                  ; preds = %cond.true.3146
  %569 = load i32, i32* %c, align 4
  %sub3179 = sub nsw i32 %569, 48
  %mul3180 = mul nsw i32 0, %sub3179
  %conv3181 = sext i32 %mul3180 to i64
  %570 = load i64, i64* %length, align 8
  %add3182 = add nsw i64 %conv3181, %570
  %mul3183 = mul nsw i64 0, %add3182
  %add3184 = add nsw i64 %mul3183, 0
  br label %cond.end.3185

cond.end.3185:                                    ; preds = %cond.false.3178, %cond.true.3155
  %cond3186 = phi i64 [ %sub3177, %cond.true.3155 ], [ %add3184, %cond.false.3178 ]
  %571 = load i32, i32* %c, align 4
  %sub3187 = sub nsw i32 %571, 48
  %conv3188 = sext i32 %sub3187 to i64
  %sub3189 = sub nsw i64 %cond3186, %conv3188
  %cmp3190 = icmp slt i64 %562, %sub3189
  br i1 %cmp3190, label %cond.true.3275, label %lor.lhs.false.3255

cond.false.3192:                                  ; preds = %cond.true.3142
  %572 = load i32, i32* %c, align 4
  %sub3193 = sub nsw i32 %572, 48
  %mul3194 = mul nsw i32 0, %sub3193
  %conv3195 = sext i32 %mul3194 to i64
  %573 = load i64, i64* %length, align 8
  %add3196 = add nsw i64 %conv3195, %573
  %mul3197 = mul nsw i64 0, %add3196
  %sub3198 = sub nsw i64 %mul3197, 1
  %cmp3199 = icmp slt i64 %sub3198, 0
  br i1 %cmp3199, label %cond.true.3201, label %cond.false.3212

cond.true.3201:                                   ; preds = %cond.false.3192
  %574 = load i32, i32* %c, align 4
  %sub3202 = sub nsw i32 %574, 48
  %mul3203 = mul nsw i32 0, %sub3202
  %conv3204 = sext i32 %mul3203 to i64
  %575 = load i64, i64* %length, align 8
  %add3205 = add nsw i64 %conv3204, %575
  %mul3206 = mul nsw i64 0, %add3205
  %add3207 = add nsw i64 %mul3206, 1
  %shl3208 = shl i64 %add3207, 62
  %sub3209 = sub nsw i64 %shl3208, 1
  %mul3210 = mul nsw i64 %sub3209, 2
  %add3211 = add nsw i64 %mul3210, 1
  br label %cond.end.3219

cond.false.3212:                                  ; preds = %cond.false.3192
  %576 = load i32, i32* %c, align 4
  %sub3213 = sub nsw i32 %576, 48
  %mul3214 = mul nsw i32 0, %sub3213
  %conv3215 = sext i32 %mul3214 to i64
  %577 = load i64, i64* %length, align 8
  %add3216 = add nsw i64 %conv3215, %577
  %mul3217 = mul nsw i64 0, %add3216
  %sub3218 = sub nsw i64 %mul3217, 1
  br label %cond.end.3219

cond.end.3219:                                    ; preds = %cond.false.3212, %cond.true.3201
  %cond3220 = phi i64 [ %add3211, %cond.true.3201 ], [ %sub3218, %cond.false.3212 ]
  %578 = load i32, i32* %c, align 4
  %sub3221 = sub nsw i32 %578, 48
  %conv3222 = sext i32 %sub3221 to i64
  %sub3223 = sub nsw i64 %cond3220, %conv3222
  %579 = load i64, i64* %length, align 8
  %cmp3224 = icmp slt i64 %sub3223, %579
  br i1 %cmp3224, label %cond.true.3275, label %lor.lhs.false.3255

cond.false.3226:                                  ; preds = %cond.end.3138
  %580 = load i64, i64* %length, align 8
  %cmp3227 = icmp slt i64 %580, 0
  br i1 %cmp3227, label %cond.true.3229, label %cond.false.3237

cond.true.3229:                                   ; preds = %cond.false.3226
  %581 = load i32, i32* %c, align 4
  %sub3230 = sub nsw i32 %581, 48
  %conv3231 = sext i32 %sub3230 to i64
  %582 = load i64, i64* %length, align 8
  %583 = load i32, i32* %c, align 4
  %sub3232 = sub nsw i32 %583, 48
  %conv3233 = sext i32 %sub3232 to i64
  %add3234 = add nsw i64 %582, %conv3233
  %cmp3235 = icmp sle i64 %conv3231, %add3234
  br i1 %cmp3235, label %cond.true.3275, label %lor.lhs.false.3255

cond.false.3237:                                  ; preds = %cond.false.3226
  %584 = load i32, i32* %c, align 4
  %sub3238 = sub nsw i32 %584, 48
  %cmp3239 = icmp slt i32 %sub3238, 0
  br i1 %cmp3239, label %cond.true.3241, label %cond.false.3247

cond.true.3241:                                   ; preds = %cond.false.3237
  %585 = load i64, i64* %length, align 8
  %586 = load i64, i64* %length, align 8
  %587 = load i32, i32* %c, align 4
  %sub3242 = sub nsw i32 %587, 48
  %conv3243 = sext i32 %sub3242 to i64
  %add3244 = add nsw i64 %586, %conv3243
  %cmp3245 = icmp sle i64 %585, %add3244
  br i1 %cmp3245, label %cond.true.3275, label %lor.lhs.false.3255

cond.false.3247:                                  ; preds = %cond.false.3237
  %588 = load i64, i64* %length, align 8
  %589 = load i32, i32* %c, align 4
  %sub3248 = sub nsw i32 %589, 48
  %conv3249 = sext i32 %sub3248 to i64
  %add3250 = add nsw i64 %588, %conv3249
  %590 = load i32, i32* %c, align 4
  %sub3251 = sub nsw i32 %590, 48
  %conv3252 = sext i32 %sub3251 to i64
  %cmp3253 = icmp slt i64 %add3250, %conv3252
  br i1 %cmp3253, label %cond.true.3275, label %lor.lhs.false.3255

lor.lhs.false.3255:                               ; preds = %cond.false.3247, %cond.true.3241, %cond.true.3229, %cond.end.3219, %cond.end.3185
  %591 = load i64, i64* %length, align 8
  %592 = load i32, i32* %c, align 4
  %sub3256 = sub nsw i32 %592, 48
  %conv3257 = sext i32 %sub3256 to i64
  %add3258 = add nsw i64 %591, %conv3257
  %mul3259 = mul nsw i64 0, %add3258
  %sub3260 = sub nsw i64 %mul3259, 1
  %cmp3261 = icmp slt i64 %sub3260, 0
  br i1 %cmp3261, label %land.lhs.true.3263, label %lor.lhs.false.3269

land.lhs.true.3263:                               ; preds = %lor.lhs.false.3255
  %593 = load i64, i64* %length, align 8
  %594 = load i32, i32* %c, align 4
  %sub3264 = sub nsw i32 %594, 48
  %conv3265 = sext i32 %sub3264 to i64
  %add3266 = add nsw i64 %593, %conv3265
  %cmp3267 = icmp slt i64 %add3266, -32768
  br i1 %cmp3267, label %cond.true.3275, label %lor.lhs.false.3269

lor.lhs.false.3269:                               ; preds = %land.lhs.true.3263, %lor.lhs.false.3255
  %595 = load i64, i64* %length, align 8
  %596 = load i32, i32* %c, align 4
  %sub3270 = sub nsw i32 %596, 48
  %conv3271 = sext i32 %sub3270 to i64
  %add3272 = add nsw i64 %595, %conv3271
  %cmp3273 = icmp slt i64 32767, %add3272
  br i1 %cmp3273, label %cond.true.3275, label %cond.false.3307

cond.true.3275:                                   ; preds = %lor.lhs.false.3269, %land.lhs.true.3263, %cond.false.3247, %cond.true.3241, %cond.true.3229, %cond.end.3219, %cond.end.3185
  %597 = load i64, i64* %length, align 8
  %conv3276 = trunc i64 %597 to i16
  %conv3277 = zext i16 %conv3276 to i32
  %598 = load i32, i32* %c, align 4
  %sub3278 = sub nsw i32 %598, 48
  %conv3279 = trunc i32 %sub3278 to i16
  %conv3280 = zext i16 %conv3279 to i32
  %add3281 = add nsw i32 %conv3277, %conv3280
  %cmp3282 = icmp sle i32 %add3281, 32767
  br i1 %cmp3282, label %cond.true.3284, label %cond.false.3293

cond.true.3284:                                   ; preds = %cond.true.3275
  %599 = load i64, i64* %length, align 8
  %conv3285 = trunc i64 %599 to i16
  %conv3286 = zext i16 %conv3285 to i32
  %600 = load i32, i32* %c, align 4
  %sub3287 = sub nsw i32 %600, 48
  %conv3288 = trunc i32 %sub3287 to i16
  %conv3289 = zext i16 %conv3288 to i32
  %add3290 = add nsw i32 %conv3286, %conv3289
  %conv3291 = trunc i32 %add3290 to i16
  %conv3292 = sext i16 %conv3291 to i32
  br label %cond.end.3304

cond.false.3293:                                  ; preds = %cond.true.3275
  %601 = load i64, i64* %length, align 8
  %conv3294 = trunc i64 %601 to i16
  %conv3295 = zext i16 %conv3294 to i32
  %602 = load i32, i32* %c, align 4
  %sub3296 = sub nsw i32 %602, 48
  %conv3297 = trunc i32 %sub3296 to i16
  %conv3298 = zext i16 %conv3297 to i32
  %add3299 = add nsw i32 %conv3295, %conv3298
  %sub3300 = sub nsw i32 %add3299, -32768
  %conv3301 = trunc i32 %sub3300 to i16
  %conv3302 = sext i16 %conv3301 to i32
  %add3303 = add nsw i32 %conv3302, -32768
  br label %cond.end.3304

cond.end.3304:                                    ; preds = %cond.false.3293, %cond.true.3284
  %cond3305 = phi i32 [ %conv3292, %cond.true.3284 ], [ %add3303, %cond.false.3293 ]
  %conv3306 = sext i32 %cond3305 to i64
  store i64 %conv3306, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3307:                                  ; preds = %lor.lhs.false.3269
  %603 = load i64, i64* %length, align 8
  %conv3308 = trunc i64 %603 to i16
  %conv3309 = zext i16 %conv3308 to i32
  %604 = load i32, i32* %c, align 4
  %sub3310 = sub nsw i32 %604, 48
  %conv3311 = trunc i32 %sub3310 to i16
  %conv3312 = zext i16 %conv3311 to i32
  %add3313 = add nsw i32 %conv3309, %conv3312
  %cmp3314 = icmp sle i32 %add3313, 32767
  br i1 %cmp3314, label %cond.true.3316, label %cond.false.3325

cond.true.3316:                                   ; preds = %cond.false.3307
  %605 = load i64, i64* %length, align 8
  %conv3317 = trunc i64 %605 to i16
  %conv3318 = zext i16 %conv3317 to i32
  %606 = load i32, i32* %c, align 4
  %sub3319 = sub nsw i32 %606, 48
  %conv3320 = trunc i32 %sub3319 to i16
  %conv3321 = zext i16 %conv3320 to i32
  %add3322 = add nsw i32 %conv3318, %conv3321
  %conv3323 = trunc i32 %add3322 to i16
  %conv3324 = sext i16 %conv3323 to i32
  br label %cond.end.3336

cond.false.3325:                                  ; preds = %cond.false.3307
  %607 = load i64, i64* %length, align 8
  %conv3326 = trunc i64 %607 to i16
  %conv3327 = zext i16 %conv3326 to i32
  %608 = load i32, i32* %c, align 4
  %sub3328 = sub nsw i32 %608, 48
  %conv3329 = trunc i32 %sub3328 to i16
  %conv3330 = zext i16 %conv3329 to i32
  %add3331 = add nsw i32 %conv3327, %conv3330
  %sub3332 = sub nsw i32 %add3331, -32768
  %conv3333 = trunc i32 %sub3332 to i16
  %conv3334 = sext i16 %conv3333 to i32
  %add3335 = add nsw i32 %conv3334, -32768
  br label %cond.end.3336

cond.end.3336:                                    ; preds = %cond.false.3325, %cond.true.3316
  %cond3337 = phi i32 [ %conv3324, %cond.true.3316 ], [ %add3335, %cond.false.3325 ]
  %conv3338 = sext i32 %cond3337 to i64
  store i64 %conv3338, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3339:                                  ; preds = %cond.false.2792
  br i1 false, label %cond.true.3340, label %cond.false.3767

cond.true.3340:                                   ; preds = %cond.false.3339
  br i1 false, label %cond.true.3341, label %cond.false.3553

cond.true.3341:                                   ; preds = %cond.true.3340
  %609 = load i32, i32* %c, align 4
  %sub3342 = sub nsw i32 %609, 48
  %mul3343 = mul nsw i32 0, %sub3342
  %610 = load i64, i64* %length, align 8
  %conv3344 = trunc i64 %610 to i32
  %add3345 = add nsw i32 %mul3343, %conv3344
  %mul3346 = mul nsw i32 0, %add3345
  %sub3347 = sub nsw i32 %mul3346, 1
  %cmp3348 = icmp slt i32 %sub3347, 0
  br i1 %cmp3348, label %cond.true.3350, label %cond.false.3372

cond.true.3350:                                   ; preds = %cond.true.3341
  %611 = load i32, i32* %c, align 4
  %sub3351 = sub nsw i32 %611, 48
  %mul3352 = mul nsw i32 0, %sub3351
  %612 = load i64, i64* %length, align 8
  %conv3353 = trunc i64 %612 to i32
  %add3354 = add nsw i32 %mul3352, %conv3353
  %mul3355 = mul nsw i32 0, %add3354
  %add3356 = add nsw i32 %mul3355, 0
  %neg3357 = xor i32 %add3356, -1
  %cmp3358 = icmp eq i32 %neg3357, -1
  %conv3359 = zext i1 %cmp3358 to i32
  %sub3360 = sub nsw i32 0, %conv3359
  %613 = load i32, i32* %c, align 4
  %sub3361 = sub nsw i32 %613, 48
  %mul3362 = mul nsw i32 0, %sub3361
  %614 = load i64, i64* %length, align 8
  %conv3363 = trunc i64 %614 to i32
  %add3364 = add nsw i32 %mul3362, %conv3363
  %mul3365 = mul nsw i32 0, %add3364
  %add3366 = add nsw i32 %mul3365, 1
  %shl3367 = shl i32 %add3366, 30
  %sub3368 = sub nsw i32 %shl3367, 1
  %mul3369 = mul nsw i32 %sub3368, 2
  %add3370 = add nsw i32 %mul3369, 1
  %sub3371 = sub nsw i32 %sub3360, %add3370
  br label %cond.end.3379

cond.false.3372:                                  ; preds = %cond.true.3341
  %615 = load i32, i32* %c, align 4
  %sub3373 = sub nsw i32 %615, 48
  %mul3374 = mul nsw i32 0, %sub3373
  %616 = load i64, i64* %length, align 8
  %conv3375 = trunc i64 %616 to i32
  %add3376 = add nsw i32 %mul3374, %conv3375
  %mul3377 = mul nsw i32 0, %add3376
  %add3378 = add nsw i32 %mul3377, 0
  br label %cond.end.3379

cond.end.3379:                                    ; preds = %cond.false.3372, %cond.true.3350
  %cond3380 = phi i32 [ %sub3371, %cond.true.3350 ], [ %add3378, %cond.false.3372 ]
  %cmp3381 = icmp slt i32 %cond3380, 0
  br i1 %cmp3381, label %cond.true.3383, label %cond.false.3466

cond.true.3383:                                   ; preds = %cond.end.3379
  %617 = load i32, i32* %c, align 4
  %sub3384 = sub nsw i32 %617, 48
  %cmp3385 = icmp slt i32 %sub3384, 0
  br i1 %cmp3385, label %cond.true.3387, label %cond.false.3432

cond.true.3387:                                   ; preds = %cond.true.3383
  %618 = load i64, i64* %length, align 8
  %conv3388 = trunc i64 %618 to i32
  %619 = load i32, i32* %c, align 4
  %sub3389 = sub nsw i32 %619, 48
  %mul3390 = mul nsw i32 0, %sub3389
  %620 = load i64, i64* %length, align 8
  %conv3391 = trunc i64 %620 to i32
  %add3392 = add nsw i32 %mul3390, %conv3391
  %mul3393 = mul nsw i32 0, %add3392
  %sub3394 = sub nsw i32 %mul3393, 1
  %cmp3395 = icmp slt i32 %sub3394, 0
  br i1 %cmp3395, label %cond.true.3397, label %cond.false.3419

cond.true.3397:                                   ; preds = %cond.true.3387
  %621 = load i32, i32* %c, align 4
  %sub3398 = sub nsw i32 %621, 48
  %mul3399 = mul nsw i32 0, %sub3398
  %622 = load i64, i64* %length, align 8
  %conv3400 = trunc i64 %622 to i32
  %add3401 = add nsw i32 %mul3399, %conv3400
  %mul3402 = mul nsw i32 0, %add3401
  %add3403 = add nsw i32 %mul3402, 0
  %neg3404 = xor i32 %add3403, -1
  %cmp3405 = icmp eq i32 %neg3404, -1
  %conv3406 = zext i1 %cmp3405 to i32
  %sub3407 = sub nsw i32 0, %conv3406
  %623 = load i32, i32* %c, align 4
  %sub3408 = sub nsw i32 %623, 48
  %mul3409 = mul nsw i32 0, %sub3408
  %624 = load i64, i64* %length, align 8
  %conv3410 = trunc i64 %624 to i32
  %add3411 = add nsw i32 %mul3409, %conv3410
  %mul3412 = mul nsw i32 0, %add3411
  %add3413 = add nsw i32 %mul3412, 1
  %shl3414 = shl i32 %add3413, 30
  %sub3415 = sub nsw i32 %shl3414, 1
  %mul3416 = mul nsw i32 %sub3415, 2
  %add3417 = add nsw i32 %mul3416, 1
  %sub3418 = sub nsw i32 %sub3407, %add3417
  br label %cond.end.3426

cond.false.3419:                                  ; preds = %cond.true.3387
  %625 = load i32, i32* %c, align 4
  %sub3420 = sub nsw i32 %625, 48
  %mul3421 = mul nsw i32 0, %sub3420
  %626 = load i64, i64* %length, align 8
  %conv3422 = trunc i64 %626 to i32
  %add3423 = add nsw i32 %mul3421, %conv3422
  %mul3424 = mul nsw i32 0, %add3423
  %add3425 = add nsw i32 %mul3424, 0
  br label %cond.end.3426

cond.end.3426:                                    ; preds = %cond.false.3419, %cond.true.3397
  %cond3427 = phi i32 [ %sub3418, %cond.true.3397 ], [ %add3425, %cond.false.3419 ]
  %627 = load i32, i32* %c, align 4
  %sub3428 = sub nsw i32 %627, 48
  %sub3429 = sub nsw i32 %cond3427, %sub3428
  %cmp3430 = icmp slt i32 %conv3388, %sub3429
  br i1 %cmp3430, label %cond.true.3515, label %lor.lhs.false.3495

cond.false.3432:                                  ; preds = %cond.true.3383
  %628 = load i32, i32* %c, align 4
  %sub3433 = sub nsw i32 %628, 48
  %mul3434 = mul nsw i32 0, %sub3433
  %629 = load i64, i64* %length, align 8
  %conv3435 = trunc i64 %629 to i32
  %add3436 = add nsw i32 %mul3434, %conv3435
  %mul3437 = mul nsw i32 0, %add3436
  %sub3438 = sub nsw i32 %mul3437, 1
  %cmp3439 = icmp slt i32 %sub3438, 0
  br i1 %cmp3439, label %cond.true.3441, label %cond.false.3452

cond.true.3441:                                   ; preds = %cond.false.3432
  %630 = load i32, i32* %c, align 4
  %sub3442 = sub nsw i32 %630, 48
  %mul3443 = mul nsw i32 0, %sub3442
  %631 = load i64, i64* %length, align 8
  %conv3444 = trunc i64 %631 to i32
  %add3445 = add nsw i32 %mul3443, %conv3444
  %mul3446 = mul nsw i32 0, %add3445
  %add3447 = add nsw i32 %mul3446, 1
  %shl3448 = shl i32 %add3447, 30
  %sub3449 = sub nsw i32 %shl3448, 1
  %mul3450 = mul nsw i32 %sub3449, 2
  %add3451 = add nsw i32 %mul3450, 1
  br label %cond.end.3459

cond.false.3452:                                  ; preds = %cond.false.3432
  %632 = load i32, i32* %c, align 4
  %sub3453 = sub nsw i32 %632, 48
  %mul3454 = mul nsw i32 0, %sub3453
  %633 = load i64, i64* %length, align 8
  %conv3455 = trunc i64 %633 to i32
  %add3456 = add nsw i32 %mul3454, %conv3455
  %mul3457 = mul nsw i32 0, %add3456
  %sub3458 = sub nsw i32 %mul3457, 1
  br label %cond.end.3459

cond.end.3459:                                    ; preds = %cond.false.3452, %cond.true.3441
  %cond3460 = phi i32 [ %add3451, %cond.true.3441 ], [ %sub3458, %cond.false.3452 ]
  %634 = load i32, i32* %c, align 4
  %sub3461 = sub nsw i32 %634, 48
  %sub3462 = sub nsw i32 %cond3460, %sub3461
  %635 = load i64, i64* %length, align 8
  %conv3463 = trunc i64 %635 to i32
  %cmp3464 = icmp slt i32 %sub3462, %conv3463
  br i1 %cmp3464, label %cond.true.3515, label %lor.lhs.false.3495

cond.false.3466:                                  ; preds = %cond.end.3379
  %636 = load i64, i64* %length, align 8
  %conv3467 = trunc i64 %636 to i32
  %cmp3468 = icmp slt i32 %conv3467, 0
  br i1 %cmp3468, label %cond.true.3470, label %cond.false.3477

cond.true.3470:                                   ; preds = %cond.false.3466
  %637 = load i32, i32* %c, align 4
  %sub3471 = sub nsw i32 %637, 48
  %638 = load i64, i64* %length, align 8
  %conv3472 = trunc i64 %638 to i32
  %639 = load i32, i32* %c, align 4
  %sub3473 = sub nsw i32 %639, 48
  %add3474 = add nsw i32 %conv3472, %sub3473
  %cmp3475 = icmp sle i32 %sub3471, %add3474
  br i1 %cmp3475, label %cond.true.3515, label %lor.lhs.false.3495

cond.false.3477:                                  ; preds = %cond.false.3466
  %640 = load i32, i32* %c, align 4
  %sub3478 = sub nsw i32 %640, 48
  %cmp3479 = icmp slt i32 %sub3478, 0
  br i1 %cmp3479, label %cond.true.3481, label %cond.false.3488

cond.true.3481:                                   ; preds = %cond.false.3477
  %641 = load i64, i64* %length, align 8
  %conv3482 = trunc i64 %641 to i32
  %642 = load i64, i64* %length, align 8
  %conv3483 = trunc i64 %642 to i32
  %643 = load i32, i32* %c, align 4
  %sub3484 = sub nsw i32 %643, 48
  %add3485 = add nsw i32 %conv3483, %sub3484
  %cmp3486 = icmp sle i32 %conv3482, %add3485
  br i1 %cmp3486, label %cond.true.3515, label %lor.lhs.false.3495

cond.false.3488:                                  ; preds = %cond.false.3477
  %644 = load i64, i64* %length, align 8
  %conv3489 = trunc i64 %644 to i32
  %645 = load i32, i32* %c, align 4
  %sub3490 = sub nsw i32 %645, 48
  %add3491 = add nsw i32 %conv3489, %sub3490
  %646 = load i32, i32* %c, align 4
  %sub3492 = sub nsw i32 %646, 48
  %cmp3493 = icmp slt i32 %add3491, %sub3492
  br i1 %cmp3493, label %cond.true.3515, label %lor.lhs.false.3495

lor.lhs.false.3495:                               ; preds = %cond.false.3488, %cond.true.3481, %cond.true.3470, %cond.end.3459, %cond.end.3426
  %647 = load i64, i64* %length, align 8
  %conv3496 = trunc i64 %647 to i32
  %648 = load i32, i32* %c, align 4
  %sub3497 = sub nsw i32 %648, 48
  %add3498 = add nsw i32 %conv3496, %sub3497
  %mul3499 = mul nsw i32 0, %add3498
  %sub3500 = sub nsw i32 %mul3499, 1
  %cmp3501 = icmp slt i32 %sub3500, 0
  br i1 %cmp3501, label %land.lhs.true.3503, label %lor.lhs.false.3509

land.lhs.true.3503:                               ; preds = %lor.lhs.false.3495
  %649 = load i64, i64* %length, align 8
  %conv3504 = trunc i64 %649 to i32
  %650 = load i32, i32* %c, align 4
  %sub3505 = sub nsw i32 %650, 48
  %add3506 = add nsw i32 %conv3504, %sub3505
  %cmp3507 = icmp slt i32 %add3506, -2147483648
  br i1 %cmp3507, label %cond.true.3515, label %lor.lhs.false.3509

lor.lhs.false.3509:                               ; preds = %land.lhs.true.3503, %lor.lhs.false.3495
  %651 = load i64, i64* %length, align 8
  %conv3510 = trunc i64 %651 to i32
  %652 = load i32, i32* %c, align 4
  %sub3511 = sub nsw i32 %652, 48
  %add3512 = add nsw i32 %conv3510, %sub3511
  %cmp3513 = icmp slt i32 2147483647, %add3512
  br i1 %cmp3513, label %cond.true.3515, label %cond.false.3534

cond.true.3515:                                   ; preds = %lor.lhs.false.3509, %land.lhs.true.3503, %cond.false.3488, %cond.true.3481, %cond.true.3470, %cond.end.3459, %cond.end.3426
  %653 = load i64, i64* %length, align 8
  %conv3516 = trunc i64 %653 to i32
  %654 = load i32, i32* %c, align 4
  %sub3517 = sub nsw i32 %654, 48
  %add3518 = add i32 %conv3516, %sub3517
  %cmp3519 = icmp ule i32 %add3518, 2147483647
  br i1 %cmp3519, label %cond.true.3521, label %cond.false.3525

cond.true.3521:                                   ; preds = %cond.true.3515
  %655 = load i64, i64* %length, align 8
  %conv3522 = trunc i64 %655 to i32
  %656 = load i32, i32* %c, align 4
  %sub3523 = sub nsw i32 %656, 48
  %add3524 = add i32 %conv3522, %sub3523
  br label %cond.end.3531

cond.false.3525:                                  ; preds = %cond.true.3515
  %657 = load i64, i64* %length, align 8
  %conv3526 = trunc i64 %657 to i32
  %658 = load i32, i32* %c, align 4
  %sub3527 = sub nsw i32 %658, 48
  %add3528 = add i32 %conv3526, %sub3527
  %sub3529 = sub i32 %add3528, -2147483648
  %add3530 = add nsw i32 %sub3529, -2147483648
  br label %cond.end.3531

cond.end.3531:                                    ; preds = %cond.false.3525, %cond.true.3521
  %cond3532 = phi i32 [ %add3524, %cond.true.3521 ], [ %add3530, %cond.false.3525 ]
  %conv3533 = sext i32 %cond3532 to i64
  store i64 %conv3533, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3534:                                  ; preds = %lor.lhs.false.3509
  %659 = load i64, i64* %length, align 8
  %conv3535 = trunc i64 %659 to i32
  %660 = load i32, i32* %c, align 4
  %sub3536 = sub nsw i32 %660, 48
  %add3537 = add i32 %conv3535, %sub3536
  %cmp3538 = icmp ule i32 %add3537, 2147483647
  br i1 %cmp3538, label %cond.true.3540, label %cond.false.3544

cond.true.3540:                                   ; preds = %cond.false.3534
  %661 = load i64, i64* %length, align 8
  %conv3541 = trunc i64 %661 to i32
  %662 = load i32, i32* %c, align 4
  %sub3542 = sub nsw i32 %662, 48
  %add3543 = add i32 %conv3541, %sub3542
  br label %cond.end.3550

cond.false.3544:                                  ; preds = %cond.false.3534
  %663 = load i64, i64* %length, align 8
  %conv3545 = trunc i64 %663 to i32
  %664 = load i32, i32* %c, align 4
  %sub3546 = sub nsw i32 %664, 48
  %add3547 = add i32 %conv3545, %sub3546
  %sub3548 = sub i32 %add3547, -2147483648
  %add3549 = add nsw i32 %sub3548, -2147483648
  br label %cond.end.3550

cond.end.3550:                                    ; preds = %cond.false.3544, %cond.true.3540
  %cond3551 = phi i32 [ %add3543, %cond.true.3540 ], [ %add3549, %cond.false.3544 ]
  %conv3552 = sext i32 %cond3551 to i64
  store i64 %conv3552, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3553:                                  ; preds = %cond.true.3340
  %665 = load i32, i32* %c, align 4
  %sub3554 = sub nsw i32 %665, 48
  %mul3555 = mul nsw i32 0, %sub3554
  %conv3556 = sext i32 %mul3555 to i64
  %666 = load i64, i64* %length, align 8
  %add3557 = add nsw i64 %conv3556, %666
  %mul3558 = mul nsw i64 0, %add3557
  %sub3559 = sub nsw i64 %mul3558, 1
  %cmp3560 = icmp slt i64 %sub3559, 0
  br i1 %cmp3560, label %cond.true.3562, label %cond.false.3585

cond.true.3562:                                   ; preds = %cond.false.3553
  %667 = load i32, i32* %c, align 4
  %sub3563 = sub nsw i32 %667, 48
  %mul3564 = mul nsw i32 0, %sub3563
  %conv3565 = sext i32 %mul3564 to i64
  %668 = load i64, i64* %length, align 8
  %add3566 = add nsw i64 %conv3565, %668
  %mul3567 = mul nsw i64 0, %add3566
  %add3568 = add nsw i64 %mul3567, 0
  %neg3569 = xor i64 %add3568, -1
  %cmp3570 = icmp eq i64 %neg3569, -1
  %conv3571 = zext i1 %cmp3570 to i32
  %sub3572 = sub nsw i32 0, %conv3571
  %conv3573 = sext i32 %sub3572 to i64
  %669 = load i32, i32* %c, align 4
  %sub3574 = sub nsw i32 %669, 48
  %mul3575 = mul nsw i32 0, %sub3574
  %conv3576 = sext i32 %mul3575 to i64
  %670 = load i64, i64* %length, align 8
  %add3577 = add nsw i64 %conv3576, %670
  %mul3578 = mul nsw i64 0, %add3577
  %add3579 = add nsw i64 %mul3578, 1
  %shl3580 = shl i64 %add3579, 62
  %sub3581 = sub nsw i64 %shl3580, 1
  %mul3582 = mul nsw i64 %sub3581, 2
  %add3583 = add nsw i64 %mul3582, 1
  %sub3584 = sub nsw i64 %conv3573, %add3583
  br label %cond.end.3592

cond.false.3585:                                  ; preds = %cond.false.3553
  %671 = load i32, i32* %c, align 4
  %sub3586 = sub nsw i32 %671, 48
  %mul3587 = mul nsw i32 0, %sub3586
  %conv3588 = sext i32 %mul3587 to i64
  %672 = load i64, i64* %length, align 8
  %add3589 = add nsw i64 %conv3588, %672
  %mul3590 = mul nsw i64 0, %add3589
  %add3591 = add nsw i64 %mul3590, 0
  br label %cond.end.3592

cond.end.3592:                                    ; preds = %cond.false.3585, %cond.true.3562
  %cond3593 = phi i64 [ %sub3584, %cond.true.3562 ], [ %add3591, %cond.false.3585 ]
  %cmp3594 = icmp slt i64 %cond3593, 0
  br i1 %cmp3594, label %cond.true.3596, label %cond.false.3680

cond.true.3596:                                   ; preds = %cond.end.3592
  %673 = load i32, i32* %c, align 4
  %sub3597 = sub nsw i32 %673, 48
  %cmp3598 = icmp slt i32 %sub3597, 0
  br i1 %cmp3598, label %cond.true.3600, label %cond.false.3646

cond.true.3600:                                   ; preds = %cond.true.3596
  %674 = load i64, i64* %length, align 8
  %675 = load i32, i32* %c, align 4
  %sub3601 = sub nsw i32 %675, 48
  %mul3602 = mul nsw i32 0, %sub3601
  %conv3603 = sext i32 %mul3602 to i64
  %676 = load i64, i64* %length, align 8
  %add3604 = add nsw i64 %conv3603, %676
  %mul3605 = mul nsw i64 0, %add3604
  %sub3606 = sub nsw i64 %mul3605, 1
  %cmp3607 = icmp slt i64 %sub3606, 0
  br i1 %cmp3607, label %cond.true.3609, label %cond.false.3632

cond.true.3609:                                   ; preds = %cond.true.3600
  %677 = load i32, i32* %c, align 4
  %sub3610 = sub nsw i32 %677, 48
  %mul3611 = mul nsw i32 0, %sub3610
  %conv3612 = sext i32 %mul3611 to i64
  %678 = load i64, i64* %length, align 8
  %add3613 = add nsw i64 %conv3612, %678
  %mul3614 = mul nsw i64 0, %add3613
  %add3615 = add nsw i64 %mul3614, 0
  %neg3616 = xor i64 %add3615, -1
  %cmp3617 = icmp eq i64 %neg3616, -1
  %conv3618 = zext i1 %cmp3617 to i32
  %sub3619 = sub nsw i32 0, %conv3618
  %conv3620 = sext i32 %sub3619 to i64
  %679 = load i32, i32* %c, align 4
  %sub3621 = sub nsw i32 %679, 48
  %mul3622 = mul nsw i32 0, %sub3621
  %conv3623 = sext i32 %mul3622 to i64
  %680 = load i64, i64* %length, align 8
  %add3624 = add nsw i64 %conv3623, %680
  %mul3625 = mul nsw i64 0, %add3624
  %add3626 = add nsw i64 %mul3625, 1
  %shl3627 = shl i64 %add3626, 62
  %sub3628 = sub nsw i64 %shl3627, 1
  %mul3629 = mul nsw i64 %sub3628, 2
  %add3630 = add nsw i64 %mul3629, 1
  %sub3631 = sub nsw i64 %conv3620, %add3630
  br label %cond.end.3639

cond.false.3632:                                  ; preds = %cond.true.3600
  %681 = load i32, i32* %c, align 4
  %sub3633 = sub nsw i32 %681, 48
  %mul3634 = mul nsw i32 0, %sub3633
  %conv3635 = sext i32 %mul3634 to i64
  %682 = load i64, i64* %length, align 8
  %add3636 = add nsw i64 %conv3635, %682
  %mul3637 = mul nsw i64 0, %add3636
  %add3638 = add nsw i64 %mul3637, 0
  br label %cond.end.3639

cond.end.3639:                                    ; preds = %cond.false.3632, %cond.true.3609
  %cond3640 = phi i64 [ %sub3631, %cond.true.3609 ], [ %add3638, %cond.false.3632 ]
  %683 = load i32, i32* %c, align 4
  %sub3641 = sub nsw i32 %683, 48
  %conv3642 = sext i32 %sub3641 to i64
  %sub3643 = sub nsw i64 %cond3640, %conv3642
  %cmp3644 = icmp slt i64 %674, %sub3643
  br i1 %cmp3644, label %cond.true.3729, label %lor.lhs.false.3709

cond.false.3646:                                  ; preds = %cond.true.3596
  %684 = load i32, i32* %c, align 4
  %sub3647 = sub nsw i32 %684, 48
  %mul3648 = mul nsw i32 0, %sub3647
  %conv3649 = sext i32 %mul3648 to i64
  %685 = load i64, i64* %length, align 8
  %add3650 = add nsw i64 %conv3649, %685
  %mul3651 = mul nsw i64 0, %add3650
  %sub3652 = sub nsw i64 %mul3651, 1
  %cmp3653 = icmp slt i64 %sub3652, 0
  br i1 %cmp3653, label %cond.true.3655, label %cond.false.3666

cond.true.3655:                                   ; preds = %cond.false.3646
  %686 = load i32, i32* %c, align 4
  %sub3656 = sub nsw i32 %686, 48
  %mul3657 = mul nsw i32 0, %sub3656
  %conv3658 = sext i32 %mul3657 to i64
  %687 = load i64, i64* %length, align 8
  %add3659 = add nsw i64 %conv3658, %687
  %mul3660 = mul nsw i64 0, %add3659
  %add3661 = add nsw i64 %mul3660, 1
  %shl3662 = shl i64 %add3661, 62
  %sub3663 = sub nsw i64 %shl3662, 1
  %mul3664 = mul nsw i64 %sub3663, 2
  %add3665 = add nsw i64 %mul3664, 1
  br label %cond.end.3673

cond.false.3666:                                  ; preds = %cond.false.3646
  %688 = load i32, i32* %c, align 4
  %sub3667 = sub nsw i32 %688, 48
  %mul3668 = mul nsw i32 0, %sub3667
  %conv3669 = sext i32 %mul3668 to i64
  %689 = load i64, i64* %length, align 8
  %add3670 = add nsw i64 %conv3669, %689
  %mul3671 = mul nsw i64 0, %add3670
  %sub3672 = sub nsw i64 %mul3671, 1
  br label %cond.end.3673

cond.end.3673:                                    ; preds = %cond.false.3666, %cond.true.3655
  %cond3674 = phi i64 [ %add3665, %cond.true.3655 ], [ %sub3672, %cond.false.3666 ]
  %690 = load i32, i32* %c, align 4
  %sub3675 = sub nsw i32 %690, 48
  %conv3676 = sext i32 %sub3675 to i64
  %sub3677 = sub nsw i64 %cond3674, %conv3676
  %691 = load i64, i64* %length, align 8
  %cmp3678 = icmp slt i64 %sub3677, %691
  br i1 %cmp3678, label %cond.true.3729, label %lor.lhs.false.3709

cond.false.3680:                                  ; preds = %cond.end.3592
  %692 = load i64, i64* %length, align 8
  %cmp3681 = icmp slt i64 %692, 0
  br i1 %cmp3681, label %cond.true.3683, label %cond.false.3691

cond.true.3683:                                   ; preds = %cond.false.3680
  %693 = load i32, i32* %c, align 4
  %sub3684 = sub nsw i32 %693, 48
  %conv3685 = sext i32 %sub3684 to i64
  %694 = load i64, i64* %length, align 8
  %695 = load i32, i32* %c, align 4
  %sub3686 = sub nsw i32 %695, 48
  %conv3687 = sext i32 %sub3686 to i64
  %add3688 = add nsw i64 %694, %conv3687
  %cmp3689 = icmp sle i64 %conv3685, %add3688
  br i1 %cmp3689, label %cond.true.3729, label %lor.lhs.false.3709

cond.false.3691:                                  ; preds = %cond.false.3680
  %696 = load i32, i32* %c, align 4
  %sub3692 = sub nsw i32 %696, 48
  %cmp3693 = icmp slt i32 %sub3692, 0
  br i1 %cmp3693, label %cond.true.3695, label %cond.false.3701

cond.true.3695:                                   ; preds = %cond.false.3691
  %697 = load i64, i64* %length, align 8
  %698 = load i64, i64* %length, align 8
  %699 = load i32, i32* %c, align 4
  %sub3696 = sub nsw i32 %699, 48
  %conv3697 = sext i32 %sub3696 to i64
  %add3698 = add nsw i64 %698, %conv3697
  %cmp3699 = icmp sle i64 %697, %add3698
  br i1 %cmp3699, label %cond.true.3729, label %lor.lhs.false.3709

cond.false.3701:                                  ; preds = %cond.false.3691
  %700 = load i64, i64* %length, align 8
  %701 = load i32, i32* %c, align 4
  %sub3702 = sub nsw i32 %701, 48
  %conv3703 = sext i32 %sub3702 to i64
  %add3704 = add nsw i64 %700, %conv3703
  %702 = load i32, i32* %c, align 4
  %sub3705 = sub nsw i32 %702, 48
  %conv3706 = sext i32 %sub3705 to i64
  %cmp3707 = icmp slt i64 %add3704, %conv3706
  br i1 %cmp3707, label %cond.true.3729, label %lor.lhs.false.3709

lor.lhs.false.3709:                               ; preds = %cond.false.3701, %cond.true.3695, %cond.true.3683, %cond.end.3673, %cond.end.3639
  %703 = load i64, i64* %length, align 8
  %704 = load i32, i32* %c, align 4
  %sub3710 = sub nsw i32 %704, 48
  %conv3711 = sext i32 %sub3710 to i64
  %add3712 = add nsw i64 %703, %conv3711
  %mul3713 = mul nsw i64 0, %add3712
  %sub3714 = sub nsw i64 %mul3713, 1
  %cmp3715 = icmp slt i64 %sub3714, 0
  br i1 %cmp3715, label %land.lhs.true.3717, label %lor.lhs.false.3723

land.lhs.true.3717:                               ; preds = %lor.lhs.false.3709
  %705 = load i64, i64* %length, align 8
  %706 = load i32, i32* %c, align 4
  %sub3718 = sub nsw i32 %706, 48
  %conv3719 = sext i32 %sub3718 to i64
  %add3720 = add nsw i64 %705, %conv3719
  %cmp3721 = icmp slt i64 %add3720, -2147483648
  br i1 %cmp3721, label %cond.true.3729, label %lor.lhs.false.3723

lor.lhs.false.3723:                               ; preds = %land.lhs.true.3717, %lor.lhs.false.3709
  %707 = load i64, i64* %length, align 8
  %708 = load i32, i32* %c, align 4
  %sub3724 = sub nsw i32 %708, 48
  %conv3725 = sext i32 %sub3724 to i64
  %add3726 = add nsw i64 %707, %conv3725
  %cmp3727 = icmp slt i64 2147483647, %add3726
  br i1 %cmp3727, label %cond.true.3729, label %cond.false.3748

cond.true.3729:                                   ; preds = %lor.lhs.false.3723, %land.lhs.true.3717, %cond.false.3701, %cond.true.3695, %cond.true.3683, %cond.end.3673, %cond.end.3639
  %709 = load i64, i64* %length, align 8
  %conv3730 = trunc i64 %709 to i32
  %710 = load i32, i32* %c, align 4
  %sub3731 = sub nsw i32 %710, 48
  %add3732 = add i32 %conv3730, %sub3731
  %cmp3733 = icmp ule i32 %add3732, 2147483647
  br i1 %cmp3733, label %cond.true.3735, label %cond.false.3739

cond.true.3735:                                   ; preds = %cond.true.3729
  %711 = load i64, i64* %length, align 8
  %conv3736 = trunc i64 %711 to i32
  %712 = load i32, i32* %c, align 4
  %sub3737 = sub nsw i32 %712, 48
  %add3738 = add i32 %conv3736, %sub3737
  br label %cond.end.3745

cond.false.3739:                                  ; preds = %cond.true.3729
  %713 = load i64, i64* %length, align 8
  %conv3740 = trunc i64 %713 to i32
  %714 = load i32, i32* %c, align 4
  %sub3741 = sub nsw i32 %714, 48
  %add3742 = add i32 %conv3740, %sub3741
  %sub3743 = sub i32 %add3742, -2147483648
  %add3744 = add nsw i32 %sub3743, -2147483648
  br label %cond.end.3745

cond.end.3745:                                    ; preds = %cond.false.3739, %cond.true.3735
  %cond3746 = phi i32 [ %add3738, %cond.true.3735 ], [ %add3744, %cond.false.3739 ]
  %conv3747 = sext i32 %cond3746 to i64
  store i64 %conv3747, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3748:                                  ; preds = %lor.lhs.false.3723
  %715 = load i64, i64* %length, align 8
  %conv3749 = trunc i64 %715 to i32
  %716 = load i32, i32* %c, align 4
  %sub3750 = sub nsw i32 %716, 48
  %add3751 = add i32 %conv3749, %sub3750
  %cmp3752 = icmp ule i32 %add3751, 2147483647
  br i1 %cmp3752, label %cond.true.3754, label %cond.false.3758

cond.true.3754:                                   ; preds = %cond.false.3748
  %717 = load i64, i64* %length, align 8
  %conv3755 = trunc i64 %717 to i32
  %718 = load i32, i32* %c, align 4
  %sub3756 = sub nsw i32 %718, 48
  %add3757 = add i32 %conv3755, %sub3756
  br label %cond.end.3764

cond.false.3758:                                  ; preds = %cond.false.3748
  %719 = load i64, i64* %length, align 8
  %conv3759 = trunc i64 %719 to i32
  %720 = load i32, i32* %c, align 4
  %sub3760 = sub nsw i32 %720, 48
  %add3761 = add i32 %conv3759, %sub3760
  %sub3762 = sub i32 %add3761, -2147483648
  %add3763 = add nsw i32 %sub3762, -2147483648
  br label %cond.end.3764

cond.end.3764:                                    ; preds = %cond.false.3758, %cond.true.3754
  %cond3765 = phi i32 [ %add3757, %cond.true.3754 ], [ %add3763, %cond.false.3758 ]
  %conv3766 = sext i32 %cond3765 to i64
  store i64 %conv3766, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3767:                                  ; preds = %cond.false.3339
  br i1 true, label %cond.true.3768, label %cond.false.4195

cond.true.3768:                                   ; preds = %cond.false.3767
  br i1 false, label %cond.true.3769, label %cond.false.3983

cond.true.3769:                                   ; preds = %cond.true.3768
  %721 = load i32, i32* %c, align 4
  %sub3770 = sub nsw i32 %721, 48
  %conv3771 = sext i32 %sub3770 to i64
  %mul3772 = mul nsw i64 0, %conv3771
  %722 = load i64, i64* %length, align 8
  %add3773 = add nsw i64 %mul3772, %722
  %mul3774 = mul nsw i64 0, %add3773
  %sub3775 = sub nsw i64 %mul3774, 1
  %cmp3776 = icmp slt i64 %sub3775, 0
  br i1 %cmp3776, label %cond.true.3778, label %cond.false.3801

cond.true.3778:                                   ; preds = %cond.true.3769
  %723 = load i32, i32* %c, align 4
  %sub3779 = sub nsw i32 %723, 48
  %conv3780 = sext i32 %sub3779 to i64
  %mul3781 = mul nsw i64 0, %conv3780
  %724 = load i64, i64* %length, align 8
  %add3782 = add nsw i64 %mul3781, %724
  %mul3783 = mul nsw i64 0, %add3782
  %add3784 = add nsw i64 %mul3783, 0
  %neg3785 = xor i64 %add3784, -1
  %cmp3786 = icmp eq i64 %neg3785, -1
  %conv3787 = zext i1 %cmp3786 to i32
  %sub3788 = sub nsw i32 0, %conv3787
  %conv3789 = sext i32 %sub3788 to i64
  %725 = load i32, i32* %c, align 4
  %sub3790 = sub nsw i32 %725, 48
  %conv3791 = sext i32 %sub3790 to i64
  %mul3792 = mul nsw i64 0, %conv3791
  %726 = load i64, i64* %length, align 8
  %add3793 = add nsw i64 %mul3792, %726
  %mul3794 = mul nsw i64 0, %add3793
  %add3795 = add nsw i64 %mul3794, 1
  %shl3796 = shl i64 %add3795, 62
  %sub3797 = sub nsw i64 %shl3796, 1
  %mul3798 = mul nsw i64 %sub3797, 2
  %add3799 = add nsw i64 %mul3798, 1
  %sub3800 = sub nsw i64 %conv3789, %add3799
  br label %cond.end.3808

cond.false.3801:                                  ; preds = %cond.true.3769
  %727 = load i32, i32* %c, align 4
  %sub3802 = sub nsw i32 %727, 48
  %conv3803 = sext i32 %sub3802 to i64
  %mul3804 = mul nsw i64 0, %conv3803
  %728 = load i64, i64* %length, align 8
  %add3805 = add nsw i64 %mul3804, %728
  %mul3806 = mul nsw i64 0, %add3805
  %add3807 = add nsw i64 %mul3806, 0
  br label %cond.end.3808

cond.end.3808:                                    ; preds = %cond.false.3801, %cond.true.3778
  %cond3809 = phi i64 [ %sub3800, %cond.true.3778 ], [ %add3807, %cond.false.3801 ]
  %cmp3810 = icmp slt i64 %cond3809, 0
  br i1 %cmp3810, label %cond.true.3812, label %cond.false.3897

cond.true.3812:                                   ; preds = %cond.end.3808
  %729 = load i32, i32* %c, align 4
  %sub3813 = sub nsw i32 %729, 48
  %conv3814 = sext i32 %sub3813 to i64
  %cmp3815 = icmp slt i64 %conv3814, 0
  br i1 %cmp3815, label %cond.true.3817, label %cond.false.3863

cond.true.3817:                                   ; preds = %cond.true.3812
  %730 = load i64, i64* %length, align 8
  %731 = load i32, i32* %c, align 4
  %sub3818 = sub nsw i32 %731, 48
  %conv3819 = sext i32 %sub3818 to i64
  %mul3820 = mul nsw i64 0, %conv3819
  %732 = load i64, i64* %length, align 8
  %add3821 = add nsw i64 %mul3820, %732
  %mul3822 = mul nsw i64 0, %add3821
  %sub3823 = sub nsw i64 %mul3822, 1
  %cmp3824 = icmp slt i64 %sub3823, 0
  br i1 %cmp3824, label %cond.true.3826, label %cond.false.3849

cond.true.3826:                                   ; preds = %cond.true.3817
  %733 = load i32, i32* %c, align 4
  %sub3827 = sub nsw i32 %733, 48
  %conv3828 = sext i32 %sub3827 to i64
  %mul3829 = mul nsw i64 0, %conv3828
  %734 = load i64, i64* %length, align 8
  %add3830 = add nsw i64 %mul3829, %734
  %mul3831 = mul nsw i64 0, %add3830
  %add3832 = add nsw i64 %mul3831, 0
  %neg3833 = xor i64 %add3832, -1
  %cmp3834 = icmp eq i64 %neg3833, -1
  %conv3835 = zext i1 %cmp3834 to i32
  %sub3836 = sub nsw i32 0, %conv3835
  %conv3837 = sext i32 %sub3836 to i64
  %735 = load i32, i32* %c, align 4
  %sub3838 = sub nsw i32 %735, 48
  %conv3839 = sext i32 %sub3838 to i64
  %mul3840 = mul nsw i64 0, %conv3839
  %736 = load i64, i64* %length, align 8
  %add3841 = add nsw i64 %mul3840, %736
  %mul3842 = mul nsw i64 0, %add3841
  %add3843 = add nsw i64 %mul3842, 1
  %shl3844 = shl i64 %add3843, 62
  %sub3845 = sub nsw i64 %shl3844, 1
  %mul3846 = mul nsw i64 %sub3845, 2
  %add3847 = add nsw i64 %mul3846, 1
  %sub3848 = sub nsw i64 %conv3837, %add3847
  br label %cond.end.3856

cond.false.3849:                                  ; preds = %cond.true.3817
  %737 = load i32, i32* %c, align 4
  %sub3850 = sub nsw i32 %737, 48
  %conv3851 = sext i32 %sub3850 to i64
  %mul3852 = mul nsw i64 0, %conv3851
  %738 = load i64, i64* %length, align 8
  %add3853 = add nsw i64 %mul3852, %738
  %mul3854 = mul nsw i64 0, %add3853
  %add3855 = add nsw i64 %mul3854, 0
  br label %cond.end.3856

cond.end.3856:                                    ; preds = %cond.false.3849, %cond.true.3826
  %cond3857 = phi i64 [ %sub3848, %cond.true.3826 ], [ %add3855, %cond.false.3849 ]
  %739 = load i32, i32* %c, align 4
  %sub3858 = sub nsw i32 %739, 48
  %conv3859 = sext i32 %sub3858 to i64
  %sub3860 = sub nsw i64 %cond3857, %conv3859
  %cmp3861 = icmp slt i64 %730, %sub3860
  br i1 %cmp3861, label %cond.true.3947, label %lor.lhs.false.3927

cond.false.3863:                                  ; preds = %cond.true.3812
  %740 = load i32, i32* %c, align 4
  %sub3864 = sub nsw i32 %740, 48
  %conv3865 = sext i32 %sub3864 to i64
  %mul3866 = mul nsw i64 0, %conv3865
  %741 = load i64, i64* %length, align 8
  %add3867 = add nsw i64 %mul3866, %741
  %mul3868 = mul nsw i64 0, %add3867
  %sub3869 = sub nsw i64 %mul3868, 1
  %cmp3870 = icmp slt i64 %sub3869, 0
  br i1 %cmp3870, label %cond.true.3872, label %cond.false.3883

cond.true.3872:                                   ; preds = %cond.false.3863
  %742 = load i32, i32* %c, align 4
  %sub3873 = sub nsw i32 %742, 48
  %conv3874 = sext i32 %sub3873 to i64
  %mul3875 = mul nsw i64 0, %conv3874
  %743 = load i64, i64* %length, align 8
  %add3876 = add nsw i64 %mul3875, %743
  %mul3877 = mul nsw i64 0, %add3876
  %add3878 = add nsw i64 %mul3877, 1
  %shl3879 = shl i64 %add3878, 62
  %sub3880 = sub nsw i64 %shl3879, 1
  %mul3881 = mul nsw i64 %sub3880, 2
  %add3882 = add nsw i64 %mul3881, 1
  br label %cond.end.3890

cond.false.3883:                                  ; preds = %cond.false.3863
  %744 = load i32, i32* %c, align 4
  %sub3884 = sub nsw i32 %744, 48
  %conv3885 = sext i32 %sub3884 to i64
  %mul3886 = mul nsw i64 0, %conv3885
  %745 = load i64, i64* %length, align 8
  %add3887 = add nsw i64 %mul3886, %745
  %mul3888 = mul nsw i64 0, %add3887
  %sub3889 = sub nsw i64 %mul3888, 1
  br label %cond.end.3890

cond.end.3890:                                    ; preds = %cond.false.3883, %cond.true.3872
  %cond3891 = phi i64 [ %add3882, %cond.true.3872 ], [ %sub3889, %cond.false.3883 ]
  %746 = load i32, i32* %c, align 4
  %sub3892 = sub nsw i32 %746, 48
  %conv3893 = sext i32 %sub3892 to i64
  %sub3894 = sub nsw i64 %cond3891, %conv3893
  %747 = load i64, i64* %length, align 8
  %cmp3895 = icmp slt i64 %sub3894, %747
  br i1 %cmp3895, label %cond.true.3947, label %lor.lhs.false.3927

cond.false.3897:                                  ; preds = %cond.end.3808
  %748 = load i64, i64* %length, align 8
  %cmp3898 = icmp slt i64 %748, 0
  br i1 %cmp3898, label %cond.true.3900, label %cond.false.3908

cond.true.3900:                                   ; preds = %cond.false.3897
  %749 = load i32, i32* %c, align 4
  %sub3901 = sub nsw i32 %749, 48
  %conv3902 = sext i32 %sub3901 to i64
  %750 = load i64, i64* %length, align 8
  %751 = load i32, i32* %c, align 4
  %sub3903 = sub nsw i32 %751, 48
  %conv3904 = sext i32 %sub3903 to i64
  %add3905 = add nsw i64 %750, %conv3904
  %cmp3906 = icmp sle i64 %conv3902, %add3905
  br i1 %cmp3906, label %cond.true.3947, label %lor.lhs.false.3927

cond.false.3908:                                  ; preds = %cond.false.3897
  %752 = load i32, i32* %c, align 4
  %sub3909 = sub nsw i32 %752, 48
  %conv3910 = sext i32 %sub3909 to i64
  %cmp3911 = icmp slt i64 %conv3910, 0
  br i1 %cmp3911, label %cond.true.3913, label %cond.false.3919

cond.true.3913:                                   ; preds = %cond.false.3908
  %753 = load i64, i64* %length, align 8
  %754 = load i64, i64* %length, align 8
  %755 = load i32, i32* %c, align 4
  %sub3914 = sub nsw i32 %755, 48
  %conv3915 = sext i32 %sub3914 to i64
  %add3916 = add nsw i64 %754, %conv3915
  %cmp3917 = icmp sle i64 %753, %add3916
  br i1 %cmp3917, label %cond.true.3947, label %lor.lhs.false.3927

cond.false.3919:                                  ; preds = %cond.false.3908
  %756 = load i64, i64* %length, align 8
  %757 = load i32, i32* %c, align 4
  %sub3920 = sub nsw i32 %757, 48
  %conv3921 = sext i32 %sub3920 to i64
  %add3922 = add nsw i64 %756, %conv3921
  %758 = load i32, i32* %c, align 4
  %sub3923 = sub nsw i32 %758, 48
  %conv3924 = sext i32 %sub3923 to i64
  %cmp3925 = icmp slt i64 %add3922, %conv3924
  br i1 %cmp3925, label %cond.true.3947, label %lor.lhs.false.3927

lor.lhs.false.3927:                               ; preds = %cond.false.3919, %cond.true.3913, %cond.true.3900, %cond.end.3890, %cond.end.3856
  %759 = load i64, i64* %length, align 8
  %760 = load i32, i32* %c, align 4
  %sub3928 = sub nsw i32 %760, 48
  %conv3929 = sext i32 %sub3928 to i64
  %add3930 = add nsw i64 %759, %conv3929
  %mul3931 = mul nsw i64 0, %add3930
  %sub3932 = sub nsw i64 %mul3931, 1
  %cmp3933 = icmp slt i64 %sub3932, 0
  br i1 %cmp3933, label %land.lhs.true.3935, label %lor.lhs.false.3941

land.lhs.true.3935:                               ; preds = %lor.lhs.false.3927
  %761 = load i64, i64* %length, align 8
  %762 = load i32, i32* %c, align 4
  %sub3936 = sub nsw i32 %762, 48
  %conv3937 = sext i32 %sub3936 to i64
  %add3938 = add nsw i64 %761, %conv3937
  %cmp3939 = icmp slt i64 %add3938, -9223372036854775808
  br i1 %cmp3939, label %cond.true.3947, label %lor.lhs.false.3941

lor.lhs.false.3941:                               ; preds = %land.lhs.true.3935, %lor.lhs.false.3927
  %763 = load i64, i64* %length, align 8
  %764 = load i32, i32* %c, align 4
  %sub3942 = sub nsw i32 %764, 48
  %conv3943 = sext i32 %sub3942 to i64
  %add3944 = add nsw i64 %763, %conv3943
  %cmp3945 = icmp slt i64 9223372036854775807, %add3944
  br i1 %cmp3945, label %cond.true.3947, label %cond.false.3965

cond.true.3947:                                   ; preds = %lor.lhs.false.3941, %land.lhs.true.3935, %cond.false.3919, %cond.true.3913, %cond.true.3900, %cond.end.3890, %cond.end.3856
  %765 = load i64, i64* %length, align 8
  %766 = load i32, i32* %c, align 4
  %sub3948 = sub nsw i32 %766, 48
  %conv3949 = sext i32 %sub3948 to i64
  %add3950 = add i64 %765, %conv3949
  %cmp3951 = icmp ule i64 %add3950, 9223372036854775807
  br i1 %cmp3951, label %cond.true.3953, label %cond.false.3957

cond.true.3953:                                   ; preds = %cond.true.3947
  %767 = load i64, i64* %length, align 8
  %768 = load i32, i32* %c, align 4
  %sub3954 = sub nsw i32 %768, 48
  %conv3955 = sext i32 %sub3954 to i64
  %add3956 = add i64 %767, %conv3955
  br label %cond.end.3963

cond.false.3957:                                  ; preds = %cond.true.3947
  %769 = load i64, i64* %length, align 8
  %770 = load i32, i32* %c, align 4
  %sub3958 = sub nsw i32 %770, 48
  %conv3959 = sext i32 %sub3958 to i64
  %add3960 = add i64 %769, %conv3959
  %sub3961 = sub i64 %add3960, -9223372036854775808
  %add3962 = add nsw i64 %sub3961, -9223372036854775808
  br label %cond.end.3963

cond.end.3963:                                    ; preds = %cond.false.3957, %cond.true.3953
  %cond3964 = phi i64 [ %add3956, %cond.true.3953 ], [ %add3962, %cond.false.3957 ]
  store i64 %cond3964, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3965:                                  ; preds = %lor.lhs.false.3941
  %771 = load i64, i64* %length, align 8
  %772 = load i32, i32* %c, align 4
  %sub3966 = sub nsw i32 %772, 48
  %conv3967 = sext i32 %sub3966 to i64
  %add3968 = add i64 %771, %conv3967
  %cmp3969 = icmp ule i64 %add3968, 9223372036854775807
  br i1 %cmp3969, label %cond.true.3971, label %cond.false.3975

cond.true.3971:                                   ; preds = %cond.false.3965
  %773 = load i64, i64* %length, align 8
  %774 = load i32, i32* %c, align 4
  %sub3972 = sub nsw i32 %774, 48
  %conv3973 = sext i32 %sub3972 to i64
  %add3974 = add i64 %773, %conv3973
  br label %cond.end.3981

cond.false.3975:                                  ; preds = %cond.false.3965
  %775 = load i64, i64* %length, align 8
  %776 = load i32, i32* %c, align 4
  %sub3976 = sub nsw i32 %776, 48
  %conv3977 = sext i32 %sub3976 to i64
  %add3978 = add i64 %775, %conv3977
  %sub3979 = sub i64 %add3978, -9223372036854775808
  %add3980 = add nsw i64 %sub3979, -9223372036854775808
  br label %cond.end.3981

cond.end.3981:                                    ; preds = %cond.false.3975, %cond.true.3971
  %cond3982 = phi i64 [ %add3974, %cond.true.3971 ], [ %add3980, %cond.false.3975 ]
  store i64 %cond3982, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

cond.false.3983:                                  ; preds = %cond.true.3768
  %777 = load i32, i32* %c, align 4
  %sub3984 = sub nsw i32 %777, 48
  %mul3985 = mul nsw i32 0, %sub3984
  %conv3986 = sext i32 %mul3985 to i64
  %778 = load i64, i64* %length, align 8
  %add3987 = add nsw i64 %conv3986, %778
  %mul3988 = mul nsw i64 0, %add3987
  %sub3989 = sub nsw i64 %mul3988, 1
  %cmp3990 = icmp slt i64 %sub3989, 0
  br i1 %cmp3990, label %cond.true.3992, label %cond.false.4015

cond.true.3992:                                   ; preds = %cond.false.3983
  %779 = load i32, i32* %c, align 4
  %sub3993 = sub nsw i32 %779, 48
  %mul3994 = mul nsw i32 0, %sub3993
  %conv3995 = sext i32 %mul3994 to i64
  %780 = load i64, i64* %length, align 8
  %add3996 = add nsw i64 %conv3995, %780
  %mul3997 = mul nsw i64 0, %add3996
  %add3998 = add nsw i64 %mul3997, 0
  %neg3999 = xor i64 %add3998, -1
  %cmp4000 = icmp eq i64 %neg3999, -1
  %conv4001 = zext i1 %cmp4000 to i32
  %sub4002 = sub nsw i32 0, %conv4001
  %conv4003 = sext i32 %sub4002 to i64
  %781 = load i32, i32* %c, align 4
  %sub4004 = sub nsw i32 %781, 48
  %mul4005 = mul nsw i32 0, %sub4004
  %conv4006 = sext i32 %mul4005 to i64
  %782 = load i64, i64* %length, align 8
  %add4007 = add nsw i64 %conv4006, %782
  %mul4008 = mul nsw i64 0, %add4007
  %add4009 = add nsw i64 %mul4008, 1
  %shl4010 = shl i64 %add4009, 62
  %sub4011 = sub nsw i64 %shl4010, 1
  %mul4012 = mul nsw i64 %sub4011, 2
  %add4013 = add nsw i64 %mul4012, 1
  %sub4014 = sub nsw i64 %conv4003, %add4013
  br label %cond.end.4022

cond.false.4015:                                  ; preds = %cond.false.3983
  %783 = load i32, i32* %c, align 4
  %sub4016 = sub nsw i32 %783, 48
  %mul4017 = mul nsw i32 0, %sub4016
  %conv4018 = sext i32 %mul4017 to i64
  %784 = load i64, i64* %length, align 8
  %add4019 = add nsw i64 %conv4018, %784
  %mul4020 = mul nsw i64 0, %add4019
  %add4021 = add nsw i64 %mul4020, 0
  br label %cond.end.4022

cond.end.4022:                                    ; preds = %cond.false.4015, %cond.true.3992
  %cond4023 = phi i64 [ %sub4014, %cond.true.3992 ], [ %add4021, %cond.false.4015 ]
  %cmp4024 = icmp slt i64 %cond4023, 0
  br i1 %cmp4024, label %cond.true.4026, label %cond.false.4110

cond.true.4026:                                   ; preds = %cond.end.4022
  %785 = load i32, i32* %c, align 4
  %sub4027 = sub nsw i32 %785, 48
  %cmp4028 = icmp slt i32 %sub4027, 0
  br i1 %cmp4028, label %cond.true.4030, label %cond.false.4076

cond.true.4030:                                   ; preds = %cond.true.4026
  %786 = load i64, i64* %length, align 8
  %787 = load i32, i32* %c, align 4
  %sub4031 = sub nsw i32 %787, 48
  %mul4032 = mul nsw i32 0, %sub4031
  %conv4033 = sext i32 %mul4032 to i64
  %788 = load i64, i64* %length, align 8
  %add4034 = add nsw i64 %conv4033, %788
  %mul4035 = mul nsw i64 0, %add4034
  %sub4036 = sub nsw i64 %mul4035, 1
  %cmp4037 = icmp slt i64 %sub4036, 0
  br i1 %cmp4037, label %cond.true.4039, label %cond.false.4062

cond.true.4039:                                   ; preds = %cond.true.4030
  %789 = load i32, i32* %c, align 4
  %sub4040 = sub nsw i32 %789, 48
  %mul4041 = mul nsw i32 0, %sub4040
  %conv4042 = sext i32 %mul4041 to i64
  %790 = load i64, i64* %length, align 8
  %add4043 = add nsw i64 %conv4042, %790
  %mul4044 = mul nsw i64 0, %add4043
  %add4045 = add nsw i64 %mul4044, 0
  %neg4046 = xor i64 %add4045, -1
  %cmp4047 = icmp eq i64 %neg4046, -1
  %conv4048 = zext i1 %cmp4047 to i32
  %sub4049 = sub nsw i32 0, %conv4048
  %conv4050 = sext i32 %sub4049 to i64
  %791 = load i32, i32* %c, align 4
  %sub4051 = sub nsw i32 %791, 48
  %mul4052 = mul nsw i32 0, %sub4051
  %conv4053 = sext i32 %mul4052 to i64
  %792 = load i64, i64* %length, align 8
  %add4054 = add nsw i64 %conv4053, %792
  %mul4055 = mul nsw i64 0, %add4054
  %add4056 = add nsw i64 %mul4055, 1
  %shl4057 = shl i64 %add4056, 62
  %sub4058 = sub nsw i64 %shl4057, 1
  %mul4059 = mul nsw i64 %sub4058, 2
  %add4060 = add nsw i64 %mul4059, 1
  %sub4061 = sub nsw i64 %conv4050, %add4060
  br label %cond.end.4069

cond.false.4062:                                  ; preds = %cond.true.4030
  %793 = load i32, i32* %c, align 4
  %sub4063 = sub nsw i32 %793, 48
  %mul4064 = mul nsw i32 0, %sub4063
  %conv4065 = sext i32 %mul4064 to i64
  %794 = load i64, i64* %length, align 8
  %add4066 = add nsw i64 %conv4065, %794
  %mul4067 = mul nsw i64 0, %add4066
  %add4068 = add nsw i64 %mul4067, 0
  br label %cond.end.4069

cond.end.4069:                                    ; preds = %cond.false.4062, %cond.true.4039
  %cond4070 = phi i64 [ %sub4061, %cond.true.4039 ], [ %add4068, %cond.false.4062 ]
  %795 = load i32, i32* %c, align 4
  %sub4071 = sub nsw i32 %795, 48
  %conv4072 = sext i32 %sub4071 to i64
  %sub4073 = sub nsw i64 %cond4070, %conv4072
  %cmp4074 = icmp slt i64 %786, %sub4073
  br i1 %cmp4074, label %cond.true.4159, label %lor.lhs.false.4139

cond.false.4076:                                  ; preds = %cond.true.4026
  %796 = load i32, i32* %c, align 4
  %sub4077 = sub nsw i32 %796, 48
  %mul4078 = mul nsw i32 0, %sub4077
  %conv4079 = sext i32 %mul4078 to i64
  %797 = load i64, i64* %length, align 8
  %add4080 = add nsw i64 %conv4079, %797
  %mul4081 = mul nsw i64 0, %add4080
  %sub4082 = sub nsw i64 %mul4081, 1
  %cmp4083 = icmp slt i64 %sub4082, 0
  br i1 %cmp4083, label %cond.true.4085, label %cond.false.4096

cond.true.4085:                                   ; preds = %cond.false.4076
  %798 = load i32, i32* %c, align 4
  %sub4086 = sub nsw i32 %798, 48
  %mul4087 = mul nsw i32 0, %sub4086
  %conv4088 = sext i32 %mul4087 to i64
  %799 = load i64, i64* %length, align 8
  %add4089 = add nsw i64 %conv4088, %799
  %mul4090 = mul nsw i64 0, %add4089
  %add4091 = add nsw i64 %mul4090, 1
  %shl4092 = shl i64 %add4091, 62
  %sub4093 = sub nsw i64 %shl4092, 1
  %mul4094 = mul nsw i64 %sub4093, 2
  %add4095 = add nsw i64 %mul4094, 1
  br label %cond.end.4103

cond.false.4096:                                  ; preds = %cond.false.4076
  %800 = load i32, i32* %c, align 4
  %sub4097 = sub nsw i32 %800, 48
  %mul4098 = mul nsw i32 0, %sub4097
  %conv4099 = sext i32 %mul4098 to i64
  %801 = load i64, i64* %length, align 8
  %add4100 = add nsw i64 %conv4099, %801
  %mul4101 = mul nsw i64 0, %add4100
  %sub4102 = sub nsw i64 %mul4101, 1
  br label %cond.end.4103

cond.end.4103:                                    ; preds = %cond.false.4096, %cond.true.4085
  %cond4104 = phi i64 [ %add4095, %cond.true.4085 ], [ %sub4102, %cond.false.4096 ]
  %802 = load i32, i32* %c, align 4
  %sub4105 = sub nsw i32 %802, 48
  %conv4106 = sext i32 %sub4105 to i64
  %sub4107 = sub nsw i64 %cond4104, %conv4106
  %803 = load i64, i64* %length, align 8
  %cmp4108 = icmp slt i64 %sub4107, %803
  br i1 %cmp4108, label %cond.true.4159, label %lor.lhs.false.4139

cond.false.4110:                                  ; preds = %cond.end.4022
  %804 = load i64, i64* %length, align 8
  %cmp4111 = icmp slt i64 %804, 0
  br i1 %cmp4111, label %cond.true.4113, label %cond.false.4121

cond.true.4113:                                   ; preds = %cond.false.4110
  %805 = load i32, i32* %c, align 4
  %sub4114 = sub nsw i32 %805, 48
  %conv4115 = sext i32 %sub4114 to i64
  %806 = load i64, i64* %length, align 8
  %807 = load i32, i32* %c, align 4
  %sub4116 = sub nsw i32 %807, 48
  %conv4117 = sext i32 %sub4116 to i64
  %add4118 = add nsw i64 %806, %conv4117
  %cmp4119 = icmp sle i64 %conv4115, %add4118
  br i1 %cmp4119, label %cond.true.4159, label %lor.lhs.false.4139

cond.false.4121:                                  ; preds = %cond.false.4110
  %808 = load i32, i32* %c, align 4
  %sub4122 = sub nsw i32 %808, 48
  %cmp4123 = icmp slt i32 %sub4122, 0
  br i1 %cmp4123, label %cond.true.4125, label %cond.false.4131

cond.true.4125:                                   ; preds = %cond.false.4121
  %809 = load i64, i64* %length, align 8
  %810 = load i64, i64* %length, align 8
  %811 = load i32, i32* %c, align 4
  %sub4126 = sub nsw i32 %811, 48
  %conv4127 = sext i32 %sub4126 to i64
  %add4128 = add nsw i64 %810, %conv4127
  %cmp4129 = icmp sle i64 %809, %add4128
  br i1 %cmp4129, label %cond.true.4159, label %lor.lhs.false.4139

cond.false.4131:                                  ; preds = %cond.false.4121
  %812 = load i64, i64* %length, align 8
  %813 = load i32, i32* %c, align 4
  %sub4132 = sub nsw i32 %813, 48
  %conv4133 = sext i32 %sub4132 to i64
  %add4134 = add nsw i64 %812, %conv4133
  %814 = load i32, i32* %c, align 4
  %sub4135 = sub nsw i32 %814, 48
  %conv4136 = sext i32 %sub4135 to i64
  %cmp4137 = icmp slt i64 %add4134, %conv4136
  br i1 %cmp4137, label %cond.true.4159, label %lor.lhs.false.4139

lor.lhs.false.4139:                               ; preds = %cond.false.4131, %cond.true.4125, %cond.true.4113, %cond.end.4103, %cond.end.4069
  %815 = load i64, i64* %length, align 8
  %816 = load i32, i32* %c, align 4
  %sub4140 = sub nsw i32 %816, 48
  %conv4141 = sext i32 %sub4140 to i64
  %add4142 = add nsw i64 %815, %conv4141
  %mul4143 = mul nsw i64 0, %add4142
  %sub4144 = sub nsw i64 %mul4143, 1
  %cmp4145 = icmp slt i64 %sub4144, 0
  br i1 %cmp4145, label %land.lhs.true.4147, label %lor.lhs.false.4153

land.lhs.true.4147:                               ; preds = %lor.lhs.false.4139
  %817 = load i64, i64* %length, align 8
  %818 = load i32, i32* %c, align 4
  %sub4148 = sub nsw i32 %818, 48
  %conv4149 = sext i32 %sub4148 to i64
  %add4150 = add nsw i64 %817, %conv4149
  %cmp4151 = icmp slt i64 %add4150, -9223372036854775808
  br i1 %cmp4151, label %cond.true.4159, label %lor.lhs.false.4153

lor.lhs.false.4153:                               ; preds = %land.lhs.true.4147, %lor.lhs.false.4139
  %819 = load i64, i64* %length, align 8
  %820 = load i32, i32* %c, align 4
  %sub4154 = sub nsw i32 %820, 48
  %conv4155 = sext i32 %sub4154 to i64
  %add4156 = add nsw i64 %819, %conv4155
  %cmp4157 = icmp slt i64 9223372036854775807, %add4156
  br i1 %cmp4157, label %cond.true.4159, label %cond.false.4177

cond.true.4159:                                   ; preds = %lor.lhs.false.4153, %land.lhs.true.4147, %cond.false.4131, %cond.true.4125, %cond.true.4113, %cond.end.4103, %cond.end.4069
  %821 = load i64, i64* %length, align 8
  %822 = load i32, i32* %c, align 4
  %sub4160 = sub nsw i32 %822, 48
  %conv4161 = sext i32 %sub4160 to i64
  %add4162 = add i64 %821, %conv4161
  %cmp4163 = icmp ule i64 %add4162, 9223372036854775807
  br i1 %cmp4163, label %cond.true.4165, label %cond.false.4169

cond.true.4165:                                   ; preds = %cond.true.4159
  %823 = load i64, i64* %length, align 8
  %824 = load i32, i32* %c, align 4
  %sub4166 = sub nsw i32 %824, 48
  %conv4167 = sext i32 %sub4166 to i64
  %add4168 = add i64 %823, %conv4167
  br label %cond.end.4175

cond.false.4169:                                  ; preds = %cond.true.4159
  %825 = load i64, i64* %length, align 8
  %826 = load i32, i32* %c, align 4
  %sub4170 = sub nsw i32 %826, 48
  %conv4171 = sext i32 %sub4170 to i64
  %add4172 = add i64 %825, %conv4171
  %sub4173 = sub i64 %add4172, -9223372036854775808
  %add4174 = add nsw i64 %sub4173, -9223372036854775808
  br label %cond.end.4175

cond.end.4175:                                    ; preds = %cond.false.4169, %cond.true.4165
  %cond4176 = phi i64 [ %add4168, %cond.true.4165 ], [ %add4174, %cond.false.4169 ]
  store i64 %cond4176, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.4177:                                  ; preds = %lor.lhs.false.4153
  %827 = load i64, i64* %length, align 8
  %828 = load i32, i32* %c, align 4
  %sub4178 = sub nsw i32 %828, 48
  %conv4179 = sext i32 %sub4178 to i64
  %add4180 = add i64 %827, %conv4179
  %cmp4181 = icmp ule i64 %add4180, 9223372036854775807
  br i1 %cmp4181, label %cond.true.4183, label %cond.false.4187

cond.true.4183:                                   ; preds = %cond.false.4177
  %829 = load i64, i64* %length, align 8
  %830 = load i32, i32* %c, align 4
  %sub4184 = sub nsw i32 %830, 48
  %conv4185 = sext i32 %sub4184 to i64
  %add4186 = add i64 %829, %conv4185
  br label %cond.end.4193

cond.false.4187:                                  ; preds = %cond.false.4177
  %831 = load i64, i64* %length, align 8
  %832 = load i32, i32* %c, align 4
  %sub4188 = sub nsw i32 %832, 48
  %conv4189 = sext i32 %sub4188 to i64
  %add4190 = add i64 %831, %conv4189
  %sub4191 = sub i64 %add4190, -9223372036854775808
  %add4192 = add nsw i64 %sub4191, -9223372036854775808
  br label %cond.end.4193

cond.end.4193:                                    ; preds = %cond.false.4187, %cond.true.4183
  %cond4194 = phi i64 [ %add4186, %cond.true.4183 ], [ %add4192, %cond.false.4187 ]
  store i64 %cond4194, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

cond.false.4195:                                  ; preds = %cond.false.3767
  br i1 false, label %cond.true.4196, label %cond.false.4410

cond.true.4196:                                   ; preds = %cond.false.4195
  %833 = load i32, i32* %c, align 4
  %sub4197 = sub nsw i32 %833, 48
  %conv4198 = sext i32 %sub4197 to i64
  %mul4199 = mul nsw i64 0, %conv4198
  %834 = load i64, i64* %length, align 8
  %add4200 = add nsw i64 %mul4199, %834
  %mul4201 = mul nsw i64 0, %add4200
  %sub4202 = sub nsw i64 %mul4201, 1
  %cmp4203 = icmp slt i64 %sub4202, 0
  br i1 %cmp4203, label %cond.true.4205, label %cond.false.4228

cond.true.4205:                                   ; preds = %cond.true.4196
  %835 = load i32, i32* %c, align 4
  %sub4206 = sub nsw i32 %835, 48
  %conv4207 = sext i32 %sub4206 to i64
  %mul4208 = mul nsw i64 0, %conv4207
  %836 = load i64, i64* %length, align 8
  %add4209 = add nsw i64 %mul4208, %836
  %mul4210 = mul nsw i64 0, %add4209
  %add4211 = add nsw i64 %mul4210, 0
  %neg4212 = xor i64 %add4211, -1
  %cmp4213 = icmp eq i64 %neg4212, -1
  %conv4214 = zext i1 %cmp4213 to i32
  %sub4215 = sub nsw i32 0, %conv4214
  %conv4216 = sext i32 %sub4215 to i64
  %837 = load i32, i32* %c, align 4
  %sub4217 = sub nsw i32 %837, 48
  %conv4218 = sext i32 %sub4217 to i64
  %mul4219 = mul nsw i64 0, %conv4218
  %838 = load i64, i64* %length, align 8
  %add4220 = add nsw i64 %mul4219, %838
  %mul4221 = mul nsw i64 0, %add4220
  %add4222 = add nsw i64 %mul4221, 1
  %shl4223 = shl i64 %add4222, 62
  %sub4224 = sub nsw i64 %shl4223, 1
  %mul4225 = mul nsw i64 %sub4224, 2
  %add4226 = add nsw i64 %mul4225, 1
  %sub4227 = sub nsw i64 %conv4216, %add4226
  br label %cond.end.4235

cond.false.4228:                                  ; preds = %cond.true.4196
  %839 = load i32, i32* %c, align 4
  %sub4229 = sub nsw i32 %839, 48
  %conv4230 = sext i32 %sub4229 to i64
  %mul4231 = mul nsw i64 0, %conv4230
  %840 = load i64, i64* %length, align 8
  %add4232 = add nsw i64 %mul4231, %840
  %mul4233 = mul nsw i64 0, %add4232
  %add4234 = add nsw i64 %mul4233, 0
  br label %cond.end.4235

cond.end.4235:                                    ; preds = %cond.false.4228, %cond.true.4205
  %cond4236 = phi i64 [ %sub4227, %cond.true.4205 ], [ %add4234, %cond.false.4228 ]
  %cmp4237 = icmp slt i64 %cond4236, 0
  br i1 %cmp4237, label %cond.true.4239, label %cond.false.4324

cond.true.4239:                                   ; preds = %cond.end.4235
  %841 = load i32, i32* %c, align 4
  %sub4240 = sub nsw i32 %841, 48
  %conv4241 = sext i32 %sub4240 to i64
  %cmp4242 = icmp slt i64 %conv4241, 0
  br i1 %cmp4242, label %cond.true.4244, label %cond.false.4290

cond.true.4244:                                   ; preds = %cond.true.4239
  %842 = load i64, i64* %length, align 8
  %843 = load i32, i32* %c, align 4
  %sub4245 = sub nsw i32 %843, 48
  %conv4246 = sext i32 %sub4245 to i64
  %mul4247 = mul nsw i64 0, %conv4246
  %844 = load i64, i64* %length, align 8
  %add4248 = add nsw i64 %mul4247, %844
  %mul4249 = mul nsw i64 0, %add4248
  %sub4250 = sub nsw i64 %mul4249, 1
  %cmp4251 = icmp slt i64 %sub4250, 0
  br i1 %cmp4251, label %cond.true.4253, label %cond.false.4276

cond.true.4253:                                   ; preds = %cond.true.4244
  %845 = load i32, i32* %c, align 4
  %sub4254 = sub nsw i32 %845, 48
  %conv4255 = sext i32 %sub4254 to i64
  %mul4256 = mul nsw i64 0, %conv4255
  %846 = load i64, i64* %length, align 8
  %add4257 = add nsw i64 %mul4256, %846
  %mul4258 = mul nsw i64 0, %add4257
  %add4259 = add nsw i64 %mul4258, 0
  %neg4260 = xor i64 %add4259, -1
  %cmp4261 = icmp eq i64 %neg4260, -1
  %conv4262 = zext i1 %cmp4261 to i32
  %sub4263 = sub nsw i32 0, %conv4262
  %conv4264 = sext i32 %sub4263 to i64
  %847 = load i32, i32* %c, align 4
  %sub4265 = sub nsw i32 %847, 48
  %conv4266 = sext i32 %sub4265 to i64
  %mul4267 = mul nsw i64 0, %conv4266
  %848 = load i64, i64* %length, align 8
  %add4268 = add nsw i64 %mul4267, %848
  %mul4269 = mul nsw i64 0, %add4268
  %add4270 = add nsw i64 %mul4269, 1
  %shl4271 = shl i64 %add4270, 62
  %sub4272 = sub nsw i64 %shl4271, 1
  %mul4273 = mul nsw i64 %sub4272, 2
  %add4274 = add nsw i64 %mul4273, 1
  %sub4275 = sub nsw i64 %conv4264, %add4274
  br label %cond.end.4283

cond.false.4276:                                  ; preds = %cond.true.4244
  %849 = load i32, i32* %c, align 4
  %sub4277 = sub nsw i32 %849, 48
  %conv4278 = sext i32 %sub4277 to i64
  %mul4279 = mul nsw i64 0, %conv4278
  %850 = load i64, i64* %length, align 8
  %add4280 = add nsw i64 %mul4279, %850
  %mul4281 = mul nsw i64 0, %add4280
  %add4282 = add nsw i64 %mul4281, 0
  br label %cond.end.4283

cond.end.4283:                                    ; preds = %cond.false.4276, %cond.true.4253
  %cond4284 = phi i64 [ %sub4275, %cond.true.4253 ], [ %add4282, %cond.false.4276 ]
  %851 = load i32, i32* %c, align 4
  %sub4285 = sub nsw i32 %851, 48
  %conv4286 = sext i32 %sub4285 to i64
  %sub4287 = sub nsw i64 %cond4284, %conv4286
  %cmp4288 = icmp slt i64 %842, %sub4287
  br i1 %cmp4288, label %cond.true.4374, label %lor.lhs.false.4354

cond.false.4290:                                  ; preds = %cond.true.4239
  %852 = load i32, i32* %c, align 4
  %sub4291 = sub nsw i32 %852, 48
  %conv4292 = sext i32 %sub4291 to i64
  %mul4293 = mul nsw i64 0, %conv4292
  %853 = load i64, i64* %length, align 8
  %add4294 = add nsw i64 %mul4293, %853
  %mul4295 = mul nsw i64 0, %add4294
  %sub4296 = sub nsw i64 %mul4295, 1
  %cmp4297 = icmp slt i64 %sub4296, 0
  br i1 %cmp4297, label %cond.true.4299, label %cond.false.4310

cond.true.4299:                                   ; preds = %cond.false.4290
  %854 = load i32, i32* %c, align 4
  %sub4300 = sub nsw i32 %854, 48
  %conv4301 = sext i32 %sub4300 to i64
  %mul4302 = mul nsw i64 0, %conv4301
  %855 = load i64, i64* %length, align 8
  %add4303 = add nsw i64 %mul4302, %855
  %mul4304 = mul nsw i64 0, %add4303
  %add4305 = add nsw i64 %mul4304, 1
  %shl4306 = shl i64 %add4305, 62
  %sub4307 = sub nsw i64 %shl4306, 1
  %mul4308 = mul nsw i64 %sub4307, 2
  %add4309 = add nsw i64 %mul4308, 1
  br label %cond.end.4317

cond.false.4310:                                  ; preds = %cond.false.4290
  %856 = load i32, i32* %c, align 4
  %sub4311 = sub nsw i32 %856, 48
  %conv4312 = sext i32 %sub4311 to i64
  %mul4313 = mul nsw i64 0, %conv4312
  %857 = load i64, i64* %length, align 8
  %add4314 = add nsw i64 %mul4313, %857
  %mul4315 = mul nsw i64 0, %add4314
  %sub4316 = sub nsw i64 %mul4315, 1
  br label %cond.end.4317

cond.end.4317:                                    ; preds = %cond.false.4310, %cond.true.4299
  %cond4318 = phi i64 [ %add4309, %cond.true.4299 ], [ %sub4316, %cond.false.4310 ]
  %858 = load i32, i32* %c, align 4
  %sub4319 = sub nsw i32 %858, 48
  %conv4320 = sext i32 %sub4319 to i64
  %sub4321 = sub nsw i64 %cond4318, %conv4320
  %859 = load i64, i64* %length, align 8
  %cmp4322 = icmp slt i64 %sub4321, %859
  br i1 %cmp4322, label %cond.true.4374, label %lor.lhs.false.4354

cond.false.4324:                                  ; preds = %cond.end.4235
  %860 = load i64, i64* %length, align 8
  %cmp4325 = icmp slt i64 %860, 0
  br i1 %cmp4325, label %cond.true.4327, label %cond.false.4335

cond.true.4327:                                   ; preds = %cond.false.4324
  %861 = load i32, i32* %c, align 4
  %sub4328 = sub nsw i32 %861, 48
  %conv4329 = sext i32 %sub4328 to i64
  %862 = load i64, i64* %length, align 8
  %863 = load i32, i32* %c, align 4
  %sub4330 = sub nsw i32 %863, 48
  %conv4331 = sext i32 %sub4330 to i64
  %add4332 = add nsw i64 %862, %conv4331
  %cmp4333 = icmp sle i64 %conv4329, %add4332
  br i1 %cmp4333, label %cond.true.4374, label %lor.lhs.false.4354

cond.false.4335:                                  ; preds = %cond.false.4324
  %864 = load i32, i32* %c, align 4
  %sub4336 = sub nsw i32 %864, 48
  %conv4337 = sext i32 %sub4336 to i64
  %cmp4338 = icmp slt i64 %conv4337, 0
  br i1 %cmp4338, label %cond.true.4340, label %cond.false.4346

cond.true.4340:                                   ; preds = %cond.false.4335
  %865 = load i64, i64* %length, align 8
  %866 = load i64, i64* %length, align 8
  %867 = load i32, i32* %c, align 4
  %sub4341 = sub nsw i32 %867, 48
  %conv4342 = sext i32 %sub4341 to i64
  %add4343 = add nsw i64 %866, %conv4342
  %cmp4344 = icmp sle i64 %865, %add4343
  br i1 %cmp4344, label %cond.true.4374, label %lor.lhs.false.4354

cond.false.4346:                                  ; preds = %cond.false.4335
  %868 = load i64, i64* %length, align 8
  %869 = load i32, i32* %c, align 4
  %sub4347 = sub nsw i32 %869, 48
  %conv4348 = sext i32 %sub4347 to i64
  %add4349 = add nsw i64 %868, %conv4348
  %870 = load i32, i32* %c, align 4
  %sub4350 = sub nsw i32 %870, 48
  %conv4351 = sext i32 %sub4350 to i64
  %cmp4352 = icmp slt i64 %add4349, %conv4351
  br i1 %cmp4352, label %cond.true.4374, label %lor.lhs.false.4354

lor.lhs.false.4354:                               ; preds = %cond.false.4346, %cond.true.4340, %cond.true.4327, %cond.end.4317, %cond.end.4283
  %871 = load i64, i64* %length, align 8
  %872 = load i32, i32* %c, align 4
  %sub4355 = sub nsw i32 %872, 48
  %conv4356 = sext i32 %sub4355 to i64
  %add4357 = add nsw i64 %871, %conv4356
  %mul4358 = mul nsw i64 0, %add4357
  %sub4359 = sub nsw i64 %mul4358, 1
  %cmp4360 = icmp slt i64 %sub4359, 0
  br i1 %cmp4360, label %land.lhs.true.4362, label %lor.lhs.false.4368

land.lhs.true.4362:                               ; preds = %lor.lhs.false.4354
  %873 = load i64, i64* %length, align 8
  %874 = load i32, i32* %c, align 4
  %sub4363 = sub nsw i32 %874, 48
  %conv4364 = sext i32 %sub4363 to i64
  %add4365 = add nsw i64 %873, %conv4364
  %cmp4366 = icmp slt i64 %add4365, -9223372036854775808
  br i1 %cmp4366, label %cond.true.4374, label %lor.lhs.false.4368

lor.lhs.false.4368:                               ; preds = %land.lhs.true.4362, %lor.lhs.false.4354
  %875 = load i64, i64* %length, align 8
  %876 = load i32, i32* %c, align 4
  %sub4369 = sub nsw i32 %876, 48
  %conv4370 = sext i32 %sub4369 to i64
  %add4371 = add nsw i64 %875, %conv4370
  %cmp4372 = icmp slt i64 9223372036854775807, %add4371
  br i1 %cmp4372, label %cond.true.4374, label %cond.false.4392

cond.true.4374:                                   ; preds = %lor.lhs.false.4368, %land.lhs.true.4362, %cond.false.4346, %cond.true.4340, %cond.true.4327, %cond.end.4317, %cond.end.4283
  %877 = load i64, i64* %length, align 8
  %878 = load i32, i32* %c, align 4
  %sub4375 = sub nsw i32 %878, 48
  %conv4376 = sext i32 %sub4375 to i64
  %add4377 = add i64 %877, %conv4376
  %cmp4378 = icmp ule i64 %add4377, 9223372036854775807
  br i1 %cmp4378, label %cond.true.4380, label %cond.false.4384

cond.true.4380:                                   ; preds = %cond.true.4374
  %879 = load i64, i64* %length, align 8
  %880 = load i32, i32* %c, align 4
  %sub4381 = sub nsw i32 %880, 48
  %conv4382 = sext i32 %sub4381 to i64
  %add4383 = add i64 %879, %conv4382
  br label %cond.end.4390

cond.false.4384:                                  ; preds = %cond.true.4374
  %881 = load i64, i64* %length, align 8
  %882 = load i32, i32* %c, align 4
  %sub4385 = sub nsw i32 %882, 48
  %conv4386 = sext i32 %sub4385 to i64
  %add4387 = add i64 %881, %conv4386
  %sub4388 = sub i64 %add4387, -9223372036854775808
  %add4389 = add nsw i64 %sub4388, -9223372036854775808
  br label %cond.end.4390

cond.end.4390:                                    ; preds = %cond.false.4384, %cond.true.4380
  %cond4391 = phi i64 [ %add4383, %cond.true.4380 ], [ %add4389, %cond.false.4384 ]
  store i64 %cond4391, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.4392:                                  ; preds = %lor.lhs.false.4368
  %883 = load i64, i64* %length, align 8
  %884 = load i32, i32* %c, align 4
  %sub4393 = sub nsw i32 %884, 48
  %conv4394 = sext i32 %sub4393 to i64
  %add4395 = add i64 %883, %conv4394
  %cmp4396 = icmp ule i64 %add4395, 9223372036854775807
  br i1 %cmp4396, label %cond.true.4398, label %cond.false.4402

cond.true.4398:                                   ; preds = %cond.false.4392
  %885 = load i64, i64* %length, align 8
  %886 = load i32, i32* %c, align 4
  %sub4399 = sub nsw i32 %886, 48
  %conv4400 = sext i32 %sub4399 to i64
  %add4401 = add i64 %885, %conv4400
  br label %cond.end.4408

cond.false.4402:                                  ; preds = %cond.false.4392
  %887 = load i64, i64* %length, align 8
  %888 = load i32, i32* %c, align 4
  %sub4403 = sub nsw i32 %888, 48
  %conv4404 = sext i32 %sub4403 to i64
  %add4405 = add i64 %887, %conv4404
  %sub4406 = sub i64 %add4405, -9223372036854775808
  %add4407 = add nsw i64 %sub4406, -9223372036854775808
  br label %cond.end.4408

cond.end.4408:                                    ; preds = %cond.false.4402, %cond.true.4398
  %cond4409 = phi i64 [ %add4401, %cond.true.4398 ], [ %add4407, %cond.false.4402 ]
  store i64 %cond4409, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

cond.false.4410:                                  ; preds = %cond.false.4195
  %889 = load i32, i32* %c, align 4
  %sub4411 = sub nsw i32 %889, 48
  %mul4412 = mul nsw i32 0, %sub4411
  %conv4413 = sext i32 %mul4412 to i64
  %890 = load i64, i64* %length, align 8
  %add4414 = add nsw i64 %conv4413, %890
  %mul4415 = mul nsw i64 0, %add4414
  %sub4416 = sub nsw i64 %mul4415, 1
  %cmp4417 = icmp slt i64 %sub4416, 0
  br i1 %cmp4417, label %cond.true.4419, label %cond.false.4442

cond.true.4419:                                   ; preds = %cond.false.4410
  %891 = load i32, i32* %c, align 4
  %sub4420 = sub nsw i32 %891, 48
  %mul4421 = mul nsw i32 0, %sub4420
  %conv4422 = sext i32 %mul4421 to i64
  %892 = load i64, i64* %length, align 8
  %add4423 = add nsw i64 %conv4422, %892
  %mul4424 = mul nsw i64 0, %add4423
  %add4425 = add nsw i64 %mul4424, 0
  %neg4426 = xor i64 %add4425, -1
  %cmp4427 = icmp eq i64 %neg4426, -1
  %conv4428 = zext i1 %cmp4427 to i32
  %sub4429 = sub nsw i32 0, %conv4428
  %conv4430 = sext i32 %sub4429 to i64
  %893 = load i32, i32* %c, align 4
  %sub4431 = sub nsw i32 %893, 48
  %mul4432 = mul nsw i32 0, %sub4431
  %conv4433 = sext i32 %mul4432 to i64
  %894 = load i64, i64* %length, align 8
  %add4434 = add nsw i64 %conv4433, %894
  %mul4435 = mul nsw i64 0, %add4434
  %add4436 = add nsw i64 %mul4435, 1
  %shl4437 = shl i64 %add4436, 62
  %sub4438 = sub nsw i64 %shl4437, 1
  %mul4439 = mul nsw i64 %sub4438, 2
  %add4440 = add nsw i64 %mul4439, 1
  %sub4441 = sub nsw i64 %conv4430, %add4440
  br label %cond.end.4449

cond.false.4442:                                  ; preds = %cond.false.4410
  %895 = load i32, i32* %c, align 4
  %sub4443 = sub nsw i32 %895, 48
  %mul4444 = mul nsw i32 0, %sub4443
  %conv4445 = sext i32 %mul4444 to i64
  %896 = load i64, i64* %length, align 8
  %add4446 = add nsw i64 %conv4445, %896
  %mul4447 = mul nsw i64 0, %add4446
  %add4448 = add nsw i64 %mul4447, 0
  br label %cond.end.4449

cond.end.4449:                                    ; preds = %cond.false.4442, %cond.true.4419
  %cond4450 = phi i64 [ %sub4441, %cond.true.4419 ], [ %add4448, %cond.false.4442 ]
  %cmp4451 = icmp slt i64 %cond4450, 0
  br i1 %cmp4451, label %cond.true.4453, label %cond.false.4537

cond.true.4453:                                   ; preds = %cond.end.4449
  %897 = load i32, i32* %c, align 4
  %sub4454 = sub nsw i32 %897, 48
  %cmp4455 = icmp slt i32 %sub4454, 0
  br i1 %cmp4455, label %cond.true.4457, label %cond.false.4503

cond.true.4457:                                   ; preds = %cond.true.4453
  %898 = load i64, i64* %length, align 8
  %899 = load i32, i32* %c, align 4
  %sub4458 = sub nsw i32 %899, 48
  %mul4459 = mul nsw i32 0, %sub4458
  %conv4460 = sext i32 %mul4459 to i64
  %900 = load i64, i64* %length, align 8
  %add4461 = add nsw i64 %conv4460, %900
  %mul4462 = mul nsw i64 0, %add4461
  %sub4463 = sub nsw i64 %mul4462, 1
  %cmp4464 = icmp slt i64 %sub4463, 0
  br i1 %cmp4464, label %cond.true.4466, label %cond.false.4489

cond.true.4466:                                   ; preds = %cond.true.4457
  %901 = load i32, i32* %c, align 4
  %sub4467 = sub nsw i32 %901, 48
  %mul4468 = mul nsw i32 0, %sub4467
  %conv4469 = sext i32 %mul4468 to i64
  %902 = load i64, i64* %length, align 8
  %add4470 = add nsw i64 %conv4469, %902
  %mul4471 = mul nsw i64 0, %add4470
  %add4472 = add nsw i64 %mul4471, 0
  %neg4473 = xor i64 %add4472, -1
  %cmp4474 = icmp eq i64 %neg4473, -1
  %conv4475 = zext i1 %cmp4474 to i32
  %sub4476 = sub nsw i32 0, %conv4475
  %conv4477 = sext i32 %sub4476 to i64
  %903 = load i32, i32* %c, align 4
  %sub4478 = sub nsw i32 %903, 48
  %mul4479 = mul nsw i32 0, %sub4478
  %conv4480 = sext i32 %mul4479 to i64
  %904 = load i64, i64* %length, align 8
  %add4481 = add nsw i64 %conv4480, %904
  %mul4482 = mul nsw i64 0, %add4481
  %add4483 = add nsw i64 %mul4482, 1
  %shl4484 = shl i64 %add4483, 62
  %sub4485 = sub nsw i64 %shl4484, 1
  %mul4486 = mul nsw i64 %sub4485, 2
  %add4487 = add nsw i64 %mul4486, 1
  %sub4488 = sub nsw i64 %conv4477, %add4487
  br label %cond.end.4496

cond.false.4489:                                  ; preds = %cond.true.4457
  %905 = load i32, i32* %c, align 4
  %sub4490 = sub nsw i32 %905, 48
  %mul4491 = mul nsw i32 0, %sub4490
  %conv4492 = sext i32 %mul4491 to i64
  %906 = load i64, i64* %length, align 8
  %add4493 = add nsw i64 %conv4492, %906
  %mul4494 = mul nsw i64 0, %add4493
  %add4495 = add nsw i64 %mul4494, 0
  br label %cond.end.4496

cond.end.4496:                                    ; preds = %cond.false.4489, %cond.true.4466
  %cond4497 = phi i64 [ %sub4488, %cond.true.4466 ], [ %add4495, %cond.false.4489 ]
  %907 = load i32, i32* %c, align 4
  %sub4498 = sub nsw i32 %907, 48
  %conv4499 = sext i32 %sub4498 to i64
  %sub4500 = sub nsw i64 %cond4497, %conv4499
  %cmp4501 = icmp slt i64 %898, %sub4500
  br i1 %cmp4501, label %cond.true.4586, label %lor.lhs.false.4566

cond.false.4503:                                  ; preds = %cond.true.4453
  %908 = load i32, i32* %c, align 4
  %sub4504 = sub nsw i32 %908, 48
  %mul4505 = mul nsw i32 0, %sub4504
  %conv4506 = sext i32 %mul4505 to i64
  %909 = load i64, i64* %length, align 8
  %add4507 = add nsw i64 %conv4506, %909
  %mul4508 = mul nsw i64 0, %add4507
  %sub4509 = sub nsw i64 %mul4508, 1
  %cmp4510 = icmp slt i64 %sub4509, 0
  br i1 %cmp4510, label %cond.true.4512, label %cond.false.4523

cond.true.4512:                                   ; preds = %cond.false.4503
  %910 = load i32, i32* %c, align 4
  %sub4513 = sub nsw i32 %910, 48
  %mul4514 = mul nsw i32 0, %sub4513
  %conv4515 = sext i32 %mul4514 to i64
  %911 = load i64, i64* %length, align 8
  %add4516 = add nsw i64 %conv4515, %911
  %mul4517 = mul nsw i64 0, %add4516
  %add4518 = add nsw i64 %mul4517, 1
  %shl4519 = shl i64 %add4518, 62
  %sub4520 = sub nsw i64 %shl4519, 1
  %mul4521 = mul nsw i64 %sub4520, 2
  %add4522 = add nsw i64 %mul4521, 1
  br label %cond.end.4530

cond.false.4523:                                  ; preds = %cond.false.4503
  %912 = load i32, i32* %c, align 4
  %sub4524 = sub nsw i32 %912, 48
  %mul4525 = mul nsw i32 0, %sub4524
  %conv4526 = sext i32 %mul4525 to i64
  %913 = load i64, i64* %length, align 8
  %add4527 = add nsw i64 %conv4526, %913
  %mul4528 = mul nsw i64 0, %add4527
  %sub4529 = sub nsw i64 %mul4528, 1
  br label %cond.end.4530

cond.end.4530:                                    ; preds = %cond.false.4523, %cond.true.4512
  %cond4531 = phi i64 [ %add4522, %cond.true.4512 ], [ %sub4529, %cond.false.4523 ]
  %914 = load i32, i32* %c, align 4
  %sub4532 = sub nsw i32 %914, 48
  %conv4533 = sext i32 %sub4532 to i64
  %sub4534 = sub nsw i64 %cond4531, %conv4533
  %915 = load i64, i64* %length, align 8
  %cmp4535 = icmp slt i64 %sub4534, %915
  br i1 %cmp4535, label %cond.true.4586, label %lor.lhs.false.4566

cond.false.4537:                                  ; preds = %cond.end.4449
  %916 = load i64, i64* %length, align 8
  %cmp4538 = icmp slt i64 %916, 0
  br i1 %cmp4538, label %cond.true.4540, label %cond.false.4548

cond.true.4540:                                   ; preds = %cond.false.4537
  %917 = load i32, i32* %c, align 4
  %sub4541 = sub nsw i32 %917, 48
  %conv4542 = sext i32 %sub4541 to i64
  %918 = load i64, i64* %length, align 8
  %919 = load i32, i32* %c, align 4
  %sub4543 = sub nsw i32 %919, 48
  %conv4544 = sext i32 %sub4543 to i64
  %add4545 = add nsw i64 %918, %conv4544
  %cmp4546 = icmp sle i64 %conv4542, %add4545
  br i1 %cmp4546, label %cond.true.4586, label %lor.lhs.false.4566

cond.false.4548:                                  ; preds = %cond.false.4537
  %920 = load i32, i32* %c, align 4
  %sub4549 = sub nsw i32 %920, 48
  %cmp4550 = icmp slt i32 %sub4549, 0
  br i1 %cmp4550, label %cond.true.4552, label %cond.false.4558

cond.true.4552:                                   ; preds = %cond.false.4548
  %921 = load i64, i64* %length, align 8
  %922 = load i64, i64* %length, align 8
  %923 = load i32, i32* %c, align 4
  %sub4553 = sub nsw i32 %923, 48
  %conv4554 = sext i32 %sub4553 to i64
  %add4555 = add nsw i64 %922, %conv4554
  %cmp4556 = icmp sle i64 %921, %add4555
  br i1 %cmp4556, label %cond.true.4586, label %lor.lhs.false.4566

cond.false.4558:                                  ; preds = %cond.false.4548
  %924 = load i64, i64* %length, align 8
  %925 = load i32, i32* %c, align 4
  %sub4559 = sub nsw i32 %925, 48
  %conv4560 = sext i32 %sub4559 to i64
  %add4561 = add nsw i64 %924, %conv4560
  %926 = load i32, i32* %c, align 4
  %sub4562 = sub nsw i32 %926, 48
  %conv4563 = sext i32 %sub4562 to i64
  %cmp4564 = icmp slt i64 %add4561, %conv4563
  br i1 %cmp4564, label %cond.true.4586, label %lor.lhs.false.4566

lor.lhs.false.4566:                               ; preds = %cond.false.4558, %cond.true.4552, %cond.true.4540, %cond.end.4530, %cond.end.4496
  %927 = load i64, i64* %length, align 8
  %928 = load i32, i32* %c, align 4
  %sub4567 = sub nsw i32 %928, 48
  %conv4568 = sext i32 %sub4567 to i64
  %add4569 = add nsw i64 %927, %conv4568
  %mul4570 = mul nsw i64 0, %add4569
  %sub4571 = sub nsw i64 %mul4570, 1
  %cmp4572 = icmp slt i64 %sub4571, 0
  br i1 %cmp4572, label %land.lhs.true.4574, label %lor.lhs.false.4580

land.lhs.true.4574:                               ; preds = %lor.lhs.false.4566
  %929 = load i64, i64* %length, align 8
  %930 = load i32, i32* %c, align 4
  %sub4575 = sub nsw i32 %930, 48
  %conv4576 = sext i32 %sub4575 to i64
  %add4577 = add nsw i64 %929, %conv4576
  %cmp4578 = icmp slt i64 %add4577, -9223372036854775808
  br i1 %cmp4578, label %cond.true.4586, label %lor.lhs.false.4580

lor.lhs.false.4580:                               ; preds = %land.lhs.true.4574, %lor.lhs.false.4566
  %931 = load i64, i64* %length, align 8
  %932 = load i32, i32* %c, align 4
  %sub4581 = sub nsw i32 %932, 48
  %conv4582 = sext i32 %sub4581 to i64
  %add4583 = add nsw i64 %931, %conv4582
  %cmp4584 = icmp slt i64 9223372036854775807, %add4583
  br i1 %cmp4584, label %cond.true.4586, label %cond.false.4604

cond.true.4586:                                   ; preds = %lor.lhs.false.4580, %land.lhs.true.4574, %cond.false.4558, %cond.true.4552, %cond.true.4540, %cond.end.4530, %cond.end.4496
  %933 = load i64, i64* %length, align 8
  %934 = load i32, i32* %c, align 4
  %sub4587 = sub nsw i32 %934, 48
  %conv4588 = sext i32 %sub4587 to i64
  %add4589 = add i64 %933, %conv4588
  %cmp4590 = icmp ule i64 %add4589, 9223372036854775807
  br i1 %cmp4590, label %cond.true.4592, label %cond.false.4596

cond.true.4592:                                   ; preds = %cond.true.4586
  %935 = load i64, i64* %length, align 8
  %936 = load i32, i32* %c, align 4
  %sub4593 = sub nsw i32 %936, 48
  %conv4594 = sext i32 %sub4593 to i64
  %add4595 = add i64 %935, %conv4594
  br label %cond.end.4602

cond.false.4596:                                  ; preds = %cond.true.4586
  %937 = load i64, i64* %length, align 8
  %938 = load i32, i32* %c, align 4
  %sub4597 = sub nsw i32 %938, 48
  %conv4598 = sext i32 %sub4597 to i64
  %add4599 = add i64 %937, %conv4598
  %sub4600 = sub i64 %add4599, -9223372036854775808
  %add4601 = add nsw i64 %sub4600, -9223372036854775808
  br label %cond.end.4602

cond.end.4602:                                    ; preds = %cond.false.4596, %cond.true.4592
  %cond4603 = phi i64 [ %add4595, %cond.true.4592 ], [ %add4601, %cond.false.4596 ]
  store i64 %cond4603, i64* %length, align 8
  br i1 true, label %if.then.4625, label %lor.lhs.false.4622

cond.false.4604:                                  ; preds = %lor.lhs.false.4580
  %939 = load i64, i64* %length, align 8
  %940 = load i32, i32* %c, align 4
  %sub4605 = sub nsw i32 %940, 48
  %conv4606 = sext i32 %sub4605 to i64
  %add4607 = add i64 %939, %conv4606
  %cmp4608 = icmp ule i64 %add4607, 9223372036854775807
  br i1 %cmp4608, label %cond.true.4610, label %cond.false.4614

cond.true.4610:                                   ; preds = %cond.false.4604
  %941 = load i64, i64* %length, align 8
  %942 = load i32, i32* %c, align 4
  %sub4611 = sub nsw i32 %942, 48
  %conv4612 = sext i32 %sub4611 to i64
  %add4613 = add i64 %941, %conv4612
  br label %cond.end.4620

cond.false.4614:                                  ; preds = %cond.false.4604
  %943 = load i64, i64* %length, align 8
  %944 = load i32, i32* %c, align 4
  %sub4615 = sub nsw i32 %944, 48
  %conv4616 = sext i32 %sub4615 to i64
  %add4617 = add i64 %943, %conv4616
  %sub4618 = sub i64 %add4617, -9223372036854775808
  %add4619 = add nsw i64 %sub4618, -9223372036854775808
  br label %cond.end.4620

cond.end.4620:                                    ; preds = %cond.false.4614, %cond.true.4610
  %cond4621 = phi i64 [ %add4613, %cond.true.4610 ], [ %add4619, %cond.false.4614 ]
  store i64 %cond4621, i64* %length, align 8
  br i1 false, label %if.then.4625, label %lor.lhs.false.4622

lor.lhs.false.4622:                               ; preds = %cond.end.4620, %cond.end.4602, %cond.end.4408, %cond.end.4390, %cond.end.4193, %cond.end.4175, %cond.end.3981, %cond.end.3963, %cond.end.3764, %cond.end.3745, %cond.end.3550, %cond.end.3531, %cond.end.3336, %cond.end.3304, %cond.end.3096, %cond.end.3064, %cond.end.2789, %cond.end.2757, %cond.end.2549, %cond.end.2517
  %945 = load i64, i64* %length, align 8
  %cmp4623 = icmp ult i64 -1, %945
  br i1 %cmp4623, label %if.then.4625, label %if.end.4626

if.then.4625:                                     ; preds = %lor.lhs.false.4622, %cond.end.4620, %cond.end.4602, %cond.end.4408, %cond.end.4390, %cond.end.4193, %cond.end.4175, %cond.end.3981, %cond.end.3963, %cond.end.3764, %cond.end.3745, %cond.end.3550, %cond.end.3531, %cond.end.3336, %cond.end.3304, %cond.end.3096, %cond.end.3064, %cond.end.2789, %cond.end.2757, %cond.end.2549, %cond.end.2517, %cond.end.2243, %cond.end.2231, %cond.end.2050, %cond.end.2038, %cond.end.1856, %cond.end.1844, %cond.end.1663, %cond.end.1651, %cond.end.1467, %cond.end.1451, %cond.end.1266, %cond.end.1250, %cond.end.1038, %cond.end.1015, %cond.end.823, %cond.end.800, %cond.end.553, %cond.end.530, %cond.end.338, %cond.end.315
  call void @memory_exhausted() #8
  unreachable

if.end.4626:                                      ; preds = %lor.lhs.false.4622
  br label %while.cond.74

while.end.4627:                                   ; preds = %land.end
  %946 = load i64, i64* %length, align 8
  %cmp4628 = icmp sle i64 %946, 1
  br i1 %cmp4628, label %if.then.4630, label %if.end.4631

if.then.4630:                                     ; preds = %while.end.4627
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i32 0, i32 0)) #8
  unreachable

if.end.4631:                                      ; preds = %while.end.4627
  %947 = load i32, i32* %c, align 4
  %cmp4632 = icmp ne i32 %947, 32
  br i1 %cmp4632, label %if.then.4634, label %if.end.4635

if.then.4634:                                     ; preds = %if.end.4631
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i32 0, i32 0)) #8
  unreachable

if.end.4635:                                      ; preds = %if.end.4631
  %948 = load i64, i64* %length, align 8
  %dec = add nsw i64 %948, -1
  store i64 %dec, i64* %length, align 8
  %949 = load i8*, i8** %saved_string, align 8
  call void @free(i8* %949) #5
  %950 = load i64, i64* %length, align 8
  %call4636 = call i8* @xmalloc(i64 %950)
  store i8* %call4636, i8** %saved_string, align 8
  store i64 0, i64* %i73, align 8
  br label %for.cond.4637

for.cond.4637:                                    ; preds = %for.inc.4644, %if.end.4635
  %951 = load i64, i64* %i73, align 8
  %952 = load i64, i64* %length, align 8
  %cmp4638 = icmp slt i64 %951, %952
  br i1 %cmp4638, label %for.body.4640, label %for.end.4646

for.body.4640:                                    ; preds = %for.cond.4637
  %953 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4641 = call i32 @_IO_getc(%struct._IO_FILE* %953)
  %conv4642 = trunc i32 %call4641 to i8
  %954 = load i64, i64* %i73, align 8
  %955 = load i8*, i8** %saved_string, align 8
  %arrayidx4643 = getelementptr inbounds i8, i8* %955, i64 %954
  store i8 %conv4642, i8* %arrayidx4643, align 1
  br label %for.inc.4644

for.inc.4644:                                     ; preds = %for.body.4640
  %956 = load i64, i64* %i73, align 8
  %inc4645 = add nsw i64 %956, 1
  store i64 %inc4645, i64* %i73, align 8
  br label %for.cond.4637

for.end.4646:                                     ; preds = %for.cond.4637
  %957 = load i64, i64* %length, align 8
  %sub4647 = sub nsw i64 %957, 1
  %958 = load i8*, i8** %saved_string, align 8
  %arrayidx4648 = getelementptr inbounds i8, i8* %958, i64 %sub4647
  store i8 0, i8* %arrayidx4648, align 1
  br label %while.cond.4649

while.cond.4649:                                  ; preds = %while.body.4656, %for.end.4646
  %959 = load i32, i32* %c, align 4
  %cmp4650 = icmp eq i32 %959, 10
  br i1 %cmp4650, label %lor.end.4655, label %lor.rhs.4652

lor.rhs.4652:                                     ; preds = %while.cond.4649
  %960 = load i32, i32* %c, align 4
  %cmp4653 = icmp eq i32 %960, 13
  br label %lor.end.4655

lor.end.4655:                                     ; preds = %lor.rhs.4652, %while.cond.4649
  %961 = phi i1 [ true, %while.cond.4649 ], [ %cmp4653, %lor.rhs.4652 ]
  br i1 %961, label %while.body.4656, label %while.end.4658

while.body.4656:                                  ; preds = %lor.end.4655
  %962 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4657 = call i32 @_IO_getc(%struct._IO_FILE* %962)
  store i32 %call4657, i32* %c, align 4
  br label %while.cond.4649

while.end.4658:                                   ; preds = %lor.end.4655
  br label %while.cond.4659

while.cond.4659:                                  ; preds = %while.body.4666, %while.end.4658
  %963 = load i32, i32* %c, align 4
  %cmp4660 = icmp ne i32 %963, 10
  br i1 %cmp4660, label %land.rhs.4662, label %land.end.4665

land.rhs.4662:                                    ; preds = %while.cond.4659
  %964 = load i32, i32* %c, align 4
  %cmp4663 = icmp ne i32 %964, 13
  br label %land.end.4665

land.end.4665:                                    ; preds = %land.rhs.4662, %while.cond.4659
  %965 = phi i1 [ false, %while.cond.4659 ], [ %cmp4663, %land.rhs.4662 ]
  br i1 %965, label %while.body.4666, label %while.end.4668

while.body.4666:                                  ; preds = %land.end.4665
  %966 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4667 = call i32 @_IO_getc(%struct._IO_FILE* %966)
  store i32 %call4667, i32* %c, align 4
  br label %while.cond.4659

while.end.4668:                                   ; preds = %land.end.4665
  br label %if.end.4669

if.end.4669:                                      ; preds = %while.end.4668, %if.then.68
  br label %while.cond

if.end.4670:                                      ; preds = %while.end
  %967 = load i32, i32* %c, align 4
  %cmp4671 = icmp ne i32 %967, 40
  br i1 %cmp4671, label %if.then.4673, label %if.end.4674

if.then.4673:                                     ; preds = %if.end.4670
  br label %while.cond

if.end.4674:                                      ; preds = %if.end.4670
  %968 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %968, i8* %arraydecay)
  %arraydecay4675 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4676 = call i32 @strcmp(i8* %arraydecay4675, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #7
  %tobool4677 = icmp ne i32 %call4676, 0
  br i1 %tobool4677, label %lor.lhs.false.4678, label %if.then.4686

lor.lhs.false.4678:                               ; preds = %if.end.4674
  %arraydecay4679 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4680 = call i32 @strcmp(i8* %arraydecay4679, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)) #7
  %tobool4681 = icmp ne i32 %call4680, 0
  br i1 %tobool4681, label %lor.lhs.false.4682, label %if.then.4686

lor.lhs.false.4682:                               ; preds = %lor.lhs.false.4678
  %arraydecay4683 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4684 = call i32 @strcmp(i8* %arraydecay4683, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)) #7
  %tobool4685 = icmp ne i32 %call4684, 0
  br i1 %tobool4685, label %if.else.4733, label %if.then.4686

if.then.4686:                                     ; preds = %lor.lhs.false.4682, %lor.lhs.false.4678, %if.end.4674
  store i8 70, i8* %type, align 1
  %969 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4687 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %969, i8* %arraydecay4687)
  %970 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4688 = call i32 @_IO_getc(%struct._IO_FILE* %970)
  store i32 %call4688, i32* %c, align 4
  %971 = load i32, i32* %c, align 4
  %cmp4689 = icmp eq i32 %971, 110
  br i1 %cmp4689, label %if.then.4691, label %if.else

if.then.4691:                                     ; preds = %if.then.4686
  %972 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4692 = call i32 @_IO_getc(%struct._IO_FILE* %972)
  store i32 %call4692, i32* %c, align 4
  %cmp4693 = icmp ne i32 %call4692, 105
  br i1 %cmp4693, label %if.then.4699, label %lor.lhs.false.4695

lor.lhs.false.4695:                               ; preds = %if.then.4691
  %973 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4696 = call i32 @_IO_getc(%struct._IO_FILE* %973)
  store i32 %call4696, i32* %c, align 4
  %cmp4697 = icmp ne i32 %call4696, 108
  br i1 %cmp4697, label %if.then.4699, label %if.end.4702

if.then.4699:                                     ; preds = %lor.lhs.false.4695, %if.then.4691
  %974 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay4700 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %975 = load i8*, i8** %filename.addr, align 8
  %call4701 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %974, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0), i8* %arraydecay4700, i8* %975)
  br label %while.cond

if.end.4702:                                      ; preds = %lor.lhs.false.4695
  br label %if.end.4716

if.else:                                          ; preds = %if.then.4686
  %976 = load i32, i32* %c, align 4
  %cmp4703 = icmp ne i32 %976, 40
  br i1 %cmp4703, label %if.then.4705, label %if.else.4708

if.then.4705:                                     ; preds = %if.else
  %977 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay4706 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %978 = load i8*, i8** %filename.addr, align 8
  %call4707 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %977, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0), i8* %arraydecay4706, i8* %978)
  br label %while.cond

if.else.4708:                                     ; preds = %if.else
  br label %while.cond.4709

while.cond.4709:                                  ; preds = %while.body.4712, %if.else.4708
  %979 = load i32, i32* %c, align 4
  %cmp4710 = icmp ne i32 %979, 41
  br i1 %cmp4710, label %while.body.4712, label %while.end.4714

while.body.4712:                                  ; preds = %while.cond.4709
  %980 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4713 = call i32 @_IO_getc(%struct._IO_FILE* %980)
  store i32 %call4713, i32* %c, align 4
  br label %while.cond.4709

while.end.4714:                                   ; preds = %while.cond.4709
  br label %if.end.4715

if.end.4715:                                      ; preds = %while.end.4714
  br label %if.end.4716

if.end.4716:                                      ; preds = %if.end.4715, %if.end.4702
  %981 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  call void @skip_white(%struct._IO_FILE* %981)
  %982 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4717 = call i32 @_IO_getc(%struct._IO_FILE* %982)
  store i32 %call4717, i32* %c, align 4
  %cmp4718 = icmp ne i32 %call4717, 34
  br i1 %cmp4718, label %if.then.4731, label %lor.lhs.false.4720

lor.lhs.false.4720:                               ; preds = %if.end.4716
  %983 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4721 = call i32 @_IO_getc(%struct._IO_FILE* %983)
  store i32 %call4721, i32* %c, align 4
  %cmp4722 = icmp ne i32 %call4721, 92
  br i1 %cmp4722, label %if.then.4731, label %lor.lhs.false.4724

lor.lhs.false.4724:                               ; preds = %lor.lhs.false.4720
  %984 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4725 = call i32 @_IO_getc(%struct._IO_FILE* %984)
  store i32 %call4725, i32* %c, align 4
  %cmp4726 = icmp ne i32 %call4725, 10
  br i1 %cmp4726, label %land.lhs.true.4728, label %if.end.4732

land.lhs.true.4728:                               ; preds = %lor.lhs.false.4724
  %985 = load i32, i32* %c, align 4
  %cmp4729 = icmp ne i32 %985, 13
  br i1 %cmp4729, label %if.then.4731, label %if.end.4732

if.then.4731:                                     ; preds = %land.lhs.true.4728, %lor.lhs.false.4720, %if.end.4716
  br label %while.cond

if.end.4732:                                      ; preds = %land.lhs.true.4728, %lor.lhs.false.4724
  br label %if.end.4889

if.else.4733:                                     ; preds = %lor.lhs.false.4682
  %arraydecay4734 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4735 = call i32 @strcmp(i8* %arraydecay4734, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)) #7
  %tobool4736 = icmp ne i32 %call4735, 0
  br i1 %tobool4736, label %lor.lhs.false.4737, label %if.then.4745

lor.lhs.false.4737:                               ; preds = %if.else.4733
  %arraydecay4738 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4739 = call i32 @strcmp(i8* %arraydecay4738, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #7
  %tobool4740 = icmp ne i32 %call4739, 0
  br i1 %tobool4740, label %lor.lhs.false.4741, label %if.then.4745

lor.lhs.false.4741:                               ; preds = %lor.lhs.false.4737
  %arraydecay4742 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4743 = call i32 @strcmp(i8* %arraydecay4742, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0)) #7
  %tobool4744 = icmp ne i32 %call4743, 0
  br i1 %tobool4744, label %if.else.4754, label %if.then.4745

if.then.4745:                                     ; preds = %lor.lhs.false.4741, %lor.lhs.false.4737, %if.else.4733
  store i8 86, i8* %type, align 1
  %986 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4746 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %986, i8* %arraydecay4746)
  %987 = load i8*, i8** %saved_string, align 8
  %cmp4747 = icmp eq i8* %987, null
  br i1 %cmp4747, label %if.then.4749, label %if.end.4753

if.then.4749:                                     ; preds = %if.then.4745
  %988 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4750 = call zeroext i1 @search_lisp_doc_at_eol(%struct._IO_FILE* %988)
  br i1 %call4750, label %if.end.4752, label %if.then.4751

if.then.4751:                                     ; preds = %if.then.4749
  br label %while.cond

if.end.4752:                                      ; preds = %if.then.4749
  br label %if.end.4753

if.end.4753:                                      ; preds = %if.end.4752, %if.then.4745
  br label %if.end.4888

if.else.4754:                                     ; preds = %lor.lhs.false.4741
  %arraydecay4755 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4756 = call i32 @strcmp(i8* %arraydecay4755, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0)) #7
  %tobool4757 = icmp ne i32 %call4756, 0
  br i1 %tobool4757, label %lor.lhs.false.4758, label %if.then.4762

lor.lhs.false.4758:                               ; preds = %if.else.4754
  %arraydecay4759 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4760 = call i32 @strcmp(i8* %arraydecay4759, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0)) #7
  %tobool4761 = icmp ne i32 %call4760, 0
  br i1 %tobool4761, label %if.else.4796, label %if.then.4762

if.then.4762:                                     ; preds = %lor.lhs.false.4758, %if.else.4754
  store i8 86, i8* %type, align 1
  %989 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4763 = call i32 @_IO_getc(%struct._IO_FILE* %989)
  store i32 %call4763, i32* %c, align 4
  %990 = load i32, i32* %c, align 4
  %cmp4764 = icmp eq i32 %990, 39
  br i1 %cmp4764, label %if.then.4766, label %if.else.4768

if.then.4766:                                     ; preds = %if.then.4762
  %991 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4767 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %991, i8* %arraydecay4767)
  br label %if.end.4788

if.else.4768:                                     ; preds = %if.then.4762
  %992 = load i32, i32* %c, align 4
  %cmp4769 = icmp ne i32 %992, 40
  br i1 %cmp4769, label %if.then.4771, label %if.end.4773

if.then.4771:                                     ; preds = %if.else.4768
  %993 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %994 = load i8*, i8** %filename.addr, align 8
  %call4772 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %993, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i32 0, i32 0), i8* %994)
  br label %while.cond

if.end.4773:                                      ; preds = %if.else.4768
  %995 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4774 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %995, i8* %arraydecay4774)
  %arraydecay4775 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4776 = call i32 @strcmp(i8* %arraydecay4775, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #7
  %tobool4777 = icmp ne i32 %call4776, 0
  br i1 %tobool4777, label %if.then.4778, label %if.end.4780

if.then.4778:                                     ; preds = %if.end.4773
  %996 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %997 = load i8*, i8** %filename.addr, align 8
  %call4779 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %996, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i32 0, i32 0), i8* %997)
  br label %while.cond

if.end.4780:                                      ; preds = %if.end.4773
  %998 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4781 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %998, i8* %arraydecay4781)
  %999 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4782 = call i32 @_IO_getc(%struct._IO_FILE* %999)
  store i32 %call4782, i32* %c, align 4
  %1000 = load i32, i32* %c, align 4
  %cmp4783 = icmp ne i32 %1000, 41
  br i1 %cmp4783, label %if.then.4785, label %if.end.4787

if.then.4785:                                     ; preds = %if.end.4780
  %1001 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1002 = load i8*, i8** %filename.addr, align 8
  %call4786 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1001, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.34, i32 0, i32 0), i8* %1002)
  br label %while.cond

if.end.4787:                                      ; preds = %if.end.4780
  br label %if.end.4788

if.end.4788:                                      ; preds = %if.end.4787, %if.then.4766
  %1003 = load i8*, i8** %saved_string, align 8
  %cmp4789 = icmp eq i8* %1003, null
  br i1 %cmp4789, label %if.then.4791, label %if.end.4795

if.then.4791:                                     ; preds = %if.end.4788
  %1004 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4792 = call zeroext i1 @search_lisp_doc_at_eol(%struct._IO_FILE* %1004)
  br i1 %call4792, label %if.end.4794, label %if.then.4793

if.then.4793:                                     ; preds = %if.then.4791
  br label %while.cond

if.end.4794:                                      ; preds = %if.then.4791
  br label %if.end.4795

if.end.4795:                                      ; preds = %if.end.4794, %if.end.4788
  br label %if.end.4887

if.else.4796:                                     ; preds = %lor.lhs.false.4758
  %arraydecay4797 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4798 = call i32 @strcmp(i8* %arraydecay4797, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0)) #7
  %tobool4799 = icmp ne i32 %call4798, 0
  br i1 %tobool4799, label %lor.lhs.false.4800, label %if.then.4804

lor.lhs.false.4800:                               ; preds = %if.else.4796
  %arraydecay4801 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4802 = call i32 @strcmp(i8* %arraydecay4801, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #7
  %tobool4803 = icmp ne i32 %call4802, 0
  br i1 %tobool4803, label %if.else.4838, label %if.then.4804

if.then.4804:                                     ; preds = %lor.lhs.false.4800, %if.else.4796
  store i8 70, i8* %type, align 1
  %1005 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4805 = call i32 @_IO_getc(%struct._IO_FILE* %1005)
  store i32 %call4805, i32* %c, align 4
  %1006 = load i32, i32* %c, align 4
  %cmp4806 = icmp eq i32 %1006, 39
  br i1 %cmp4806, label %if.then.4808, label %if.else.4810

if.then.4808:                                     ; preds = %if.then.4804
  %1007 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4809 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %1007, i8* %arraydecay4809)
  br label %if.end.4830

if.else.4810:                                     ; preds = %if.then.4804
  %1008 = load i32, i32* %c, align 4
  %cmp4811 = icmp ne i32 %1008, 40
  br i1 %cmp4811, label %if.then.4813, label %if.end.4815

if.then.4813:                                     ; preds = %if.else.4810
  %1009 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1010 = load i8*, i8** %filename.addr, align 8
  %call4814 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1009, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i8* %1010)
  br label %while.cond

if.end.4815:                                      ; preds = %if.else.4810
  %1011 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4816 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %1011, i8* %arraydecay4816)
  %arraydecay4817 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4818 = call i32 @strcmp(i8* %arraydecay4817, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #7
  %tobool4819 = icmp ne i32 %call4818, 0
  br i1 %tobool4819, label %if.then.4820, label %if.end.4822

if.then.4820:                                     ; preds = %if.end.4815
  %1012 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1013 = load i8*, i8** %filename.addr, align 8
  %call4821 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1012, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i8* %1013)
  br label %while.cond

if.end.4822:                                      ; preds = %if.end.4815
  %1014 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4823 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %1014, i8* %arraydecay4823)
  %1015 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4824 = call i32 @_IO_getc(%struct._IO_FILE* %1015)
  store i32 %call4824, i32* %c, align 4
  %1016 = load i32, i32* %c, align 4
  %cmp4825 = icmp ne i32 %1016, 41
  br i1 %cmp4825, label %if.then.4827, label %if.end.4829

if.then.4827:                                     ; preds = %if.end.4822
  %1017 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1018 = load i8*, i8** %filename.addr, align 8
  %call4828 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1017, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i8* %1018)
  br label %while.cond

if.end.4829:                                      ; preds = %if.end.4822
  br label %if.end.4830

if.end.4830:                                      ; preds = %if.end.4829, %if.then.4808
  %1019 = load i8*, i8** %saved_string, align 8
  %cmp4831 = icmp eq i8* %1019, null
  br i1 %cmp4831, label %if.then.4833, label %if.end.4837

if.then.4833:                                     ; preds = %if.end.4830
  %1020 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4834 = call zeroext i1 @search_lisp_doc_at_eol(%struct._IO_FILE* %1020)
  br i1 %call4834, label %if.end.4836, label %if.then.4835

if.then.4835:                                     ; preds = %if.then.4833
  br label %while.cond

if.end.4836:                                      ; preds = %if.then.4833
  br label %if.end.4837

if.end.4837:                                      ; preds = %if.end.4836, %if.end.4830
  br label %if.end.4886

if.else.4838:                                     ; preds = %lor.lhs.false.4800
  %arraydecay4839 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4840 = call i32 @strcmp(i8* %arraydecay4839, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0)) #7
  %tobool4841 = icmp ne i32 %call4840, 0
  br i1 %tobool4841, label %if.else.4884, label %if.then.4842

if.then.4842:                                     ; preds = %if.else.4838
  store i8 70, i8* %type, align 1
  %1021 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4843 = call i32 @_IO_getc(%struct._IO_FILE* %1021)
  store i32 %call4843, i32* %c, align 4
  %1022 = load i32, i32* %c, align 4
  %cmp4844 = icmp eq i32 %1022, 39
  br i1 %cmp4844, label %if.then.4846, label %if.else.4848

if.then.4846:                                     ; preds = %if.then.4842
  %1023 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4847 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %1023, i8* %arraydecay4847)
  br label %if.end.4868

if.else.4848:                                     ; preds = %if.then.4842
  %1024 = load i32, i32* %c, align 4
  %cmp4849 = icmp ne i32 %1024, 40
  br i1 %cmp4849, label %if.then.4851, label %if.end.4853

if.then.4851:                                     ; preds = %if.else.4848
  %1025 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1026 = load i8*, i8** %filename.addr, align 8
  %call4852 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1025, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), i8* %1026)
  br label %while.cond

if.end.4853:                                      ; preds = %if.else.4848
  %1027 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4854 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %1027, i8* %arraydecay4854)
  %arraydecay4855 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4856 = call i32 @strcmp(i8* %arraydecay4855, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #7
  %tobool4857 = icmp ne i32 %call4856, 0
  br i1 %tobool4857, label %if.then.4858, label %if.end.4860

if.then.4858:                                     ; preds = %if.end.4853
  %1028 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1029 = load i8*, i8** %filename.addr, align 8
  %call4859 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1028, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), i8* %1029)
  br label %while.cond

if.end.4860:                                      ; preds = %if.end.4853
  %1030 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %arraydecay4861 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  call void @read_lisp_symbol(%struct._IO_FILE* %1030, i8* %arraydecay4861)
  %1031 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4862 = call i32 @_IO_getc(%struct._IO_FILE* %1031)
  store i32 %call4862, i32* %c, align 4
  %1032 = load i32, i32* %c, align 4
  %cmp4863 = icmp ne i32 %1032, 41
  br i1 %cmp4863, label %if.then.4865, label %if.end.4867

if.then.4865:                                     ; preds = %if.end.4860
  %1033 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1034 = load i8*, i8** %filename.addr, align 8
  %call4866 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1033, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i32 0, i32 0), i8* %1034)
  br label %while.cond

if.end.4867:                                      ; preds = %if.end.4860
  br label %if.end.4868

if.end.4868:                                      ; preds = %if.end.4867, %if.then.4846
  %1035 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  call void @skip_white(%struct._IO_FILE* %1035)
  %1036 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4869 = call i32 @_IO_getc(%struct._IO_FILE* %1036)
  store i32 %call4869, i32* %c, align 4
  %cmp4870 = icmp ne i32 %call4869, 34
  br i1 %cmp4870, label %if.then.4872, label %if.end.4875

if.then.4872:                                     ; preds = %if.end.4868
  %1037 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay4873 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %1038 = load i8*, i8** %filename.addr, align 8
  %call4874 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1037, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0), i8* %arraydecay4873, i8* %1038)
  br label %while.cond

if.end.4875:                                      ; preds = %if.end.4868
  %1039 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4876 = call i32 @read_c_string_or_comment(%struct._IO_FILE* %1039, i32 0, i1 zeroext false, i8* null)
  %1040 = load i8*, i8** %saved_string, align 8
  %cmp4877 = icmp eq i8* %1040, null
  br i1 %cmp4877, label %if.then.4879, label %if.end.4883

if.then.4879:                                     ; preds = %if.end.4875
  %1041 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4880 = call zeroext i1 @search_lisp_doc_at_eol(%struct._IO_FILE* %1041)
  br i1 %call4880, label %if.end.4882, label %if.then.4881

if.then.4881:                                     ; preds = %if.then.4879
  br label %while.cond

if.end.4882:                                      ; preds = %if.then.4879
  br label %if.end.4883

if.end.4883:                                      ; preds = %if.end.4882, %if.end.4875
  br label %if.end.4885

if.else.4884:                                     ; preds = %if.else.4838
  br label %while.cond

if.end.4885:                                      ; preds = %if.end.4883
  br label %if.end.4886

if.end.4886:                                      ; preds = %if.end.4885, %if.end.4837
  br label %if.end.4887

if.end.4887:                                      ; preds = %if.end.4886, %if.end.4795
  br label %if.end.4888

if.end.4888:                                      ; preds = %if.end.4887, %if.end.4753
  br label %if.end.4889

if.end.4889:                                      ; preds = %if.end.4888, %if.end.4732
  %1042 = load i8, i8* %type, align 1
  %conv4890 = sext i8 %1042 to i32
  %arraydecay4891 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call4892 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %conv4890, i8* %arraydecay4891)
  %1043 = load i8*, i8** %saved_string, align 8
  %tobool4893 = icmp ne i8* %1043, null
  br i1 %tobool4893, label %if.then.4894, label %if.else.4896

if.then.4894:                                     ; preds = %if.end.4889
  %1044 = load i8*, i8** %saved_string, align 8
  %1045 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4895 = call i32 @fputs(i8* %1044, %struct._IO_FILE* %1045)
  %1046 = load i8*, i8** %saved_string, align 8
  call void @free(i8* %1046) #5
  store i8* null, i8** %saved_string, align 8
  br label %if.end.4898

if.else.4896:                                     ; preds = %if.end.4889
  %1047 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4897 = call i32 @read_c_string_or_comment(%struct._IO_FILE* %1047, i32 1, i1 zeroext false, i8* null)
  br label %if.end.4898

if.end.4898:                                      ; preds = %if.else.4896, %if.then.4894
  br label %while.cond

while.end.4899:                                   ; preds = %while.cond
  %1048 = load i8*, i8** %saved_string, align 8
  call void @free(i8* %1048) #5
  %1049 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4900 = call i32 @ferror(%struct._IO_FILE* %1049) #5
  %tobool4901 = icmp ne i32 %call4900, 0
  br i1 %tobool4901, label %if.then.4906, label %lor.lhs.false.4902

lor.lhs.false.4902:                               ; preds = %while.end.4899
  %1050 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %call4903 = call i32 @fclose(%struct._IO_FILE* %1050)
  %cmp4904 = icmp ne i32 %call4903, 0
  br i1 %cmp4904, label %if.then.4906, label %if.end.4907

if.then.4906:                                     ; preds = %lor.lhs.false.4902, %while.end.4899
  %1051 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* %1051) #8
  unreachable

if.end.4907:                                      ; preds = %lor.lhs.false.4902
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scan_c_file(i8* %filename, i8* %mode) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %infile = alloca %struct._IO_FILE*, align 8
  %extension = alloca i8, align 1
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %sub = sub i64 %call, 1
  %1 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %extension, align 1
  %3 = load i8, i8* %extension, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 111
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %filename.addr, align 8
  %call2 = call i64 @strlen(i8* %4) #7
  %sub3 = sub i64 %call2, 1
  %5 = load i8*, i8** %filename.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %sub3
  store i8 99, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i8*, i8** %mode.addr, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %6, i8* %7)
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %infile, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8, i8* %extension, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 111
  br i1 %cmp9, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %land.lhs.true
  %10 = load i8*, i8** %filename.addr, align 8
  %call12 = call i64 @strlen(i8* %10) #7
  %sub13 = sub i64 %call12, 1
  %11 = load i8*, i8** %filename.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 %sub13
  store i8 109, i8* %arrayidx14, align 1
  %12 = load i8*, i8** %filename.addr, align 8
  %13 = load i8*, i8** %mode.addr, align 8
  %call15 = call %struct._IO_FILE* @fopen(i8* %12, i8* %13)
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %infile, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %cmp16 = icmp eq %struct._IO_FILE* %14, null
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.then.11
  %15 = load i8*, i8** %filename.addr, align 8
  %call19 = call i64 @strlen(i8* %15) #7
  %sub20 = sub i64 %call19, 1
  %16 = load i8*, i8** %filename.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %16, i64 %sub20
  store i8 99, i8* %arrayidx21, align 1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.then.11
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %if.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  %cmp24 = icmp eq %struct._IO_FILE* %17, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %18 = load i8*, i8** %filename.addr, align 8
  call void @perror(i8* %18)
  call void @exit(i32 1) #9
  unreachable

if.end.27:                                        ; preds = %if.end.23
  %19 = load i8, i8* %extension, align 1
  %20 = load i8*, i8** %filename.addr, align 8
  %call28 = call i64 @strlen(i8* %20) #7
  %sub29 = sub i64 %call28, 1
  %21 = load i8*, i8** %filename.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %21, i64 %sub29
  store i8 %19, i8* %arrayidx30, align 1
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %infile, align 8
  call void @scan_c_stream(%struct._IO_FILE* %22)
  ret void
}

declare i32 @printf(i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind uwtable
define internal void @memory_exhausted() #4 {
entry:
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0)) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @xmalloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #5
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @memory_exhausted() #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %result, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define internal void @read_lisp_symbol(%struct._IO_FILE* %infile, i8* %buffer) #0 {
entry:
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %fillp = alloca i8*, align 8
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  store i8* %0, i8** %fillp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  call void @skip_white(%struct._IO_FILE* %1)
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.32
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %c, align 1
  %3 = load i8, i8* %c, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv1, 92
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  %conv4 = trunc i32 %call3 to i8
  %5 = load i8*, i8** %fillp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %fillp, align 8
  store i8 %conv4, i8* %incdec.ptr, align 1
  br label %if.end.32

if.else:                                          ; preds = %while.body
  %6 = load i8, i8* %c, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 32
  br i1 %cmp6, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i8, i8* %c, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 9
  br i1 %cmp9, label %if.then.27, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %8 = load i8, i8* %c, align 1
  %conv12 = sext i8 %8 to i32
  %cmp13 = icmp eq i32 %conv12, 10
  br i1 %cmp13, label %if.then.27, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %9 = load i8, i8* %c, align 1
  %conv16 = sext i8 %9 to i32
  %cmp17 = icmp eq i32 %conv16, 13
  br i1 %cmp17, label %if.then.27, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %10 = load i8, i8* %c, align 1
  %conv20 = sext i8 %10 to i32
  %cmp21 = icmp eq i32 %conv20, 40
  br i1 %cmp21, label %if.then.27, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.19
  %11 = load i8, i8* %c, align 1
  %conv24 = sext i8 %11 to i32
  %cmp25 = icmp eq i32 %conv24, 41
  br i1 %cmp25, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %lor.lhs.false.23, %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false, %if.else
  %12 = load i8, i8* %c, align 1
  %conv28 = sext i8 %12 to i32
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call29 = call i32 @ungetc(i32 %conv28, %struct._IO_FILE* %13)
  %14 = load i8*, i8** %fillp, align 8
  store i8 0, i8* %14, align 1
  br label %while.end

if.else.30:                                       ; preds = %lor.lhs.false.23
  %15 = load i8, i8* %c, align 1
  %16 = load i8*, i8** %fillp, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr31, i8** %fillp, align 8
  store i8 %15, i8* %16, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then
  br label %while.body

while.end:                                        ; preds = %if.then.27
  %17 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %if.end.36, label %if.then.33

if.then.33:                                       ; preds = %while.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8, i8* %c, align 1
  %conv34 = sext i8 %20 to i32
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i32 0, i32 0), i32 %conv34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %while.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  call void @skip_white(%struct._IO_FILE* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @skip_white(%struct._IO_FILE* %infile) #0 {
entry:
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i8, align 1
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  store i8 32, i8* %c, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load i8, i8* %c, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %2 = load i8, i8* %c, align 1
  %conv6 = sext i8 %2 to i32
  %cmp7 = icmp eq i32 %conv6, 10
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.5
  %3 = load i8, i8* %c, align 1
  %conv9 = sext i8 %3 to i32
  %cmp10 = icmp eq i32 %conv9, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.5, %lor.lhs.false, %while.cond
  %4 = phi i1 [ true, %lor.lhs.false.5 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %5)
  %conv12 = trunc i32 %call to i8
  store i8 %conv12, i8* %c, align 1
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %6 = load i8, i8* %c, align 1
  %conv13 = sext i8 %6 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call14 = call i32 @ungetc(i32 %conv13, %struct._IO_FILE* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @search_lisp_doc_at_eol(%struct._IO_FILE* %infile) #0 {
entry:
  %retval = alloca i1, align 1
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  store i32 0, i32* %c, align 4
  store i32 0, i32* %c1, align 4
  store i32 0, i32* %c2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %0, 10
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %cmp1 = icmp ne i32 %1, 13
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, i32* %c, align 4
  %cmp2 = icmp ne i32 %2, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %c1, align 4
  store i32 %4, i32* %c2, align 4
  %5 = load i32, i32* %c, align 4
  store i32 %5, i32* %c1, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %6)
  store i32 %call, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %c2, align 4
  %cmp3 = icmp ne i32 %7, 34
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %8 = load i32, i32* %c1, align 4
  %cmp4 = icmp ne i32 %8, 92
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %9 = load i32, i32* %c, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call5 = call i32 @ungetc(i32 %9, %struct._IO_FILE* %10)
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i1, i1* %retval
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @read_c_string_or_comment(%struct._IO_FILE* %infile, i32 %printflag, i1 zeroext %comment, i8* %saw_usage) #0 {
entry:
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %printflag.addr = alloca i32, align 4
  %comment.addr = alloca i8, align 1
  %saw_usage.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %state = alloca %struct.rcsoc_state, align 8
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  store i32 %printflag, i32* %printflag.addr, align 4
  %frombool = zext i1 %comment to i8
  store i8 %frombool, i8* %comment.addr, align 1
  store i8* %saw_usage, i8** %saw_usage.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %in_file = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 2
  store %struct._IO_FILE* %0, %struct._IO_FILE** %in_file, align 8
  %1 = load i32, i32* %printflag.addr, align 4
  %cmp = icmp slt i32 %1, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @input_buffer, i32 0, i32 0), i8* null
  %buf_ptr = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 3
  store i8* %cond, i8** %buf_ptr, align 8
  %2 = load i32, i32* %printflag.addr, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi %struct._IO_FILE* [ %3, %cond.true ], [ null, %cond.false ]
  %out_file = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 4
  store %struct._IO_FILE* %cond2, %struct._IO_FILE** %out_file, align 8
  %pending_spaces = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 0
  store i64 0, i64* %pending_spaces, align 8
  %pending_newlines = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 1
  store i64 0, i64* %pending_newlines, align 8
  %4 = load i8*, i8** %saw_usage.addr, align 8
  %tobool = icmp ne i8* %4, null
  %cond3 = select i1 %tobool, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* null
  %keyword = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 5
  store i8* %cond3, i8** %keyword, align 8
  %keyword4 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 5
  %5 = load i8*, i8** %keyword4, align 8
  %cur_keyword_ptr = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 6
  store i8* %5, i8** %cur_keyword_ptr, align 8
  %saw_keyword = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 7
  store i8 0, i8* %saw_keyword, align 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %6)
  store i32 %call, i32* %c, align 4
  %7 = load i8, i8* %comment.addr, align 1
  %tobool5 = trunc i8 %7 to i1
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %8, 10
  br i1 %cmp6, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %9 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %9, 13
  br i1 %cmp7, label %lor.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %10, 9
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.8
  %11 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %11, 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.8, %lor.lhs.false, %while.cond
  %12 = phi i1 [ true, %lor.lhs.false.8 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call11 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  store i32 %call11, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %if.end

if.end:                                           ; preds = %while.end, %cond.end
  br label %while.cond.12

while.cond.12:                                    ; preds = %if.end.82, %if.end
  %14 = load i32, i32* %c, align 4
  %cmp13 = icmp ne i32 %14, -1
  br i1 %cmp13, label %while.body.14, label %while.end.83

while.body.14:                                    ; preds = %while.cond.12
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.61, %if.then.36, %while.body.14
  %15 = load i32, i32* %c, align 4
  %cmp16 = icmp ne i32 %15, -1
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.15
  %16 = load i8, i8* %comment.addr, align 1
  %tobool17 = trunc i8 %16 to i1
  br i1 %tobool17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %land.rhs
  %17 = load i32, i32* %c, align 4
  %cmp19 = icmp ne i32 %17, 42
  %conv = zext i1 %cmp19 to i32
  br label %cond.end.23

cond.false.20:                                    ; preds = %land.rhs
  %18 = load i32, i32* %c, align 4
  %cmp21 = icmp ne i32 %18, 34
  %conv22 = zext i1 %cmp21 to i32
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.20, %cond.true.18
  %cond24 = phi i32 [ %conv, %cond.true.18 ], [ %conv22, %cond.false.20 ]
  %tobool25 = icmp ne i32 %cond24, 0
  br label %land.end

land.end:                                         ; preds = %cond.end.23, %while.cond.15
  %19 = phi i1 [ false, %while.cond.15 ], [ %tobool25, %cond.end.23 ]
  br i1 %19, label %while.body.26, label %while.end.63

while.body.26:                                    ; preds = %land.end
  %20 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %20, 92
  br i1 %cmp27, label %if.then.29, label %if.end.47

if.then.29:                                       ; preds = %while.body.26
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call30 = call i32 @_IO_getc(%struct._IO_FILE* %21)
  store i32 %call30, i32* %c, align 4
  %22 = load i32, i32* %c, align 4
  %cmp31 = icmp eq i32 %22, 10
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.then.29
  %23 = load i32, i32* %c, align 4
  %cmp34 = icmp eq i32 %23, 13
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %lor.lhs.false.33, %if.then.29
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call37 = call i32 @_IO_getc(%struct._IO_FILE* %24)
  store i32 %call37, i32* %c, align 4
  br label %while.cond.15

if.end.38:                                        ; preds = %lor.lhs.false.33
  %25 = load i32, i32* %c, align 4
  %cmp39 = icmp eq i32 %25, 110
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  store i32 10, i32* %c, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.38
  %26 = load i32, i32* %c, align 4
  %cmp43 = icmp eq i32 %26, 116
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store i32 9, i32* %c, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %while.body.26
  %27 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %27, 32
  br i1 %cmp48, label %if.then.50, label %if.else

if.then.50:                                       ; preds = %if.end.47
  %pending_spaces51 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 0
  %28 = load i64, i64* %pending_spaces51, align 8
  %inc = add nsw i64 %28, 1
  store i64 %inc, i64* %pending_spaces51, align 8
  br label %if.end.61

if.else:                                          ; preds = %if.end.47
  %29 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %29, 10
  br i1 %cmp52, label %if.then.54, label %if.else.58

if.then.54:                                       ; preds = %if.else
  %pending_newlines55 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 1
  %30 = load i64, i64* %pending_newlines55, align 8
  %inc56 = add nsw i64 %30, 1
  store i64 %inc56, i64* %pending_newlines55, align 8
  %pending_spaces57 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 0
  store i64 0, i64* %pending_spaces57, align 8
  br label %if.end.60

if.else.58:                                       ; preds = %if.else
  %31 = load i32, i32* %c, align 4
  %conv59 = trunc i32 %31 to i8
  call void @scan_keyword_or_put_char(i8 signext %conv59, %struct.rcsoc_state* %state)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.54
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.50
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call62 = call i32 @_IO_getc(%struct._IO_FILE* %32)
  store i32 %call62, i32* %c, align 4
  br label %while.cond.15

while.end.63:                                     ; preds = %land.end
  %33 = load i32, i32* %c, align 4
  %cmp64 = icmp ne i32 %33, -1
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %while.end.63
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call67 = call i32 @_IO_getc(%struct._IO_FILE* %34)
  store i32 %call67, i32* %c, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %while.end.63
  %35 = load i8, i8* %comment.addr, align 1
  %tobool69 = trunc i8 %35 to i1
  br i1 %tobool69, label %if.then.70, label %if.else.76

if.then.70:                                       ; preds = %if.end.68
  %36 = load i32, i32* %c, align 4
  %cmp71 = icmp eq i32 %36, 47
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.then.70
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call74 = call i32 @_IO_getc(%struct._IO_FILE* %37)
  store i32 %call74, i32* %c, align 4
  br label %while.end.83

if.end.75:                                        ; preds = %if.then.70
  call void @scan_keyword_or_put_char(i8 signext 42, %struct.rcsoc_state* %state)
  br label %if.end.82

if.else.76:                                       ; preds = %if.end.68
  %38 = load i32, i32* %c, align 4
  %cmp77 = icmp ne i32 %38, 34
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.else.76
  br label %while.end.83

if.end.80:                                        ; preds = %if.else.76
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call81 = call i32 @_IO_getc(%struct._IO_FILE* %39)
  store i32 %call81, i32* %c, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.80, %if.end.75
  br label %while.cond.12

while.end.83:                                     ; preds = %if.then.79, %if.then.73, %while.cond.12
  %40 = load i32, i32* %printflag.addr, align 4
  %cmp84 = icmp slt i32 %40, 0
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %while.end.83
  %buf_ptr87 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 3
  %41 = load i8*, i8** %buf_ptr87, align 8
  store i8 0, i8* %41, align 1
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %while.end.83
  %42 = load i8*, i8** %saw_usage.addr, align 8
  %tobool89 = icmp ne i8* %42, null
  br i1 %tobool89, label %if.then.90, label %if.end.94

if.then.90:                                       ; preds = %if.end.88
  %saw_keyword91 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %state, i32 0, i32 7
  %43 = load i8, i8* %saw_keyword91, align 1
  %tobool92 = trunc i8 %43 to i1
  %44 = load i8*, i8** %saw_usage.addr, align 8
  %frombool93 = zext i1 %tobool92 to i8
  store i8 %frombool93, i8* %44, align 1
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.90, %if.end.88
  %45 = load i32, i32* %c, align 4
  ret i32 %45
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @scan_keyword_or_put_char(i8 signext %ch, %struct.rcsoc_state* %state) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %state.addr = alloca %struct.rcsoc_state*, align 8
  %c = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8 %ch, i8* %ch.addr, align 1
  store %struct.rcsoc_state* %state, %struct.rcsoc_state** %state.addr, align 8
  %0 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %keyword = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %0, i32 0, i32 5
  %1 = load i8*, i8** %keyword, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %cur_keyword_ptr = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %2, i32 0, i32 6
  %3 = load i8*, i8** %cur_keyword_ptr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %5 = load i8, i8* %ch.addr, align 1
  %conv1 = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %cur_keyword_ptr4 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %6, i32 0, i32 6
  %7 = load i8*, i8** %cur_keyword_ptr4, align 8
  %8 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %keyword5 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %8, i32 0, i32 5
  %9 = load i8*, i8** %keyword5, align 8
  %cmp6 = icmp ugt i8* %7, %9
  br i1 %cmp6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.3
  %10 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %pending_newlines = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %10, i32 0, i32 1
  %11 = load i64, i64* %pending_newlines, align 8
  %cmp8 = icmp sgt i64 %11, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.3
  %12 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %cur_keyword_ptr10 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %12, i32 0, i32 6
  %13 = load i8*, i8** %cur_keyword_ptr10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %cur_keyword_ptr10, align 8
  %14 = load i8, i8* %incdec.ptr, align 1
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.41

if.then.14:                                       ; preds = %if.then
  %15 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %saw_keyword = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %15, i32 0, i32 7
  store i8 1, i8* %saw_keyword, align 1
  %16 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %keyword15 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %16, i32 0, i32 5
  %17 = load i8*, i8** %keyword15, align 8
  %18 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %cur_keyword_ptr16 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %18, i32 0, i32 6
  store i8* %17, i8** %cur_keyword_ptr16, align 8
  %19 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %pending_newlines17 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %19, i32 0, i32 1
  store i64 2, i64* %pending_newlines17, align 8
  %20 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %pending_spaces = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %20, i32 0, i32 0
  store i64 0, i64* %pending_spaces, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then.14
  %21 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %in_file = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %21, i32 0, i32 2
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %22)
  store i32 %call, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %23 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %23, 32
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %24 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %24, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %25 = phi i1 [ true, %do.cond ], [ %cmp20, %lor.rhs ]
  br i1 %25, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %26 = load i32, i32* %c, align 4
  %cmp22 = icmp ne i32 %26, 40
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %do.end
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %do.end
  %27 = load i32, i32* %c, align 4
  %conv25 = trunc i32 %27 to i8
  %28 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  call void @put_char(i8 signext %conv25, %struct.rcsoc_state* %28)
  br label %do.body.26

do.body.26:                                       ; preds = %land.end, %if.end
  %29 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %in_file27 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %29, i32 0, i32 2
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file27, align 8
  %call28 = call i32 @_IO_getc(%struct._IO_FILE* %30)
  store i32 %call28, i32* %c, align 4
  %31 = load i32, i32* %c, align 4
  %cmp29 = icmp eq i32 %31, -1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.body.26
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i32 0, i32 0)) #8
  unreachable

if.end.32:                                        ; preds = %do.body.26
  br label %do.cond.33

do.cond.33:                                       ; preds = %if.end.32
  %32 = load i32, i32* %c, align 4
  %cmp34 = icmp ne i32 %32, 32
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.33
  %33 = load i32, i32* %c, align 4
  %cmp36 = icmp ne i32 %33, 41
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.33
  %34 = phi i1 [ false, %do.cond.33 ], [ %cmp36, %land.rhs ]
  br i1 %34, label %do.body.26, label %do.end.38

do.end.38:                                        ; preds = %land.end
  %35 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  call void @put_char(i8 signext 102, %struct.rcsoc_state* %35)
  %36 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  call void @put_char(i8 signext 110, %struct.rcsoc_state* %36)
  %37 = load i32, i32* %c, align 4
  %38 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %in_file39 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %38, i32 0, i32 2
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %in_file39, align 8
  %call40 = call i32 @ungetc(i32 %37, %struct._IO_FILE* %39)
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.38, %if.then
  br label %if.end.58

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %40 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %keyword42 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %40, i32 0, i32 5
  %41 = load i8*, i8** %keyword42, align 8
  %tobool43 = icmp ne i8* %41, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.57

land.lhs.true.44:                                 ; preds = %if.else
  %42 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %cur_keyword_ptr45 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %42, i32 0, i32 6
  %43 = load i8*, i8** %cur_keyword_ptr45, align 8
  %44 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %keyword46 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %44, i32 0, i32 5
  %45 = load i8*, i8** %keyword46, align 8
  %cmp47 = icmp ugt i8* %43, %45
  br i1 %cmp47, label %if.then.49, label %if.end.57

if.then.49:                                       ; preds = %land.lhs.true.44
  %46 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %keyword50 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %46, i32 0, i32 5
  %47 = load i8*, i8** %keyword50, align 8
  store i8* %47, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.49
  %48 = load i8*, i8** %p, align 8
  %49 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %cur_keyword_ptr51 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %49, i32 0, i32 6
  %50 = load i8*, i8** %cur_keyword_ptr51, align 8
  %cmp52 = icmp ult i8* %48, %50
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i8*, i8** %p, align 8
  %52 = load i8, i8* %51, align 1
  %53 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  call void @put_char(i8 signext %52, %struct.rcsoc_state* %53)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i8*, i8** %p, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr54, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %keyword55 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %55, i32 0, i32 5
  %56 = load i8*, i8** %keyword55, align 8
  %57 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %cur_keyword_ptr56 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %57, i32 0, i32 6
  store i8* %56, i8** %cur_keyword_ptr56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %for.end, %land.lhs.true.44, %if.else
  %58 = load i8, i8* %ch.addr, align 1
  %59 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  call void @put_char(i8 signext %58, %struct.rcsoc_state* %59)
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.41
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @put_char(i8 signext %ch, %struct.rcsoc_state* %state) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %state.addr = alloca %struct.rcsoc_state*, align 8
  %out_ch = alloca i8, align 1
  store i8 %ch, i8* %ch.addr, align 1
  store %struct.rcsoc_state* %state, %struct.rcsoc_state** %state.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %pending_newlines = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %0, i32 0, i32 1
  %1 = load i64, i64* %pending_newlines, align 8
  %cmp = icmp sgt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %pending_newlines1 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %2, i32 0, i32 1
  %3 = load i64, i64* %pending_newlines1, align 8
  %dec = add nsw i64 %3, -1
  store i64 %dec, i64* %pending_newlines1, align 8
  store i8 10, i8* %out_ch, align 1
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %4 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %pending_spaces = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %4, i32 0, i32 0
  %5 = load i64, i64* %pending_spaces, align 8
  %cmp2 = icmp sgt i64 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.else.6

if.then.3:                                        ; preds = %if.else
  %6 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %pending_spaces4 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %6, i32 0, i32 0
  %7 = load i64, i64* %pending_spaces4, align 8
  %dec5 = add nsw i64 %7, -1
  store i64 %dec5, i64* %pending_spaces4, align 8
  store i8 32, i8* %out_ch, align 1
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %8 = load i8, i8* %ch.addr, align 1
  store i8 %8, i8* %out_ch, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.3
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %9 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %out_file = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %9, i32 0, i32 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.7
  %11 = load i8, i8* %out_ch, align 1
  %conv = sext i8 %11 to i32
  %12 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %out_file9 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %12, i32 0, i32 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file9, align 8
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.7
  %14 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %buf_ptr = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %14, i32 0, i32 3
  %15 = load i8*, i8** %buf_ptr, align 8
  %tobool11 = icmp ne i8* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %16 = load i8, i8* %out_ch, align 1
  %17 = load %struct.rcsoc_state*, %struct.rcsoc_state** %state.addr, align 8
  %buf_ptr13 = getelementptr inbounds %struct.rcsoc_state, %struct.rcsoc_state* %17, i32 0, i32 3
  %18 = load i8*, i8** %buf_ptr13, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %buf_ptr13, align 8
  store i8 %16, i8* %18, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  %19 = load i8, i8* %out_ch, align 1
  %conv15 = sext i8 %19 to i32
  %20 = load i8, i8* %ch.addr, align 1
  %conv16 = sext i8 %20 to i32
  %cmp17 = icmp ne i32 %conv15, %conv16
  br i1 %cmp17, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

declare i32 @puts(i8*) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_globals(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %ga = alloca %struct.global*, align 8
  %gb = alloca %struct.global*, align 8
  %a_nil = alloca i8, align 1
  %b_nil = alloca i8, align 1
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.global*
  store %struct.global* %1, %struct.global** %ga, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct.global*
  store %struct.global* %3, %struct.global** %gb, align 8
  %4 = load %struct.global*, %struct.global** %ga, align 8
  %type = getelementptr inbounds %struct.global, %struct.global* %4, i32 0, i32 0
  %5 = load i32, i32* %type, align 4
  %6 = load %struct.global*, %struct.global** %gb, align 8
  %type1 = getelementptr inbounds %struct.global, %struct.global* %6, i32 0, i32 0
  %7 = load i32, i32* %type1, align 4
  %cmp = icmp ne i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.global*, %struct.global** %ga, align 8
  %type2 = getelementptr inbounds %struct.global, %struct.global* %8, i32 0, i32 0
  %9 = load i32, i32* %type2, align 4
  %10 = load %struct.global*, %struct.global** %gb, align 8
  %type3 = getelementptr inbounds %struct.global, %struct.global* %10, i32 0, i32 0
  %11 = load i32, i32* %type3, align 4
  %sub = sub i32 %9, %11
  store i32 %sub, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct.global*, %struct.global** %ga, align 8
  %type4 = getelementptr inbounds %struct.global, %struct.global* %12, i32 0, i32 0
  %13 = load i32, i32* %type4, align 4
  %cmp5 = icmp eq i32 %13, 4
  br i1 %cmp5, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %if.end
  %14 = load %struct.global*, %struct.global** %ga, align 8
  %name = getelementptr inbounds %struct.global, %struct.global* %14, i32 0, i32 1
  %15 = load i8*, i8** %name, align 8
  %call = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0)) #7
  %cmp7 = icmp eq i32 %call, 0
  %frombool = zext i1 %cmp7 to i8
  store i8 %frombool, i8* %a_nil, align 1
  %16 = load %struct.global*, %struct.global** %gb, align 8
  %name8 = getelementptr inbounds %struct.global, %struct.global* %16, i32 0, i32 1
  %17 = load i8*, i8** %name8, align 8
  %call9 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  %frombool11 = zext i1 %cmp10 to i8
  store i8 %frombool11, i8* %b_nil, align 1
  %18 = load i8, i8* %a_nil, align 1
  %tobool = trunc i8 %18 to i1
  %conv = zext i1 %tobool to i32
  %19 = load i8, i8* %b_nil, align 1
  %tobool12 = trunc i8 %19 to i1
  %conv13 = zext i1 %tobool12 to i32
  %or = or i32 %conv, %conv13
  %tobool14 = icmp ne i32 %or, 0
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.then.6
  %20 = load i8, i8* %b_nil, align 1
  %tobool16 = trunc i8 %20 to i1
  %conv17 = zext i1 %tobool16 to i32
  %21 = load i8, i8* %a_nil, align 1
  %tobool18 = trunc i8 %21 to i1
  %conv19 = zext i1 %tobool18 to i32
  %sub20 = sub nsw i32 %conv17, %conv19
  store i32 %sub20, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.6
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  %22 = load %struct.global*, %struct.global** %ga, align 8
  %name23 = getelementptr inbounds %struct.global, %struct.global* %22, i32 0, i32 1
  %23 = load i8*, i8** %name23, align 8
  %24 = load %struct.global*, %struct.global** %gb, align 8
  %name24 = getelementptr inbounds %struct.global, %struct.global* %24, i32 0, i32 1
  %25 = load i8*, i8** %name24, align 8
  %call25 = call i32 @strcmp(i8* %23, i8* %25) #7
  store i32 %call25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.15, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @error(i8* %m, ...) #0 {
entry:
  %m.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %m, i8** %m.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %m.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  call void @verror(i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @close_emacs_globals(i64 %num_symbols) #0 {
entry:
  %num_symbols.addr = alloca i64, align 8
  store i64 %num_symbols, i64* %num_symbols.addr, align 8
  %0 = load i64, i64* %num_symbols.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.77, i32 0, i32 0), i64 %0)
  ret void
}

declare i32 @putchar(i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.global* @add_global(i32 %type, i8* %name, i32 %value, i8* %svalue) #0 {
entry:
  %retval = alloca %struct.global*, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %svalue.addr = alloca i8*, align 8
  %num_globals_max = alloca i64, align 8
  %namesize = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %svalue, i8** %svalue.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0)) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @num_globals, align 8
  %2 = load i64, i64* @num_globals_allocated, align 8
  %cmp = icmp eq i64 %1, %2
  br i1 %cmp, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.then
  store i64 288230376151711743, i64* %num_globals_max, align 8
  %3 = load i64, i64* @num_globals_allocated, align 8
  %4 = load i64, i64* %num_globals_max, align 8
  %cmp2 = icmp eq i64 %3, %4
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then.1
  call void @memory_exhausted() #8
  unreachable

if.end:                                           ; preds = %if.then.1
  %5 = load i64, i64* @num_globals_allocated, align 8
  %6 = load i64, i64* %num_globals_max, align 8
  %div = sdiv i64 %6, 2
  %cmp4 = icmp slt i64 %5, %div
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %7 = load i64, i64* @num_globals_allocated, align 8
  %mul = mul nsw i64 2, %7
  %add = add nsw i64 %mul, 1
  store i64 %add, i64* @num_globals_allocated, align 8
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %num_globals_max, align 8
  store i64 %8, i64* @num_globals_allocated, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %9 = load %struct.global*, %struct.global** @globals, align 8
  %10 = bitcast %struct.global* %9 to i8*
  %11 = load i64, i64* @num_globals_allocated, align 8
  %mul7 = mul i64 %11, 32
  %call8 = call i8* @xrealloc(i8* %10, i64 %mul7)
  %12 = bitcast i8* %call8 to %struct.global*
  store %struct.global* %12, %struct.global** @globals, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.6, %if.then
  %13 = load i64, i64* @num_globals, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, i64* @num_globals, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %call10 = call i64 @strlen(i8* %14) #7
  %add11 = add i64 %call10, 1
  store i64 %add11, i64* %namesize, align 8
  %15 = load i64, i64* %namesize, align 8
  %16 = load i8*, i8** %svalue.addr, align 8
  %tobool12 = icmp ne i8* %16, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %17 = load i8*, i8** %svalue.addr, align 8
  %call13 = call i64 @strlen(i8* %17) #7
  %add14 = add i64 %call13, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add14, %cond.true ], [ 0, %cond.false ]
  %add15 = add i64 %15, %cond
  %call16 = call i8* @xmalloc(i64 %add15)
  store i8* %call16, i8** %buf, align 8
  %18 = load i32, i32* %type.addr, align 4
  %19 = load i64, i64* @num_globals, align 8
  %sub = sub nsw i64 %19, 1
  %20 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx = getelementptr inbounds %struct.global, %struct.global* %20, i64 %sub
  %type17 = getelementptr inbounds %struct.global, %struct.global* %arrayidx, i32 0, i32 0
  store i32 %18, i32* %type17, align 4
  %21 = load i8*, i8** %buf, align 8
  %22 = load i8*, i8** %name.addr, align 8
  %call18 = call i8* @strcpy(i8* %21, i8* %22) #5
  %23 = load i64, i64* @num_globals, align 8
  %sub19 = sub nsw i64 %23, 1
  %24 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx20 = getelementptr inbounds %struct.global, %struct.global* %24, i64 %sub19
  %name21 = getelementptr inbounds %struct.global, %struct.global* %arrayidx20, i32 0, i32 1
  store i8* %call18, i8** %name21, align 8
  %25 = load i8*, i8** %svalue.addr, align 8
  %tobool22 = icmp ne i8* %25, null
  br i1 %tobool22, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %cond.end
  %26 = load i8*, i8** %buf, align 8
  %27 = load i64, i64* %namesize, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %27
  %28 = load i8*, i8** %svalue.addr, align 8
  %call24 = call i8* @strcpy(i8* %add.ptr, i8* %28) #5
  %29 = load i64, i64* @num_globals, align 8
  %sub25 = sub nsw i64 %29, 1
  %30 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx26 = getelementptr inbounds %struct.global, %struct.global* %30, i64 %sub25
  %v = getelementptr inbounds %struct.global, %struct.global* %arrayidx26, i32 0, i32 3
  %svalue27 = bitcast %union.anon* %v to i8**
  store i8* %call24, i8** %svalue27, align 8
  br label %if.end.33

if.else.28:                                       ; preds = %cond.end
  %31 = load i32, i32* %value.addr, align 4
  %32 = load i64, i64* @num_globals, align 8
  %sub29 = sub nsw i64 %32, 1
  %33 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx30 = getelementptr inbounds %struct.global, %struct.global* %33, i64 %sub29
  %v31 = getelementptr inbounds %struct.global, %struct.global* %arrayidx30, i32 0, i32 3
  %value32 = bitcast %union.anon* %v31 to i32*
  store i32 %31, i32* %value32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.28, %if.then.23
  %34 = load i64, i64* @num_globals, align 8
  %sub34 = sub nsw i64 %34, 1
  %35 = load %struct.global*, %struct.global** @globals, align 8
  %arrayidx35 = getelementptr inbounds %struct.global, %struct.global* %35, i64 %sub34
  %flags = getelementptr inbounds %struct.global, %struct.global* %arrayidx35, i32 0, i32 2
  store i32 0, i32* %flags, align 4
  %36 = load %struct.global*, %struct.global** @globals, align 8
  %37 = load i64, i64* @num_globals, align 8
  %add.ptr36 = getelementptr inbounds %struct.global, %struct.global* %36, i64 %37
  %add.ptr37 = getelementptr inbounds %struct.global, %struct.global* %add.ptr36, i64 -1
  store %struct.global* %add.ptr37, %struct.global** %retval
  br label %return

if.end.38:                                        ; preds = %entry
  store %struct.global* null, %struct.global** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.end.33
  %38 = load %struct.global*, %struct.global** %retval
  ret %struct.global* %38
}

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @stream_match(%struct._IO_FILE* %infile, i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %4 = load i32, i32* %c, align 4
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp ne i32 %4, %conv
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %7 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @write_c_args(i8* %func, i8* %buf, i32 %minargs, i32 %maxargs) #0 {
entry:
  %func.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %minargs.addr = alloca i32, align 4
  %maxargs.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %in_ident = alloca i8, align 1
  %ident_start = alloca i8*, align 8
  %ident_length = alloca i64, align 8
  %c = alloca i8, align 1
  store i8* %func, i8** %func.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %minargs, i32* %minargs.addr, align 4
  store i32 %maxargs, i32* %maxargs.addr, align 4
  store i8 0, i8* %in_ident, align 1
  store i64 0, i64* %ident_length, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %buf.addr, align 8
  store i8* %4, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %c, align 1
  %9 = load i8, i8* %c, align 1
  %conv2 = sext i8 %9 to i32
  %cmp3 = icmp sle i32 65, %conv2
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %10 = load i8, i8* %c, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp sle i32 %conv5, 90
  br i1 %cmp6, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %11 = load i8, i8* %c, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp sle i32 97, %conv8
  br i1 %cmp9, label %land.lhs.true.11, label %lor.lhs.false.15

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %12 = load i8, i8* %c, align 1
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp sle i32 %conv12, 122
  br i1 %cmp13, label %lor.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.11, %lor.lhs.false
  %13 = load i8, i8* %c, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp sle i32 48, %conv16
  br i1 %cmp17, label %land.lhs.true.19, label %lor.rhs

land.lhs.true.19:                                 ; preds = %lor.lhs.false.15
  %14 = load i8, i8* %c, align 1
  %conv20 = sext i8 %14 to i32
  %cmp21 = icmp sle i32 %conv20, 57
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.19, %lor.lhs.false.15
  %15 = load i8, i8* %c, align 1
  %conv23 = sext i8 %15 to i32
  %cmp24 = icmp eq i32 %conv23, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.19, %land.lhs.true.11, %land.lhs.true
  %16 = phi i1 [ true, %land.lhs.true.19 ], [ true, %land.lhs.true.11 ], [ true, %land.lhs.true ], [ %cmp24, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  %17 = load i8, i8* %in_ident, align 1
  %tobool26 = trunc i8 %17 to i1
  %conv27 = zext i1 %tobool26 to i32
  %cmp28 = icmp ne i32 %lor.ext, %conv27
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %lor.end
  %18 = load i8, i8* %in_ident, align 1
  %tobool31 = trunc i8 %18 to i1
  br i1 %tobool31, label %if.else, label %if.then.32

if.then.32:                                       ; preds = %if.then.30
  store i8 1, i8* %in_ident, align 1
  %19 = load i8*, i8** %p, align 8
  store i8* %19, i8** %ident_start, align 8
  br label %if.end.33

if.else:                                          ; preds = %if.then.30
  store i8 0, i8* %in_ident, align 1
  %20 = load i8*, i8** %p, align 8
  %21 = load i8*, i8** %ident_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %ident_length, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %lor.end
  %22 = load i8, i8* %c, align 1
  %conv35 = sext i8 %22 to i32
  %cmp36 = icmp eq i32 %conv35, 44
  br i1 %cmp36, label %if.then.42, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.34
  %23 = load i8, i8* %c, align 1
  %conv39 = sext i8 %23 to i32
  %cmp40 = icmp eq i32 %conv39, 41
  br i1 %cmp40, label %if.then.42, label %if.end.95

if.then.42:                                       ; preds = %lor.lhs.false.38, %if.end.34
  %24 = load i64, i64* %ident_length, align 8
  %cmp43 = icmp eq i64 %24, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.42
  %25 = load i8*, i8** %func.addr, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.86, i32 0, i32 0), i8* %25)
  br label %for.inc

if.end.46:                                        ; preds = %if.then.42
  %26 = load i8*, i8** %ident_start, align 8
  %27 = load i64, i64* %ident_length, align 8
  %call47 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i64 %27) #7
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.46
  br label %for.inc

if.end.51:                                        ; preds = %if.end.46
  %call52 = call i32 @putchar(i32 32)
  %28 = load i32, i32* %minargs.addr, align 4
  %cmp53 = icmp eq i32 %28, 0
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.60

land.lhs.true.55:                                 ; preds = %if.end.51
  %29 = load i32, i32* %maxargs.addr, align 4
  %cmp56 = icmp sgt i32 %29, 0
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %land.lhs.true.55
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call59 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), %struct._IO_FILE* %30)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %land.lhs.true.55, %if.end.51
  %31 = load i32, i32* %minargs.addr, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %minargs.addr, align 4
  %32 = load i32, i32* %maxargs.addr, align 4
  %dec61 = add nsw i32 %32, -1
  store i32 %dec61, i32* %maxargs.addr, align 4
  %33 = load i64, i64* %ident_length, align 8
  %cmp62 = icmp eq i64 %33, 6
  br i1 %cmp62, label %land.lhs.true.64, label %if.else.70

land.lhs.true.64:                                 ; preds = %if.end.60
  %34 = load i8*, i8** %ident_start, align 8
  %call65 = call i32 @memcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i64 6) #7
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %land.lhs.true.64
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call69 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), %struct._IO_FILE* %35)
  br label %if.end.94

if.else.70:                                       ; preds = %land.lhs.true.64, %if.end.60
  br label %while.cond

while.cond:                                       ; preds = %if.end.91, %if.else.70
  %36 = load i64, i64* %ident_length, align 8
  %dec71 = add nsw i64 %36, -1
  store i64 %dec71, i64* %ident_length, align 8
  %cmp72 = icmp sgt i64 %36, 0
  br i1 %cmp72, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i8*, i8** %ident_start, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr74, i8** %ident_start, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %c, align 1
  %39 = load i8, i8* %c, align 1
  %conv75 = sext i8 %39 to i32
  %cmp76 = icmp sge i32 %conv75, 97
  br i1 %cmp76, label %land.lhs.true.78, label %if.else.85

land.lhs.true.78:                                 ; preds = %while.body
  %40 = load i8, i8* %c, align 1
  %conv79 = sext i8 %40 to i32
  %cmp80 = icmp sle i32 %conv79, 122
  br i1 %cmp80, label %if.then.82, label %if.else.85

if.then.82:                                       ; preds = %land.lhs.true.78
  %41 = load i8, i8* %c, align 1
  %conv83 = sext i8 %41 to i32
  %add = add nsw i32 %conv83, -32
  %conv84 = trunc i32 %add to i8
  store i8 %conv84, i8* %c, align 1
  br label %if.end.91

if.else.85:                                       ; preds = %land.lhs.true.78, %while.body
  %42 = load i8, i8* %c, align 1
  %conv86 = sext i8 %42 to i32
  %cmp87 = icmp eq i32 %conv86, 95
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.else.85
  store i8 45, i8* %c, align 1
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.else.85
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.82
  %43 = load i8, i8* %c, align 1
  %conv92 = sext i8 %43 to i32
  %call93 = call i32 @putchar(i32 %conv92)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.94

if.end.94:                                        ; preds = %while.end, %if.then.68
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %lor.lhs.false.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.95, %if.then.50, %if.then.45
  %44 = load i8*, i8** %p, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr96, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call97 = call i32 @putchar(i32 41)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @xrealloc(i8* %arg, i64 %size) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call i8* @realloc(i8* %0, i64 %1) #5
  store i8* %call, i8** %result, align 8
  %2 = load i8*, i8** %result, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @memory_exhausted() #8
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %result, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
