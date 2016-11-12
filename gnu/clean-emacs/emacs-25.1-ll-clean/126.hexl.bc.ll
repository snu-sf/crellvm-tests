; ModuleID = './lib-src/hexl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@base = global i32 16, align 4
@un_flag = global i8 0, align 1
@iso_flag = global i8 0, align 1
@endian = global i8 1, align 1
@group_by = global i32 1, align 4
@progname = common global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-un\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-de\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-hex\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-iso\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-oct\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"-big-endian\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"-little-endian\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"-group-by-8-bits\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"-group-by-16-bits\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"-group-by-32-bits\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"-group-by-64-bits\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"%s: invalid switch: \22%s\22.\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%08lx: \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"usage: %s [-de] [-iso]\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %address = alloca i64, align 8
  %string = alloca [18 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %filename = alloca i8*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %buf = alloca [18 x i8], align 16
  %i180 = alloca i32, align 4
  %c181 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %0, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** @progname, align 8
  %2 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %argc.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.80, %entry
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %10 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i8**, i8*** %argv.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %call = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #7
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %14 = load i32, i32* %argc.addr, align 4
  %dec6 = add nsw i32 %14, -1
  store i32 %dec6, i32* %argc.addr, align 4
  %15 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr7, i8*** %argv.addr, align 8
  br label %while.end

if.else:                                          ; preds = %while.body
  %16 = load i8**, i8*** %argv.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %call8 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #7
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.else
  %18 = load i8**, i8*** %argv.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %call10 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #7
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else.15, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %if.else
  store i8 1, i8* @un_flag, align 1
  %20 = load i32, i32* %argc.addr, align 4
  %dec13 = add nsw i32 %20, -1
  store i32 %dec13, i32* %argc.addr, align 4
  %21 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %incdec.ptr14, i8*** %argv.addr, align 8
  br label %if.end.79

if.else.15:                                       ; preds = %lor.lhs.false
  %22 = load i8**, i8*** %argv.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %call16 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)) #7
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else.21, label %if.then.18

if.then.18:                                       ; preds = %if.else.15
  store i32 16, i32* @base, align 4
  %24 = load i32, i32* %argc.addr, align 4
  %dec19 = add nsw i32 %24, -1
  store i32 %dec19, i32* %argc.addr, align 4
  %25 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %incdec.ptr20, i8*** %argv.addr, align 8
  br label %if.end.78

if.else.21:                                       ; preds = %if.else.15
  %26 = load i8**, i8*** %argv.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %call22 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #7
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else.27, label %if.then.24

if.then.24:                                       ; preds = %if.else.21
  store i8 1, i8* @iso_flag, align 1
  %28 = load i32, i32* %argc.addr, align 4
  %dec25 = add nsw i32 %28, -1
  store i32 %dec25, i32* %argc.addr, align 4
  %29 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %incdec.ptr26, i8*** %argv.addr, align 8
  br label %if.end.77

if.else.27:                                       ; preds = %if.else.21
  %30 = load i8**, i8*** %argv.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %call28 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #7
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.33, label %if.then.30

if.then.30:                                       ; preds = %if.else.27
  store i32 8, i32* @base, align 4
  %32 = load i32, i32* %argc.addr, align 4
  %dec31 = add nsw i32 %32, -1
  store i32 %dec31, i32* %argc.addr, align 4
  %33 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr32 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %incdec.ptr32, i8*** %argv.addr, align 8
  br label %if.end.76

if.else.33:                                       ; preds = %if.else.27
  %34 = load i8**, i8*** %argv.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %call34 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)) #7
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.else.39, label %if.then.36

if.then.36:                                       ; preds = %if.else.33
  store i8 1, i8* @endian, align 1
  %36 = load i32, i32* %argc.addr, align 4
  %dec37 = add nsw i32 %36, -1
  store i32 %dec37, i32* %argc.addr, align 4
  %37 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %incdec.ptr38, i8*** %argv.addr, align 8
  br label %if.end.75

if.else.39:                                       ; preds = %if.else.33
  %38 = load i8**, i8*** %argv.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %call40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #7
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.else.45, label %if.then.42

if.then.42:                                       ; preds = %if.else.39
  store i8 0, i8* @endian, align 1
  %40 = load i32, i32* %argc.addr, align 4
  %dec43 = add nsw i32 %40, -1
  store i32 %dec43, i32* %argc.addr, align 4
  %41 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %incdec.ptr44, i8*** %argv.addr, align 8
  br label %if.end.74

