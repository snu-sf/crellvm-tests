; ModuleID = 'cmd_ln.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argval_s = type { %union.anytype_s, i8* }
%union.anytype_s = type { i8* }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.arg_t = type { i8*, i32, i8*, i8* }

@argval = internal global %struct.argval_s* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"cmd_ln.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Multiple sets of argument definitions not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Parsing command line:\0A\00", align 1
@ht = internal global %struct.hash_table_t* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Duplicate argument name: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Unknown argument: %s\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"Multiple occurrences of argument %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Argument value for '%s' missing\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Bad argument value for %s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Bad default argument value for %s: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Missing required argument %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Arguments list definition:\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"cmd_ln_access invoked before cmd_ln_parse\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Unknown argument type: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"[NAME]\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"\09[DEFLT]\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"\09[VALUE]\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@tmp_defn = internal global %struct.arg_t* null, align 8

; Function Attrs: nounwind uwtable
define i32 @cmd_ln_parse(%struct.arg_t* %defn, i32 %argc, i8** %argv) #0 {
entry:
  %defn.addr = alloca %struct.arg_t*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.arg_t* %defn, %struct.arg_t** %defn.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load %struct.argval_s*, %struct.argval_s** @argval, align 8
  %tobool = icmp ne %struct.argval_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 273, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @_E__pr_info_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %n, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx = getelementptr inbounds %struct.arg_t, %struct.arg_t* %2, i64 %idxprom
  %name = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %n, align 4
  %call = call %struct.hash_table_t* @hash_new(i32 %5, i32 0)
  store %struct.hash_table_t* %call, %struct.hash_table_t** @ht, align 8
  %6 = load i32, i32* %n, align 4
  %conv = sext i32 %6 to i64
  %call2 = call i8* @__ckd_calloc__(i64 %conv, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 292)
  %7 = bitcast i8* %call2 to %struct.argval_s*
  store %struct.argval_s* %7, %struct.argval_s** @argval, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.17, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body.5, label %for.end.19

for.body.5:                                       ; preds = %for.cond.3
  %10 = load %struct.hash_table_t*, %struct.hash_table_t** @ht, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %12, i64 %idxprom6
  %name8 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx7, i32 0, i32 0
  %13 = load i8*, i8** %name8, align 8
  %14 = load i32, i32* %i, align 4
  %call9 = call i32 @hash_enter(%struct.hash_table_t* %10, i8* %13, i32 %14)
  %15 = load i32, i32* %i, align 4
  %cmp10 = icmp ne i32 %call9, %15
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.body.5
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 298, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %17, i64 %idxprom13
  %name15 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx14, i32 0, i32 0
  %18 = load i8*, i8** %name15, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %for.body.5
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %19 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.3

for.end.19:                                       ; preds = %for.cond.3
  store i32 1, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.61, %for.end.19
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %argc.addr, align 4
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %for.body.23, label %for.end.63

for.body.23:                                      ; preds = %for.cond.20
  %22 = load %struct.hash_table_t*, %struct.hash_table_t** @ht, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %24, i64 %idxprom24
  %25 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 @hash_lookup(%struct.hash_table_t* %22, i8* %25, i32* %i)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %for.body.23
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %26 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load i8**, i8*** %argv.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %27, i64 %idxprom30
  %28 = load i8*, i8** %arrayidx31, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  call void @cmd_ln_print_help(%struct._IO_FILE* %29, %struct.arg_t* %30)
  call void @exit(i32 -1) #5
  unreachable

if.end.32:                                        ; preds = %for.body.23
  %31 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %31 to i64
  %32 = load %struct.argval_s*, %struct.argval_s** @argval, align 8
  %arrayidx34 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %32, i64 %idxprom33
  %ptr = getelementptr inbounds %struct.argval_s, %struct.argval_s* %arrayidx34, i32 0, i32 1
  %33 = load i8*, i8** %ptr, align 8
  %tobool35 = icmp ne i8* %33, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.32
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %34 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %34 to i64
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %35, i64 %idxprom37
  %36 = load i8*, i8** %arrayidx38, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i8* %36)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.32
  %37 = load i32, i32* %j, align 4
  %add = add nsw i32 %37, 1
  %38 = load i32, i32* %argc.addr, align 4
  %cmp40 = icmp sge i32 %add, %38
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.39
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %39 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = load i8**, i8*** %argv.addr, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %40, i64 %idxprom43
  %41 = load i8*, i8** %arrayidx44, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i8* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  call void @cmd_ln_print_help(%struct._IO_FILE* %42, %struct.arg_t* %43)
  call void @exit(i32 -1) #5
  unreachable

