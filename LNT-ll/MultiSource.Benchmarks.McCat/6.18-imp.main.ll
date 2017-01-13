; ModuleID = './MultiSource.Benchmarks.McCat/6.18-imp.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParmT = type { [25 x i8], i8, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ImgT = type { i8, i8*, i8*, %struct._IO_FILE*, i32, i32, i32, i32, i8*, double*, float*, float*, float*, i32*, double, double, i32*, double*, i32*, i32* }
%struct._CompT = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i8, %struct._PixT*, %struct._CompT*, i8, %struct._CompT* }
%struct._PixT = type { i32, i32, %struct._PixT* }

@VAR_THRESHOLD = global i32 -1, align 4
@VSPREAD_THRESHOLD = global double 2.000000e-02, align 8
@SAME_ROW_THRESHOLD = global i32 3, align 4
@SAME_ROW_V = global i32 3, align 4
@SAME_ROW_H = global i32 30, align 4
@MAX_CHAR_SIZE = global i32 50, align 4
@MIN_CHAR_SIZE = global i32 5, align 4
@KILL_SMALL_COMP = global i32 1, align 4
@SMALL_THRESHOLD = global i32 10, align 4
@HVAR_WINDOW = global i32 10, align 4
@.str = private unnamed_addr constant [57 x i8] c"Usage: %s <PGM image file> <sigma> <variance threshold>\0A\00", align 1
@IMAGE = common global [800 x i8] zeroinitializer, align 16
@SIGMA = common global double 0.000000e+00, align 8
@ParseInputFile.parms = private unnamed_addr constant [13 x %struct.ParmT] [%struct.ParmT { [25 x i8] c"image\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, i8* getelementptr inbounds ([800 x i8], [800 x i8]* @IMAGE, i32 0, i32 0) }, %struct.ParmT { [25 x i8] c"sigma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, i8* bitcast (double* @SIGMA to i8*) }, %struct.ParmT { [25 x i8] c"var_thresh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, i8* bitcast (i32* @VAR_THRESHOLD to i8*) }, %struct.ParmT { [25 x i8] c"vspread_thresh\00\00\00\00\00\00\00\00\00\00\00", i8 2, i8* bitcast (double* @VSPREAD_THRESHOLD to i8*) }, %struct.ParmT { [25 x i8] c"same_row_thresh\00\00\00\00\00\00\00\00\00\00", i8 0, i8* bitcast (i32* @SAME_ROW_THRESHOLD to i8*) }, %struct.ParmT { [25 x i8] c"same_row_v\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, i8* bitcast (i32* @SAME_ROW_V to i8*) }, %struct.ParmT { [25 x i8] c"same_row_h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, i8* bitcast (i32* @SAME_ROW_H to i8*) }, %struct.ParmT { [25 x i8] c"max_char_size\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, i8* bitcast (i32* @MAX_CHAR_SIZE to i8*) }, %struct.ParmT { [25 x i8] c"min_char_size\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, i8* bitcast (i32* @MIN_CHAR_SIZE to i8*) }, %struct.ParmT { [25 x i8] c"kill_small\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, i8* bitcast (i32* @KILL_SMALL_COMP to i8*) }, %struct.ParmT { [25 x i8] c"small_thresh\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, i8* bitcast (i32* @SMALL_THRESHOLD to i8*) }, %struct.ParmT { [25 x i8] c"hvar_window\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, i8* bitcast (i32* @HVAR_WINDOW to i8*) }, %struct.ParmT zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s not found. Exiting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error: %s not found. Exiting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Error: %s is not a PGM file. Exiting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Error: %s has 0 length. Exiting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Error: '%s' in L_canny(). Exiting.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @DisplayUsage(i8* %prog) #0 {
entry:
  %prog.addr = alloca i8*, align 8
  store i8* %prog, i8** %prog.addr, align 8
  %0 = load i8*, i8** %prog.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i8* %0)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @ParseInputFile(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %s = alloca [80 x i8], align 16
  %p = alloca i32, align 4
  %parms = alloca [13 x %struct.ParmT], align 16
  %read_parm = alloca [25 x i8], align 16
  %read_val = alloca [80 x i8], align 16
  store i8* %file, i8** %file.addr, align 8
  %0 = bitcast [13 x %struct.ParmT]* %parms to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([13 x %struct.ParmT], [13 x %struct.ParmT]* @ParseInputFile.parms, i32 0, i32 0, i32 0, i32 0), i64 520, i32 16, i1 false)
  %1 = load i8*, i8** %file.addr, align 8
  %call = call i8* @strcpy(i8* getelementptr inbounds ([800 x i8], [800 x i8]* @IMAGE, i32 0, i32 0), i8* %1) #2
  %call1 = call i8* @strrchr(i8* getelementptr inbounds ([800 x i8], [800 x i8]* @IMAGE, i32 0, i32 0), i32 47) #6
  %add.ptr = getelementptr inbounds i8, i8* %call1, i64 1
  %arrayidx = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 0
  %var = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx, i32 0, i32 2
  store i8* %add.ptr, i8** %var, align 8
  %2 = load i8*, i8** %file.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %file.addr, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* %3)
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then.34, %if.end
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %s, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i8* @fgets(i8* %arraydecay, i32 80, %struct._IO_FILE* %4)
  %cmp5 = icmp ne i8* %call4, null
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx6 = getelementptr inbounds [80 x i8], [80 x i8]* %s, i32 0, i64 0
  %5 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %5 to i32
  %cmp7 = icmp ne i32 %conv, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %6, label %while.body, label %while.end.64