if.else.45:                                       ; preds = %if.else.39
  %42 = load i8**, i8*** %argv.addr, align 8
  %43 = load i8*, i8** %42, align 8
  %call46 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #7
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.51, label %if.then.48

if.then.48:                                       ; preds = %if.else.45
  store i32 0, i32* @group_by, align 4
  %44 = load i32, i32* %argc.addr, align 4
  %dec49 = add nsw i32 %44, -1
  store i32 %dec49, i32* %argc.addr, align 4
  %45 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %incdec.ptr50, i8*** %argv.addr, align 8
  br label %if.end.73

if.else.51:                                       ; preds = %if.else.45
  %46 = load i8**, i8*** %argv.addr, align 8
  %47 = load i8*, i8** %46, align 8
  %call52 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #7
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else.57, label %if.then.54

if.then.54:                                       ; preds = %if.else.51
  store i32 1, i32* @group_by, align 4
  %48 = load i32, i32* %argc.addr, align 4
  %dec55 = add nsw i32 %48, -1
  store i32 %dec55, i32* %argc.addr, align 4
  %49 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr56 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %incdec.ptr56, i8*** %argv.addr, align 8
  br label %if.end.72

if.else.57:                                       ; preds = %if.else.51
  %50 = load i8**, i8*** %argv.addr, align 8
  %51 = load i8*, i8** %50, align 8
  %call58 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #7
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.else.63, label %if.then.60

if.then.60:                                       ; preds = %if.else.57
  store i32 3, i32* @group_by, align 4
  %52 = load i32, i32* %argc.addr, align 4
  %dec61 = add nsw i32 %52, -1
  store i32 %dec61, i32* %argc.addr, align 4
  %53 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr62 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %incdec.ptr62, i8*** %argv.addr, align 8
  br label %if.end.71

if.else.63:                                       ; preds = %if.else.57
  %54 = load i8**, i8*** %argv.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %call64 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #7
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else.69, label %if.then.66

if.then.66:                                       ; preds = %if.else.63
  store i32 7, i32* @group_by, align 4
  store i8 0, i8* @endian, align 1
  %56 = load i32, i32* %argc.addr, align 4
  %dec67 = add nsw i32 %56, -1
  store i32 %dec67, i32* %argc.addr, align 4
  %57 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %incdec.ptr68, i8*** %argv.addr, align 8
  br label %if.end

if.else.69:                                       ; preds = %if.else.63
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = load i8*, i8** @progname, align 8
  %60 = load i8**, i8*** %argv.addr, align 8
  %61 = load i8*, i8** %60, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i8* %59, i8* %61)
  call void @usage() #8
  unreachable

if.end:                                           ; preds = %if.then.66
  br label %if.end.71

if.end.71:                                        ; preds = %if.end, %if.then.60
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.54
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.48
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.42
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.36
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.30
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.24
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.18
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.12
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79
  br label %while.cond

while.end:                                        ; preds = %if.then, %land.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %62 = load i8**, i8*** %argv.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %cmp81 = icmp eq i8* %63, null
  br i1 %cmp81, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %64, %struct._IO_FILE** %fp, align 8
  br label %if.end.96

if.else.84:                                       ; preds = %do.body
  %65 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr85 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %incdec.ptr85, i8*** %argv.addr, align 8
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %filename, align 8
  %67 = load i8*, i8** %filename, align 8
  %call86 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #7
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.else.89, label %if.then.88

if.then.88:                                       ; preds = %if.else.84
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %68, %struct._IO_FILE** %fp, align 8
  br label %if.end.95

