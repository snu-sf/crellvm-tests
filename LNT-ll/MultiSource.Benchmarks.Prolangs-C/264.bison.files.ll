; ModuleID = './MultiSource.Benchmarks.Prolangs-C/264.bison.files.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@finput = global %struct._IO_FILE* null, align 8
@foutput = global %struct._IO_FILE* null, align 8
@fdefines = global %struct._IO_FILE* null, align 8
@ftable = global %struct._IO_FILE* null, align 8
@fattrs = global %struct._IO_FILE* null, align 8
@fguard = global %struct._IO_FILE* null, align 8
@faction = global %struct._IO_FILE* null, align 8
@fparser = global %struct._IO_FILE* null, align 8
@fixed_outfiles = global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/tmp/b.\00", align 1
@spec_outfile = common global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".tab\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_tab\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"y.y\00", align 1
@infile = common global i8* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c".y\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@verboseflag = external global i32, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c".output\00", align 1
@outfile = common global i8* null, align 8
@stdout = external global %struct._IO_FILE*, align 8
@definesflag = external global i32, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@defsfile = common global i8* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"act.XXXXXX\00", align 1
@actfile = common global i8* null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"attrs.XXXXXX\00", align 1
@tmpattrsfile = common global i8* null, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"tab.XXXXXX\00", align 1
@tmptabfile = common global i8* null, align 8
@tabfile = common global i8* null, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c".stype.h\00", align 1
@attrsfile = common global i8* null, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c".guard.c\00", align 1
@guardfile = common global i8* null, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"BISON_HAIRY\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"parse.y.in\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"bison: \00", align 1

; Function Attrs: nounwind uwtable
define i8* @stringappend(i8* %string1, i32 %end1, i8* %string2) #0 {
entry:
  %string1.addr = alloca i8*, align 8
  %end1.addr = alloca i32, align 4
  %string2.addr = alloca i8*, align 8
  %ostring = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %cp1 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %string1, i8** %string1.addr, align 8
  store i32 %end1, i32* %end1.addr, align 4
  store i8* %string2, i8** %string2.addr, align 8
  %0 = load i8*, i8** %string2.addr, align 8
  store i8* %0, i8** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %end1.addr, align 4
  %add = add nsw i32 %4, %5
  %add1 = add nsw i32 %add, 1
  %conv = sext i32 %add1 to i64
  %mul = mul i64 %conv, 1
  %conv2 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv2)
  store i8* %call, i8** %ostring, align 8
  %6 = load i8*, i8** %ostring, align 8
  store i8* %6, i8** %cp, align 8
  %7 = load i8*, i8** %string1.addr, align 8
  store i8* %7, i8** %cp1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %end1.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %cp1, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr4, i8** %cp1, align 8
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %cp, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr5, i8** %cp, align 8
  store i8 %11, i8* %12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %13, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %string2.addr, align 8
  store i8* %14, i8** %cp1, align 8
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.11, %for.end
  %15 = load i8*, i8** %cp1, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr8, i8** %cp1, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i8*, i8** %cp, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr9, i8** %cp, align 8
  store i8 %16, i8* %17, align 1
  %tobool10 = icmp ne i8 %16, 0
  br i1 %tobool10, label %while.body.11, label %while.end.12

while.body.11:                                    ; preds = %while.cond.7
  br label %while.cond.7

while.end.12:                                     ; preds = %while.cond.7
  %18 = load i8*, i8** %ostring, align 8
  ret i8* %18
}

declare i8* @mallocate(...) #1

