; ModuleID = './MultiSource.Benchmarks.Prolangs-C/185.TimberWolfMC.finalout.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@TWsignal = common global i32 0, align 4
@Tsave = external global double, align 8
@redoFlag = common global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.cel\00", align 1
@cktName = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@overlap = external global i32 (...)*, align 8
@overlapf = external global i32 (...)*, align 8
@overlapx = external global i32 (...)*, align 8
@lapFactor = external global double, align 8
@offset = external global i32, align 4
@fpo = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A\0ANew Value for lapFactor: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"New Value for offset: %d\0A\0A\00", align 1
@funccost = external global i32, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"TimberWolf failed to resolve overlap problem.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\0A\0APotential Overlap Problem Averted\0A\0A\00", align 1
@doCompaction = external global i32, align 4
@finalShot = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"cp %s.cfs cfss1\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"cp %s.cfb cfbb1\00", align 1
@numcells = external global i32, align 4
@attmax = external global i32, align 4
@bigcell = external global i32, align 4
@toobig = external global i32, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"\0A\0ACompactor Pass Number: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"    begins with:  route cost: %d  overlap: %d  \00", align 1
@penalty = external global i32, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"  overfill: %d\0A\00", align 1
@overfill = external global i32, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"\0A\0ACOMPACT #%d: TOTAL Wire Length:\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"(before) WITH Pads: %d    WITHOUT Pads: %d\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"\0A\0ACORE Bounding Box: l:%d r:%d b:%d t:%d\0A\0A\00", align 1
@bbleft = external global i32, align 4
@bbright = external global i32, align 4
@bbbottom = external global i32, align 4
@bbtop = external global i32, align 4
@T = external global double, align 8
@.str.14 = private unnamed_addr constant [48 x i8] c"    ends with:    route cost: %d  overlap: %d  \00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"TimberWolf failed to resolve overlap \00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"problem.  \0A Will have to die\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"(after) WITH Pads: %d    WITHOUT Pads: %d\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"cp %s.cfs cfss%d\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"cp %s.cfb cfbb%d\00", align 1
@doChannelGraph = external global i32, align 4
@doGlobalRoute = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @finalout() #0 {
entry:
  %fp = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %withPads = alloca i32, align 4
  %withOutPads = alloca i32, align 4
  %filename = alloca [1024 x i8], align 16
  %command = alloca [128 x i8], align 16
  %Tscale = alloca double, align 8
  %bound = alloca double, align 8
  store i32 0, i32* @TWsignal, align 4
  %0 = load double, double* @Tsave, align 8
  %div = fdiv double %0, 1.000000e+05
  store double %div, double* %Tscale, align 8
  %1 = load double, double* @Tsave, align 8
  %call = call double @log10(double %1) #3
  store double %call, double* %bound, align 8
  %2 = load double, double* %bound, align 8
  %cmp = fcmp ogt double %2, 6.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load double, double* %bound, align 8
  %sub = fsub double %3, 1.000000e+00
  store double %sub, double* %bound, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store double 5.000000e+00, double* %bound, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load double, double* %bound, align 8
  %call1 = call double @pow(double 4.000000e+00, double %4) #3
  store double %call1, double* %bound, align 8
  store i32 0, i32* @redoFlag, align 4
  call void @prepOutput()
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %5 = load i8*, i8** @cktName, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* %5) #3
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %filename, i32 0, i32 0
  %call4 = call %struct._IO_FILE* @fopen(i8* %arraydecay3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fp, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @gpass2(%struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @grdcell(%struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %8)
  store i32 (...)* @goverlap, i32 (...)** @overlap, align 8
  store i32 (...)* @goverlapf, i32 (...)** @overlapf, align 8
  store i32 (...)* @goverlapx, i32 (...)** @overlapx, align 8
  call void @rebin(i32 0)
  %9 = load double, double* @lapFactor, align 8
  %mul = fmul double %9, 2.000000e+00
  store double %mul, double* @lapFactor, align 8
  %10 = load double, double* @lapFactor, align 8
  %div6 = fdiv double 4.000000e+00, %10
  %conv = fptosi double %div6 to i32
  store i32 %conv, i32* @offset, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %12 = load double, double* @lapFactor, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), double %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %14 = load i32, i32* @offset, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %14)
  %call9 = call i32 @findcost()
  store i32 %call9, i32* @funccost, align 4
  call void @outgeo()
  call void @outpin()
  %call10 = call i32 @checkpen()
  %cmp11 = icmp sgt i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %if.end
  call void @fixpenal()
  store i32 1, i32* @redoFlag, align 4
  call void @prepOutput()
  call void @rebin(i32 0)
  %call14 = call i32 @findcost()
  store i32 %call14, i32* @funccost, align 4
  call void @outgeo()
  call void @outpin()
  %call15 = call i32 @checkpen()
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.then.13
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call20 = call i32 @fflush(%struct._IO_FILE* %16)
  br label %return

