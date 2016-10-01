; ModuleID = './MultiSource.Benchmarks.McCat/7.18-imp.pgm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ImgT = type { i8, i8*, i8*, %struct._IO_FILE*, i32, i32, i32, i32, i8*, double*, float*, float*, float*, i32*, double, double, i32*, double*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"filename:\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"width   :\09%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"height  :\09%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"max gray:\09%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"#%n\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"P5\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s.jo.pgm\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%s.raw.pgm\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%s.cedge.pgm\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s.hvar.pgm\00", align 1

; Function Attrs: nounwind uwtable
define void @PGM_InitImage(%struct.ImgT* %img, i8* %filename) #0 {
entry:
  %img.addr = alloca %struct.ImgT*, align 8
  %filename.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %add = add i64 %call, 1
  %mul = mul i64 %add, 1
  %call1 = call noalias i8* @malloc(i64 %mul) #5
  %1 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %filename2 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %1, i32 0, i32 1
  store i8* %call1, i8** %filename2, align 8
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %filename3 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 1
  %3 = load i8*, i8** %filename3, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @strcpy(i8* %3, i8* %4) #5
  %5 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %filename5 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %5, i32 0, i32 1
  %6 = load i8*, i8** %filename5, align 8
  %call6 = call noalias i8* @strdup(i8* %6) #5
  %7 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname = getelementptr inbounds %struct.ImgT, %struct.ImgT* %7, i32 0, i32 2
  store i8* %call6, i8** %imgname, align 8
  %8 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %filename7 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %8, i32 0, i32 1
  %9 = load i8*, i8** %filename7, align 8
  store i8* %9, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = sext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, 47
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname12 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %14, i32 0, i32 2
  %15 = load i8*, i8** %imgname12, align 8
  %16 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1
  %call13 = call i8* @strcpy(i8* %15, i8* %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname14 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %17, i32 0, i32 2
  %18 = load i8*, i8** %imgname14, align 8
  store i8* %18, i8** %p, align 8
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.25, %while.end
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr16, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %while.body.20, label %while.end.26

while.body.20:                                    ; preds = %while.cond.15
  %21 = load i8*, i8** %p, align 8
  %22 = load i8, i8* %21, align 1
  %conv21 = sext i8 %22 to i32
  %cmp22 = icmp eq i32 %conv21, 46
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %while.body.20
  %23 = load i8*, i8** %p, align 8
  store i8 0, i8* %23, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %while.body.20
  br label %while.cond.15

while.end.26:                                     ; preds = %while.cond.15
  %24 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %valid = getelementptr inbounds %struct.ImgT, %struct.ImgT* %24, i32 0, i32 0
  store i8 0, i8* %valid, align 1
  %25 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var = getelementptr inbounds %struct.ImgT, %struct.ImgT* %25, i32 0, i32 11
  store float* null, float** %var, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @PGM_FreeImage(%struct.ImgT* %img) #0 {
entry:
  %img.addr = alloca %struct.ImgT*, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %filename = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 1
  %1 = load i8*, i8** %filename, align 8
  call void @free(i8* %1) #5
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 2
  %3 = load i8*, i8** %imgname, align 8
  call void @free(i8* %3) #5
  %4 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data = getelementptr inbounds %struct.ImgT, %struct.ImgT* %4, i32 0, i32 8
  %5 = load i8*, i8** %data, align 8
  call void @free(i8* %5) #5
  %6 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %cedge = getelementptr inbounds %struct.ImgT, %struct.ImgT* %6, i32 0, i32 12
  %7 = load float*, float** %cedge, align 8
  %8 = bitcast float* %7 to i8*
  call void @free(i8* %8) #5
  %9 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %valid = getelementptr inbounds %struct.ImgT, %struct.ImgT* %9, i32 0, i32 0
  store i8 0, i8* %valid, align 1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @PGM_PrintInfo(%struct.ImgT* %img) #0 {
entry:
  %img.addr = alloca %struct.ImgT*, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %valid = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 0
  %1 = load i8, i8* %valid, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %filename = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 1
  %3 = load i8*, i8** %filename, align 8
  %call = call i8* @mybasename(i8* %3)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %call)
  %4 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %4, i32 0, i32 5
  %5 = load i32, i32* %width, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %5)
  %6 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %6, i32 0, i32 4
  %7 = load i32, i32* %height, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %7)
  %8 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %maxgray = getelementptr inbounds %struct.ImgT, %struct.ImgT* %8, i32 0, i32 6
  %9 = load i32, i32* %maxgray, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #4
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