; Function Attrs: nounwind uwtable
define void @openfiles() #0 {
entry:
  %name_base = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %base_length = alloca i32, align 4
  %short_base_length = alloca i32, align 4
  %tmp_base = alloca i8*, align 8
  %tmp_len = alloca i32, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %tmp_base, align 8
  %0 = load i8*, i8** %tmp_base, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %tmp_len, align 4
  %1 = load i8*, i8** @spec_outfile, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else.23

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @spec_outfile, align 8
  store i8* %2, i8** %name_base, align 8
  %3 = load i8*, i8** %name_base, align 8
  %call1 = call i64 @strlen(i8* %3) #5
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %base_length, align 4
  %4 = load i8*, i8** %name_base, align 8
  %5 = load i32, i32* %base_length, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  %call4 = call i32 @strcmp(i8* %add.ptr3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %6 = load i32, i32* %base_length, align 4
  %sub = sub nsw i32 %6, 2
  store i32 %sub, i32* %base_length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %7 = load i32, i32* %base_length, align 4
  store i32 %7, i32* %short_base_length, align 4
  %8 = load i8*, i8** %name_base, align 8
  %9 = load i32, i32* %short_base_length, align 4
  %idx.ext7 = sext i32 %9 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %8, i64 %idx.ext7
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 -4
  %call10 = call i32 @strcmp(i8* %add.ptr9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %10 = load i32, i32* %short_base_length, align 4
  %sub13 = sub nsw i32 %10, 4
  store i32 %sub13, i32* %short_base_length, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.end
  %11 = load i8*, i8** %name_base, align 8
  %12 = load i32, i32* %short_base_length, align 4
  %idx.ext14 = sext i32 %12 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %11, i64 %idx.ext14
  %add.ptr16 = getelementptr inbounds i8, i8* %add.ptr15, i64 -4
  %call17 = call i32 @strcmp(i8* %add.ptr16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %13 = load i32, i32* %short_base_length, align 4
  %sub20 = sub nsw i32 %13, 4
  store i32 %sub20, i32* %short_base_length, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.12
  br label %if.end.45

if.else.23:                                       ; preds = %entry
  %14 = load i32, i32* @fixed_outfiles, align 4
  %tobool24 = icmp ne i32 %14, 0
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.23
  br label %cond.end

cond.false:                                       ; preds = %if.else.23
  %15 = load i8*, i8** @infile, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %cond.true ], [ %15, %cond.false ]
  store i8* %cond, i8** %name_base, align 8
  %16 = load i8*, i8** %name_base, align 8
  %tobool25 = icmp ne i8* %16, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %cond.end
  call void @exit(i32 1) #6
  unreachable

if.end.27:                                        ; preds = %cond.end
  %17 = load i8*, i8** %name_base, align 8
  store i8* %17, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %if.end.27
  %18 = load i8*, i8** %cp, align 8
  %19 = load i8, i8* %18, align 1
  %tobool28 = icmp ne i8 %19, 0
  br i1 %tobool28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %cp, align 8
  %21 = load i8, i8* %20, align 1
  %conv29 = sext i8 %21 to i32
  %cmp = icmp eq i32 %conv29, 47
  br i1 %cmp, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %while.body
  %22 = load i8*, i8** %cp, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %add.ptr32, i8** %name_base, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %while.body
  %23 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i8*, i8** %name_base, align 8
  %call34 = call i64 @strlen(i8* %24) #5
  %conv35 = trunc i64 %call34 to i32
  store i32 %conv35, i32* %base_length, align 4
  %25 = load i8*, i8** %name_base, align 8
  %26 = load i32, i32* %base_length, align 4
  %idx.ext36 = sext i32 %26 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %25, i64 %idx.ext36
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 -2
  %call39 = call i32 @strcmp(i8* %add.ptr38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #5
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %while.end
  %27 = load i32, i32* %base_length, align 4
  %sub42 = sub nsw i32 %27, 2
  store i32 %sub42, i32* %base_length, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %while.end
  %28 = load i32, i32* %base_length, align 4
  store i32 %28, i32* %short_base_length, align 4
  %29 = load i8*, i8** %name_base, align 8
  %30 = load i32, i32* %short_base_length, align 4
  %call44 = call i8* @stringappend(i8* %29, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call44, i8** %name_base, align 8
  %31 = load i32, i32* %short_base_length, align 4
  %add = add nsw i32 %31, 4
  store i32 %add, i32* %base_length, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.43, %if.end.22
  %32 = load i8*, i8** @infile, align 8
  %call46 = call %struct._IO_FILE* @tryopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call46, %struct._IO_FILE** @finput, align 8
  %33 = load i32, i32* @verboseflag, align 4
  %tobool47 = icmp ne i32 %33, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.45
  %34 = load i8*, i8** %name_base, align 8
  %35 = load i32, i32* %short_base_length, align 4
  %call49 = call i8* @stringappend(i8* %34, i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call49, i8** @outfile, align 8
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %36, %struct._IO_FILE** @foutput, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.45
  %37 = load i32, i32* @definesflag, align 4
  %tobool51 = icmp ne i32 %37, 0
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.50
  %38 = load i8*, i8** %name_base, align 8
  %39 = load i32, i32* %base_length, align 4
  %call53 = call i8* @stringappend(i8* %38, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call53, i8** @defsfile, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %40, %struct._IO_FILE** @fdefines, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.50
  %41 = load i8*, i8** %tmp_base, align 8
  %42 = load i32, i32* %tmp_len, align 4
  %call55 = call i8* @stringappend(i8* %41, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0))
  %call56 = call i8* @mktemp(i8* %call55) #7
  store i8* %call56, i8** @actfile, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %43, %struct._IO_FILE** @faction, align 8
  %44 = load i8*, i8** %tmp_base, align 8
  %45 = load i32, i32* %tmp_len, align 4
  %call57 = call i8* @stringappend(i8* %44, i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  %call58 = call i8* @mktemp(i8* %call57) #7
  store i8* %call58, i8** @tmpattrsfile, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %46, %struct._IO_FILE** @fattrs, align 8
  %47 = load i8*, i8** %tmp_base, align 8
  %48 = load i32, i32* %tmp_len, align 4
  %call59 = call i8* @stringappend(i8* %47, i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %call60 = call i8* @mktemp(i8* %call59) #7
  store i8* %call60, i8** @tmptabfile, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %49, %struct._IO_FILE** @ftable, align 8
  %50 = load i8*, i8** @spec_outfile, align 8
  %tobool61 = icmp ne i8* %50, null
  br i1 %tobool61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.end.54
  %51 = load i8*, i8** @spec_outfile, align 8
  store i8* %51, i8** @tabfile, align 8
  br label %if.end.65

if.else.63:                                       ; preds = %if.end.54
  %52 = load i8*, i8** %name_base, align 8
  %53 = load i32, i32* %base_length, align 4
  %call64 = call i8* @stringappend(i8* %52, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call64, i8** @tabfile, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.62
  %54 = load i8*, i8** %name_base, align 8
  %55 = load i32, i32* %short_base_length, align 4
  %call66 = call i8* @stringappend(i8* %54, i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0))
  store i8* %call66, i8** @attrsfile, align 8
  %56 = load i8*, i8** %name_base, align 8
  %57 = load i32, i32* %short_base_length, align 4
  %call67 = call i8* @stringappend(i8* %56, i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call67, i8** @guardfile, align 8
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i8* @mktemp(i8*) #4

; Function Attrs: nounwind uwtable
define void @open_extra_files() #0 {
entry:
  %ftmp = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %filename = alloca i8*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #7
  store i8* %call1, i8** %filename, align 8
  %1 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %filename, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %cond.false ]
  %call2 = call %struct._IO_FILE* @tryopen(i8* %cond, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** @fparser, align 8
  %3 = load i8*, i8** @attrsfile, align 8
  %call3 = call %struct._IO_FILE* @tryopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %ftmp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  call void @rewind(%struct._IO_FILE* %4)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call4, i32* %c, align 4
  %cmp = icmp ne i32 %call4, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %c, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %ftmp, align 8
  %call5 = call i32 @_IO_putc(i32 %6, %struct._IO_FILE* %7)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %ftmp, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** @fattrs, align 8
  %9 = load i8*, i8** @guardfile, align 8
  %call6 = call %struct._IO_FILE* @tryopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %call6, %struct._IO_FILE** @fguard, align 8
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #4

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @tryopen(i8* %name, i8* %mode) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %ptr = alloca %struct._IO_FILE*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %ptr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %ptr, align 8
  %cmp = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0))
  %4 = load i8*, i8** %name.addr, align 8
  call void @perror(i8* %4)
  call void @done(i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %ptr, align 8
  ret %struct._IO_FILE* %5
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @perror(i8*) #1

; Function Attrs: nounwind uwtable
define void @done(i32 %k) #0 {
entry:
  %k.addr = alloca i32, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  call void @exit(i32 %0) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