while.body:                                       ; preds = %land.end
  store i32 0, i32* %p, align 4
  %arraydecay9 = getelementptr inbounds [25 x i8], [25 x i8]* %read_parm, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [80 x i8], [80 x i8]* %s, i32 0, i32 0
  %call11 = call i8* @strtok(i8* %arraydecay10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #2
  %call12 = call i8* @strcpy(i8* %arraydecay9, i8* %call11) #2
  %arraydecay13 = getelementptr inbounds [80 x i8], [80 x i8]* %read_val, i32 0, i32 0
  %call14 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #2
  %call15 = call i8* @strcpy(i8* %arraydecay13, i8* %call14) #2
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.28, %while.body
  %7 = load i32, i32* %p, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx17 = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 %idxprom
  %var18 = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx17, i32 0, i32 2
  %8 = load i8*, i8** %var18, align 8
  %cmp19 = icmp ne i8* %8, null
  br i1 %cmp19, label %land.rhs.21, label %land.end.27

land.rhs.21:                                      ; preds = %while.cond.16
  %arraydecay22 = getelementptr inbounds [25 x i8], [25 x i8]* %read_parm, i32 0, i32 0
  %9 = load i32, i32* %p, align 4
  %idxprom23 = sext i32 %9 to i64
  %arrayidx24 = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 %idxprom23
  %parm = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx24, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [25 x i8], [25 x i8]* %parm, i32 0, i32 0
  %call26 = call i32 @strcmp(i8* %arraydecay22, i8* %arraydecay25) #6
  %tobool = icmp ne i32 %call26, 0
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.21, %while.cond.16
  %10 = phi i1 [ false, %while.cond.16 ], [ %tobool, %land.rhs.21 ]
  br i1 %10, label %while.body.28, label %while.end

while.body.28:                                    ; preds = %land.end.27
  %11 = load i32, i32* %p, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %p, align 4
  br label %while.cond.16

while.end:                                        ; preds = %land.end.27
  %12 = load i32, i32* %p, align 4
  %idxprom29 = sext i32 %12 to i64
  %arrayidx30 = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 %idxprom29
  %var31 = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx30, i32 0, i32 2
  %13 = load i8*, i8** %var31, align 8
  %cmp32 = icmp eq i8* %13, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.end
  br label %while.cond

if.end.35:                                        ; preds = %while.end
  %14 = load i32, i32* %p, align 4
  %idxprom36 = sext i32 %14 to i64
  %arrayidx37 = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 %idxprom36
  %type = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx37, i32 0, i32 1
  %15 = load i8, i8* %type, align 1
  %conv38 = sext i8 %15 to i32
  switch i32 %conv38, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.44
    i32 1, label %sw.bb.50
  ]