if.else.89:                                       ; preds = %if.else.84
  %69 = load i8*, i8** %filename, align 8
  %call90 = call %struct._IO_FILE* @fopen(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  store %struct._IO_FILE* %call90, %struct._IO_FILE** %fp, align 8
  %cmp91 = icmp eq %struct._IO_FILE* %call90, null
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.else.89
  %70 = load i8*, i8** %filename, align 8
  call void @perror(i8* %70)
  br label %do.cond

if.end.94:                                        ; preds = %if.else.89
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.88
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.83
  %71 = load i8, i8* @un_flag, align 1
  %tobool97 = trunc i8 %71 to i1
  br i1 %tobool97, label %if.then.98, label %if.else.174

if.then.98:                                       ; preds = %if.end.96
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call99 = call i32 @fileno(%struct._IO_FILE* %72) #9
  %call100 = call i32 @set_binary_mode(i32 %call99, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %if.end.172, %if.then.98
  store i32 0, i32* %c, align 4
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %buf, i32 0, i32 0
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call101 = call i64 @fread(i8* %arraydecay, i64 1, i64 10, %struct._IO_FILE* %73)
  %cmp102 = icmp ne i64 %call101, 10
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.cond
  br label %for.end.173

if.end.105:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc, %if.end.105
  %74 = load i32, i32* %i, align 4
  %cmp107 = icmp slt i32 %74, 16
  br i1 %cmp107, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.106
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call109 = call i32 @_IO_getc(%struct._IO_FILE* %75)
  store i32 %call109, i32* %c, align 4
  %cmp110 = icmp eq i32 %call109, 32
  br i1 %cmp110, label %if.then.115, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %for.body
  %76 = load i32, i32* %c, align 4
  %cmp113 = icmp eq i32 %76, -1
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %lor.lhs.false.112, %for.body
  br label %for.end

if.end.116:                                       ; preds = %lor.lhs.false.112
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call117 = call i32 @_IO_getc(%struct._IO_FILE* %77)
  store i32 %call117, i32* %d, align 4
  %78 = load i32, i32* %c, align 4
  %idxprom = sext i32 %78 to i64
  %call118 = call i16** @__ctype_b_loc() #10
  %79 = load i16*, i16** %call118, align 8
  %arrayidx119 = getelementptr inbounds i16, i16* %79, i64 %idxprom
  %80 = load i16, i16* %arrayidx119, align 2
  %conv120 = zext i16 %80 to i32
  %and = and i32 %conv120, 2048
  %tobool121 = icmp ne i32 %and, 0
  br i1 %tobool121, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.116
  %81 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %81, 48
  br label %cond.end

cond.false:                                       ; preds = %if.end.116
  %82 = load i32, i32* %c, align 4
  %sub122 = sub nsw i32 %82, 97
  %add = add nsw i32 %sub122, 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add, %cond.false ]
  %mul = mul nsw i32 %cond, 16
  %83 = load i32, i32* %d, align 4
  %idxprom123 = sext i32 %83 to i64
  %call124 = call i16** @__ctype_b_loc() #10
  %84 = load i16*, i16** %call124, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %84, i64 %idxprom123
  %85 = load i16, i16* %arrayidx125, align 2
  %conv126 = zext i16 %85 to i32
  %and127 = and i32 %conv126, 2048
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %cond.true.129, label %cond.false.131

cond.true.129:                                    ; preds = %cond.end
  %86 = load i32, i32* %d, align 4
  %sub130 = sub nsw i32 %86, 48
  br label %cond.end.134

cond.false.131:                                   ; preds = %cond.end
  %87 = load i32, i32* %d, align 4
  %sub132 = sub nsw i32 %87, 97
  %add133 = add nsw i32 %sub132, 10
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.131, %cond.true.129
  %cond135 = phi i32 [ %sub130, %cond.true.129 ], [ %add133, %cond.false.131 ]
  %add136 = add nsw i32 %mul, %cond135
  store i32 %add136, i32* %c, align 4
  %88 = load i32, i32* %c, align 4
  %call137 = call i32 @putchar(i32 %88)
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* @group_by, align 4
  %and138 = and i32 %89, %90
  %91 = load i32, i32* @group_by, align 4
  %cmp139 = icmp eq i32 %and138, %91
  br i1 %cmp139, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %cond.end.134
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call142 = call i32 @_IO_getc(%struct._IO_FILE* %92)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %cond.end.134
  br label %for.inc

for.inc:                                          ; preds = %if.end.143
  %93 = load i32, i32* %i, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.106

for.end:                                          ; preds = %if.then.115, %for.cond.106
  %94 = load i32, i32* %c, align 4
  %cmp144 = icmp eq i32 %94, 32
  br i1 %cmp144, label %if.then.146, label %if.else.161

if.then.146:                                      ; preds = %for.end
  br label %while.cond.147

while.cond.147:                                   ; preds = %while.body.155, %if.then.146
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call148 = call i32 @_IO_getc(%struct._IO_FILE* %95)
  store i32 %call148, i32* %c, align 4
  %cmp149 = icmp ne i32 %call148, 10
  br i1 %cmp149, label %land.rhs.151, label %land.end.154

land.rhs.151:                                     ; preds = %while.cond.147
  %96 = load i32, i32* %c, align 4
  %cmp152 = icmp ne i32 %96, -1
  br label %land.end.154

land.end.154:                                     ; preds = %land.rhs.151, %while.cond.147
  %97 = phi i1 [ false, %while.cond.147 ], [ %cmp152, %land.rhs.151 ]
  br i1 %97, label %while.body.155, label %while.end.156

while.body.155:                                   ; preds = %land.end.154
  br label %while.cond.147

while.end.156:                                    ; preds = %land.end.154
  %98 = load i32, i32* %c, align 4
  %cmp157 = icmp eq i32 %98, -1
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %while.end.156
  br label %for.end.173

if.end.160:                                       ; preds = %while.end.156
  br label %if.end.172

if.else.161:                                      ; preds = %for.end
  %99 = load i32, i32* %i, align 4
  %cmp162 = icmp slt i32 %99, 16
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.else.161
  br label %for.end.173

if.end.165:                                       ; preds = %if.else.161
  %arraydecay166 = getelementptr inbounds [18 x i8], [18 x i8]* %buf, i32 0, i32 0
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call167 = call i64 @fread(i8* %arraydecay166, i64 1, i64 18, %struct._IO_FILE* %100)
  %cmp168 = icmp ne i64 %call167, 18
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.165
  br label %for.end.173

if.end.171:                                       ; preds = %if.end.165
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.160
  br label %for.cond

for.end.173:                                      ; preds = %if.then.170, %if.then.164, %if.then.159, %if.then.104
  br label %if.end.259

if.else.174:                                      ; preds = %if.end.96
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call175 = call i32 @fileno(%struct._IO_FILE* %101) #9
  %call176 = call i32 @set_binary_mode(i32 %call175, i32 0)
  store i64 0, i64* %address, align 8
  %arrayidx177 = getelementptr inbounds [18 x i8], [18 x i8]* %string, i32 0, i64 0
  store i8 32, i8* %arrayidx177, align 1
  %arrayidx178 = getelementptr inbounds [18 x i8], [18 x i8]* %string, i32 0, i64 17
  store i8 0, i8* %arrayidx178, align 1
  br label %for.cond.179

for.cond.179:                                     ; preds = %if.end.256, %if.else.174
  store i32 0, i32* %c181, align 4
  store i32 0, i32* %i180, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.245, %for.cond.179
  %102 = load i32, i32* %i180, align 4
  %cmp183 = icmp slt i32 %102, 16
  br i1 %cmp183, label %for.body.185, label %for.end.247

for.body.185:                                     ; preds = %for.cond.182
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call186 = call i32 @_IO_getc(%struct._IO_FILE* %103)
  store i32 %call186, i32* %c181, align 4
  %cmp187 = icmp eq i32 %call186, -1
  br i1 %cmp187, label %if.then.189, label %if.else.197

if.then.189:                                      ; preds = %for.body.185
  %104 = load i32, i32* %i180, align 4
  %tobool190 = icmp ne i32 %104, 0
  br i1 %tobool190, label %if.end.192, label %if.then.191

if.then.191:                                      ; preds = %if.then.189
  br label %for.end.247

if.end.192:                                       ; preds = %if.then.189
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call193 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %105)
  %106 = load i32, i32* %i180, align 4
  %add194 = add nsw i32 %106, 1
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds [18 x i8], [18 x i8]* %string, i32 0, i64 %idxprom195
  store i8 0, i8* %arrayidx196, align 1
  br label %if.end.238