if.end.45:                                        ; preds = %if.end.39
  %44 = load %struct.argval_s*, %struct.argval_s** @argval, align 8
  %45 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds %struct.argval_s, %struct.argval_s* %44, i64 %idx.ext
  %46 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %46 to i64
  %47 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %47, i64 %idxprom46
  %type = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx47, i32 0, i32 1
  %48 = load i32, i32* %type, align 4
  %49 = load i32, i32* %j, align 4
  %add48 = add nsw i32 %49, 1
  %idxprom49 = sext i32 %add48 to i64
  %50 = load i8**, i8*** %argv.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %50, i64 %idxprom49
  %51 = load i8*, i8** %arrayidx50, align 8
  %call51 = call i32 @arg_str2val(%struct.argval_s* %add.ptr, i32 %48, i8* %51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then.54, label %if.end.60

if.then.54:                                       ; preds = %if.end.45
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %52 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %52 to i64
  %53 = load i8**, i8*** %argv.addr, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %53, i64 %idxprom55
  %54 = load i8*, i8** %arrayidx56, align 8
  %55 = load i32, i32* %j, align 4
  %add57 = add nsw i32 %55, 1
  %idxprom58 = sext i32 %add57 to i64
  %56 = load i8**, i8*** %argv.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %56, i64 %idxprom58
  %57 = load i8*, i8** %arrayidx59, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* %54, i8* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  call void @cmd_ln_print_help(%struct._IO_FILE* %58, %struct.arg_t* %59)
  call void @exit(i32 -1) #5
  unreachable

if.end.60:                                        ; preds = %if.end.45
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %60 = load i32, i32* %j, align 4
  %add62 = add nsw i32 %60, 2
  store i32 %add62, i32* %j, align 4
  br label %for.cond.20

for.end.63:                                       ; preds = %for.cond.20
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.92, %for.end.63
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %n, align 4
  %cmp65 = icmp slt i32 %61, %62
  br i1 %cmp65, label %for.body.67, label %for.end.94

for.body.67:                                      ; preds = %for.cond.64
  %63 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %63 to i64
  %64 = load %struct.argval_s*, %struct.argval_s** @argval, align 8
  %arrayidx69 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %64, i64 %idxprom68
  %ptr70 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %arrayidx69, i32 0, i32 1
  %65 = load i8*, i8** %ptr70, align 8
  %tobool71 = icmp ne i8* %65, null
  br i1 %tobool71, label %if.end.91, label %if.then.72

if.then.72:                                       ; preds = %for.body.67
  %66 = load %struct.argval_s*, %struct.argval_s** @argval, align 8
  %67 = load i32, i32* %i, align 4
  %idx.ext73 = sext i32 %67 to i64
  %add.ptr74 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %66, i64 %idx.ext73
  %68 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %68 to i64
  %69 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %69, i64 %idxprom75
  %type77 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx76, i32 0, i32 1
  %70 = load i32, i32* %type77, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %71 to i64
  %72 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %72, i64 %idxprom78
  %deflt = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx79, i32 0, i32 2
  %73 = load i8*, i8** %deflt, align 8
  %call80 = call i32 @arg_str2val(%struct.argval_s* %add.ptr74, i32 %70, i8* %73)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.90

if.then.83:                                       ; preds = %if.then.72
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 333, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %74 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %74 to i64
  %75 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %75, i64 %idxprom84
  %name86 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx85, i32 0, i32 0
  %76 = load i8*, i8** %name86, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %77 to i64
  %78 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %78, i64 %idxprom87
  %deflt89 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx88, i32 0, i32 2
  %79 = load i8*, i8** %deflt89, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0), i8* %76, i8* %79)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.83, %if.then.72
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.body.67
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %80 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %80, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.64

for.end.94:                                       ; preds = %for.cond.64
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.113, %for.end.94
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %n, align 4
  %cmp96 = icmp slt i32 %81, %82
  br i1 %cmp96, label %for.body.98, label %for.end.115