if.else.21:                                       ; preds = %if.then.13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call23 = call i32 @fflush(%struct._IO_FILE* %18)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  %19 = load i32, i32* @doCompaction, align 4
  %cmp26 = icmp sgt i32 %19, 0
  br i1 %cmp26, label %if.then.28, label %if.else.100

if.then.28:                                       ; preds = %if.end.25
  store i32 1, i32* @finalShot, align 4
  call void @gmain()
  call void @rmain()
  store i32 0, i32* @redoFlag, align 4
  call void @addpins()
  %arraydecay29 = getelementptr inbounds [128 x i8], [128 x i8]* %command, i32 0, i32 0
  %20 = load i8*, i8** @cktName, align 8
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* %20) #3
  %arraydecay31 = getelementptr inbounds [128 x i8], [128 x i8]* %command, i32 0, i32 0
  %call32 = call i32 @system(i8* %arraydecay31)
  %arraydecay33 = getelementptr inbounds [128 x i8], [128 x i8]* %command, i32 0, i32 0
  %21 = load i8*, i8** @cktName, align 8
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* %21) #3
  %arraydecay35 = getelementptr inbounds [128 x i8], [128 x i8]* %command, i32 0, i32 0
  %call36 = call i32 @system(i8* %arraydecay35)
  store i32 1, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.28
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* @doCompaction, align 4
  %cmp37 = icmp sle i32 %22, %23
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %c, align 4
  store i32 %24, i32* @finalShot, align 4
  %25 = load i32, i32* %c, align 4
  %26 = load i32, i32* @doCompaction, align 4
  %cmp39 = icmp eq i32 %25, %26
  br i1 %cmp39, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %for.body
  %27 = load double, double* @lapFactor, align 8
  %mul42 = fmul double %27, 2.000000e+00
  store double %mul42, double* @lapFactor, align 8
  %28 = load double, double* @lapFactor, align 8
  %div43 = fdiv double 4.000000e+00, %28
  %conv44 = fptosi double %div43 to i32
  store i32 %conv44, i32* @offset, align 4
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %30 = load double, double* @lapFactor, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), double %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %32 = load i32, i32* @offset, align 4
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %32)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.41, %for.body
  call void @doborder()
  call void @rebin(i32 1)
  %33 = load i32, i32* %c, align 4
  %cmp48 = icmp eq i32 %33, 1
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.47
  call void @scrappin()
  %34 = load i32, i32* @numcells, align 4
  %mul51 = mul nsw i32 50, %34
  store i32 %mul51, i32* @attmax, align 4
  %35 = load i32, i32* @numcells, align 4
  %mul52 = mul nsw i32 %35, 11
  store i32 %mul52, i32* @bigcell, align 4
  %36 = load i32, i32* @bigcell, align 4
  %add = add nsw i32 %36, 1
  store i32 %add, i32* @toobig, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.47
  %call54 = call i32 @findcost()
  store i32 %call54, i32* @funccost, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %38 = load i32, i32* %c, align 4
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i32 %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %40 = load i32, i32* @funccost, align 4
  %41 = load i32, i32* @penalty, align 4
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), i32 %40, i32 %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %43 = load i32, i32* @overfill, align 4
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 %43)
  call void @wirecosts(i32* %withPads, i32* %withOutPads)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %45 = load i32, i32* %c, align 4
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i32 %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = load i32, i32* %withPads, align 4
  %48 = load i32, i32* %withOutPads, align 4
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i32 0, i32 0), i32 %47, i32 %48)
  call void @initbb()
  %49 = load i32, i32* %c, align 4
  %cmp60 = icmp eq i32 %49, 1
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.53
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %51 = load i32, i32* @bbleft, align 4
  %52 = load i32, i32* @bbright, align 4
  %53 = load i32, i32* @bbbottom, align 4
  %54 = load i32, i32* @bbtop, align 4
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 %51, i32 %52, i32 %53, i32 %54)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.53
  %55 = load double, double* %bound, align 8
  %mul65 = fmul double 1.500000e-02, %55
  %call66 = call double @log10(double %mul65) #3
  %call67 = call double @log10(double 4.000000e+00) #3
  %div68 = fdiv double %call66, %call67
  store double %div68, double* @T, align 8
  %56 = load double, double* @T, align 8
  %call69 = call double @pow(double 1.000000e+01, double %56) #3
  store double %call69, double* @T, align 8
  call void @utemp()
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %58 = load i32, i32* @funccost, align 4
  %59 = load i32, i32* @penalty, align 4
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0), i32 %58, i32 %59)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %61 = load i32, i32* @overfill, align 4
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call72 = call i32 @fflush(%struct._IO_FILE* %62)
  call void @prepOutput()
  call void @outgeo()
  call void @outpin()
  call void @rebin(i32 0)
  %call73 = call i32 @checkpen()
  %cmp74 = icmp sgt i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.86