if.else.197:                                      ; preds = %for.body.185
  %107 = load i32, i32* %i180, align 4
  %tobool198 = icmp ne i32 %107, 0
  br i1 %tobool198, label %if.end.202, label %if.then.199

if.then.199:                                      ; preds = %if.else.197
  %108 = load i64, i64* %address, align 8
  %add200 = add i64 %108, 0
  %call201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i64 %add200)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.199, %if.else.197
  %109 = load i8, i8* @iso_flag, align 1
  %tobool203 = trunc i8 %109 to i1
  br i1 %tobool203, label %if.then.204, label %if.else.221

if.then.204:                                      ; preds = %if.end.202
  %110 = load i32, i32* %c181, align 4
  %cmp205 = icmp slt i32 %110, 32
  br i1 %cmp205, label %cond.true.213, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %if.then.204
  %111 = load i32, i32* %c181, align 4
  %cmp208 = icmp sge i32 %111, 127
  br i1 %cmp208, label %land.lhs.true.210, label %cond.false.214

land.lhs.true.210:                                ; preds = %lor.lhs.false.207
  %112 = load i32, i32* %c181, align 4
  %cmp211 = icmp slt i32 %112, 160
  br i1 %cmp211, label %cond.true.213, label %cond.false.214

cond.true.213:                                    ; preds = %land.lhs.true.210, %if.then.204
  br label %cond.end.215