; Function Attrs: nounwind uwtable
define i32 @PGM_GetValue(%struct.ImgT* %img) #0 {
entry:
  %img.addr = alloca %struct.ImgT*, align 8
  %n = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* %n)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end.13

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp1 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32* %n)
  %4 = load i32, i32* %n, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.10, %if.then
  %5 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp5 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %5, i32 0, i32 3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp5, align 8
  %call6 = call i32 @fgetc(%struct._IO_FILE* %6)
  %conv = trunc i32 %call6 to i8
  store i8 %conv, i8* %c, align 1
  %conv7 = sext i8 %conv to i32
  %cmp8 = icmp ne i32 %conv7, 10
  br i1 %cmp8, label %while.body.10, label %while.end

while.body.10:                                    ; preds = %while.cond.4
  br label %while.cond.4

while.end:                                        ; preds = %while.cond.4
  br label %if.end

if.end:                                           ; preds = %while.end, %while.body
  %7 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp11 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %7, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp11, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %while.cond

while.end.13:                                     ; preds = %while.cond
  %9 = load i32, i32* %n, align 4
  ret i32 %9
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fgetc(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @PGM_Open(%struct.ImgT* %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.ImgT*, align 8
  %magic = alloca [2 x i8], align 1
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %filename = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 1
  %1 = load i8*, i8** %filename, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 3
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %magic, i32 0, i32 0
  %3 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp1 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %3, i32 0, i32 3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call2 = call i64 @fread(i8* %arraydecay, i64 1, i64 2, %struct._IO_FILE* %4)
  %cmp3 = icmp ne i64 %call2, 2
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay4 = getelementptr inbounds [2 x i8], [2 x i8]* %magic, i32 0, i32 0
  %call5 = call i32 @strncmp(i8* %arraydecay4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i64 2) #4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %5 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %call9 = call i32 @PGM_GetValue(%struct.ImgT* %5)
  %6 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %6, i32 0, i32 5
  store i32 %call9, i32* %width, align 4
  %7 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %call10 = call i32 @PGM_GetValue(%struct.ImgT* %7)
  %8 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %8, i32 0, i32 4
  store i32 %call10, i32* %height, align 4
  %9 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %call11 = call i32 @PGM_GetValue(%struct.ImgT* %9)
  %10 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %maxgray = getelementptr inbounds %struct.ImgT, %struct.ImgT* %10, i32 0, i32 6
  store i32 %call11, i32* %maxgray, align 4
  %11 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %valid = getelementptr inbounds %struct.ImgT, %struct.ImgT* %11, i32 0, i32 0
  store i8 1, i8* %valid, align 1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @PGM_Close(%struct.ImgT* %img) #0 {
entry:
  %img.addr = alloca %struct.ImgT*, align 8
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @PGM_LoadImage(%struct.ImgT* %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.ImgT*, align 8
  %rc = alloca i32, align 4
  %byte = alloca i8, align 1
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %pixel = alloca i32, align 4
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %call = call i32 @PGM_Open(%struct.ImgT* %0)
  store i32 %call, i32* %rc, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %rc, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 5
  %3 = load i32, i32* %width, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %4, i32 0, i32 4
  %5 = load i32, i32* %height, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  call void @PGM_Close(%struct.ImgT* %6)
  store i32 -3, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %7 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width5 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %7, i32 0, i32 5
  %8 = load i32, i32* %width5, align 4
  %9 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height6 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %9, i32 0, i32 4
  %10 = load i32, i32* %height6, align 4
  %mul = mul nsw i32 %8, %10
  %conv = sext i32 %mul to i64
  %mul7 = mul i64 %conv, 1
  %call8 = call noalias i8* @malloc(i64 %mul7) #5
  %11 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data = getelementptr inbounds %struct.ImgT, %struct.ImgT* %11, i32 0, i32 8
  store i8* %call8, i8** %data, align 8
  %12 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %maxgray = getelementptr inbounds %struct.ImgT, %struct.ImgT* %12, i32 0, i32 6
  %13 = load i32, i32* %maxgray, align 4
  %add = add nsw i32 %13, 1
  %conv9 = sext i32 %add to i64
  %call10 = call noalias i8* @calloc(i64 %conv9, i64 4) #5
  %14 = bitcast i8* %call10 to i32*
  %15 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %hist = getelementptr inbounds %struct.ImgT, %struct.ImgT* %15, i32 0, i32 16
  store i32* %14, i32** %hist, align 8
  %16 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %maxgray11 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %16, i32 0, i32 6
  %17 = load i32, i32* %maxgray11, align 4
  %add12 = add nsw i32 %17, 1
  %conv13 = sext i32 %add12 to i64
  %call14 = call noalias i8* @calloc(i64 %conv13, i64 8) #5
  %18 = bitcast i8* %call14 to double*
  %19 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %p = getelementptr inbounds %struct.ImgT, %struct.ImgT* %19, i32 0, i32 17
  store double* %18, double** %p, align 8
  %20 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var = getelementptr inbounds %struct.ImgT, %struct.ImgT* %20, i32 0, i32 11
  store float* null, float** %var, align 8
  %21 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp = getelementptr inbounds %struct.ImgT, %struct.ImgT* %21, i32 0, i32 3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32* %n)
  %23 = load i32, i32* %n, align 4
  %cmp16 = icmp sgt i32 %23, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.18
  %24 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp19 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %24, i32 0, i32 3
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp19, align 8
  %call20 = call i32 @fgetc(%struct._IO_FILE* %25)
  store i32 %call20, i32* %c, align 4
  %cmp21 = icmp ne i32 %call20, 10
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.23

if.end.23:                                        ; preds = %while.end, %if.end.4
  %26 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp24 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %26, i32 0, i32 3
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp24, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %pixel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %28 = load i32, i32* %pixel, align 4
  %29 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width26 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %29, i32 0, i32 5
  %30 = load i32, i32* %width26, align 4
  %31 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height27 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %31, i32 0, i32 4
  %32 = load i32, i32* %height27, align 4
  %mul28 = mul nsw i32 %30, %32
  %cmp29 = icmp slt i32 %28, %mul28
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %fp31 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %33, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp31, align 8
  %call32 = call i64 @fread(i8* %byte, i64 1, i64 1, %struct._IO_FILE* %34)
  %35 = load i8, i8* %byte, align 1
  %36 = load i32, i32* %pixel, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data33 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %37, i32 0, i32 8
  %38 = load i8*, i8** %data33, align 8
  %arrayidx = getelementptr inbounds i8, i8* %38, i64 %idxprom
  store i8 %35, i8* %arrayidx, align 1
  %39 = load i8, i8* %byte, align 1
  %idxprom34 = zext i8 %39 to i64
  %40 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %hist35 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %40, i32 0, i32 16
  %41 = load i32*, i32** %hist35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %41, i64 %idxprom34
  %42 = load i32, i32* %arrayidx36, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %pixel, align 4
  %inc37 = add nsw i32 %43, 1
  store i32 %inc37, i32* %pixel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %byte, align 1
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.55, %for.end
  %44 = load i8, i8* %byte, align 1
  %conv39 = zext i8 %44 to i32
  %45 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %maxgray40 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %45, i32 0, i32 6
  %46 = load i32, i32* %maxgray40, align 4
  %cmp41 = icmp slt i32 %conv39, %46
  br i1 %cmp41, label %for.body.43, label %for.end.57

for.body.43:                                      ; preds = %for.cond.38
  %47 = load i8, i8* %byte, align 1
  %idxprom44 = zext i8 %47 to i64
  %48 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %hist45 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %48, i32 0, i32 16
  %49 = load i32*, i32** %hist45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %49, i64 %idxprom44
  %50 = load i32, i32* %arrayidx46, align 4
  %conv47 = sitofp i32 %50 to double
  %51 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width48 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %51, i32 0, i32 5
  %52 = load i32, i32* %width48, align 4
  %53 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height49 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %53, i32 0, i32 4
  %54 = load i32, i32* %height49, align 4
  %mul50 = mul nsw i32 %52, %54
  %conv51 = sitofp i32 %mul50 to double
  %div = fdiv double %conv47, %conv51
  %55 = load i8, i8* %byte, align 1
  %idxprom52 = zext i8 %55 to i64
  %56 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %p53 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %56, i32 0, i32 17
  %57 = load double*, double** %p53, align 8
  %arrayidx54 = getelementptr inbounds double, double* %57, i64 %idxprom52
  store double %div, double* %arrayidx54, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.43
  %58 = load i8, i8* %byte, align 1
  %inc56 = add i8 %58, 1
  store i8 %inc56, i8* %byte, align 1
  br label %for.cond.38

for.end.57:                                       ; preds = %for.cond.38
  %59 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  call void @PGM_Close(%struct.ImgT* %59)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.57, %if.then.3, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @PGM_WriteBinary(%struct.ImgT* %img) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.ImgT*, align 8
  %s = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %pixel = alloca i64, align 8
  %val = alloca i8, align 1
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %valid = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 0
  %1 = load i8, i8* %valid, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 5
  %3 = load i32, i32* %width, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %4 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %4, i32 0, i32 4
  %5 = load i32, i32* %height, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  store i32 -3, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.1
  %6 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname = getelementptr inbounds %struct.ImgT, %struct.ImgT* %6, i32 0, i32 2
  %7 = load i8*, i8** %imgname, align 8
  %call = call i64 @strlen(i8* %7) #4
  %add = add i64 %call, 7
  %add3 = add i64 %add, 1
  %mul = mul i64 %add3, 1
  %call4 = call noalias i8* @malloc(i64 %mul) #5
  store i8* %call4, i8** %s, align 8
  %8 = load i8*, i8** %s, align 8
  %9 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname5 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %9, i32 0, i32 2
  %10 = load i8*, i8** %imgname5, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* %10) #5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** %fp, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %14 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width8 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %14, i32 0, i32 5
  %15 = load i32, i32* %width8, align 4
  %16 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height9 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %16, i32 0, i32 4
  %17 = load i32, i32* %height9, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %15, i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %19 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %maxgray = getelementptr inbounds %struct.ImgT, %struct.ImgT* %19, i32 0, i32 6
  %20 = load i32, i32* %maxgray, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %20)
  store i64 0, i64* %pixel, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i64, i64* %pixel, align 8
  %22 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width12 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %22, i32 0, i32 5
  %23 = load i32, i32* %width12, align 4
  %24 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height13 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %24, i32 0, i32 4
  %25 = load i32, i32* %height13, align 4
  %mul14 = mul nsw i32 %23, %25
  %conv = sext i32 %mul14 to i64
  %cmp15 = icmp slt i64 %21, %conv
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i64, i64* %pixel, align 8
  %27 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data = getelementptr inbounds %struct.ImgT, %struct.ImgT* %27, i32 0, i32 8
  %28 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %26
  %29 = load i8, i8* %arrayidx, align 1
  %conv17 = zext i8 %29 to i32
  %30 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %threshold = getelementptr inbounds %struct.ImgT, %struct.ImgT* %30, i32 0, i32 7
  %31 = load i32, i32* %threshold, align 4
  %conv18 = trunc i32 %31 to i8
  %conv19 = zext i8 %conv18 to i32
  %cmp20 = icmp sgt i32 %conv17, %conv19
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %32 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %maxgray22 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %32, i32 0, i32 6
  %33 = load i32, i32* %maxgray22, align 4
  %conv23 = trunc i32 %33 to i8
  %conv24 = zext i8 %conv23 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv24, %cond.true ], [ 0, %cond.false ]
  %conv25 = trunc i32 %cond to i8
  store i8 %conv25, i8* %val, align 1
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i64 @fwrite(i8* %val, i64 1, i64 1, %struct._IO_FILE* %34)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %35 = load i64, i64* %pixel, align 8
  %inc = add nsw i64 %35, 1
  store i64 %inc, i64* %pixel, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i8*, i8** %s, align 8
  call void @free(i8* %36) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @PGM_WriteImage(%struct.ImgT* %img, i8 signext %itype) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.ImgT*, align 8
  %itype.addr = alloca i8, align 1
  %s = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %pixel = alloca i64, align 8
  %val = alloca i8, align 1
  store %struct.ImgT* %img, %struct.ImgT** %img.addr, align 8
  store i8 %itype, i8* %itype.addr, align 1
  %0 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %valid = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i32 0, i32 0
  %1 = load i8, i8* %valid, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %2, i32 0, i32 5
  %3 = load i32, i32* %width, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %4 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %4, i32 0, i32 4
  %5 = load i32, i32* %height, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  store i32 -3, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.1
  %6 = load i8, i8* %itype.addr, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.24
    i32 2, label %sw.bb.25
    i32 3, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data = getelementptr inbounds %struct.ImgT, %struct.ImgT* %7, i32 0, i32 8
  %8 = load i8*, i8** %data, align 8
  %cmp3 = icmp eq i8* %8, null
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb
  store i32 -3, i32* %retval
  br label %return