for.body.98:                                      ; preds = %for.cond.95
  %83 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %83 to i64
  %84 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %84, i64 %idxprom99
  %type101 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx100, i32 0, i32 1
  %85 = load i32, i32* %type101, align 4
  %and = and i32 %85, 1
  %tobool102 = icmp ne i32 %and, 0
  br i1 %tobool102, label %land.lhs.true, label %if.end.112

land.lhs.true:                                    ; preds = %for.body.98
  %86 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %86 to i64
  %87 = load %struct.argval_s*, %struct.argval_s** @argval, align 8
  %arrayidx104 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %87, i64 %idxprom103
  %ptr105 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %arrayidx104, i32 0, i32 1
  %88 = load i8*, i8** %ptr105, align 8
  %tobool106 = icmp ne i8* %88, null
  br i1 %tobool106, label %if.end.112, label %if.then.107

if.then.107:                                      ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %89 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %89 to i64
  %90 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %90, i64 %idxprom108
  %name110 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx109, i32 0, i32 0
  %91 = load i8*, i8** %name110, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* %91)
  %92 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %92, 1
  store i32 %inc111, i32* %j, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.107, %land.lhs.true, %for.body.98
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %93 = load i32, i32* %i, align 4
  %inc114 = add nsw i32 %93, 1
  store i32 %inc114, i32* %i, align 4
  br label %for.cond.95

for.end.115:                                      ; preds = %for.cond.95
  %94 = load i32, i32* %j, align 4
  %cmp116 = icmp sgt i32 %94, 0
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %for.end.115
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %96 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  call void @cmd_ln_print_help(%struct._IO_FILE* %95, %struct.arg_t* %96)
  call void @exit(i32 -1) #5
  unreachable

if.end.119:                                       ; preds = %for.end.115
  ret i32 0
}

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare %struct.hash_table_t* @hash_new(i32, i32) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare i32 @hash_enter(%struct.hash_table_t*, i8*, i32) #1

declare i32 @hash_lookup(%struct.hash_table_t*, i8*, i32*) #1

declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @cmd_ln_print_help(%struct._IO_FILE* %fp, %struct.arg_t* %defn) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %defn.addr = alloca %struct.arg_t*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.arg_t* %defn, %struct.arg_t** %defn.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  call void @arg_dump(%struct._IO_FILE* %1, %struct.arg_t* %2, i32 1)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @arg_str2val(%struct.argval_s* %v, i32 %t, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct.argval_s*, align 8
  %t.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store %struct.argval_s* %v, %struct.argval_s** %v.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %ptr = getelementptr inbounds %struct.argval_s, %struct.argval_s* %1, i32 0, i32 1
  store i8* null, i8** %ptr, align 8
  br label %if.end.25

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %t.addr, align 4
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.14
    i32 8, label %sw.bb.23
    i32 9, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.else, %if.else
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %val = getelementptr inbounds %struct.argval_s, %struct.argval_s* %4, i32 0, i32 0
  %int32 = bitcast %union.anytype_s* %val to i32*
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32* %int32) #6
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %sw.bb
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %5 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %val2 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %5, i32 0, i32 0
  %int323 = bitcast %union.anytype_s* %val2 to i32*
  %6 = bitcast i32* %int323 to i8*
  %7 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %ptr4 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %7, i32 0, i32 1
  store i8* %6, i8** %ptr4, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.else, %if.else
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %val6 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %9, i32 0, i32 0
  %float32 = bitcast %union.anytype_s* %val6 to float*
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), float* %float32) #6
  %cmp8 = icmp ne i32 %call7, 1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb.5
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %sw.bb.5
  %10 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %val11 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %10, i32 0, i32 0
  %float3212 = bitcast %union.anytype_s* %val11 to float*
  %11 = bitcast float* %float3212 to i8*
  %12 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %ptr13 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %12, i32 0, i32 1
  store i8* %11, i8** %ptr13, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.else, %if.else
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %val15 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %14, i32 0, i32 0
  %float64 = bitcast %union.anytype_s* %val15 to double*
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), double* %float64) #6
  %cmp17 = icmp ne i32 %call16, 1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %sw.bb.14
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %sw.bb.14
  %15 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %val20 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %15, i32 0, i32 0
  %float6421 = bitcast %union.anytype_s* %val20 to double*
  %16 = bitcast double* %float6421 to i8*
  %17 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %ptr22 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %17, i32 0, i32 1
  store i8* %16, i8** %ptr22, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.else, %if.else
  %18 = load i8*, i8** %str.addr, align 8
  %19 = load %struct.argval_s*, %struct.argval_s** %v.addr, align 8
  %ptr24 = getelementptr inbounds %struct.argval_s, %struct.argval_s* %19, i32 0, i32 1
  store i8* %18, i8** %ptr24, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %20 = load i32, i32* %t.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i32 %20)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.23, %if.end.19, %if.end.10, %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %sw.epilog, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.18, %if.then.9, %if.then.1
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @arg_dump(%struct._IO_FILE* %fp, %struct.arg_t* %defn, i32 %doc) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %defn.addr = alloca %struct.arg_t*, align 8
  %doc.addr = alloca i32, align 4
  %pos = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  %namelen = alloca i32, align 4
  %deflen = alloca i32, align 4
  %vp = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.arg_t* %defn, %struct.arg_t** %defn.addr, align 8
  store i32 %doc, i32* %doc.addr, align 4
  %0 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %call = call i32 @arg_strlen(%struct.arg_t* %0, i32* %namelen, i32* %deflen)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %namelen, align 4
  %and = and i32 %1, -8
  store i32 %and, i32* %namelen, align 4
  %2 = load i32, i32* %deflen, align 4
  %and1 = and i32 %2, -8
  store i32 %and1, i32* %deflen, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0))
  store i32 6, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %l, align 4
  %5 = load i32, i32* %namelen, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %l, align 4
  %add = add nsw i32 %7, 8
  store i32 %add, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  store i32 6, i32* %l, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.9, %for.end
  %9 = load i32, i32* %l, align 4
  %10 = load i32, i32* %deflen, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body.7, label %for.end.11