sw.bb:                                            ; preds = %if.end.35
  %arraydecay39 = getelementptr inbounds [80 x i8], [80 x i8]* %read_val, i32 0, i32 0
  %call40 = call i32 @atoi(i8* %arraydecay39) #6
  %16 = load i32, i32* %p, align 4
  %idxprom41 = sext i32 %16 to i64
  %arrayidx42 = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 %idxprom41
  %var43 = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx42, i32 0, i32 2
  %17 = load i8*, i8** %var43, align 8
  %18 = bitcast i8* %17 to i32*
  store i32 %call40, i32* %18, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.35
  %arraydecay45 = getelementptr inbounds [80 x i8], [80 x i8]* %read_val, i32 0, i32 0
  %call46 = call double @strtod(i8* %arraydecay45, i8** null) #2
  %19 = load i32, i32* %p, align 4
  %idxprom47 = sext i32 %19 to i64
  %arrayidx48 = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 %idxprom47
  %var49 = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx48, i32 0, i32 2
  %20 = load i8*, i8** %var49, align 8
  %21 = bitcast i8* %20 to double*
  store double %call46, double* %21, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %if.end.35
  %22 = load i32, i32* %p, align 4
  %idxprom51 = sext i32 %22 to i64
  %arrayidx52 = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 %idxprom51
  %var53 = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx52, i32 0, i32 2
  %23 = load i8*, i8** %var53, align 8
  %arraydecay54 = getelementptr inbounds [80 x i8], [80 x i8]* %read_val, i32 0, i32 0
  %call55 = call i8* @strcpy(i8* %23, i8* %arraydecay54) #2
  %24 = load i32, i32* %p, align 4
  %idxprom56 = sext i32 %24 to i64
  %arrayidx57 = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 %idxprom56
  %var58 = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx57, i32 0, i32 2
  %25 = load i8*, i8** %var58, align 8
  %call59 = call i64 @strlen(i8* %25) #6
  %sub = sub i64 %call59, 1
  %26 = load i32, i32* %p, align 4
  %idxprom60 = sext i32 %26 to i64
  %arrayidx61 = getelementptr inbounds [13 x %struct.ParmT], [13 x %struct.ParmT]* %parms, i32 0, i64 %idxprom60
  %var62 = getelementptr inbounds %struct.ParmT, %struct.ParmT* %arrayidx61, i32 0, i32 2
  %27 = load i8*, i8** %var62, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %27, i64 %sub
  store i8 0, i8* %arrayidx63, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.35, %sw.bb.50, %sw.bb.44, %sw.bb
  br label %while.cond