if.then.76:                                       ; preds = %if.end.64
  call void @fixpenal()
  store i32 1, i32* @redoFlag, align 4
  call void @prepOutput()
  call void @rebin(i32 0)
  %call77 = call i32 @findcost()
  store i32 %call77, i32* @funccost, align 4
  call void @outgeo()
  call void @outpin()
  %call78 = call i32 @checkpen()
  %cmp79 = icmp sgt i32 %call78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.85

if.then.81:                                       ; preds = %if.then.76
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0))
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call84 = call i32 @fflush(%struct._IO_FILE* %65)
  br label %return

if.end.85:                                        ; preds = %if.then.76
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.64
  call void @wirecosts(i32* %withPads, i32* %withOutPads)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %67 = load i32, i32* %c, align 4
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i32 %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %69 = load i32, i32* %withPads, align 4
  %70 = load i32, i32* %withOutPads, align 4
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i32 0, i32 0), i32 %69, i32 %70)
  call void @gmain()
  call void @rmain()
  store i32 0, i32* @redoFlag, align 4
  %arraydecay89 = getelementptr inbounds [128 x i8], [128 x i8]* %command, i32 0, i32 0
  %71 = load i8*, i8** @cktName, align 8
  %72 = load i32, i32* %c, align 4
  %add90 = add nsw i32 %72, 1
  %call91 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* %71, i32 %add90) #3
  %arraydecay92 = getelementptr inbounds [128 x i8], [128 x i8]* %command, i32 0, i32 0
  %call93 = call i32 @system(i8* %arraydecay92)
  %arraydecay94 = getelementptr inbounds [128 x i8], [128 x i8]* %command, i32 0, i32 0
  %73 = load i8*, i8** @cktName, align 8
  %74 = load i32, i32* %c, align 4
  %add95 = add nsw i32 %74, 1
  %call96 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* %73, i32 %add95) #3
  %arraydecay97 = getelementptr inbounds [128 x i8], [128 x i8]* %command, i32 0, i32 0
  %call98 = call i32 @system(i8* %arraydecay97)
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %75 = load i32, i32* %c, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @subpins()
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %77 = load i32, i32* @bbleft, align 4
  %78 = load i32, i32* @bbright, align 4
  %79 = load i32, i32* @bbbottom, align 4
  %80 = load i32, i32* @bbtop, align 4
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 %77, i32 %78, i32 %79, i32 %80)
  br label %if.end.106

if.else.100:                                      ; preds = %if.end.25
  %81 = load i32, i32* @doChannelGraph, align 4
  %tobool = icmp ne i32 %81, 0
  br i1 %tobool, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.else.100
  call void @gmain()
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.else.100
  %82 = load i32, i32* @doGlobalRoute, align 4
  %tobool103 = icmp ne i32 %82, 0
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.102
  call void @rmain()
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.end.102
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %for.end
  br label %return

return:                                           ; preds = %if.end.106, %if.then.81, %if.then.18
  ret void
}

; Function Attrs: nounwind
declare double @log10(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind uwtable
define void @prepOutput() #0 {
entry:
  call void @finalpin()
  call void @prboard()
  call void @outbig()
  call void @outsmall()
  call void @output()
  %0 = load i32, i32* @finalShot, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @savewolf()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @gpass2(%struct._IO_FILE*) #2

declare void @grdcell(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @goverlap(...) #2

declare i32 @goverlapf(...) #2

declare i32 @goverlapx(...) #2

declare void @rebin(i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @findcost() #2

declare void @outgeo() #2

declare void @outpin() #2

declare i32 @checkpen() #2

declare void @fixpenal() #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @gmain() #2

declare void @rmain() #2

declare void @addpins() #2

declare i32 @system(i8*) #2

declare void @doborder() #2

declare void @scrappin() #2

declare void @wirecosts(i32*, i32*) #2

declare void @initbb() #2

declare void @utemp() #2

declare void @subpins() #2

declare void @finalpin() #2

declare void @prboard() #2

declare void @outbig() #2

declare void @outsmall() #2

declare void @output() #2

declare void @savewolf() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