if.end.6:                                         ; preds = %sw.bb
  %9 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname = getelementptr inbounds %struct.ImgT, %struct.ImgT* %9, i32 0, i32 2
  %10 = load i8*, i8** %imgname, align 8
  %call = call i64 @strlen(i8* %10) #4
  %add = add i64 %call, 8
  %add7 = add i64 %add, 1
  %mul = mul i64 %add7, 1
  %call8 = call noalias i8* @malloc(i64 %mul) #5
  store i8* %call8, i8** %s, align 8
  %11 = load i8*, i8** %s, align 8
  %12 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname9 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %12, i32 0, i32 2
  %13 = load i8*, i8** %imgname9, align 8
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* %13) #5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %14, %struct._IO_FILE** %fp, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %17 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width12 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %17, i32 0, i32 5
  %18 = load i32, i32* %width12, align 4
  %19 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height13 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %19, i32 0, i32 4
  %20 = load i32, i32* %height13, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %18, i32 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %22 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %maxgray = getelementptr inbounds %struct.ImgT, %struct.ImgT* %22, i32 0, i32 6
  %23 = load i32, i32* %maxgray, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %23)
  store i64 0, i64* %pixel, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %24 = load i64, i64* %pixel, align 8
  %25 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width16 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %25, i32 0, i32 5
  %26 = load i32, i32* %width16, align 4
  %27 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height17 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %27, i32 0, i32 4
  %28 = load i32, i32* %height17, align 4
  %mul18 = mul nsw i32 %26, %28
  %conv19 = sext i32 %mul18 to i64
  %cmp20 = icmp slt i64 %24, %conv19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i64, i64* %pixel, align 8
  %30 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %data22 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %30, i32 0, i32 8
  %31 = load i8*, i8** %data22, align 8
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %29
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call23 = call i64 @fwrite(i8* %arrayidx, i64 1, i64 1, %struct._IO_FILE* %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, i64* %pixel, align 8
  %inc = add nsw i64 %33, 1
  store i64 %inc, i64* %pixel, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i8*, i8** %s, align 8
  call void @free(i8* %34) #5
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end
  store i32 -3, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %if.end
  %35 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %cedge = getelementptr inbounds %struct.ImgT, %struct.ImgT* %35, i32 0, i32 12
  %36 = load float*, float** %cedge, align 8
  %cmp26 = icmp eq float* %36, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.25
  store i32 -3, i32* %retval
  br label %return

if.end.29:                                        ; preds = %sw.bb.25
  %37 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname30 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %37, i32 0, i32 2
  %38 = load i8*, i8** %imgname30, align 8
  %call31 = call i64 @strlen(i8* %38) #4
  %add32 = add i64 %call31, 10
  %add33 = add i64 %add32, 1
  %mul34 = mul i64 %add33, 1
  %call35 = call noalias i8* @malloc(i64 %mul34) #5
  store i8* %call35, i8** %s, align 8
  %39 = load i8*, i8** %s, align 8
  %40 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname36 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %40, i32 0, i32 2
  %41 = load i8*, i8** %imgname36, align 8
  %call37 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* %41) #5
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %42, %struct._IO_FILE** %fp, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %45 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width39 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %45, i32 0, i32 5
  %46 = load i32, i32* %width39, align 4
  %47 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height40 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %47, i32 0, i32 4
  %48 = load i32, i32* %height40, align 4
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %46, i32 %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  store i64 0, i64* %pixel, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.55, %if.end.29
  %50 = load i64, i64* %pixel, align 8
  %51 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width44 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %51, i32 0, i32 5
  %52 = load i32, i32* %width44, align 4
  %53 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height45 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %53, i32 0, i32 4
  %54 = load i32, i32* %height45, align 4
  %mul46 = mul nsw i32 %52, %54
  %conv47 = sext i32 %mul46 to i64
  %cmp48 = icmp slt i64 %50, %conv47
  br i1 %cmp48, label %for.body.50, label %for.end.57