for.body.7:                                       ; preds = %for.cond.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.7
  %12 = load i32, i32* %l, align 4
  %add10 = add nsw i32 %12, 8
  store i32 %add10, i32* %l, align 4
  br label %for.cond.5

for.end.11:                                       ; preds = %for.cond.5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0))
  %14 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %15 = load i32, i32* %n, align 4
  %call13 = call i32* @arg_sort(%struct.arg_t* %14, i32 %15)
  store i32* %call13, i32** %pos, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.88, %for.end.11
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %16, %17
  br i1 %cmp15, label %for.body.16, label %for.end.89

for.body.16:                                      ; preds = %for.cond.14
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32*, i32** %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4
  store i32 %20, i32* %j, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %23, i64 %idxprom17
  %name = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx18, i32 0, i32 0
  %24 = load i8*, i8** %name, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %24)
  %25 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %26, i64 %idxprom20
  %name22 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx21, i32 0, i32 0
  %27 = load i8*, i8** %name22, align 8
  %call23 = call i64 @strlen(i8* %27) #7
  %conv = trunc i64 %call23 to i32
  store i32 %conv, i32* %l, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.29, %for.body.16
  %28 = load i32, i32* %l, align 4
  %29 = load i32, i32* %namelen, align 4
  %cmp25 = icmp slt i32 %28, %29
  br i1 %cmp25, label %for.body.27, label %for.end.31

for.body.27:                                      ; preds = %for.cond.24
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.27
  %31 = load i32, i32* %l, align 4
  %add30 = add nsw i32 %31, 8
  store i32 %add30, i32* %l, align 4
  br label %for.cond.24

for.end.31:                                       ; preds = %for.cond.24
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %33 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %33 to i64
  %34 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %34, i64 %idxprom33
  %deflt = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx34, i32 0, i32 2
  %35 = load i8*, i8** %deflt, align 8
  %tobool = icmp ne i8* %35, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.31
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %38, i64 %idxprom35
  %deflt37 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx36, i32 0, i32 2
  %39 = load i8*, i8** %deflt37, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %39)
  %40 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %40 to i64
  %41 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %41, i64 %idxprom39
  %deflt41 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx40, i32 0, i32 2
  %42 = load i8*, i8** %deflt41, align 8
  %call42 = call i64 @strlen(i8* %42) #7
  %conv43 = trunc i64 %call42 to i32
  store i32 %conv43, i32* %l, align 4
  br label %if.end