while.end.64:                                     ; preds = %land.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call65 = call i32 @fclose(%struct._IO_FILE* %28)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  %err = alloca [80 x i8], align 16
  %image = alloca %struct.ImgT, align 8
  %sigma = alloca double, align 8
  %var_threshold = alloca i32, align 4
  %comp = alloca %struct._CompT*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  call void @ParseInputFile(i8* %1)
  call void @PGM_InitImage(%struct.ImgT* %image, i8* getelementptr inbounds ([800 x i8], [800 x i8]* @IMAGE, i32 0, i32 0))
  %2 = load double, double* @SIGMA, align 8
  store double %2, double* %sigma, align 8
  %3 = load i32, i32* @VAR_THRESHOLD, align 4
  store i32 %3, i32* %var_threshold, align 4
  %call = call i32 @PGM_LoadImage(%struct.ImgT* %image)
  store i32 %call, i32* %rc, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %rc, align 4
  switch i32 %4, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb.2
    i32 -3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.then
  %filename = getelementptr inbounds %struct.ImgT, %struct.ImgT* %image, i32 0, i32 1
  %5 = load i8*, i8** %filename, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* %5)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %filename3 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %image, i32 0, i32 1
  %6 = load i8*, i8** %filename3, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* %6)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  %filename6 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %image, i32 0, i32 1
  %7 = load i8*, i8** %filename6, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i8* %7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.5, %sw.bb.2, %sw.bb
  %filename8 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %image, i32 0, i32 1
  %8 = load i8*, i8** %filename8, align 8
  call void @free(i8* %8) #2
  %imgname = getelementptr inbounds %struct.ImgT, %struct.ImgT* %image, i32 0, i32 2
  %9 = load i8*, i8** %imgname, align 8
  call void @free(i8* %9) #2
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @PGM_PrintInfo(%struct.ImgT* %image)
  %10 = load i32, i32* %var_threshold, align 4
  call void @HorzVariance(%struct.ImgT* %image, i32 %10)
  %11 = load double, double* %sigma, align 8
  %conv = fptrunc double %11 to float
  %var = getelementptr inbounds %struct.ImgT, %struct.ImgT* %image, i32 0, i32 11
  %12 = load float*, float** %var, align 8
  %width = getelementptr inbounds %struct.ImgT, %struct.ImgT* %image, i32 0, i32 5
  %13 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct.ImgT, %struct.ImgT* %image, i32 0, i32 4
  %14 = load i32, i32* %height, align 4
  %cedge = getelementptr inbounds %struct.ImgT, %struct.ImgT* %image, i32 0, i32 12
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %err, i32 0, i32 0
  %call9 = call i32 @L_canny(float %conv, float* %12, i32 %13, i32 %14, float** %cedge, i8* %arraydecay)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %if.end
  %arraydecay11 = getelementptr inbounds [80 x i8], [80 x i8]* %err, i32 0, i32 0
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay11)
  store i32 -3, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %call14 = call %struct._CompT* @BuildConnectedComponents(%struct.ImgT* %image, i32 0)
  store %struct._CompT* %call14, %struct._CompT** %comp, align 8
  call void @EliminateLargeSpreadComponents(%struct._CompT** %comp, %struct.ImgT* %image)
  call void @MergeRowComponents(%struct._CompT** %comp, %struct.ImgT* %image)
  call void @PairComponents(%struct._CompT** %comp, %struct.ImgT* %image)
  %15 = load %struct._CompT*, %struct._CompT** %comp, align 8
  call void @ComputeBoundingBoxes(%struct._CompT* %15, %struct.ImgT* %image)
  %16 = load %struct._CompT*, %struct._CompT** %comp, align 8
  call void @FreeConnectedComponents(%struct._CompT* %16)
  call void @PGM_FreeImage(%struct.ImgT* %image)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.10, %sw.epilog
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare void @PGM_InitImage(%struct.ImgT*, i8*) #1

declare i32 @PGM_LoadImage(%struct.ImgT*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @PGM_PrintInfo(%struct.ImgT*) #1

declare void @HorzVariance(%struct.ImgT*, i32) #1

declare i32 @L_canny(float, float*, i32, i32, float**, i8*) #1

declare %struct._CompT* @BuildConnectedComponents(%struct.ImgT*, i32) #1

declare void @EliminateLargeSpreadComponents(%struct._CompT**, %struct.ImgT*) #1

declare void @MergeRowComponents(%struct._CompT**, %struct.ImgT*) #1

declare void @PairComponents(%struct._CompT**, %struct.ImgT*) #1

declare void @ComputeBoundingBoxes(%struct._CompT*, %struct.ImgT*) #1

declare void @FreeConnectedComponents(%struct._CompT*) #1

declare void @PGM_FreeImage(%struct.ImgT*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