for.body.50:                                      ; preds = %for.cond.43
  %55 = load i64, i64* %pixel, align 8
  %56 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %cedge51 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %56, i32 0, i32 12
  %57 = load float*, float** %cedge51, align 8
  %arrayidx52 = getelementptr inbounds float, float* %57, i64 %55
  %58 = load float, float* %arrayidx52, align 4
  %conv53 = fptoui float %58 to i8
  store i8 %conv53, i8* %val, align 1
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call54 = call i64 @fwrite(i8* %val, i64 1, i64 1, %struct._IO_FILE* %59)
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.50
  %60 = load i64, i64* %pixel, align 8
  %inc56 = add nsw i64 %60, 1
  store i64 %inc56, i64* %pixel, align 8
  br label %for.cond.43

for.end.57:                                       ; preds = %for.cond.43
  %61 = load i8*, i8** %s, align 8
  call void @free(i8* %61) #5
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.end
  %62 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var = getelementptr inbounds %struct.ImgT, %struct.ImgT* %62, i32 0, i32 11
  %63 = load float*, float** %var, align 8
  %cmp59 = icmp eq float* %63, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %sw.bb.58
  store i32 -3, i32* %retval
  br label %return

if.end.62:                                        ; preds = %sw.bb.58
  %64 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname63 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %64, i32 0, i32 2
  %65 = load i8*, i8** %imgname63, align 8
  %call64 = call i64 @strlen(i8* %65) #4
  %add65 = add i64 %call64, 9
  %add66 = add i64 %add65, 1
  %mul67 = mul i64 %add66, 1
  %call68 = call noalias i8* @malloc(i64 %mul67) #5
  store i8* %call68, i8** %s, align 8
  %66 = load i8*, i8** %s, align 8
  %67 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %imgname69 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %67, i32 0, i32 2
  %68 = load i8*, i8** %imgname69, align 8
  %call70 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* %68) #5
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %69, %struct._IO_FILE** %fp, align 8
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %72 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width72 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %72, i32 0, i32 5
  %73 = load i32, i32* %width72, align 4
  %74 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height73 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %74, i32 0, i32 4
  %75 = load i32, i32* %height73, align 4
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %73, i32 %75)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0))
  store i64 0, i64* %pixel, align 8
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.88, %if.end.62
  %77 = load i64, i64* %pixel, align 8
  %78 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %width77 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %78, i32 0, i32 5
  %79 = load i32, i32* %width77, align 4
  %80 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %height78 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %80, i32 0, i32 4
  %81 = load i32, i32* %height78, align 4
  %mul79 = mul nsw i32 %79, %81
  %conv80 = sext i32 %mul79 to i64
  %cmp81 = icmp slt i64 %77, %conv80
  br i1 %cmp81, label %for.body.83, label %for.end.90

for.body.83:                                      ; preds = %for.cond.76
  %82 = load i64, i64* %pixel, align 8
  %83 = load %struct.ImgT*, %struct.ImgT** %img.addr, align 8
  %var84 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %83, i32 0, i32 11
  %84 = load float*, float** %var84, align 8
  %arrayidx85 = getelementptr inbounds float, float* %84, i64 %82
  %85 = load float, float* %arrayidx85, align 4
  %conv86 = fptoui float %85 to i8
  store i8 %conv86, i8* %val, align 1
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call87 = call i64 @fwrite(i8* %val, i64 1, i64 1, %struct._IO_FILE* %86)
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.83
  %87 = load i64, i64* %pixel, align 8
  %inc89 = add nsw i64 %87, 1
  store i64 %inc89, i64* %pixel, align 8
  br label %for.cond.76

for.end.90:                                       ; preds = %for.cond.76
  %88 = load i8*, i8** %s, align 8
  call void @free(i8* %88) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %for.end.90, %for.end.57, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.61, %if.then.28, %sw.bb.24, %if.then.5, %if.then
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