cond.false.214:                                   ; preds = %land.lhs.true.210, %lor.lhs.false.207
  %113 = load i32, i32* %c181, align 4
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.214, %cond.true.213
  %cond216 = phi i32 [ 46, %cond.true.213 ], [ %113, %cond.false.214 ]
  %conv217 = trunc i32 %cond216 to i8
  %114 = load i32, i32* %i180, align 4
  %add218 = add nsw i32 %114, 1
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds [18 x i8], [18 x i8]* %string, i32 0, i64 %idxprom219
  store i8 %conv217, i8* %arrayidx220, align 1
  br label %if.end.235

if.else.221:                                      ; preds = %if.end.202
  %115 = load i32, i32* %c181, align 4
  %cmp222 = icmp slt i32 %115, 32
  br i1 %cmp222, label %cond.true.227, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %if.else.221
  %116 = load i32, i32* %c181, align 4
  %cmp225 = icmp sge i32 %116, 127
  br i1 %cmp225, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %lor.lhs.false.224, %if.else.221
  br label %cond.end.229

cond.false.228:                                   ; preds = %lor.lhs.false.224
  %117 = load i32, i32* %c181, align 4
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.228, %cond.true.227
  %cond230 = phi i32 [ 46, %cond.true.227 ], [ %117, %cond.false.228 ]
  %conv231 = trunc i32 %cond230 to i8
  %118 = load i32, i32* %i180, align 4
  %add232 = add nsw i32 %118, 1
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds [18 x i8], [18 x i8]* %string, i32 0, i64 %idxprom233
  store i8 %conv231, i8* %arrayidx234, align 1
  br label %if.end.235

if.end.235:                                       ; preds = %cond.end.229, %cond.end.215
  %119 = load i32, i32* %c181, align 4
  %add236 = add i32 %119, 0
  %call237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %add236)
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.235, %if.end.192
  %120 = load i32, i32* %i180, align 4
  %121 = load i32, i32* @group_by, align 4
  %and239 = and i32 %120, %121
  %122 = load i32, i32* @group_by, align 4
  %cmp240 = icmp eq i32 %and239, %122
  br i1 %cmp240, label %if.then.242, label %if.end.244

if.then.242:                                      ; preds = %if.end.238
  %call243 = call i32 @putchar(i32 32)
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.242, %if.end.238
  br label %for.inc.245

for.inc.245:                                      ; preds = %if.end.244
  %123 = load i32, i32* %i180, align 4
  %inc246 = add nsw i32 %123, 1
  store i32 %inc246, i32* %i180, align 4
  br label %for.cond.182

for.end.247:                                      ; preds = %if.then.191, %for.cond.182
  %124 = load i32, i32* %i180, align 4
  %tobool248 = icmp ne i32 %124, 0
  br i1 %tobool248, label %if.then.249, label %if.end.252

if.then.249:                                      ; preds = %for.end.247
  %arraydecay250 = getelementptr inbounds [18 x i8], [18 x i8]* %string, i32 0, i32 0
  %call251 = call i32 @puts(i8* %arraydecay250)
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.249, %for.end.247
  %125 = load i32, i32* %c181, align 4
  %cmp253 = icmp eq i32 %125, -1
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.end.252
  br label %for.end.258

if.end.256:                                       ; preds = %if.end.252
  %126 = load i64, i64* %address, align 8
  %add257 = add nsw i64 %126, 16
  store i64 %add257, i64* %address, align 8
  br label %for.cond.179

for.end.258:                                      ; preds = %if.then.255
  br label %if.end.259

if.end.259:                                       ; preds = %for.end.258, %for.end.173
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %cmp260 = icmp ne %struct._IO_FILE* %127, %128
  br i1 %cmp260, label %if.then.262, label %if.end.264

if.then.262:                                      ; preds = %if.end.259
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call263 = call i32 @fclose(%struct._IO_FILE* %129)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.262, %if.end.259
  br label %do.cond

do.cond:                                          ; preds = %if.end.264, %if.then.93
  %130 = load i8**, i8*** %argv.addr, align 8
  %131 = load i8*, i8** %130, align 8
  %cmp265 = icmp ne i8* %131, null
  br i1 %cmp265, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind uwtable
define void @usage() #3 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @progname, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* %1)
  call void @exit(i32 1) #11
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @perror(i8*) #2

declare i32 @set_binary_mode(i32, i32) #2

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare i32 @putchar(i32) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @printf(i8*, ...) #2

declare i32 @puts(i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