if.else:                                          ; preds = %for.end.31
  store i32 0, i32* %l, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.49, %if.end
  %43 = load i32, i32* %l, align 4
  %44 = load i32, i32* %deflen, align 4
  %cmp45 = icmp slt i32 %43, %44
  br i1 %cmp45, label %for.body.47, label %for.end.51

for.body.47:                                      ; preds = %for.cond.44
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.47
  %46 = load i32, i32* %l, align 4
  %add50 = add nsw i32 %46, 8
  store i32 %add50, i32* %l, align 4
  br label %for.cond.44

for.end.51:                                       ; preds = %for.cond.44
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %48 = load i32, i32* %doc.addr, align 4
  %tobool53 = icmp ne i32 %48, 0
  br i1 %tobool53, label %if.then.54, label %if.else.65

if.then.54:                                       ; preds = %for.end.51
  %49 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %49 to i64
  %50 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %50, i64 %idxprom55
  %doc57 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx56, i32 0, i32 3
  %51 = load i8*, i8** %doc57, align 8
  %tobool58 = icmp ne i8* %51, null
  br i1 %tobool58, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %if.then.54
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %53 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %53 to i64
  %54 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %54, i64 %idxprom60
  %doc62 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx61, i32 0, i32 3
  %55 = load i8*, i8** %doc62, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %55)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %if.then.54
  br label %if.end.86

if.else.65:                                       ; preds = %for.end.51
  %56 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %56 to i64
  %57 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %57, i64 %idxprom66
  %name68 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx67, i32 0, i32 0
  %58 = load i8*, i8** %name68, align 8
  %call69 = call i8* @cmd_ln_access(i8* %58)
  store i8* %call69, i8** %vp, align 8
  %59 = load i8*, i8** %vp, align 8
  %tobool70 = icmp ne i8* %59, null
  br i1 %tobool70, label %if.then.71, label %if.end.85

if.then.71:                                       ; preds = %if.else.65
  %60 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %60 to i64
  %61 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %61, i64 %idxprom72
  %type = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx73, i32 0, i32 1
  %62 = load i32, i32* %type, align 4
  switch i32 %62, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb.75
    i32 5, label %sw.bb.75
    i32 6, label %sw.bb.78
    i32 7, label %sw.bb.78
    i32 8, label %sw.bb.80
    i32 9, label %sw.bb.80
  ]

sw.bb:                                            ; preds = %if.then.71, %if.then.71
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %64 = load i8*, i8** %vp, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 %66)
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.then.71, %if.then.71
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %68 = load i8*, i8** %vp, align 8
  %69 = bitcast i8* %68 to float*
  %70 = load float, float* %69, align 4
  %conv76 = fpext float %70 to double
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), double %conv76)
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.then.71, %if.then.71
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %72 = load i8*, i8** %vp, align 8
  %73 = bitcast i8* %72 to double*
  %74 = load double, double* %73, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), double %74)
  br label %sw.epilog

sw.bb.80:                                         ; preds = %if.then.71, %if.then.71
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %76 = load i8*, i8** %vp, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* %76)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.71
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %77 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %77 to i64
  %78 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %78, i64 %idxprom82
  %type84 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx83, i32 0, i32 1
  %79 = load i32, i32* %type84, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i32 %79)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.80, %sw.bb.78, %sw.bb.75, %sw.bb
  br label %if.end.85

if.end.85:                                        ; preds = %sw.epilog, %if.else.65
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.64
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.86
  %81 = load i32, i32* %i, align 4
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.14

for.end.89:                                       ; preds = %for.cond.14
  %82 = load i32*, i32** %pos, align 8
  %83 = bitcast i32* %82 to i8*
  call void @ckd_free(i8* %83)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call91 = call i32 @fflush(%struct._IO_FILE* %85)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @cmd_ln_access(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.argval_s*, %struct.argval_s** @argval, align 8
  %tobool = icmp ne %struct.argval_s* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 373, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.hash_table_t*, %struct.hash_table_t** @ht, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 @hash_lookup(%struct.hash_table_t* %1, i8* %2, i32* %i)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i64 376, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %3 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* %3)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.argval_s*, %struct.argval_s** @argval, align 8
  %arrayidx = getelementptr inbounds %struct.argval_s, %struct.argval_s* %5, i64 %idxprom
  %ptr = getelementptr inbounds %struct.argval_s, %struct.argval_s* %arrayidx, i32 0, i32 1
  %6 = load i8*, i8** %ptr, align 8
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define void @cmd_ln_free() #0 {
entry:
  %0 = load %struct.hash_table_t*, %struct.hash_table_t** @ht, align 8
  call void @hash_free(%struct.hash_table_t* %0)
  %1 = load %struct.argval_s*, %struct.argval_s** @argval, align 8
  %2 = bitcast %struct.argval_s* %1 to i8*
  call void @ckd_free(i8* %2)
  ret void
}

declare void @hash_free(%struct.hash_table_t*) #1

declare void @ckd_free(i8*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @arg_strlen(%struct.arg_t* %defn, i32* %namelen, i32* %deflen) #0 {
entry:
  %defn.addr = alloca %struct.arg_t*, align 8
  %namelen.addr = alloca i32*, align 8
  %deflen.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.arg_t* %defn, %struct.arg_t** %defn.addr, align 8
  store i32* %namelen, i32** %namelen.addr, align 8
  store i32* %deflen, i32** %deflen.addr, align 8
  %0 = load i32*, i32** %deflen.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32*, i32** %namelen.addr, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx = getelementptr inbounds %struct.arg_t, %struct.arg_t* %3, i64 %idxprom
  %name = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %6, i64 %idxprom1
  %name3 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx2, i32 0, i32 0
  %7 = load i8*, i8** %name3, align 8
  %call = call i64 @strlen(i8* %7) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4
  %8 = load i32*, i32** %namelen.addr, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %l, align 4
  %12 = load i32*, i32** %namelen.addr, align 8
  store i32 %11, i32* %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %14, i64 %idxprom5
  %deflt = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx6, i32 0, i32 2
  %15 = load i8*, i8** %deflt, align 8
  %tobool7 = icmp ne i8* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.18

if.then.8:                                        ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %17, i64 %idxprom9
  %deflt11 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx10, i32 0, i32 2
  %18 = load i8*, i8** %deflt11, align 8
  %call12 = call i64 @strlen(i8* %18) #7
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %l, align 4
  %19 = load i32*, i32** %deflen.addr, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %l, align 4
  %cmp14 = icmp slt i32 %20, %21
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.8
  %22 = load i32, i32* %l, align 4
  %23 = load i32*, i32** %deflen.addr, align 8
  store i32 %22, i32* %23, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32* @arg_sort(%struct.arg_t* %defn, i32 %n) #0 {
entry:
  %defn.addr = alloca %struct.arg_t*, align 8
  %n.addr = alloca i32, align 4
  %pos = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.arg_t* %defn, %struct.arg_t** %defn.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 145)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %pos, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %pos, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.arg_t*, %struct.arg_t** %defn.addr, align 8
  store %struct.arg_t* %8, %struct.arg_t** @tmp_defn, align 8
  %9 = load i32*, i32** %pos, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load i32, i32* %n.addr, align 4
  %conv2 = sext i32 %11 to i64
  call void @qsort(i8* %10, i64 %conv2, i64 4, i32 (i8*, i8*)* @cmp_name)
  store %struct.arg_t* null, %struct.arg_t** @tmp_defn, align 8
  %12 = load i32*, i32** %pos, align 8
  ret i32* %12
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @cmp_name(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.arg_t*, %struct.arg_t** @tmp_defn, align 8
  %arrayidx = getelementptr inbounds %struct.arg_t, %struct.arg_t* %3, i64 %idxprom
  %name = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %5 = load i8*, i8** %b.addr, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.arg_t*, %struct.arg_t** @tmp_defn, align 8
  %arrayidx2 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %8, i64 %idxprom1
  %name3 = getelementptr inbounds %struct.arg_t, %struct.arg_t* %arrayidx2, i32 0, i32 0
  %9 = load i8*, i8** %name3, align 8
  %call = call i32 @strcmp_nocase(i8* %4, i8* %9)
  ret i32 %call
}

declare i32 @strcmp_nocase(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
