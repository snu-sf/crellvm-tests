; ModuleID = './MultiSource.Benchmarks.Prolangs-C/242.TimberWolfMC.uloop.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@flips = common global i32 0, align 4
@flipp = common global i32 0, align 4
@attp = common global i32 0, align 4
@rangeLimit = external global i32, align 4
@count = external global i32, align 4
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"   compared to bdxlength:%d\0A\00", align 1
@bdxlength = external global i32, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"range limiter:%d units either way in y\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"   compared to bdylength:%d\0A\00", align 1
@bdylength = external global i32, align 4
@attmax = external global i32, align 4
@choose = external global i32, align 4
@randVar = external global i32, align 4
@bigcell = external global i32, align 4
@toobig = external global i32, align 4
@cellarray = external global %struct.cellbox**, align 8
@numcells = external global i32, align 4
@blockl = external global i32, align 4
@blockr = external global i32, align 4
@blockb = external global i32, align 4
@blockt = external global i32, align 4
@gridGiven = external global i32, align 4
@newxx = common global i32 0, align 4
@newyy = common global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"acceptance breakdown:\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"              single cell: %d / %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"     single w/ orient chg: %d / %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"               orient chg: %d / %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"                pin moves: %d / %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"        aspect ratio chgs: %d / %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"        cell interchanges: %d / %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"      interchgs w/ orient: %d / %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\09no. of accepted flips: %d\0A\00", align 1
@gOffsetX = external global i32, align 4
@gridX = external global i32, align 4
@gOffsetY = external global i32, align 4
@gridY = external global i32, align 4
@spotXhash = external global i32, align 4
@spotSize = external global i32, align 4
@spotYhash = external global i32, align 4
@spots = external global i8**, align 8

; Function Attrs: nounwind uwtable
define void @uloop() #0 {
entry:
  %acellptr = alloca %struct.cellbox*, align 8
  %bcellptr = alloca %struct.cellbox*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %termptr = alloca %struct.termbox*, align 8
  %btermptr = alloca %struct.termbox*, align 8
  %range = alloca double, align 8
  %newAspect = alloca double, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %numberx = alloca i32, align 4
  %numbery = alloca i32, align 4
  %attempts = alloca i32, align 4
  %i = alloca i32, align 4
  %xb = alloca i32, align 4
  %yb = alloca i32, align 4
  %axcenter = alloca i32, align 4
  %aycenter = alloca i32, align 4
  %bxcenter = alloca i32, align 4
  %bycenter = alloca i32, align 4
  %aorient = alloca i32, align 4
  %borient = alloca i32, align 4
  %newaor = alloca i32, align 4
  %newbor = alloca i32, align 4
  %flip0 = alloca i32, align 4
  %flipo = alloca i32, align 4
  %flip2 = alloca i32, align 4
  %flipo2 = alloca i32, align 4
  %flipa = alloca i32, align 4
  %flip1 = alloca i32, align 4
  %att0 = alloca i32, align 4
  %atto = alloca i32, align 4
  %att2 = alloca i32, align 4
  %atto2 = alloca i32, align 4
  %atta = alloca i32, align 4
  %att1 = alloca i32, align 4
  %ll = alloca i32, align 4
  %rr = alloca i32, align 4
  %bb = alloca i32, align 4
  %tt = alloca i32, align 4
  %ax = alloca i32, align 4
  %ay = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %reject = alloca i32, align 4
  %al = alloca i32, align 4
  %ar = alloca i32, align 4
  %ab = alloca i32, align 4
  %at = alloca i32, align 4
  %bl = alloca i32, align 4
  %br = alloca i32, align 4
  %bt = alloca i32, align 4
  %min = alloca i32, align 4
  %minstep = alloca i32, align 4
  %delt1 = alloca i32, align 4
  %delt2 = alloca i32, align 4
  %lft = alloca i32, align 4
  %rte = alloca i32, align 4
  %bot = alloca i32, align 4
  %top = alloca i32, align 4
  %xcenter = alloca i32, align 4
  %ycenter = alloca i32, align 4
  store i32 0, i32* @flips, align 4
  store i32 0, i32* %attempts, align 4
  store i32 0, i32* %flip0, align 4
  store i32 0, i32* %att0, align 4
  store i32 0, i32* %flipo, align 4
  store i32 0, i32* %atto, align 4
  store i32 0, i32* %flip2, align 4
  store i32 0, i32* %att2, align 4
  store i32 0, i32* %flipo2, align 4
  store i32 0, i32* %atto2, align 4
  store i32 0, i32* %flipa, align 4
  store i32 0, i32* %atta, align 4
  store i32 0, i32* %flip1, align 4
  store i32 0, i32* %att1, align 4
  store i32 0, i32* @flipp, align 4
  store i32 0, i32* @attp, align 4
  %0 = load i32, i32* @rangeLimit, align 4
  store i32 %0, i32* %numberx, align 4
  %1 = load i32, i32* @rangeLimit, align 4
  store i32 %1, i32* %numbery, align 4
  %2 = load i32, i32* @count, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %4 = load i32, i32* %numberx, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i32 %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %6 = load i32, i32* @bdxlength, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %8 = load i32, i32* %numbery, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %10 = load i32, i32* @bdylength, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.808, %if.then.237, %if.then.53, %if.then.28, %if.end
  %11 = load i32, i32* %attempts, align 4
  %12 = load i32, i32* @attmax, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %13 = load i32, i32* @choose, align 4
  %conv = sitofp i32 %13 to double
  %14 = load i32, i32* @randVar, align 4
  %mul = mul nsw i32 %14, 1103515245
  %add = add nsw i32 %mul, 12345
  store i32 %add, i32* @randVar, align 4
  %and = and i32 %add, 2147483647
  %conv5 = sitofp i32 %and to double
  %div = fdiv double %conv5, 0x41DFFFFFFFC00000
  %mul6 = fmul double %conv, %div
  %conv7 = fptosi double %mul6 to i32
  %add8 = add nsw i32 %conv7, 1
  store i32 %add8, i32* %a, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* @choose, align 4
  %add9 = add nsw i32 %16, 1
  %cmp10 = icmp eq i32 %15, %add9
  br i1 %cmp10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.12

do.body.12:                                       ; preds = %do.cond.22, %do.end
  %17 = load i32, i32* @bigcell, align 4
  %conv13 = sitofp i32 %17 to double
  %18 = load i32, i32* @randVar, align 4
  %mul14 = mul nsw i32 %18, 1103515245
  %add15 = add nsw i32 %mul14, 12345
  store i32 %add15, i32* @randVar, align 4
  %and16 = and i32 %add15, 2147483647
  %conv17 = sitofp i32 %and16 to double
  %div18 = fdiv double %conv17, 0x41DFFFFFFFC00000
  %mul19 = fmul double %conv13, %div18
  %conv20 = fptosi double %mul19 to i32
  %add21 = add nsw i32 %conv20, 1
  store i32 %add21, i32* %b, align 4
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.body.12
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* @toobig, align 4
  %cmp23 = icmp eq i32 %19, %20
  br i1 %cmp23, label %do.body.12, label %do.end.25

do.end.25:                                        ; preds = %do.cond.22
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %cmp26 = icmp eq i32 %21, %22
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.25
  br label %while.cond

if.end.29:                                        ; preds = %do.end.25
  %23 = load i32, i32* %a, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %24, i64 %idxprom
  %25 = load %struct.cellbox*, %struct.cellbox** %arrayidx, align 8
  store %struct.cellbox* %25, %struct.cellbox** %acellptr, align 8
  %26 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %26, i32 0, i32 5
  %27 = load i32, i32* %orient, align 4
  store i32 %27, i32* %aorient, align 4
  %28 = load i32, i32* %a, align 4
  %29 = load i32, i32* @numcells, align 4
  %cmp30 = icmp sgt i32 %28, %29
  br i1 %cmp30, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.29
  %30 = load i32, i32* %b, align 4
  %31 = load i32, i32* @numcells, align 4
  %cmp32 = icmp sle i32 %30, %31
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %land.lhs.true
  %32 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call35 = call i32 @newOrient(%struct.cellbox* %32, i32 8)
  store i32 %call35, i32* %newaor, align 4
  %33 = load i32, i32* %newaor, align 4
  %cmp36 = icmp sge i32 %33, 0
  br i1 %cmp36, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %if.then.34
  %34 = load i32, i32* %a, align 4
  %35 = load i32, i32* %newaor, align 4
  %call39 = call i32 @usite0(i32 %34, i32 %35)
  %tobool = icmp ne i32 %call39, 0
  br i1 %tobool, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.38
  %36 = load i32, i32* @flips, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* @flips, align 4
  %37 = load i32, i32* %flip0, align 4
  %inc41 = add nsw i32 %37, 1
  store i32 %inc41, i32* %flip0, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.38
  %38 = load i32, i32* %att0, align 4
  %inc43 = add nsw i32 %38, 1
  store i32 %inc43, i32* %att0, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.42, %if.then.34
  br label %if.end.808

if.else:                                          ; preds = %land.lhs.true, %if.end.29
  %39 = load i32, i32* %a, align 4
  %40 = load i32, i32* @numcells, align 4
  %cmp45 = icmp sle i32 %39, %40
  br i1 %cmp45, label %land.lhs.true.47, label %if.else.222

land.lhs.true.47:                                 ; preds = %if.else
  %41 = load i32, i32* %b, align 4
  %42 = load i32, i32* @numcells, align 4
  %cmp48 = icmp sgt i32 %41, %42
  br i1 %cmp48, label %if.then.50, label %if.else.222

if.then.50:                                       ; preds = %land.lhs.true.47
  %43 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %class = getelementptr inbounds %struct.cellbox, %struct.cellbox* %43, i32 0, i32 1
  %44 = load i32, i32* %class, align 4
  %cmp51 = icmp ne i32 %44, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.50
  br label %while.cond

if.end.54:                                        ; preds = %if.then.50
  %45 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %45, i32 0, i32 2
  %46 = load i32, i32* %xcenter55, align 4
  store i32 %46, i32* %axcenter, align 4
  %47 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter56 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i32 0, i32 3
  %48 = load i32, i32* %ycenter56, align 4
  store i32 %48, i32* %aycenter, align 4
  %49 = load i32, i32* %axcenter, align 4
  %50 = load i32, i32* %numberx, align 4
  %sub = sub nsw i32 %49, %50
  %51 = load i32, i32* @blockl, align 4
  %cmp57 = icmp slt i32 %sub, %51
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  %52 = load i32, i32* @blockl, align 4
  br label %cond.end.65

cond.false:                                       ; preds = %if.end.54
  %53 = load i32, i32* %axcenter, align 4
  %54 = load i32, i32* %numberx, align 4
  %sub59 = sub nsw i32 %53, %54
  %55 = load i32, i32* @blockr, align 4
  %cmp60 = icmp sgt i32 %sub59, %55
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.false
  %56 = load i32, i32* @blockr, align 4
  br label %cond.end

cond.false.63:                                    ; preds = %cond.false
  %57 = load i32, i32* %axcenter, align 4
  %58 = load i32, i32* %numberx, align 4
  %sub64 = sub nsw i32 %57, %58
  br label %cond.end

cond.end:                                         ; preds = %cond.false.63, %cond.true.62
  %cond = phi i32 [ %56, %cond.true.62 ], [ %sub64, %cond.false.63 ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end, %cond.true
  %cond66 = phi i32 [ %52, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond66, i32* %ll, align 4
  %59 = load i32, i32* %axcenter, align 4
  %60 = load i32, i32* %numberx, align 4
  %add67 = add nsw i32 %59, %60
  %61 = load i32, i32* @blockr, align 4
  %cmp68 = icmp sgt i32 %add67, %61
  br i1 %cmp68, label %cond.true.70, label %cond.false.71

cond.true.70:                                     ; preds = %cond.end.65
  %62 = load i32, i32* @blockr, align 4
  br label %cond.end.80

cond.false.71:                                    ; preds = %cond.end.65
  %63 = load i32, i32* %axcenter, align 4
  %64 = load i32, i32* %numberx, align 4
  %add72 = add nsw i32 %63, %64
  %65 = load i32, i32* @blockl, align 4
  %cmp73 = icmp slt i32 %add72, %65
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.false.71
  %66 = load i32, i32* @blockl, align 4
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.false.71
  %67 = load i32, i32* %axcenter, align 4
  %68 = load i32, i32* %numberx, align 4
  %add77 = add nsw i32 %67, %68
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.75
  %cond79 = phi i32 [ %66, %cond.true.75 ], [ %add77, %cond.false.76 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end.78, %cond.true.70
  %cond81 = phi i32 [ %62, %cond.true.70 ], [ %cond79, %cond.end.78 ]
  store i32 %cond81, i32* %rr, align 4
  %69 = load i32, i32* %aycenter, align 4
  %70 = load i32, i32* %numbery, align 4
  %sub82 = sub nsw i32 %69, %70
  %71 = load i32, i32* @blockb, align 4
  %cmp83 = icmp slt i32 %sub82, %71
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %cond.end.80
  %72 = load i32, i32* @blockb, align 4
  br label %cond.end.95

cond.false.86:                                    ; preds = %cond.end.80
  %73 = load i32, i32* %aycenter, align 4
  %74 = load i32, i32* %numbery, align 4
  %sub87 = sub nsw i32 %73, %74
  %75 = load i32, i32* @blockt, align 4
  %cmp88 = icmp sgt i32 %sub87, %75
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.false.86
  %76 = load i32, i32* @blockt, align 4
  br label %cond.end.93

cond.false.91:                                    ; preds = %cond.false.86
  %77 = load i32, i32* %aycenter, align 4
  %78 = load i32, i32* %numbery, align 4
  %sub92 = sub nsw i32 %77, %78
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.91, %cond.true.90
  %cond94 = phi i32 [ %76, %cond.true.90 ], [ %sub92, %cond.false.91 ]
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.end.93, %cond.true.85
  %cond96 = phi i32 [ %72, %cond.true.85 ], [ %cond94, %cond.end.93 ]
  store i32 %cond96, i32* %bb, align 4
  %79 = load i32, i32* %aycenter, align 4
  %80 = load i32, i32* %numbery, align 4
  %add97 = add nsw i32 %79, %80
  %81 = load i32, i32* @blockt, align 4
  %cmp98 = icmp sgt i32 %add97, %81
  br i1 %cmp98, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %cond.end.95
  %82 = load i32, i32* @blockt, align 4
  br label %cond.end.110

cond.false.101:                                   ; preds = %cond.end.95
  %83 = load i32, i32* %aycenter, align 4
  %84 = load i32, i32* %numbery, align 4
  %add102 = add nsw i32 %83, %84
  %85 = load i32, i32* @blockb, align 4
  %cmp103 = icmp slt i32 %add102, %85
  br i1 %cmp103, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %cond.false.101
  %86 = load i32, i32* @blockb, align 4
  br label %cond.end.108

cond.false.106:                                   ; preds = %cond.false.101
  %87 = load i32, i32* %aycenter, align 4
  %88 = load i32, i32* %numbery, align 4
  %add107 = add nsw i32 %87, %88
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.106, %cond.true.105
  %cond109 = phi i32 [ %86, %cond.true.105 ], [ %add107, %cond.false.106 ]
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.end.108, %cond.true.100
  %cond111 = phi i32 [ %82, %cond.true.100 ], [ %cond109, %cond.end.108 ]
  store i32 %cond111, i32* %tt, align 4
  %89 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %90 = load i32, i32* %aorient, align 4
  %91 = load i32, i32* %ll, align 4
  %92 = load i32, i32* %rr, align 4
  %93 = load i32, i32* %bb, align 4
  %94 = load i32, i32* %tt, align 4
  call void @pickSpot(%struct.cellbox* %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32* %xb, i32* %yb)
  %95 = load i32, i32* @gridGiven, align 4
  %tobool112 = icmp ne i32 %95, 0
  br i1 %tobool112, label %if.then.113, label %if.end.123

if.then.113:                                      ; preds = %cond.end.110
  %96 = load i32, i32* %aorient, align 4
  %idxprom114 = sext i32 %96 to i64
  %97 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %97, i32 0, i32 21
  %arrayidx115 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom114
  %98 = load %struct.tilebox*, %struct.tilebox** %arrayidx115, align 8
  %termptr116 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %98, i32 0, i32 17
  %99 = load %struct.termbox*, %struct.termbox** %termptr116, align 8
  store %struct.termbox* %99, %struct.termbox** %termptr, align 8
  %100 = load i32, i32* %xb, align 4
  %101 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos = getelementptr inbounds %struct.termbox, %struct.termbox* %101, i32 0, i32 1
  %102 = load i32, i32* %xpos, align 4
  %add117 = add nsw i32 %100, %102
  %103 = load i32, i32* %yb, align 4
  %104 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos = getelementptr inbounds %struct.termbox, %struct.termbox* %104, i32 0, i32 2
  %105 = load i32, i32* %ypos, align 4
  %add118 = add nsw i32 %103, %105
  call void @forceGrid(i32 %add117, i32 %add118)
  %106 = load i32, i32* @newxx, align 4
  %107 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos119 = getelementptr inbounds %struct.termbox, %struct.termbox* %107, i32 0, i32 1
  %108 = load i32, i32* %xpos119, align 4
  %sub120 = sub nsw i32 %106, %108
  store i32 %sub120, i32* %xb, align 4
  %109 = load i32, i32* @newyy, align 4
  %110 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos121 = getelementptr inbounds %struct.termbox, %struct.termbox* %110, i32 0, i32 2
  %111 = load i32, i32* %ypos121, align 4
  %sub122 = sub nsw i32 %109, %111
  store i32 %sub122, i32* %yb, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.113, %cond.end.110
  %112 = load i32, i32* %a, align 4
  %113 = load i32, i32* %xb, align 4
  %114 = load i32, i32* %yb, align 4
  %call124 = call i32 @usite1(i32 %112, i32 %113, i32 %114)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.else.131

if.then.126:                                      ; preds = %if.end.123
  %115 = load i32, i32* @flips, align 4
  %inc127 = add nsw i32 %115, 1
  store i32 %inc127, i32* @flips, align 4
  %116 = load i32, i32* %flip1, align 4
  %inc128 = add nsw i32 %116, 1
  store i32 %inc128, i32* %flip1, align 4
  %117 = load i32, i32* %att1, align 4
  %inc129 = add nsw i32 %117, 1
  store i32 %inc129, i32* %att1, align 4
  %118 = load i32, i32* %attempts, align 4
  %inc130 = add nsw i32 %118, 1
  store i32 %inc130, i32* %attempts, align 4
  %119 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %120 = load i32, i32* %axcenter, align 4
  %121 = load i32, i32* %aycenter, align 4
  %122 = load i32, i32* %aorient, align 4
  call void @fixSpot(%struct.cellbox* %119, i32 %120, i32 %121, i32 %122)
  br label %if.end.165

if.else.131:                                      ; preds = %if.end.123
  %123 = load i32, i32* %attempts, align 4
  %inc132 = add nsw i32 %123, 1
  store i32 %inc132, i32* %attempts, align 4
  %124 = load i32, i32* %att1, align 4
  %inc133 = add nsw i32 %124, 1
  store i32 %inc133, i32* %att1, align 4
  %125 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call134 = call i32 @newOrient(%struct.cellbox* %125, i32 4)
  store i32 %call134, i32* %newaor, align 4
  store i32 1, i32* %reject, align 4
  %126 = load i32, i32* %newaor, align 4
  %cmp135 = icmp sge i32 %126, 0
  br i1 %cmp135, label %if.then.137, label %if.end.147

if.then.137:                                      ; preds = %if.else.131
  %127 = load i32, i32* %a, align 4
  %128 = load i32, i32* %xb, align 4
  %129 = load i32, i32* %yb, align 4
  %130 = load i32, i32* %newaor, align 4
  %call138 = call i32 @usiteo1(i32 %127, i32 %128, i32 %129, i32 %130)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.then.140, label %if.else.144

if.then.140:                                      ; preds = %if.then.137
  %131 = load i32, i32* @flips, align 4
  %inc141 = add nsw i32 %131, 1
  store i32 %inc141, i32* @flips, align 4
  %132 = load i32, i32* %flipo, align 4
  %inc142 = add nsw i32 %132, 1
  store i32 %inc142, i32* %flipo, align 4
  %133 = load i32, i32* %atto, align 4
  %inc143 = add nsw i32 %133, 1
  store i32 %inc143, i32* %atto, align 4
  store i32 0, i32* %reject, align 4
  %134 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %135 = load i32, i32* %axcenter, align 4
  %136 = load i32, i32* %aycenter, align 4
  %137 = load i32, i32* %aorient, align 4
  call void @fixSpot(%struct.cellbox* %134, i32 %135, i32 %136, i32 %137)
  br label %if.end.146

if.else.144:                                      ; preds = %if.then.137
  %138 = load i32, i32* %atto, align 4
  %inc145 = add nsw i32 %138, 1
  store i32 %inc145, i32* %atto, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.144, %if.then.140
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.else.131
  %139 = load i32, i32* %reject, align 4
  %tobool148 = icmp ne i32 %139, 0
  br i1 %tobool148, label %if.then.149, label %if.end.164

if.then.149:                                      ; preds = %if.end.147
  %140 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call150 = call i32 @newOrient(%struct.cellbox* %140, i32 8)
  store i32 %call150, i32* %newaor, align 4
  store i32 1, i32* %reject, align 4
  %141 = load i32, i32* %newaor, align 4
  %cmp151 = icmp sge i32 %141, 0
  br i1 %cmp151, label %if.then.153, label %if.end.163

if.then.153:                                      ; preds = %if.then.149
  %142 = load i32, i32* %a, align 4
  %143 = load i32, i32* %newaor, align 4
  %call154 = call i32 @usite0(i32 %142, i32 %143)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.else.160

if.then.156:                                      ; preds = %if.then.153
  %144 = load i32, i32* @flips, align 4
  %inc157 = add nsw i32 %144, 1
  store i32 %inc157, i32* @flips, align 4
  %145 = load i32, i32* %flip0, align 4
  %inc158 = add nsw i32 %145, 1
  store i32 %inc158, i32* %flip0, align 4
  %146 = load i32, i32* %att0, align 4
  %inc159 = add nsw i32 %146, 1
  store i32 %inc159, i32* %att0, align 4
  store i32 0, i32* %reject, align 4
  %147 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %148 = load i32, i32* %axcenter, align 4
  %149 = load i32, i32* %aycenter, align 4
  %150 = load i32, i32* %aorient, align 4
  call void @fixSpot(%struct.cellbox* %147, i32 %148, i32 %149, i32 %150)
  br label %if.end.162

if.else.160:                                      ; preds = %if.then.153
  %151 = load i32, i32* %att0, align 4
  %inc161 = add nsw i32 %151, 1
  store i32 %inc161, i32* %att0, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.160, %if.then.156
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.then.149
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.147
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.then.126
  %152 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %152, i32 0, i32 18
  %153 = load i32, i32* %numUnComTerms, align 4
  %cmp166 = icmp ne i32 %153, 0
  br i1 %cmp166, label %if.then.168, label %if.end.172

if.then.168:                                      ; preds = %if.end.165
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.168
  %154 = load i32, i32* %i, align 4
  %155 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %numgroups = getelementptr inbounds %struct.cellbox, %struct.cellbox* %155, i32 0, i32 9
  %156 = load i32, i32* %numgroups, align 4
  %cmp169 = icmp sle i32 %154, %156
  br i1 %cmp169, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %157 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  call void @selectpin(%struct.cellbox* %157)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %158 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %158, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.172

if.end.172:                                       ; preds = %for.end, %if.end.165
  %159 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %softflag = getelementptr inbounds %struct.cellbox, %struct.cellbox* %159, i32 0, i32 10
  %160 = load i32, i32* %softflag, align 4
  %cmp173 = icmp ne i32 %160, 0
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.221

land.lhs.true.175:                                ; preds = %if.end.172
  %161 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %aspUB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %161, i32 0, i32 15
  %162 = load double, double* %aspUB, align 8
  %163 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %aspLB = getelementptr inbounds %struct.cellbox, %struct.cellbox* %163, i32 0, i32 16
  %164 = load double, double* %aspLB, align 8
  %add176 = fadd double 1.000000e-02, %164
  %cmp177 = fcmp ogt double %162, %add176
  br i1 %cmp177, label %if.then.179, label %if.end.221

if.then.179:                                      ; preds = %land.lhs.true.175
  %165 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %aspUB180 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %165, i32 0, i32 15
  %166 = load double, double* %aspUB180, align 8
  %167 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %aspLB181 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %167, i32 0, i32 16
  %168 = load double, double* %aspLB181, align 8
  %sub182 = fsub double %166, %168
  store double %sub182, double* %range, align 8
  %169 = load double, double* %range, align 8
  %170 = load i32, i32* @randVar, align 4
  %mul183 = mul nsw i32 %170, 1103515245
  %add184 = add nsw i32 %mul183, 12345
  store i32 %add184, i32* @randVar, align 4
  %and185 = and i32 %add184, 2147483647
  %conv186 = sitofp i32 %and185 to double
  %div187 = fdiv double %conv186, 0x41DFFFFFFFC00000
  %mul188 = fmul double %169, %div187
  %171 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %aspLB189 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %171, i32 0, i32 16
  %172 = load double, double* %aspLB189, align 8
  %add190 = fadd double %mul188, %172
  store double %add190, double* %newAspect, align 8
  %173 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter191 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %173, i32 0, i32 2
  %174 = load i32, i32* %xcenter191, align 4
  store i32 %174, i32* %xcenter, align 4
  %175 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter192 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %175, i32 0, i32 3
  %176 = load i32, i32* %ycenter192, align 4
  store i32 %176, i32* %ycenter, align 4
  %177 = load i32, i32* %xcenter, align 4
  %178 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient193 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %178, i32 0, i32 5
  %179 = load i32, i32* %orient193, align 4
  %idxprom194 = sext i32 %179 to i64
  %180 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config195 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %180, i32 0, i32 21
  %arrayidx196 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config195, i32 0, i64 %idxprom194
  %181 = load %struct.tilebox*, %struct.tilebox** %arrayidx196, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %181, i32 0, i32 9
  %182 = load i32, i32* %left, align 4
  %add197 = add nsw i32 %177, %182
  store i32 %add197, i32* %lft, align 4
  %183 = load i32, i32* %xcenter, align 4
  %184 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient198 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %184, i32 0, i32 5
  %185 = load i32, i32* %orient198, align 4
  %idxprom199 = sext i32 %185 to i64
  %186 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config200 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %186, i32 0, i32 21
  %arrayidx201 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config200, i32 0, i64 %idxprom199
  %187 = load %struct.tilebox*, %struct.tilebox** %arrayidx201, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %187, i32 0, i32 10
  %188 = load i32, i32* %right, align 4
  %add202 = add nsw i32 %183, %188
  store i32 %add202, i32* %rte, align 4
  %189 = load i32, i32* %ycenter, align 4
  %190 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient203 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %190, i32 0, i32 5
  %191 = load i32, i32* %orient203, align 4
  %idxprom204 = sext i32 %191 to i64
  %192 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config205 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %192, i32 0, i32 21
  %arrayidx206 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config205, i32 0, i64 %idxprom204
  %193 = load %struct.tilebox*, %struct.tilebox** %arrayidx206, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %193, i32 0, i32 11
  %194 = load i32, i32* %bottom, align 4
  %add207 = add nsw i32 %189, %194
  store i32 %add207, i32* %bot, align 4
  %195 = load i32, i32* %ycenter, align 4
  %196 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %orient208 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %196, i32 0, i32 5
  %197 = load i32, i32* %orient208, align 4
  %idxprom209 = sext i32 %197 to i64
  %198 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config210 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %198, i32 0, i32 21
  %arrayidx211 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config210, i32 0, i64 %idxprom209
  %199 = load %struct.tilebox*, %struct.tilebox** %arrayidx211, align 8
  %top212 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %199, i32 0, i32 12
  %200 = load i32, i32* %top212, align 4
  %add213 = add nsw i32 %195, %200
  store i32 %add213, i32* %top, align 4
  %201 = load i32, i32* %a, align 4
  %202 = load double, double* %newAspect, align 8
  %call214 = call i32 @uaspect(i32 %201, double %202)
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.then.216, label %if.end.219

if.then.216:                                      ; preds = %if.then.179
  %203 = load i32, i32* @flips, align 4
  %inc217 = add nsw i32 %203, 1
  store i32 %inc217, i32* @flips, align 4
  %204 = load i32, i32* %flipa, align 4
  %inc218 = add nsw i32 %204, 1
  store i32 %inc218, i32* %flipa, align 4
  %205 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %206 = load i32, i32* %lft, align 4
  %207 = load i32, i32* %rte, align 4
  %208 = load i32, i32* %bot, align 4
  %209 = load i32, i32* %top, align 4
  call void @fixSpotAsp(%struct.cellbox* %205, i32 %206, i32 %207, i32 %208, i32 %209)
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.216, %if.then.179
  %210 = load i32, i32* %atta, align 4
  %inc220 = add nsw i32 %210, 1
  store i32 %inc220, i32* %atta, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.219, %land.lhs.true.175, %if.end.172
  br label %if.end.807

if.else.222:                                      ; preds = %land.lhs.true.47, %if.else
  %211 = load i32, i32* %b, align 4
  %idxprom223 = sext i32 %211 to i64
  %212 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %arrayidx224 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %212, i64 %idxprom223
  %213 = load %struct.cellbox*, %struct.cellbox** %arrayidx224, align 8
  store %struct.cellbox* %213, %struct.cellbox** %bcellptr, align 8
  %214 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %orient225 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %214, i32 0, i32 5
  %215 = load i32, i32* %orient225, align 4
  store i32 %215, i32* %borient, align 4
  %216 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %class226 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %216, i32 0, i32 1
  %217 = load i32, i32* %class226, align 4
  %cmp227 = icmp eq i32 %217, -1
  br i1 %cmp227, label %if.then.237, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.222
  %218 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %class229 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %218, i32 0, i32 1
  %219 = load i32, i32* %class229, align 4
  %cmp230 = icmp eq i32 %219, -1
  br i1 %cmp230, label %if.then.237, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %lor.lhs.false
  %220 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %class233 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %220, i32 0, i32 1
  %221 = load i32, i32* %class233, align 4
  %222 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %class234 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %222, i32 0, i32 1
  %223 = load i32, i32* %class234, align 4
  %cmp235 = icmp ne i32 %221, %223
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %lor.lhs.false.232, %lor.lhs.false, %if.else.222
  br label %while.cond

if.end.238:                                       ; preds = %lor.lhs.false.232
  %224 = load i32, i32* @gridGiven, align 4
  %tobool239 = icmp ne i32 %224, 0
  br i1 %tobool239, label %if.then.240, label %if.else.270

if.then.240:                                      ; preds = %if.end.238
  %225 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %orient241 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %225, i32 0, i32 5
  %226 = load i32, i32* %orient241, align 4
  %idxprom242 = sext i32 %226 to i64
  %227 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config243 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %227, i32 0, i32 21
  %arrayidx244 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config243, i32 0, i64 %idxprom242
  %228 = load %struct.tilebox*, %struct.tilebox** %arrayidx244, align 8
  %termptr245 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %228, i32 0, i32 17
  %229 = load %struct.termbox*, %struct.termbox** %termptr245, align 8
  store %struct.termbox* %229, %struct.termbox** %btermptr, align 8
  %230 = load i32, i32* %aorient, align 4
  %idxprom246 = sext i32 %230 to i64
  %231 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config247 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %231, i32 0, i32 21
  %arrayidx248 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config247, i32 0, i64 %idxprom246
  %232 = load %struct.tilebox*, %struct.tilebox** %arrayidx248, align 8
  %termptr249 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %232, i32 0, i32 17
  %233 = load %struct.termbox*, %struct.termbox** %termptr249, align 8
  store %struct.termbox* %233, %struct.termbox** %termptr, align 8
  %234 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter250 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %234, i32 0, i32 2
  %235 = load i32, i32* %xcenter250, align 4
  %236 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos251 = getelementptr inbounds %struct.termbox, %struct.termbox* %236, i32 0, i32 1
  %237 = load i32, i32* %xpos251, align 4
  %add252 = add nsw i32 %235, %237
  %238 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter253 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %238, i32 0, i32 3
  %239 = load i32, i32* %ycenter253, align 4
  %240 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos254 = getelementptr inbounds %struct.termbox, %struct.termbox* %240, i32 0, i32 2
  %241 = load i32, i32* %ypos254, align 4
  %add255 = add nsw i32 %239, %241
  call void @forceGrid(i32 %add252, i32 %add255)
  %242 = load i32, i32* @newxx, align 4
  %243 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos256 = getelementptr inbounds %struct.termbox, %struct.termbox* %243, i32 0, i32 1
  %244 = load i32, i32* %xpos256, align 4
  %sub257 = sub nsw i32 %242, %244
  store i32 %sub257, i32* %ax, align 4
  %245 = load i32, i32* @newyy, align 4
  %246 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos258 = getelementptr inbounds %struct.termbox, %struct.termbox* %246, i32 0, i32 2
  %247 = load i32, i32* %ypos258, align 4
  %sub259 = sub nsw i32 %245, %247
  store i32 %sub259, i32* %ay, align 4
  %248 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter260 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %248, i32 0, i32 2
  %249 = load i32, i32* %xcenter260, align 4
  %250 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos261 = getelementptr inbounds %struct.termbox, %struct.termbox* %250, i32 0, i32 1
  %251 = load i32, i32* %xpos261, align 4
  %add262 = add nsw i32 %249, %251
  %252 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter263 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %252, i32 0, i32 3
  %253 = load i32, i32* %ycenter263, align 4
  %254 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos264 = getelementptr inbounds %struct.termbox, %struct.termbox* %254, i32 0, i32 2
  %255 = load i32, i32* %ypos264, align 4
  %add265 = add nsw i32 %253, %255
  call void @forceGrid(i32 %add262, i32 %add265)
  %256 = load i32, i32* @newxx, align 4
  %257 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos266 = getelementptr inbounds %struct.termbox, %struct.termbox* %257, i32 0, i32 1
  %258 = load i32, i32* %xpos266, align 4
  %sub267 = sub nsw i32 %256, %258
  store i32 %sub267, i32* %bx, align 4
  %259 = load i32, i32* @newyy, align 4
  %260 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos268 = getelementptr inbounds %struct.termbox, %struct.termbox* %260, i32 0, i32 2
  %261 = load i32, i32* %ypos268, align 4
  %sub269 = sub nsw i32 %259, %261
  store i32 %sub269, i32* %by, align 4
  br label %if.end.275

if.else.270:                                      ; preds = %if.end.238
  %262 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter271 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %262, i32 0, i32 2
  %263 = load i32, i32* %xcenter271, align 4
  store i32 %263, i32* %ax, align 4
  %264 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter272 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %264, i32 0, i32 3
  %265 = load i32, i32* %ycenter272, align 4
  store i32 %265, i32* %ay, align 4
  %266 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter273 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %266, i32 0, i32 2
  %267 = load i32, i32* %xcenter273, align 4
  store i32 %267, i32* %bx, align 4
  %268 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter274 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %268, i32 0, i32 3
  %269 = load i32, i32* %ycenter274, align 4
  store i32 %269, i32* %by, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.270, %if.then.240
  %270 = load i32, i32* %bx, align 4
  store i32 %270, i32* %axcenter, align 4
  %271 = load i32, i32* %by, align 4
  store i32 %271, i32* %aycenter, align 4
  %272 = load i32, i32* %ax, align 4
  store i32 %272, i32* %bxcenter, align 4
  %273 = load i32, i32* %ay, align 4
  store i32 %273, i32* %bycenter, align 4
  %274 = load i32, i32* %aorient, align 4
  %idxprom276 = sext i32 %274 to i64
  %275 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config277 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %275, i32 0, i32 21
  %arrayidx278 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config277, i32 0, i64 %idxprom276
  %276 = load %struct.tilebox*, %struct.tilebox** %arrayidx278, align 8
  store %struct.tilebox* %276, %struct.tilebox** %tileptr, align 8
  %277 = load i32, i32* %ax, align 4
  %278 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left279 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %278, i32 0, i32 9
  %279 = load i32, i32* %left279, align 4
  %add280 = add nsw i32 %277, %279
  store i32 %add280, i32* %al, align 4
  %280 = load i32, i32* %ax, align 4
  %281 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right281 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %281, i32 0, i32 10
  %282 = load i32, i32* %right281, align 4
  %add282 = add nsw i32 %280, %282
  store i32 %add282, i32* %ar, align 4
  %283 = load i32, i32* %ay, align 4
  %284 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom283 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %284, i32 0, i32 11
  %285 = load i32, i32* %bottom283, align 4
  %add284 = add nsw i32 %283, %285
  store i32 %add284, i32* %ab, align 4
  %286 = load i32, i32* %ay, align 4
  %287 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top285 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %287, i32 0, i32 12
  %288 = load i32, i32* %top285, align 4
  %add286 = add nsw i32 %286, %288
  store i32 %add286, i32* %at, align 4
  %289 = load i32, i32* %a, align 4
  %290 = load i32, i32* @numcells, align 4
  %cmp287 = icmp sle i32 %289, %290
  br i1 %cmp287, label %if.then.289, label %if.end.298

if.then.289:                                      ; preds = %if.end.275
  %291 = load i32, i32* %al, align 4
  %292 = load i32, i32* %ab, align 4
  %293 = load i32, i32* %at, align 4
  %294 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %294, i32 0, i32 1
  %295 = load double, double* %lweight, align 8
  %call290 = call i32 @wireestx(i32 %291, i32 %292, i32 %293, double %295)
  %296 = load i32, i32* %al, align 4
  %sub291 = sub nsw i32 %296, %call290
  store i32 %sub291, i32* %al, align 4
  %297 = load i32, i32* %ar, align 4
  %298 = load i32, i32* %ab, align 4
  %299 = load i32, i32* %at, align 4
  %300 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %300, i32 0, i32 2
  %301 = load double, double* %rweight, align 8
  %call292 = call i32 @wireestx(i32 %297, i32 %298, i32 %299, double %301)
  %302 = load i32, i32* %ar, align 4
  %add293 = add nsw i32 %302, %call292
  store i32 %add293, i32* %ar, align 4
  %303 = load i32, i32* %ab, align 4
  %304 = load i32, i32* %al, align 4
  %305 = load i32, i32* %ar, align 4
  %306 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %306, i32 0, i32 3
  %307 = load double, double* %bweight, align 8
  %call294 = call i32 @wireesty(i32 %303, i32 %304, i32 %305, double %307)
  %308 = load i32, i32* %ab, align 4
  %sub295 = sub nsw i32 %308, %call294
  store i32 %sub295, i32* %ab, align 4
  %309 = load i32, i32* %at, align 4
  %310 = load i32, i32* %al, align 4
  %311 = load i32, i32* %ar, align 4
  %312 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %312, i32 0, i32 4
  %313 = load double, double* %tweight, align 8
  %call296 = call i32 @wireesty(i32 %309, i32 %310, i32 %311, double %313)
  %314 = load i32, i32* %at, align 4
  %add297 = add nsw i32 %314, %call296
  store i32 %add297, i32* %at, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.289, %if.end.275
  %315 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %orient299 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %315, i32 0, i32 5
  %316 = load i32, i32* %orient299, align 4
  %idxprom300 = sext i32 %316 to i64
  %317 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config301 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %317, i32 0, i32 21
  %arrayidx302 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config301, i32 0, i64 %idxprom300
  %318 = load %struct.tilebox*, %struct.tilebox** %arrayidx302, align 8
  store %struct.tilebox* %318, %struct.tilebox** %tileptr, align 8
  %319 = load i32, i32* %bx, align 4
  %320 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left303 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %320, i32 0, i32 9
  %321 = load i32, i32* %left303, align 4
  %add304 = add nsw i32 %319, %321
  store i32 %add304, i32* %bl, align 4
  %322 = load i32, i32* %bx, align 4
  %323 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right305 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %323, i32 0, i32 10
  %324 = load i32, i32* %right305, align 4
  %add306 = add nsw i32 %322, %324
  store i32 %add306, i32* %br, align 4
  %325 = load i32, i32* %by, align 4
  %326 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom307 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %326, i32 0, i32 11
  %327 = load i32, i32* %bottom307, align 4
  %add308 = add nsw i32 %325, %327
  store i32 %add308, i32* %bb, align 4
  %328 = load i32, i32* %by, align 4
  %329 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top309 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %329, i32 0, i32 12
  %330 = load i32, i32* %top309, align 4
  %add310 = add nsw i32 %328, %330
  store i32 %add310, i32* %bt, align 4
  %331 = load i32, i32* %b, align 4
  %332 = load i32, i32* @numcells, align 4
  %cmp311 = icmp sle i32 %331, %332
  br i1 %cmp311, label %if.then.313, label %if.end.326

if.then.313:                                      ; preds = %if.end.298
  %333 = load i32, i32* %bl, align 4
  %334 = load i32, i32* %bb, align 4
  %335 = load i32, i32* %bt, align 4
  %336 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight314 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %336, i32 0, i32 1
  %337 = load double, double* %lweight314, align 8
  %call315 = call i32 @wireestx(i32 %333, i32 %334, i32 %335, double %337)
  %338 = load i32, i32* %bl, align 4
  %sub316 = sub nsw i32 %338, %call315
  store i32 %sub316, i32* %bl, align 4
  %339 = load i32, i32* %br, align 4
  %340 = load i32, i32* %bb, align 4
  %341 = load i32, i32* %bt, align 4
  %342 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight317 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %342, i32 0, i32 2
  %343 = load double, double* %rweight317, align 8
  %call318 = call i32 @wireestx(i32 %339, i32 %340, i32 %341, double %343)
  %344 = load i32, i32* %br, align 4
  %add319 = add nsw i32 %344, %call318
  store i32 %add319, i32* %br, align 4
  %345 = load i32, i32* %bb, align 4
  %346 = load i32, i32* %bl, align 4
  %347 = load i32, i32* %br, align 4
  %348 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight320 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %348, i32 0, i32 3
  %349 = load double, double* %bweight320, align 8
  %call321 = call i32 @wireesty(i32 %345, i32 %346, i32 %347, double %349)
  %350 = load i32, i32* %bb, align 4
  %sub322 = sub nsw i32 %350, %call321
  store i32 %sub322, i32* %bb, align 4
  %351 = load i32, i32* %bt, align 4
  %352 = load i32, i32* %bl, align 4
  %353 = load i32, i32* %br, align 4
  %354 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight323 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %354, i32 0, i32 4
  %355 = load double, double* %tweight323, align 8
  %call324 = call i32 @wireesty(i32 %351, i32 %352, i32 %353, double %355)
  %356 = load i32, i32* %bt, align 4
  %add325 = add nsw i32 %356, %call324
  store i32 %add325, i32* %bt, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.313, %if.end.298
  store i32 1000000, i32* %min, align 4
  store i32 0, i32* %minstep, align 4
  %357 = load i32, i32* %bl, align 4
  %358 = load i32, i32* %ar, align 4
  %cmp327 = icmp sge i32 %357, %358
  br i1 %cmp327, label %if.then.338, label %lor.lhs.false.329

lor.lhs.false.329:                                ; preds = %if.end.326
  %359 = load i32, i32* %al, align 4
  %360 = load i32, i32* %br, align 4
  %cmp330 = icmp sge i32 %359, %360
  br i1 %cmp330, label %if.then.338, label %lor.lhs.false.332

lor.lhs.false.332:                                ; preds = %lor.lhs.false.329
  %361 = load i32, i32* %bb, align 4
  %362 = load i32, i32* %at, align 4
  %cmp333 = icmp sge i32 %361, %362
  br i1 %cmp333, label %if.then.338, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %lor.lhs.false.332
  %363 = load i32, i32* %ab, align 4
  %364 = load i32, i32* %bt, align 4
  %cmp336 = icmp sge i32 %363, %364
  br i1 %cmp336, label %if.then.338, label %if.end.379

if.then.338:                                      ; preds = %lor.lhs.false.335, %lor.lhs.false.332, %lor.lhs.false.329, %if.end.326
  %365 = load i32, i32* %bl, align 4
  %366 = load i32, i32* %ar, align 4
  %cmp339 = icmp slt i32 %365, %366
  br i1 %cmp339, label %if.then.341, label %if.end.348

if.then.341:                                      ; preds = %if.then.338
  %367 = load i32, i32* %ar, align 4
  %368 = load i32, i32* %bl, align 4
  %sub342 = sub nsw i32 %367, %368
  %369 = load i32, i32* %min, align 4
  %cmp343 = icmp slt i32 %sub342, %369
  br i1 %cmp343, label %if.then.345, label %if.end.347

if.then.345:                                      ; preds = %if.then.341
  store i32 1, i32* %minstep, align 4
  %370 = load i32, i32* %ar, align 4
  %371 = load i32, i32* %bl, align 4
  %sub346 = sub nsw i32 %370, %371
  store i32 %sub346, i32* %min, align 4
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.345, %if.then.341
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %if.then.338
  %372 = load i32, i32* %al, align 4
  %373 = load i32, i32* %br, align 4
  %cmp349 = icmp slt i32 %372, %373
  br i1 %cmp349, label %if.then.351, label %if.end.358

if.then.351:                                      ; preds = %if.end.348
  %374 = load i32, i32* %br, align 4
  %375 = load i32, i32* %al, align 4
  %sub352 = sub nsw i32 %374, %375
  %376 = load i32, i32* %min, align 4
  %cmp353 = icmp slt i32 %sub352, %376
  br i1 %cmp353, label %if.then.355, label %if.end.357

if.then.355:                                      ; preds = %if.then.351
  store i32 2, i32* %minstep, align 4
  %377 = load i32, i32* %br, align 4
  %378 = load i32, i32* %al, align 4
  %sub356 = sub nsw i32 %377, %378
  store i32 %sub356, i32* %min, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.355, %if.then.351
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %if.end.348
  %379 = load i32, i32* %bb, align 4
  %380 = load i32, i32* %at, align 4
  %cmp359 = icmp slt i32 %379, %380
  br i1 %cmp359, label %if.then.361, label %if.end.368

if.then.361:                                      ; preds = %if.end.358
  %381 = load i32, i32* %at, align 4
  %382 = load i32, i32* %bb, align 4
  %sub362 = sub nsw i32 %381, %382
  %383 = load i32, i32* %min, align 4
  %cmp363 = icmp slt i32 %sub362, %383
  br i1 %cmp363, label %if.then.365, label %if.end.367

if.then.365:                                      ; preds = %if.then.361
  store i32 3, i32* %minstep, align 4
  %384 = load i32, i32* %at, align 4
  %385 = load i32, i32* %bb, align 4
  %sub366 = sub nsw i32 %384, %385
  store i32 %sub366, i32* %min, align 4
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.365, %if.then.361
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.end.358
  %386 = load i32, i32* %ab, align 4
  %387 = load i32, i32* %bt, align 4
  %cmp369 = icmp slt i32 %386, %387
  br i1 %cmp369, label %if.then.371, label %if.end.378

if.then.371:                                      ; preds = %if.end.368
  %388 = load i32, i32* %bt, align 4
  %389 = load i32, i32* %ab, align 4
  %sub372 = sub nsw i32 %388, %389
  %390 = load i32, i32* %min, align 4
  %cmp373 = icmp slt i32 %sub372, %390
  br i1 %cmp373, label %if.then.375, label %if.end.377

if.then.375:                                      ; preds = %if.then.371
  store i32 4, i32* %minstep, align 4
  %391 = load i32, i32* %bt, align 4
  %392 = load i32, i32* %ab, align 4
  %sub376 = sub nsw i32 %391, %392
  store i32 %sub376, i32* %min, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.375, %if.then.371
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.end.368
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %lor.lhs.false.335
  %393 = load i32, i32* %minstep, align 4
  %cmp380 = icmp ne i32 %393, 0
  br i1 %cmp380, label %if.then.382, label %if.end.501

if.then.382:                                      ; preds = %if.end.379
  %394 = load i32, i32* %min, align 4
  %div383 = sdiv i32 %394, 2
  store i32 %div383, i32* %delt1, align 4
  %395 = load i32, i32* %min, align 4
  %396 = load i32, i32* %min, align 4
  %div384 = sdiv i32 %396, 2
  %sub385 = sub nsw i32 %395, %div384
  store i32 %sub385, i32* %delt2, align 4
  %397 = load i32, i32* %minstep, align 4
  %cmp386 = icmp eq i32 %397, 1
  br i1 %cmp386, label %if.then.388, label %if.else.414

if.then.388:                                      ; preds = %if.then.382
  %398 = load i32, i32* %delt1, align 4
  %399 = load i32, i32* %bx, align 4
  %add389 = add nsw i32 %399, %398
  store i32 %add389, i32* %bx, align 4
  %400 = load i32, i32* %delt2, align 4
  %401 = load i32, i32* %ax, align 4
  %sub390 = sub nsw i32 %401, %400
  store i32 %sub390, i32* %ax, align 4
  %402 = load i32, i32* %br, align 4
  %403 = load i32, i32* %delt1, align 4
  %add391 = add nsw i32 %402, %403
  %404 = load i32, i32* @blockr, align 4
  %cmp392 = icmp sgt i32 %add391, %404
  br i1 %cmp392, label %if.then.394, label %if.else.401

if.then.394:                                      ; preds = %if.then.388
  %405 = load i32, i32* %br, align 4
  %406 = load i32, i32* %delt1, align 4
  %add395 = add nsw i32 %405, %406
  %407 = load i32, i32* @blockr, align 4
  %sub396 = sub nsw i32 %add395, %407
  %408 = load i32, i32* %bx, align 4
  %sub397 = sub nsw i32 %408, %sub396
  store i32 %sub397, i32* %bx, align 4
  %409 = load i32, i32* %br, align 4
  %410 = load i32, i32* %delt1, align 4
  %add398 = add nsw i32 %409, %410
  %411 = load i32, i32* @blockr, align 4
  %sub399 = sub nsw i32 %add398, %411
  %412 = load i32, i32* %ax, align 4
  %sub400 = sub nsw i32 %412, %sub399
  store i32 %sub400, i32* %ax, align 4
  br label %if.end.413

if.else.401:                                      ; preds = %if.then.388
  %413 = load i32, i32* %al, align 4
  %414 = load i32, i32* %delt2, align 4
  %sub402 = sub nsw i32 %413, %414
  %415 = load i32, i32* @blockl, align 4
  %cmp403 = icmp slt i32 %sub402, %415
  br i1 %cmp403, label %if.then.405, label %if.end.412

if.then.405:                                      ; preds = %if.else.401
  %416 = load i32, i32* @blockl, align 4
  %417 = load i32, i32* %al, align 4
  %418 = load i32, i32* %delt2, align 4
  %sub406 = sub nsw i32 %417, %418
  %sub407 = sub nsw i32 %416, %sub406
  %419 = load i32, i32* %bx, align 4
  %add408 = add nsw i32 %419, %sub407
  store i32 %add408, i32* %bx, align 4
  %420 = load i32, i32* @blockl, align 4
  %421 = load i32, i32* %al, align 4
  %422 = load i32, i32* %delt2, align 4
  %sub409 = sub nsw i32 %421, %422
  %sub410 = sub nsw i32 %420, %sub409
  %423 = load i32, i32* %ax, align 4
  %add411 = add nsw i32 %423, %sub410
  store i32 %add411, i32* %ax, align 4
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.405, %if.else.401
  br label %if.end.413

if.end.413:                                       ; preds = %if.end.412, %if.then.394
  br label %if.end.500

if.else.414:                                      ; preds = %if.then.382
  %424 = load i32, i32* %minstep, align 4
  %cmp415 = icmp eq i32 %424, 2
  br i1 %cmp415, label %if.then.417, label %if.else.443

if.then.417:                                      ; preds = %if.else.414
  %425 = load i32, i32* %delt1, align 4
  %426 = load i32, i32* %ax, align 4
  %add418 = add nsw i32 %426, %425
  store i32 %add418, i32* %ax, align 4
  %427 = load i32, i32* %delt2, align 4
  %428 = load i32, i32* %bx, align 4
  %sub419 = sub nsw i32 %428, %427
  store i32 %sub419, i32* %bx, align 4
  %429 = load i32, i32* %ar, align 4
  %430 = load i32, i32* %delt1, align 4
  %add420 = add nsw i32 %429, %430
  %431 = load i32, i32* @blockr, align 4
  %cmp421 = icmp sgt i32 %add420, %431
  br i1 %cmp421, label %if.then.423, label %if.else.430

if.then.423:                                      ; preds = %if.then.417
  %432 = load i32, i32* %ar, align 4
  %433 = load i32, i32* %delt1, align 4
  %add424 = add nsw i32 %432, %433
  %434 = load i32, i32* @blockr, align 4
  %sub425 = sub nsw i32 %add424, %434
  %435 = load i32, i32* %bx, align 4
  %sub426 = sub nsw i32 %435, %sub425
  store i32 %sub426, i32* %bx, align 4
  %436 = load i32, i32* %ar, align 4
  %437 = load i32, i32* %delt1, align 4
  %add427 = add nsw i32 %436, %437
  %438 = load i32, i32* @blockr, align 4
  %sub428 = sub nsw i32 %add427, %438
  %439 = load i32, i32* %ax, align 4
  %sub429 = sub nsw i32 %439, %sub428
  store i32 %sub429, i32* %ax, align 4
  br label %if.end.442

if.else.430:                                      ; preds = %if.then.417
  %440 = load i32, i32* %bl, align 4
  %441 = load i32, i32* %delt2, align 4
  %sub431 = sub nsw i32 %440, %441
  %442 = load i32, i32* @blockl, align 4
  %cmp432 = icmp slt i32 %sub431, %442
  br i1 %cmp432, label %if.then.434, label %if.end.441

if.then.434:                                      ; preds = %if.else.430
  %443 = load i32, i32* @blockl, align 4
  %444 = load i32, i32* %bl, align 4
  %445 = load i32, i32* %delt2, align 4
  %sub435 = sub nsw i32 %444, %445
  %sub436 = sub nsw i32 %443, %sub435
  %446 = load i32, i32* %bx, align 4
  %add437 = add nsw i32 %446, %sub436
  store i32 %add437, i32* %bx, align 4
  %447 = load i32, i32* @blockl, align 4
  %448 = load i32, i32* %bl, align 4
  %449 = load i32, i32* %delt2, align 4
  %sub438 = sub nsw i32 %448, %449
  %sub439 = sub nsw i32 %447, %sub438
  %450 = load i32, i32* %ax, align 4
  %add440 = add nsw i32 %450, %sub439
  store i32 %add440, i32* %ax, align 4
  br label %if.end.441

if.end.441:                                       ; preds = %if.then.434, %if.else.430
  br label %if.end.442

if.end.442:                                       ; preds = %if.end.441, %if.then.423
  br label %if.end.499

if.else.443:                                      ; preds = %if.else.414
  %451 = load i32, i32* %minstep, align 4
  %cmp444 = icmp eq i32 %451, 3
  br i1 %cmp444, label %if.then.446, label %if.else.472

if.then.446:                                      ; preds = %if.else.443
  %452 = load i32, i32* %delt1, align 4
  %453 = load i32, i32* %by, align 4
  %add447 = add nsw i32 %453, %452
  store i32 %add447, i32* %by, align 4
  %454 = load i32, i32* %delt2, align 4
  %455 = load i32, i32* %ay, align 4
  %sub448 = sub nsw i32 %455, %454
  store i32 %sub448, i32* %ay, align 4
  %456 = load i32, i32* %bt, align 4
  %457 = load i32, i32* %delt1, align 4
  %add449 = add nsw i32 %456, %457
  %458 = load i32, i32* @blockt, align 4
  %cmp450 = icmp sgt i32 %add449, %458
  br i1 %cmp450, label %if.then.452, label %if.else.459

if.then.452:                                      ; preds = %if.then.446
  %459 = load i32, i32* %bt, align 4
  %460 = load i32, i32* %delt1, align 4
  %add453 = add nsw i32 %459, %460
  %461 = load i32, i32* @blockt, align 4
  %sub454 = sub nsw i32 %add453, %461
  %462 = load i32, i32* %by, align 4
  %sub455 = sub nsw i32 %462, %sub454
  store i32 %sub455, i32* %by, align 4
  %463 = load i32, i32* %bt, align 4
  %464 = load i32, i32* %delt1, align 4
  %add456 = add nsw i32 %463, %464
  %465 = load i32, i32* @blockt, align 4
  %sub457 = sub nsw i32 %add456, %465
  %466 = load i32, i32* %ay, align 4
  %sub458 = sub nsw i32 %466, %sub457
  store i32 %sub458, i32* %ay, align 4
  br label %if.end.471

if.else.459:                                      ; preds = %if.then.446
  %467 = load i32, i32* %ab, align 4
  %468 = load i32, i32* %delt2, align 4
  %sub460 = sub nsw i32 %467, %468
  %469 = load i32, i32* @blockb, align 4
  %cmp461 = icmp slt i32 %sub460, %469
  br i1 %cmp461, label %if.then.463, label %if.end.470

if.then.463:                                      ; preds = %if.else.459
  %470 = load i32, i32* @blockb, align 4
  %471 = load i32, i32* %ab, align 4
  %472 = load i32, i32* %delt2, align 4
  %sub464 = sub nsw i32 %471, %472
  %sub465 = sub nsw i32 %470, %sub464
  %473 = load i32, i32* %by, align 4
  %add466 = add nsw i32 %473, %sub465
  store i32 %add466, i32* %by, align 4
  %474 = load i32, i32* @blockb, align 4
  %475 = load i32, i32* %ab, align 4
  %476 = load i32, i32* %delt2, align 4
  %sub467 = sub nsw i32 %475, %476
  %sub468 = sub nsw i32 %474, %sub467
  %477 = load i32, i32* %ay, align 4
  %add469 = add nsw i32 %477, %sub468
  store i32 %add469, i32* %ay, align 4
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.463, %if.else.459
  br label %if.end.471

if.end.471:                                       ; preds = %if.end.470, %if.then.452
  br label %if.end.498

if.else.472:                                      ; preds = %if.else.443
  %478 = load i32, i32* %delt1, align 4
  %479 = load i32, i32* %ay, align 4
  %add473 = add nsw i32 %479, %478
  store i32 %add473, i32* %ay, align 4
  %480 = load i32, i32* %delt2, align 4
  %481 = load i32, i32* %by, align 4
  %sub474 = sub nsw i32 %481, %480
  store i32 %sub474, i32* %by, align 4
  %482 = load i32, i32* %at, align 4
  %483 = load i32, i32* %delt1, align 4
  %add475 = add nsw i32 %482, %483
  %484 = load i32, i32* @blockt, align 4
  %cmp476 = icmp sgt i32 %add475, %484
  br i1 %cmp476, label %if.then.478, label %if.else.485

if.then.478:                                      ; preds = %if.else.472
  %485 = load i32, i32* %at, align 4
  %486 = load i32, i32* %delt1, align 4
  %add479 = add nsw i32 %485, %486
  %487 = load i32, i32* @blockt, align 4
  %sub480 = sub nsw i32 %add479, %487
  %488 = load i32, i32* %by, align 4
  %sub481 = sub nsw i32 %488, %sub480
  store i32 %sub481, i32* %by, align 4
  %489 = load i32, i32* %at, align 4
  %490 = load i32, i32* %delt1, align 4
  %add482 = add nsw i32 %489, %490
  %491 = load i32, i32* @blockt, align 4
  %sub483 = sub nsw i32 %add482, %491
  %492 = load i32, i32* %ay, align 4
  %sub484 = sub nsw i32 %492, %sub483
  store i32 %sub484, i32* %ay, align 4
  br label %if.end.497

if.else.485:                                      ; preds = %if.else.472
  %493 = load i32, i32* %bb, align 4
  %494 = load i32, i32* %delt2, align 4
  %sub486 = sub nsw i32 %493, %494
  %495 = load i32, i32* @blockb, align 4
  %cmp487 = icmp slt i32 %sub486, %495
  br i1 %cmp487, label %if.then.489, label %if.end.496

if.then.489:                                      ; preds = %if.else.485
  %496 = load i32, i32* @blockb, align 4
  %497 = load i32, i32* %bb, align 4
  %498 = load i32, i32* %delt2, align 4
  %sub490 = sub nsw i32 %497, %498
  %sub491 = sub nsw i32 %496, %sub490
  %499 = load i32, i32* %by, align 4
  %add492 = add nsw i32 %499, %sub491
  store i32 %add492, i32* %by, align 4
  %500 = load i32, i32* @blockb, align 4
  %501 = load i32, i32* %bb, align 4
  %502 = load i32, i32* %delt2, align 4
  %sub493 = sub nsw i32 %501, %502
  %sub494 = sub nsw i32 %500, %sub493
  %503 = load i32, i32* %ay, align 4
  %add495 = add nsw i32 %503, %sub494
  store i32 %add495, i32* %ay, align 4
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.489, %if.else.485
  br label %if.end.497

if.end.497:                                       ; preds = %if.end.496, %if.then.478
  br label %if.end.498

if.end.498:                                       ; preds = %if.end.497, %if.end.471
  br label %if.end.499

if.end.499:                                       ; preds = %if.end.498, %if.end.442
  br label %if.end.500

if.end.500:                                       ; preds = %if.end.499, %if.end.413
  br label %if.end.501

if.end.501:                                       ; preds = %if.end.500, %if.end.379
  %504 = load i32, i32* %a, align 4
  %505 = load i32, i32* %b, align 4
  %506 = load i32, i32* %ax, align 4
  %507 = load i32, i32* %ay, align 4
  %508 = load i32, i32* %bx, align 4
  %509 = load i32, i32* %by, align 4
  %call502 = call i32 @usite2(i32 %504, i32 %505, i32 %506, i32 %507, i32 %508, i32 %509)
  %tobool503 = icmp ne i32 %call502, 0
  br i1 %tobool503, label %if.then.504, label %if.else.509

if.then.504:                                      ; preds = %if.end.501
  %510 = load i32, i32* @flips, align 4
  %inc505 = add nsw i32 %510, 1
  store i32 %inc505, i32* @flips, align 4
  %511 = load i32, i32* %flip2, align 4
  %inc506 = add nsw i32 %511, 1
  store i32 %inc506, i32* %flip2, align 4
  %512 = load i32, i32* %att2, align 4
  %inc507 = add nsw i32 %512, 1
  store i32 %inc507, i32* %att2, align 4
  %513 = load i32, i32* %attempts, align 4
  %inc508 = add nsw i32 %513, 1
  store i32 %inc508, i32* %attempts, align 4
  %514 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %515 = load i32, i32* %axcenter, align 4
  %516 = load i32, i32* %aycenter, align 4
  %517 = load i32, i32* %aorient, align 4
  call void @fixSpot(%struct.cellbox* %514, i32 %515, i32 %516, i32 %517)
  %518 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %519 = load i32, i32* %bxcenter, align 4
  %520 = load i32, i32* %bycenter, align 4
  %521 = load i32, i32* %borient, align 4
  call void @fixSpot(%struct.cellbox* %518, i32 %519, i32 %520, i32 %521)
  br label %if.end.806

if.else.509:                                      ; preds = %if.end.501
  %522 = load i32, i32* %att2, align 4
  %inc510 = add nsw i32 %522, 1
  store i32 %inc510, i32* %att2, align 4
  %523 = load i32, i32* %attempts, align 4
  %inc511 = add nsw i32 %523, 1
  store i32 %inc511, i32* %attempts, align 4
  %524 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %call512 = call i32 @newOrient(%struct.cellbox* %524, i32 4)
  store i32 %call512, i32* %newaor, align 4
  %525 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %call513 = call i32 @newOrient(%struct.cellbox* %525, i32 4)
  store i32 %call513, i32* %newbor, align 4
  %526 = load i32, i32* %newaor, align 4
  %cmp514 = icmp sge i32 %526, 0
  br i1 %cmp514, label %if.then.519, label %lor.lhs.false.516

lor.lhs.false.516:                                ; preds = %if.else.509
  %527 = load i32, i32* %newbor, align 4
  %cmp517 = icmp sge i32 %527, 0
  br i1 %cmp517, label %if.then.519, label %if.end.805

if.then.519:                                      ; preds = %lor.lhs.false.516, %if.else.509
  %528 = load i32, i32* %newaor, align 4
  %cmp520 = icmp slt i32 %528, 0
  br i1 %cmp520, label %if.then.522, label %if.else.523

if.then.522:                                      ; preds = %if.then.519
  %529 = load i32, i32* %aorient, align 4
  store i32 %529, i32* %newaor, align 4
  br label %if.end.528

if.else.523:                                      ; preds = %if.then.519
  %530 = load i32, i32* %newbor, align 4
  %cmp524 = icmp slt i32 %530, 0
  br i1 %cmp524, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %if.else.523
  %531 = load i32, i32* %borient, align 4
  store i32 %531, i32* %newbor, align 4
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.526, %if.else.523
  br label %if.end.528

if.end.528:                                       ; preds = %if.end.527, %if.then.522
  %532 = load i32, i32* @gridGiven, align 4
  %tobool529 = icmp ne i32 %532, 0
  br i1 %tobool529, label %if.then.530, label %if.else.559

if.then.530:                                      ; preds = %if.end.528
  %533 = load i32, i32* %newbor, align 4
  %idxprom531 = sext i32 %533 to i64
  %534 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config532 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %534, i32 0, i32 21
  %arrayidx533 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config532, i32 0, i64 %idxprom531
  %535 = load %struct.tilebox*, %struct.tilebox** %arrayidx533, align 8
  %termptr534 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %535, i32 0, i32 17
  %536 = load %struct.termbox*, %struct.termbox** %termptr534, align 8
  store %struct.termbox* %536, %struct.termbox** %btermptr, align 8
  %537 = load i32, i32* %newaor, align 4
  %idxprom535 = sext i32 %537 to i64
  %538 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config536 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %538, i32 0, i32 21
  %arrayidx537 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config536, i32 0, i64 %idxprom535
  %539 = load %struct.tilebox*, %struct.tilebox** %arrayidx537, align 8
  %termptr538 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %539, i32 0, i32 17
  %540 = load %struct.termbox*, %struct.termbox** %termptr538, align 8
  store %struct.termbox* %540, %struct.termbox** %termptr, align 8
  %541 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter539 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %541, i32 0, i32 2
  %542 = load i32, i32* %xcenter539, align 4
  %543 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos540 = getelementptr inbounds %struct.termbox, %struct.termbox* %543, i32 0, i32 1
  %544 = load i32, i32* %xpos540, align 4
  %add541 = add nsw i32 %542, %544
  %545 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter542 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %545, i32 0, i32 3
  %546 = load i32, i32* %ycenter542, align 4
  %547 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos543 = getelementptr inbounds %struct.termbox, %struct.termbox* %547, i32 0, i32 2
  %548 = load i32, i32* %ypos543, align 4
  %add544 = add nsw i32 %546, %548
  call void @forceGrid(i32 %add541, i32 %add544)
  %549 = load i32, i32* @newxx, align 4
  %550 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %xpos545 = getelementptr inbounds %struct.termbox, %struct.termbox* %550, i32 0, i32 1
  %551 = load i32, i32* %xpos545, align 4
  %sub546 = sub nsw i32 %549, %551
  store i32 %sub546, i32* %ax, align 4
  %552 = load i32, i32* @newyy, align 4
  %553 = load %struct.termbox*, %struct.termbox** %termptr, align 8
  %ypos547 = getelementptr inbounds %struct.termbox, %struct.termbox* %553, i32 0, i32 2
  %554 = load i32, i32* %ypos547, align 4
  %sub548 = sub nsw i32 %552, %554
  store i32 %sub548, i32* %ay, align 4
  %555 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter549 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %555, i32 0, i32 2
  %556 = load i32, i32* %xcenter549, align 4
  %557 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos550 = getelementptr inbounds %struct.termbox, %struct.termbox* %557, i32 0, i32 1
  %558 = load i32, i32* %xpos550, align 4
  %add551 = add nsw i32 %556, %558
  %559 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter552 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %559, i32 0, i32 3
  %560 = load i32, i32* %ycenter552, align 4
  %561 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos553 = getelementptr inbounds %struct.termbox, %struct.termbox* %561, i32 0, i32 2
  %562 = load i32, i32* %ypos553, align 4
  %add554 = add nsw i32 %560, %562
  call void @forceGrid(i32 %add551, i32 %add554)
  %563 = load i32, i32* @newxx, align 4
  %564 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %xpos555 = getelementptr inbounds %struct.termbox, %struct.termbox* %564, i32 0, i32 1
  %565 = load i32, i32* %xpos555, align 4
  %sub556 = sub nsw i32 %563, %565
  store i32 %sub556, i32* %bx, align 4
  %566 = load i32, i32* @newyy, align 4
  %567 = load %struct.termbox*, %struct.termbox** %btermptr, align 8
  %ypos557 = getelementptr inbounds %struct.termbox, %struct.termbox* %567, i32 0, i32 2
  %568 = load i32, i32* %ypos557, align 4
  %sub558 = sub nsw i32 %566, %568
  store i32 %sub558, i32* %by, align 4
  br label %if.end.564

if.else.559:                                      ; preds = %if.end.528
  %569 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %xcenter560 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %569, i32 0, i32 2
  %570 = load i32, i32* %xcenter560, align 4
  store i32 %570, i32* %ax, align 4
  %571 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %ycenter561 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %571, i32 0, i32 3
  %572 = load i32, i32* %ycenter561, align 4
  store i32 %572, i32* %ay, align 4
  %573 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %xcenter562 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %573, i32 0, i32 2
  %574 = load i32, i32* %xcenter562, align 4
  store i32 %574, i32* %bx, align 4
  %575 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %ycenter563 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %575, i32 0, i32 3
  %576 = load i32, i32* %ycenter563, align 4
  store i32 %576, i32* %by, align 4
  br label %if.end.564

if.end.564:                                       ; preds = %if.else.559, %if.then.530
  %577 = load i32, i32* %newaor, align 4
  %idxprom565 = sext i32 %577 to i64
  %578 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %config566 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %578, i32 0, i32 21
  %arrayidx567 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config566, i32 0, i64 %idxprom565
  %579 = load %struct.tilebox*, %struct.tilebox** %arrayidx567, align 8
  store %struct.tilebox* %579, %struct.tilebox** %tileptr, align 8
  %580 = load i32, i32* %ax, align 4
  %581 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left568 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %581, i32 0, i32 9
  %582 = load i32, i32* %left568, align 4
  %add569 = add nsw i32 %580, %582
  store i32 %add569, i32* %al, align 4
  %583 = load i32, i32* %ax, align 4
  %584 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right570 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %584, i32 0, i32 10
  %585 = load i32, i32* %right570, align 4
  %add571 = add nsw i32 %583, %585
  store i32 %add571, i32* %ar, align 4
  %586 = load i32, i32* %ay, align 4
  %587 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom572 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %587, i32 0, i32 11
  %588 = load i32, i32* %bottom572, align 4
  %add573 = add nsw i32 %586, %588
  store i32 %add573, i32* %ab, align 4
  %589 = load i32, i32* %ay, align 4
  %590 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top574 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %590, i32 0, i32 12
  %591 = load i32, i32* %top574, align 4
  %add575 = add nsw i32 %589, %591
  store i32 %add575, i32* %at, align 4
  %592 = load i32, i32* %a, align 4
  %593 = load i32, i32* @numcells, align 4
  %cmp576 = icmp sle i32 %592, %593
  br i1 %cmp576, label %if.then.578, label %if.end.591

if.then.578:                                      ; preds = %if.end.564
  %594 = load i32, i32* %al, align 4
  %595 = load i32, i32* %ab, align 4
  %596 = load i32, i32* %at, align 4
  %597 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight579 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %597, i32 0, i32 1
  %598 = load double, double* %lweight579, align 8
  %call580 = call i32 @wireestx(i32 %594, i32 %595, i32 %596, double %598)
  %599 = load i32, i32* %al, align 4
  %sub581 = sub nsw i32 %599, %call580
  store i32 %sub581, i32* %al, align 4
  %600 = load i32, i32* %ar, align 4
  %601 = load i32, i32* %ab, align 4
  %602 = load i32, i32* %at, align 4
  %603 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight582 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %603, i32 0, i32 2
  %604 = load double, double* %rweight582, align 8
  %call583 = call i32 @wireestx(i32 %600, i32 %601, i32 %602, double %604)
  %605 = load i32, i32* %ar, align 4
  %add584 = add nsw i32 %605, %call583
  store i32 %add584, i32* %ar, align 4
  %606 = load i32, i32* %ab, align 4
  %607 = load i32, i32* %al, align 4
  %608 = load i32, i32* %ar, align 4
  %609 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight585 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %609, i32 0, i32 3
  %610 = load double, double* %bweight585, align 8
  %call586 = call i32 @wireesty(i32 %606, i32 %607, i32 %608, double %610)
  %611 = load i32, i32* %ab, align 4
  %sub587 = sub nsw i32 %611, %call586
  store i32 %sub587, i32* %ab, align 4
  %612 = load i32, i32* %at, align 4
  %613 = load i32, i32* %al, align 4
  %614 = load i32, i32* %ar, align 4
  %615 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight588 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %615, i32 0, i32 4
  %616 = load double, double* %tweight588, align 8
  %call589 = call i32 @wireesty(i32 %612, i32 %613, i32 %614, double %616)
  %617 = load i32, i32* %at, align 4
  %add590 = add nsw i32 %617, %call589
  store i32 %add590, i32* %at, align 4
  br label %if.end.591

if.end.591:                                       ; preds = %if.then.578, %if.end.564
  %618 = load i32, i32* %newbor, align 4
  %idxprom592 = sext i32 %618 to i64
  %619 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %config593 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %619, i32 0, i32 21
  %arrayidx594 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config593, i32 0, i64 %idxprom592
  %620 = load %struct.tilebox*, %struct.tilebox** %arrayidx594, align 8
  store %struct.tilebox* %620, %struct.tilebox** %tileptr, align 8
  %621 = load i32, i32* %bx, align 4
  %622 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left595 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %622, i32 0, i32 9
  %623 = load i32, i32* %left595, align 4
  %add596 = add nsw i32 %621, %623
  store i32 %add596, i32* %bl, align 4
  %624 = load i32, i32* %bx, align 4
  %625 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right597 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %625, i32 0, i32 10
  %626 = load i32, i32* %right597, align 4
  %add598 = add nsw i32 %624, %626
  store i32 %add598, i32* %br, align 4
  %627 = load i32, i32* %by, align 4
  %628 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom599 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %628, i32 0, i32 11
  %629 = load i32, i32* %bottom599, align 4
  %add600 = add nsw i32 %627, %629
  store i32 %add600, i32* %bb, align 4
  %630 = load i32, i32* %by, align 4
  %631 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top601 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %631, i32 0, i32 12
  %632 = load i32, i32* %top601, align 4
  %add602 = add nsw i32 %630, %632
  store i32 %add602, i32* %bt, align 4
  %633 = load i32, i32* %b, align 4
  %634 = load i32, i32* @numcells, align 4
  %cmp603 = icmp sle i32 %633, %634
  br i1 %cmp603, label %if.then.605, label %if.end.618

if.then.605:                                      ; preds = %if.end.591
  %635 = load i32, i32* %bl, align 4
  %636 = load i32, i32* %bb, align 4
  %637 = load i32, i32* %bt, align 4
  %638 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight606 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %638, i32 0, i32 1
  %639 = load double, double* %lweight606, align 8
  %call607 = call i32 @wireestx(i32 %635, i32 %636, i32 %637, double %639)
  %640 = load i32, i32* %bl, align 4
  %sub608 = sub nsw i32 %640, %call607
  store i32 %sub608, i32* %bl, align 4
  %641 = load i32, i32* %br, align 4
  %642 = load i32, i32* %bb, align 4
  %643 = load i32, i32* %bt, align 4
  %644 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight609 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %644, i32 0, i32 2
  %645 = load double, double* %rweight609, align 8
  %call610 = call i32 @wireestx(i32 %641, i32 %642, i32 %643, double %645)
  %646 = load i32, i32* %br, align 4
  %add611 = add nsw i32 %646, %call610
  store i32 %add611, i32* %br, align 4
  %647 = load i32, i32* %bb, align 4
  %648 = load i32, i32* %bl, align 4
  %649 = load i32, i32* %br, align 4
  %650 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight612 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %650, i32 0, i32 3
  %651 = load double, double* %bweight612, align 8
  %call613 = call i32 @wireesty(i32 %647, i32 %648, i32 %649, double %651)
  %652 = load i32, i32* %bb, align 4
  %sub614 = sub nsw i32 %652, %call613
  store i32 %sub614, i32* %bb, align 4
  %653 = load i32, i32* %bt, align 4
  %654 = load i32, i32* %bl, align 4
  %655 = load i32, i32* %br, align 4
  %656 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight615 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %656, i32 0, i32 4
  %657 = load double, double* %tweight615, align 8
  %call616 = call i32 @wireesty(i32 %653, i32 %654, i32 %655, double %657)
  %658 = load i32, i32* %bt, align 4
  %add617 = add nsw i32 %658, %call616
  store i32 %add617, i32* %bt, align 4
  br label %if.end.618

if.end.618:                                       ; preds = %if.then.605, %if.end.591
  store i32 1000000, i32* %min, align 4
  store i32 0, i32* %minstep, align 4
  %659 = load i32, i32* %bl, align 4
  %660 = load i32, i32* %ar, align 4
  %cmp619 = icmp sge i32 %659, %660
  br i1 %cmp619, label %if.then.630, label %lor.lhs.false.621

lor.lhs.false.621:                                ; preds = %if.end.618
  %661 = load i32, i32* %al, align 4
  %662 = load i32, i32* %br, align 4
  %cmp622 = icmp sge i32 %661, %662
  br i1 %cmp622, label %if.then.630, label %lor.lhs.false.624

lor.lhs.false.624:                                ; preds = %lor.lhs.false.621
  %663 = load i32, i32* %bb, align 4
  %664 = load i32, i32* %at, align 4
  %cmp625 = icmp sge i32 %663, %664
  br i1 %cmp625, label %if.then.630, label %lor.lhs.false.627

lor.lhs.false.627:                                ; preds = %lor.lhs.false.624
  %665 = load i32, i32* %ab, align 4
  %666 = load i32, i32* %bt, align 4
  %cmp628 = icmp sge i32 %665, %666
  br i1 %cmp628, label %if.then.630, label %if.end.671

if.then.630:                                      ; preds = %lor.lhs.false.627, %lor.lhs.false.624, %lor.lhs.false.621, %if.end.618
  %667 = load i32, i32* %bl, align 4
  %668 = load i32, i32* %ar, align 4
  %cmp631 = icmp slt i32 %667, %668
  br i1 %cmp631, label %if.then.633, label %if.end.640

if.then.633:                                      ; preds = %if.then.630
  %669 = load i32, i32* %ar, align 4
  %670 = load i32, i32* %bl, align 4
  %sub634 = sub nsw i32 %669, %670
  %671 = load i32, i32* %min, align 4
  %cmp635 = icmp slt i32 %sub634, %671
  br i1 %cmp635, label %if.then.637, label %if.end.639

if.then.637:                                      ; preds = %if.then.633
  store i32 1, i32* %minstep, align 4
  %672 = load i32, i32* %ar, align 4
  %673 = load i32, i32* %bl, align 4
  %sub638 = sub nsw i32 %672, %673
  store i32 %sub638, i32* %min, align 4
  br label %if.end.639

if.end.639:                                       ; preds = %if.then.637, %if.then.633
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %if.then.630
  %674 = load i32, i32* %al, align 4
  %675 = load i32, i32* %br, align 4
  %cmp641 = icmp slt i32 %674, %675
  br i1 %cmp641, label %if.then.643, label %if.end.650

if.then.643:                                      ; preds = %if.end.640
  %676 = load i32, i32* %br, align 4
  %677 = load i32, i32* %al, align 4
  %sub644 = sub nsw i32 %676, %677
  %678 = load i32, i32* %min, align 4
  %cmp645 = icmp slt i32 %sub644, %678
  br i1 %cmp645, label %if.then.647, label %if.end.649

if.then.647:                                      ; preds = %if.then.643
  store i32 2, i32* %minstep, align 4
  %679 = load i32, i32* %br, align 4
  %680 = load i32, i32* %al, align 4
  %sub648 = sub nsw i32 %679, %680
  store i32 %sub648, i32* %min, align 4
  br label %if.end.649

if.end.649:                                       ; preds = %if.then.647, %if.then.643
  br label %if.end.650

if.end.650:                                       ; preds = %if.end.649, %if.end.640
  %681 = load i32, i32* %bb, align 4
  %682 = load i32, i32* %at, align 4
  %cmp651 = icmp slt i32 %681, %682
  br i1 %cmp651, label %if.then.653, label %if.end.660

if.then.653:                                      ; preds = %if.end.650
  %683 = load i32, i32* %at, align 4
  %684 = load i32, i32* %bb, align 4
  %sub654 = sub nsw i32 %683, %684
  %685 = load i32, i32* %min, align 4
  %cmp655 = icmp slt i32 %sub654, %685
  br i1 %cmp655, label %if.then.657, label %if.end.659

if.then.657:                                      ; preds = %if.then.653
  store i32 3, i32* %minstep, align 4
  %686 = load i32, i32* %at, align 4
  %687 = load i32, i32* %bb, align 4
  %sub658 = sub nsw i32 %686, %687
  store i32 %sub658, i32* %min, align 4
  br label %if.end.659

if.end.659:                                       ; preds = %if.then.657, %if.then.653
  br label %if.end.660

if.end.660:                                       ; preds = %if.end.659, %if.end.650
  %688 = load i32, i32* %ab, align 4
  %689 = load i32, i32* %bt, align 4
  %cmp661 = icmp slt i32 %688, %689
  br i1 %cmp661, label %if.then.663, label %if.end.670

if.then.663:                                      ; preds = %if.end.660
  %690 = load i32, i32* %bt, align 4
  %691 = load i32, i32* %ab, align 4
  %sub664 = sub nsw i32 %690, %691
  %692 = load i32, i32* %min, align 4
  %cmp665 = icmp slt i32 %sub664, %692
  br i1 %cmp665, label %if.then.667, label %if.end.669

if.then.667:                                      ; preds = %if.then.663
  store i32 4, i32* %minstep, align 4
  %693 = load i32, i32* %bt, align 4
  %694 = load i32, i32* %ab, align 4
  %sub668 = sub nsw i32 %693, %694
  store i32 %sub668, i32* %min, align 4
  br label %if.end.669

if.end.669:                                       ; preds = %if.then.667, %if.then.663
  br label %if.end.670

if.end.670:                                       ; preds = %if.end.669, %if.end.660
  br label %if.end.671

if.end.671:                                       ; preds = %if.end.670, %lor.lhs.false.627
  %695 = load i32, i32* %minstep, align 4
  %cmp672 = icmp ne i32 %695, 0
  br i1 %cmp672, label %if.then.674, label %if.end.793

if.then.674:                                      ; preds = %if.end.671
  %696 = load i32, i32* %min, align 4
  %div675 = sdiv i32 %696, 2
  store i32 %div675, i32* %delt1, align 4
  %697 = load i32, i32* %min, align 4
  %698 = load i32, i32* %min, align 4
  %div676 = sdiv i32 %698, 2
  %sub677 = sub nsw i32 %697, %div676
  store i32 %sub677, i32* %delt2, align 4
  %699 = load i32, i32* %minstep, align 4
  %cmp678 = icmp eq i32 %699, 1
  br i1 %cmp678, label %if.then.680, label %if.else.706

if.then.680:                                      ; preds = %if.then.674
  %700 = load i32, i32* %delt1, align 4
  %701 = load i32, i32* %bx, align 4
  %add681 = add nsw i32 %701, %700
  store i32 %add681, i32* %bx, align 4
  %702 = load i32, i32* %delt2, align 4
  %703 = load i32, i32* %ax, align 4
  %sub682 = sub nsw i32 %703, %702
  store i32 %sub682, i32* %ax, align 4
  %704 = load i32, i32* %br, align 4
  %705 = load i32, i32* %delt1, align 4
  %add683 = add nsw i32 %704, %705
  %706 = load i32, i32* @blockr, align 4
  %cmp684 = icmp sgt i32 %add683, %706
  br i1 %cmp684, label %if.then.686, label %if.else.693

if.then.686:                                      ; preds = %if.then.680
  %707 = load i32, i32* %br, align 4
  %708 = load i32, i32* %delt1, align 4
  %add687 = add nsw i32 %707, %708
  %709 = load i32, i32* @blockr, align 4
  %sub688 = sub nsw i32 %add687, %709
  %710 = load i32, i32* %bx, align 4
  %sub689 = sub nsw i32 %710, %sub688
  store i32 %sub689, i32* %bx, align 4
  %711 = load i32, i32* %br, align 4
  %712 = load i32, i32* %delt1, align 4
  %add690 = add nsw i32 %711, %712
  %713 = load i32, i32* @blockr, align 4
  %sub691 = sub nsw i32 %add690, %713
  %714 = load i32, i32* %ax, align 4
  %sub692 = sub nsw i32 %714, %sub691
  store i32 %sub692, i32* %ax, align 4
  br label %if.end.705

if.else.693:                                      ; preds = %if.then.680
  %715 = load i32, i32* %al, align 4
  %716 = load i32, i32* %delt2, align 4
  %sub694 = sub nsw i32 %715, %716
  %717 = load i32, i32* @blockl, align 4
  %cmp695 = icmp slt i32 %sub694, %717
  br i1 %cmp695, label %if.then.697, label %if.end.704

if.then.697:                                      ; preds = %if.else.693
  %718 = load i32, i32* @blockl, align 4
  %719 = load i32, i32* %al, align 4
  %720 = load i32, i32* %delt2, align 4
  %sub698 = sub nsw i32 %719, %720
  %sub699 = sub nsw i32 %718, %sub698
  %721 = load i32, i32* %bx, align 4
  %add700 = add nsw i32 %721, %sub699
  store i32 %add700, i32* %bx, align 4
  %722 = load i32, i32* @blockl, align 4
  %723 = load i32, i32* %al, align 4
  %724 = load i32, i32* %delt2, align 4
  %sub701 = sub nsw i32 %723, %724
  %sub702 = sub nsw i32 %722, %sub701
  %725 = load i32, i32* %ax, align 4
  %add703 = add nsw i32 %725, %sub702
  store i32 %add703, i32* %ax, align 4
  br label %if.end.704

if.end.704:                                       ; preds = %if.then.697, %if.else.693
  br label %if.end.705

if.end.705:                                       ; preds = %if.end.704, %if.then.686
  br label %if.end.792

if.else.706:                                      ; preds = %if.then.674
  %726 = load i32, i32* %minstep, align 4
  %cmp707 = icmp eq i32 %726, 2
  br i1 %cmp707, label %if.then.709, label %if.else.735

if.then.709:                                      ; preds = %if.else.706
  %727 = load i32, i32* %delt1, align 4
  %728 = load i32, i32* %ax, align 4
  %add710 = add nsw i32 %728, %727
  store i32 %add710, i32* %ax, align 4
  %729 = load i32, i32* %delt2, align 4
  %730 = load i32, i32* %bx, align 4
  %sub711 = sub nsw i32 %730, %729
  store i32 %sub711, i32* %bx, align 4
  %731 = load i32, i32* %ar, align 4
  %732 = load i32, i32* %delt1, align 4
  %add712 = add nsw i32 %731, %732
  %733 = load i32, i32* @blockr, align 4
  %cmp713 = icmp sgt i32 %add712, %733
  br i1 %cmp713, label %if.then.715, label %if.else.722

if.then.715:                                      ; preds = %if.then.709
  %734 = load i32, i32* %ar, align 4
  %735 = load i32, i32* %delt1, align 4
  %add716 = add nsw i32 %734, %735
  %736 = load i32, i32* @blockr, align 4
  %sub717 = sub nsw i32 %add716, %736
  %737 = load i32, i32* %bx, align 4
  %sub718 = sub nsw i32 %737, %sub717
  store i32 %sub718, i32* %bx, align 4
  %738 = load i32, i32* %ar, align 4
  %739 = load i32, i32* %delt1, align 4
  %add719 = add nsw i32 %738, %739
  %740 = load i32, i32* @blockr, align 4
  %sub720 = sub nsw i32 %add719, %740
  %741 = load i32, i32* %ax, align 4
  %sub721 = sub nsw i32 %741, %sub720
  store i32 %sub721, i32* %ax, align 4
  br label %if.end.734

if.else.722:                                      ; preds = %if.then.709
  %742 = load i32, i32* %bl, align 4
  %743 = load i32, i32* %delt2, align 4
  %sub723 = sub nsw i32 %742, %743
  %744 = load i32, i32* @blockl, align 4
  %cmp724 = icmp slt i32 %sub723, %744
  br i1 %cmp724, label %if.then.726, label %if.end.733

if.then.726:                                      ; preds = %if.else.722
  %745 = load i32, i32* @blockl, align 4
  %746 = load i32, i32* %bl, align 4
  %747 = load i32, i32* %delt2, align 4
  %sub727 = sub nsw i32 %746, %747
  %sub728 = sub nsw i32 %745, %sub727
  %748 = load i32, i32* %bx, align 4
  %add729 = add nsw i32 %748, %sub728
  store i32 %add729, i32* %bx, align 4
  %749 = load i32, i32* @blockl, align 4
  %750 = load i32, i32* %bl, align 4
  %751 = load i32, i32* %delt2, align 4
  %sub730 = sub nsw i32 %750, %751
  %sub731 = sub nsw i32 %749, %sub730
  %752 = load i32, i32* %ax, align 4
  %add732 = add nsw i32 %752, %sub731
  store i32 %add732, i32* %ax, align 4
  br label %if.end.733

if.end.733:                                       ; preds = %if.then.726, %if.else.722
  br label %if.end.734

if.end.734:                                       ; preds = %if.end.733, %if.then.715
  br label %if.end.791

if.else.735:                                      ; preds = %if.else.706
  %753 = load i32, i32* %minstep, align 4
  %cmp736 = icmp eq i32 %753, 3
  br i1 %cmp736, label %if.then.738, label %if.else.764

if.then.738:                                      ; preds = %if.else.735
  %754 = load i32, i32* %delt1, align 4
  %755 = load i32, i32* %by, align 4
  %add739 = add nsw i32 %755, %754
  store i32 %add739, i32* %by, align 4
  %756 = load i32, i32* %delt2, align 4
  %757 = load i32, i32* %ay, align 4
  %sub740 = sub nsw i32 %757, %756
  store i32 %sub740, i32* %ay, align 4
  %758 = load i32, i32* %bt, align 4
  %759 = load i32, i32* %delt1, align 4
  %add741 = add nsw i32 %758, %759
  %760 = load i32, i32* @blockt, align 4
  %cmp742 = icmp sgt i32 %add741, %760
  br i1 %cmp742, label %if.then.744, label %if.else.751

if.then.744:                                      ; preds = %if.then.738
  %761 = load i32, i32* %bt, align 4
  %762 = load i32, i32* %delt1, align 4
  %add745 = add nsw i32 %761, %762
  %763 = load i32, i32* @blockt, align 4
  %sub746 = sub nsw i32 %add745, %763
  %764 = load i32, i32* %by, align 4
  %sub747 = sub nsw i32 %764, %sub746
  store i32 %sub747, i32* %by, align 4
  %765 = load i32, i32* %bt, align 4
  %766 = load i32, i32* %delt1, align 4
  %add748 = add nsw i32 %765, %766
  %767 = load i32, i32* @blockt, align 4
  %sub749 = sub nsw i32 %add748, %767
  %768 = load i32, i32* %ay, align 4
  %sub750 = sub nsw i32 %768, %sub749
  store i32 %sub750, i32* %ay, align 4
  br label %if.end.763

if.else.751:                                      ; preds = %if.then.738
  %769 = load i32, i32* %ab, align 4
  %770 = load i32, i32* %delt2, align 4
  %sub752 = sub nsw i32 %769, %770
  %771 = load i32, i32* @blockb, align 4
  %cmp753 = icmp slt i32 %sub752, %771
  br i1 %cmp753, label %if.then.755, label %if.end.762

if.then.755:                                      ; preds = %if.else.751
  %772 = load i32, i32* @blockb, align 4
  %773 = load i32, i32* %ab, align 4
  %774 = load i32, i32* %delt2, align 4
  %sub756 = sub nsw i32 %773, %774
  %sub757 = sub nsw i32 %772, %sub756
  %775 = load i32, i32* %by, align 4
  %add758 = add nsw i32 %775, %sub757
  store i32 %add758, i32* %by, align 4
  %776 = load i32, i32* @blockb, align 4
  %777 = load i32, i32* %ab, align 4
  %778 = load i32, i32* %delt2, align 4
  %sub759 = sub nsw i32 %777, %778
  %sub760 = sub nsw i32 %776, %sub759
  %779 = load i32, i32* %ay, align 4
  %add761 = add nsw i32 %779, %sub760
  store i32 %add761, i32* %ay, align 4
  br label %if.end.762

if.end.762:                                       ; preds = %if.then.755, %if.else.751
  br label %if.end.763

if.end.763:                                       ; preds = %if.end.762, %if.then.744
  br label %if.end.790

if.else.764:                                      ; preds = %if.else.735
  %780 = load i32, i32* %delt1, align 4
  %781 = load i32, i32* %ay, align 4
  %add765 = add nsw i32 %781, %780
  store i32 %add765, i32* %ay, align 4
  %782 = load i32, i32* %delt2, align 4
  %783 = load i32, i32* %by, align 4
  %sub766 = sub nsw i32 %783, %782
  store i32 %sub766, i32* %by, align 4
  %784 = load i32, i32* %at, align 4
  %785 = load i32, i32* %delt1, align 4
  %add767 = add nsw i32 %784, %785
  %786 = load i32, i32* @blockt, align 4
  %cmp768 = icmp sgt i32 %add767, %786
  br i1 %cmp768, label %if.then.770, label %if.else.777

if.then.770:                                      ; preds = %if.else.764
  %787 = load i32, i32* %at, align 4
  %788 = load i32, i32* %delt1, align 4
  %add771 = add nsw i32 %787, %788
  %789 = load i32, i32* @blockt, align 4
  %sub772 = sub nsw i32 %add771, %789
  %790 = load i32, i32* %by, align 4
  %sub773 = sub nsw i32 %790, %sub772
  store i32 %sub773, i32* %by, align 4
  %791 = load i32, i32* %at, align 4
  %792 = load i32, i32* %delt1, align 4
  %add774 = add nsw i32 %791, %792
  %793 = load i32, i32* @blockt, align 4
  %sub775 = sub nsw i32 %add774, %793
  %794 = load i32, i32* %ay, align 4
  %sub776 = sub nsw i32 %794, %sub775
  store i32 %sub776, i32* %ay, align 4
  br label %if.end.789

if.else.777:                                      ; preds = %if.else.764
  %795 = load i32, i32* %bb, align 4
  %796 = load i32, i32* %delt2, align 4
  %sub778 = sub nsw i32 %795, %796
  %797 = load i32, i32* @blockb, align 4
  %cmp779 = icmp slt i32 %sub778, %797
  br i1 %cmp779, label %if.then.781, label %if.end.788

if.then.781:                                      ; preds = %if.else.777
  %798 = load i32, i32* @blockb, align 4
  %799 = load i32, i32* %bb, align 4
  %800 = load i32, i32* %delt2, align 4
  %sub782 = sub nsw i32 %799, %800
  %sub783 = sub nsw i32 %798, %sub782
  %801 = load i32, i32* %by, align 4
  %add784 = add nsw i32 %801, %sub783
  store i32 %add784, i32* %by, align 4
  %802 = load i32, i32* @blockb, align 4
  %803 = load i32, i32* %bb, align 4
  %804 = load i32, i32* %delt2, align 4
  %sub785 = sub nsw i32 %803, %804
  %sub786 = sub nsw i32 %802, %sub785
  %805 = load i32, i32* %ay, align 4
  %add787 = add nsw i32 %805, %sub786
  store i32 %add787, i32* %ay, align 4
  br label %if.end.788

if.end.788:                                       ; preds = %if.then.781, %if.else.777
  br label %if.end.789

if.end.789:                                       ; preds = %if.end.788, %if.then.770
  br label %if.end.790

if.end.790:                                       ; preds = %if.end.789, %if.end.763
  br label %if.end.791

if.end.791:                                       ; preds = %if.end.790, %if.end.734
  br label %if.end.792

if.end.792:                                       ; preds = %if.end.791, %if.end.705
  br label %if.end.793

if.end.793:                                       ; preds = %if.end.792, %if.end.671
  %806 = load i32, i32* %a, align 4
  %807 = load i32, i32* %b, align 4
  %808 = load i32, i32* %ax, align 4
  %809 = load i32, i32* %ay, align 4
  %810 = load i32, i32* %bx, align 4
  %811 = load i32, i32* %by, align 4
  %812 = load i32, i32* %newaor, align 4
  %813 = load i32, i32* %newbor, align 4
  %call794 = call i32 @usiteo2(i32 %806, i32 %807, i32 %808, i32 %809, i32 %810, i32 %811, i32 %812, i32 %813)
  %tobool795 = icmp ne i32 %call794, 0
  br i1 %tobool795, label %if.then.796, label %if.else.801

if.then.796:                                      ; preds = %if.end.793
  %814 = load i32, i32* @flips, align 4
  %inc797 = add nsw i32 %814, 1
  store i32 %inc797, i32* @flips, align 4
  %815 = load i32, i32* %flipo2, align 4
  %inc798 = add nsw i32 %815, 1
  store i32 %inc798, i32* %flipo2, align 4
  %816 = load i32, i32* %atto2, align 4
  %inc799 = add nsw i32 %816, 1
  store i32 %inc799, i32* %atto2, align 4
  %817 = load i32, i32* %attempts, align 4
  %inc800 = add nsw i32 %817, 1
  store i32 %inc800, i32* %attempts, align 4
  %818 = load %struct.cellbox*, %struct.cellbox** %acellptr, align 8
  %819 = load i32, i32* %axcenter, align 4
  %820 = load i32, i32* %aycenter, align 4
  %821 = load i32, i32* %aorient, align 4
  call void @fixSpot(%struct.cellbox* %818, i32 %819, i32 %820, i32 %821)
  %822 = load %struct.cellbox*, %struct.cellbox** %bcellptr, align 8
  %823 = load i32, i32* %bxcenter, align 4
  %824 = load i32, i32* %bycenter, align 4
  %825 = load i32, i32* %borient, align 4
  call void @fixSpot(%struct.cellbox* %822, i32 %823, i32 %824, i32 %825)
  br label %if.end.804

if.else.801:                                      ; preds = %if.end.793
  %826 = load i32, i32* %atto2, align 4
  %inc802 = add nsw i32 %826, 1
  store i32 %inc802, i32* %atto2, align 4
  %827 = load i32, i32* %attempts, align 4
  %inc803 = add nsw i32 %827, 1
  store i32 %inc803, i32* %attempts, align 4
  br label %if.end.804

if.end.804:                                       ; preds = %if.else.801, %if.then.796
  br label %if.end.805

if.end.805:                                       ; preds = %if.end.804, %lor.lhs.false.516
  br label %if.end.806

if.end.806:                                       ; preds = %if.end.805, %if.then.504
  br label %if.end.807

if.end.807:                                       ; preds = %if.end.806, %if.end.221
  br label %if.end.808

if.end.808:                                       ; preds = %if.end.807, %if.end.44
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %828 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call809 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %828, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  %829 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %830 = load i32, i32* %flip1, align 4
  %831 = load i32, i32* %att1, align 4
  %call810 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %829, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i32 %830, i32 %831)
  %832 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %833 = load i32, i32* %flipo, align 4
  %834 = load i32, i32* %atto, align 4
  %call811 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %832, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i32 %833, i32 %834)
  %835 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %836 = load i32, i32* %flip0, align 4
  %837 = load i32, i32* %att0, align 4
  %call812 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %835, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i32 %836, i32 %837)
  %838 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %839 = load i32, i32* @flipp, align 4
  %840 = load i32, i32* @attp, align 4
  %call813 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %838, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i32 %839, i32 %840)
  %841 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %842 = load i32, i32* %flipa, align 4
  %843 = load i32, i32* %atta, align 4
  %call814 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %841, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i32 %842, i32 %843)
  %844 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %845 = load i32, i32* %flip2, align 4
  %846 = load i32, i32* %att2, align 4
  %call815 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %844, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), i32 %845, i32 %846)
  %847 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %848 = load i32, i32* %flipo2, align 4
  %849 = load i32, i32* %atto2, align 4
  %call816 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %847, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i32 %848, i32 %849)
  %850 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %851 = load i32, i32* @flips, align 4
  %call817 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %850, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i32 %851)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @newOrient(%struct.cellbox*, i32) #1

declare i32 @usite0(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @pickSpot(%struct.cellbox* %cellptr, i32 %orient, i32 %ll, i32 %rr, i32 %bb, i32 %tt, i32* %x, i32* %y) #0 {
entry:
  %cellptr.addr = alloca %struct.cellbox*, align 8
  %orient.addr = alloca i32, align 4
  %ll.addr = alloca i32, align 4
  %rr.addr = alloca i32, align 4
  %bb.addr = alloca i32, align 4
  %tt.addr = alloca i32, align 4
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %tileptr = alloca %struct.tilebox*, align 8
  %lspot = alloca i32, align 4
  %rspot = alloca i32, align 4
  %bspot = alloca i32, align 4
  %tspot = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %llspot = alloca i32, align 4
  %rrspot = alloca i32, align 4
  %bbspot = alloca i32, align 4
  %ttspot = alloca i32, align 4
  %xrange = alloca i32, align 4
  %yrange = alloca i32, align 4
  %xspot = alloca i32, align 4
  %yspot = alloca i32, align 4
  %xc = alloca i32, align 4
  %yc = alloca i32, align 4
  store %struct.cellbox* %cellptr, %struct.cellbox** %cellptr.addr, align 8
  store i32 %orient, i32* %orient.addr, align 4
  store i32 %ll, i32* %ll.addr, align 4
  store i32 %rr, i32* %rr.addr, align 4
  store i32 %bb, i32* %bb.addr, align 4
  store i32 %tt, i32* %tt.addr, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32, i32* %ll.addr, align 4
  %1 = load i32, i32* @spotXhash, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32, i32* @spotSize, align 4
  %div = sdiv i32 %sub, %2
  store i32 %div, i32* %llspot, align 4
  %3 = load i32, i32* %rr.addr, align 4
  %4 = load i32, i32* @spotXhash, align 4
  %sub1 = sub nsw i32 %3, %4
  %5 = load i32, i32* @spotSize, align 4
  %div2 = sdiv i32 %sub1, %5
  store i32 %div2, i32* %rrspot, align 4
  %6 = load i32, i32* %bb.addr, align 4
  %7 = load i32, i32* @spotYhash, align 4
  %sub3 = sub nsw i32 %6, %7
  %8 = load i32, i32* @spotSize, align 4
  %div4 = sdiv i32 %sub3, %8
  store i32 %div4, i32* %bbspot, align 4
  %9 = load i32, i32* %tt.addr, align 4
  %10 = load i32, i32* @spotYhash, align 4
  %sub5 = sub nsw i32 %9, %10
  %11 = load i32, i32* @spotSize, align 4
  %div6 = sdiv i32 %sub5, %11
  store i32 %div6, i32* %ttspot, align 4
  %12 = load i32, i32* %rrspot, align 4
  %13 = load i32, i32* %llspot, align 4
  %sub7 = sub nsw i32 %12, %13
  %add = add nsw i32 %sub7, 1
  store i32 %add, i32* %xrange, align 4
  %14 = load i32, i32* %ttspot, align 4
  %15 = load i32, i32* %bbspot, align 4
  %sub8 = sub nsw i32 %14, %15
  %add9 = add nsw i32 %sub8, 1
  store i32 %add9, i32* %yrange, align 4
  %16 = load i32, i32* %orient.addr, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %17, i32 0, i32 21
  %arrayidx = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom
  %18 = load %struct.tilebox*, %struct.tilebox** %arrayidx, align 8
  store %struct.tilebox* %18, %struct.tilebox** %tileptr, align 8
  %19 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i32 0, i32 2
  %20 = load i32, i32* %xcenter, align 4
  store i32 %20, i32* %xc, align 4
  %21 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %21, i32 0, i32 3
  %22 = load i32, i32* %ycenter, align 4
  store i32 %22, i32* %yc, align 4
  %23 = load i32, i32* %xc, align 4
  %24 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 9
  %25 = load i32, i32* %left, align 4
  %add10 = add nsw i32 %23, %25
  store i32 %add10, i32* %l, align 4
  %26 = load i32, i32* %xc, align 4
  %27 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 10
  %28 = load i32, i32* %right, align 4
  %add11 = add nsw i32 %26, %28
  store i32 %add11, i32* %r, align 4
  %29 = load i32, i32* %yc, align 4
  %30 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %30, i32 0, i32 11
  %31 = load i32, i32* %bottom, align 4
  %add12 = add nsw i32 %29, %31
  store i32 %add12, i32* %b, align 4
  %32 = load i32, i32* %yc, align 4
  %33 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %33, i32 0, i32 12
  %34 = load i32, i32* %top, align 4
  %add13 = add nsw i32 %32, %34
  store i32 %add13, i32* %t, align 4
  %35 = load i32, i32* %l, align 4
  %36 = load i32, i32* %b, align 4
  %37 = load i32, i32* %t, align 4
  %38 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %38, i32 0, i32 1
  %39 = load double, double* %lweight, align 8
  %call = call i32 @wireestx(i32 %35, i32 %36, i32 %37, double %39)
  %40 = load i32, i32* %l, align 4
  %sub14 = sub nsw i32 %40, %call
  store i32 %sub14, i32* %l, align 4
  %41 = load i32, i32* %r, align 4
  %42 = load i32, i32* %b, align 4
  %43 = load i32, i32* %t, align 4
  %44 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i32 0, i32 2
  %45 = load double, double* %rweight, align 8
  %call15 = call i32 @wireestx(i32 %41, i32 %42, i32 %43, double %45)
  %46 = load i32, i32* %r, align 4
  %add16 = add nsw i32 %46, %call15
  store i32 %add16, i32* %r, align 4
  %47 = load i32, i32* %b, align 4
  %48 = load i32, i32* %l, align 4
  %49 = load i32, i32* %r, align 4
  %50 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %50, i32 0, i32 3
  %51 = load double, double* %bweight, align 8
  %call17 = call i32 @wireesty(i32 %47, i32 %48, i32 %49, double %51)
  %52 = load i32, i32* %b, align 4
  %sub18 = sub nsw i32 %52, %call17
  store i32 %sub18, i32* %b, align 4
  %53 = load i32, i32* %t, align 4
  %54 = load i32, i32* %l, align 4
  %55 = load i32, i32* %r, align 4
  %56 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %56, i32 0, i32 4
  %57 = load double, double* %tweight, align 8
  %call19 = call i32 @wireesty(i32 %53, i32 %54, i32 %55, double %57)
  %58 = load i32, i32* %t, align 4
  %add20 = add nsw i32 %58, %call19
  store i32 %add20, i32* %t, align 4
  %59 = load i32, i32* %l, align 4
  %60 = load i32, i32* @spotXhash, align 4
  %sub21 = sub nsw i32 %59, %60
  %61 = load i32, i32* @spotSize, align 4
  %div22 = sdiv i32 %sub21, %61
  store i32 %div22, i32* %lspot, align 4
  %62 = load i32, i32* %r, align 4
  %63 = load i32, i32* @spotXhash, align 4
  %sub23 = sub nsw i32 %62, %63
  %64 = load i32, i32* @spotSize, align 4
  %div24 = sdiv i32 %sub23, %64
  store i32 %div24, i32* %rspot, align 4
  %65 = load i32, i32* %b, align 4
  %66 = load i32, i32* @spotYhash, align 4
  %sub25 = sub nsw i32 %65, %66
  %67 = load i32, i32* @spotSize, align 4
  %div26 = sdiv i32 %sub25, %67
  store i32 %div26, i32* %bspot, align 4
  %68 = load i32, i32* %t, align 4
  %69 = load i32, i32* @spotYhash, align 4
  %sub27 = sub nsw i32 %68, %69
  %70 = load i32, i32* @spotSize, align 4
  %div28 = sdiv i32 %sub27, %70
  store i32 %div28, i32* %tspot, align 4
  %71 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %xcenter29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %71, i32 0, i32 2
  %72 = load i32, i32* %xcenter29, align 4
  %73 = load i32, i32* @spotXhash, align 4
  %sub30 = sub nsw i32 %72, %73
  %74 = load i32, i32* @spotSize, align 4
  %div31 = sdiv i32 %sub30, %74
  store i32 %div31, i32* %xspot, align 4
  %75 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %ycenter32 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %75, i32 0, i32 3
  %76 = load i32, i32* %ycenter32, align 4
  %77 = load i32, i32* @spotYhash, align 4
  %sub33 = sub nsw i32 %76, %77
  %78 = load i32, i32* @spotSize, align 4
  %div34 = sdiv i32 %sub33, %78
  store i32 %div34, i32* %yspot, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.88, %entry
  %79 = load i32, i32* %xrange, align 4
  %conv = sitofp i32 %79 to double
  %80 = load i32, i32* @randVar, align 4
  %mul = mul nsw i32 %80, 1103515245
  %add35 = add nsw i32 %mul, 12345
  store i32 %add35, i32* @randVar, align 4
  %and = and i32 %add35, 2147483647
  %conv36 = sitofp i32 %and to double
  %div37 = fdiv double %conv36, 0x41DFFFFFFFC00000
  %mul38 = fmul double %conv, %div37
  %conv39 = fptosi double %mul38 to i32
  %81 = load i32, i32* %llspot, align 4
  %add40 = add nsw i32 %conv39, %81
  %82 = load i32*, i32** %x.addr, align 8
  store i32 %add40, i32* %82, align 4
  %83 = load i32, i32* %yrange, align 4
  %conv41 = sitofp i32 %83 to double
  %84 = load i32, i32* @randVar, align 4
  %mul42 = mul nsw i32 %84, 1103515245
  %add43 = add nsw i32 %mul42, 12345
  store i32 %add43, i32* @randVar, align 4
  %and44 = and i32 %add43, 2147483647
  %conv45 = sitofp i32 %and44 to double
  %div46 = fdiv double %conv45, 0x41DFFFFFFFC00000
  %mul47 = fmul double %conv41, %div46
  %conv48 = fptosi double %mul47 to i32
  %85 = load i32, i32* %bbspot, align 4
  %add49 = add nsw i32 %conv48, %85
  %86 = load i32*, i32** %y.addr, align 8
  store i32 %add49, i32* %86, align 4
  %87 = load i32*, i32** %y.addr, align 8
  %88 = load i32, i32* %87, align 4
  %idxprom50 = sext i32 %88 to i64
  %89 = load i32*, i32** %x.addr, align 8
  %90 = load i32, i32* %89, align 4
  %idxprom51 = sext i32 %90 to i64
  %91 = load i8**, i8*** @spots, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %91, i64 %idxprom51
  %92 = load i8*, i8** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %92, i64 %idxprom50
  %93 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %93 to i32
  %cmp = icmp eq i32 %conv54, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %94 = load i32*, i32** %x.addr, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %lspot, align 4
  %cmp56 = icmp sge i32 %95, %96
  br i1 %cmp56, label %land.lhs.true, label %if.end.88

land.lhs.true:                                    ; preds = %if.end
  %97 = load i32*, i32** %x.addr, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %rspot, align 4
  %cmp58 = icmp sle i32 %98, %99
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.88

land.lhs.true.60:                                 ; preds = %land.lhs.true
  %100 = load i32*, i32** %y.addr, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %bspot, align 4
  %cmp61 = icmp sge i32 %101, %102
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.88

land.lhs.true.63:                                 ; preds = %land.lhs.true.60
  %103 = load i32*, i32** %y.addr, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %tspot, align 4
  %cmp64 = icmp sle i32 %104, %105
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.88

land.lhs.true.66:                                 ; preds = %land.lhs.true.63
  %106 = load i32*, i32** %x.addr, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %xspot, align 4
  %sub67 = sub nsw i32 %107, %108
  %cmp68 = icmp sge i32 %sub67, 0
  br i1 %cmp68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.66
  %109 = load i32*, i32** %x.addr, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %xspot, align 4
  %sub70 = sub nsw i32 %110, %111
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.66
  %112 = load i32*, i32** %x.addr, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %xspot, align 4
  %sub71 = sub nsw i32 %113, %114
  %sub72 = sub nsw i32 0, %sub71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub70, %cond.true ], [ %sub72, %cond.false ]
  %cmp73 = icmp sgt i32 %cond, 1
  br i1 %cmp73, label %if.then.87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %115 = load i32*, i32** %y.addr, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %yspot, align 4
  %sub75 = sub nsw i32 %116, %117
  %cmp76 = icmp sge i32 %sub75, 0
  br i1 %cmp76, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %lor.lhs.false
  %118 = load i32*, i32** %y.addr, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %yspot, align 4
  %sub79 = sub nsw i32 %119, %120
  br label %cond.end.83

cond.false.80:                                    ; preds = %lor.lhs.false
  %121 = load i32*, i32** %y.addr, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %yspot, align 4
  %sub81 = sub nsw i32 %122, %123
  %sub82 = sub nsw i32 0, %sub81
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.80, %cond.true.78
  %cond84 = phi i32 [ %sub79, %cond.true.78 ], [ %sub82, %cond.false.80 ]
  %cmp85 = icmp sgt i32 %cond84, 1
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %cond.end.83, %cond.end
  br label %for.end

if.end.88:                                        ; preds = %cond.end.83, %land.lhs.true.63, %land.lhs.true.60, %land.lhs.true, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.87, %if.then
  %124 = load i32*, i32** %x.addr, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @spotSize, align 4
  %mul89 = mul nsw i32 %125, %126
  %127 = load i32, i32* @spotXhash, align 4
  %add90 = add nsw i32 %mul89, %127
  %128 = load i32*, i32** %x.addr, align 8
  store i32 %add90, i32* %128, align 4
  %129 = load i32*, i32** %y.addr, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @spotSize, align 4
  %mul91 = mul nsw i32 %130, %131
  %132 = load i32, i32* @spotYhash, align 4
  %add92 = add nsw i32 %mul91, %132
  %133 = load i32*, i32** %y.addr, align 8
  store i32 %add92, i32* %133, align 4
  %134 = load i32, i32* @spotSize, align 4
  %conv93 = sitofp i32 %134 to double
  %135 = load i32, i32* @randVar, align 4
  %mul94 = mul nsw i32 %135, 1103515245
  %add95 = add nsw i32 %mul94, 12345
  store i32 %add95, i32* @randVar, align 4
  %and96 = and i32 %add95, 2147483647
  %conv97 = sitofp i32 %and96 to double
  %div98 = fdiv double %conv97, 0x41DFFFFFFFC00000
  %mul99 = fmul double %conv93, %div98
  %conv100 = fptosi double %mul99 to i32
  %136 = load i32*, i32** %x.addr, align 8
  %137 = load i32, i32* %136, align 4
  %add101 = add nsw i32 %137, %conv100
  store i32 %add101, i32* %136, align 4
  %138 = load i32, i32* @spotSize, align 4
  %conv102 = sitofp i32 %138 to double
  %139 = load i32, i32* @randVar, align 4
  %mul103 = mul nsw i32 %139, 1103515245
  %add104 = add nsw i32 %mul103, 12345
  store i32 %add104, i32* @randVar, align 4
  %and105 = and i32 %add104, 2147483647
  %conv106 = sitofp i32 %and105 to double
  %div107 = fdiv double %conv106, 0x41DFFFFFFFC00000
  %mul108 = fmul double %conv102, %div107
  %conv109 = fptosi double %mul108 to i32
  %140 = load i32*, i32** %y.addr, align 8
  %141 = load i32, i32* %140, align 4
  %add110 = add nsw i32 %141, %conv109
  store i32 %add110, i32* %140, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @forceGrid(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* @gOffsetX, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32, i32* @gridX, align 4
  %div = sdiv i32 %sub, %2
  %3 = load i32, i32* @gridX, align 4
  %mul = mul nsw i32 %div, %3
  %4 = load i32, i32* @gOffsetX, align 4
  %add = add nsw i32 %mul, %4
  store i32 %add, i32* @newxx, align 4
  %5 = load i32, i32* @newxx, align 4
  %6 = load i32, i32* @gridX, align 4
  %add1 = add nsw i32 %5, %6
  %7 = load i32, i32* %x.addr, align 4
  %sub2 = sub nsw i32 %add1, %7
  %cmp = icmp sge i32 %sub2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* @newxx, align 4
  %9 = load i32, i32* @gridX, align 4
  %add3 = add nsw i32 %8, %9
  %10 = load i32, i32* %x.addr, align 4
  %sub4 = sub nsw i32 %add3, %10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* @newxx, align 4
  %12 = load i32, i32* @gridX, align 4
  %add5 = add nsw i32 %11, %12
  %13 = load i32, i32* %x.addr, align 4
  %sub6 = sub nsw i32 %add5, %13
  %sub7 = sub nsw i32 0, %sub6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub4, %cond.true ], [ %sub7, %cond.false ]
  %14 = load i32, i32* @newxx, align 4
  %15 = load i32, i32* %x.addr, align 4
  %sub8 = sub nsw i32 %14, %15
  %cmp9 = icmp sge i32 %sub8, 0
  br i1 %cmp9, label %cond.true.10, label %cond.false.12

cond.true.10:                                     ; preds = %cond.end
  %16 = load i32, i32* @newxx, align 4
  %17 = load i32, i32* %x.addr, align 4
  %sub11 = sub nsw i32 %16, %17
  br label %cond.end.15

cond.false.12:                                    ; preds = %cond.end
  %18 = load i32, i32* @newxx, align 4
  %19 = load i32, i32* %x.addr, align 4
  %sub13 = sub nsw i32 %18, %19
  %sub14 = sub nsw i32 0, %sub13
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.10
  %cond16 = phi i32 [ %sub11, %cond.true.10 ], [ %sub14, %cond.false.12 ]
  %cmp17 = icmp slt i32 %cond, %cond16
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.15
  %20 = load i32, i32* @gridX, align 4
  %21 = load i32, i32* @newxx, align 4
  %add18 = add nsw i32 %21, %20
  store i32 %add18, i32* @newxx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.15
  %22 = load i32, i32* %y.addr, align 4
  %23 = load i32, i32* @gOffsetY, align 4
  %sub19 = sub nsw i32 %22, %23
  %24 = load i32, i32* @gridY, align 4
  %div20 = sdiv i32 %sub19, %24
  %25 = load i32, i32* @gridY, align 4
  %mul21 = mul nsw i32 %div20, %25
  %26 = load i32, i32* @gOffsetY, align 4
  %add22 = add nsw i32 %mul21, %26
  store i32 %add22, i32* @newyy, align 4
  %27 = load i32, i32* @newyy, align 4
  %28 = load i32, i32* @gridY, align 4
  %add23 = add nsw i32 %27, %28
  %29 = load i32, i32* %y.addr, align 4
  %sub24 = sub nsw i32 %add23, %29
  %cmp25 = icmp sge i32 %sub24, 0
  br i1 %cmp25, label %cond.true.26, label %cond.false.29

cond.true.26:                                     ; preds = %if.end
  %30 = load i32, i32* @newyy, align 4
  %31 = load i32, i32* @gridY, align 4
  %add27 = add nsw i32 %30, %31
  %32 = load i32, i32* %y.addr, align 4
  %sub28 = sub nsw i32 %add27, %32
  br label %cond.end.33

cond.false.29:                                    ; preds = %if.end
  %33 = load i32, i32* @newyy, align 4
  %34 = load i32, i32* @gridY, align 4
  %add30 = add nsw i32 %33, %34
  %35 = load i32, i32* %y.addr, align 4
  %sub31 = sub nsw i32 %add30, %35
  %sub32 = sub nsw i32 0, %sub31
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.29, %cond.true.26
  %cond34 = phi i32 [ %sub28, %cond.true.26 ], [ %sub32, %cond.false.29 ]
  %36 = load i32, i32* @newyy, align 4
  %37 = load i32, i32* %y.addr, align 4
  %sub35 = sub nsw i32 %36, %37
  %cmp36 = icmp sge i32 %sub35, 0
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end.33
  %38 = load i32, i32* @newyy, align 4
  %39 = load i32, i32* %y.addr, align 4
  %sub38 = sub nsw i32 %38, %39
  br label %cond.end.42

cond.false.39:                                    ; preds = %cond.end.33
  %40 = load i32, i32* @newyy, align 4
  %41 = load i32, i32* %y.addr, align 4
  %sub40 = sub nsw i32 %40, %41
  %sub41 = sub nsw i32 0, %sub40
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.39, %cond.true.37
  %cond43 = phi i32 [ %sub38, %cond.true.37 ], [ %sub41, %cond.false.39 ]
  %cmp44 = icmp slt i32 %cond34, %cond43
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %cond.end.42
  %42 = load i32, i32* @gridY, align 4
  %43 = load i32, i32* @newyy, align 4
  %add46 = add nsw i32 %43, %42
  store i32 %add46, i32* @newyy, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %cond.end.42
  ret void
}

declare i32 @usite1(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @fixSpot(%struct.cellbox* %cellptr, i32 %oldx, i32 %oldy, i32 %oldorient) #0 {
entry:
  %cellptr.addr = alloca %struct.cellbox*, align 8
  %oldx.addr = alloca i32, align 4
  %oldy.addr = alloca i32, align 4
  %oldorient.addr = alloca i32, align 4
  %tileptr = alloca %struct.tilebox*, align 8
  %lspot = alloca i32, align 4
  %rspot = alloca i32, align 4
  %bspot = alloca i32, align 4
  %tspot = alloca i32, align 4
  %xc = alloca i32, align 4
  %yc = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %sarray = alloca i8*, align 8
  store %struct.cellbox* %cellptr, %struct.cellbox** %cellptr.addr, align 8
  store i32 %oldx, i32* %oldx.addr, align 4
  store i32 %oldy, i32* %oldy.addr, align 4
  store i32 %oldorient, i32* %oldorient.addr, align 4
  %0 = load i32, i32* %oldorient.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %1, i32 0, i32 21
  %arrayidx = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom
  %2 = load %struct.tilebox*, %struct.tilebox** %arrayidx, align 8
  store %struct.tilebox* %2, %struct.tilebox** %tileptr, align 8
  %3 = load i32, i32* %oldx.addr, align 4
  %4 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %4, i32 0, i32 9
  %5 = load i32, i32* %left, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %l, align 4
  %6 = load i32, i32* %oldx.addr, align 4
  %7 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %7, i32 0, i32 10
  %8 = load i32, i32* %right, align 4
  %add1 = add nsw i32 %6, %8
  store i32 %add1, i32* %r, align 4
  %9 = load i32, i32* %oldy.addr, align 4
  %10 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %10, i32 0, i32 11
  %11 = load i32, i32* %bottom, align 4
  %add2 = add nsw i32 %9, %11
  store i32 %add2, i32* %b, align 4
  %12 = load i32, i32* %oldy.addr, align 4
  %13 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top = getelementptr inbounds %struct.tilebox, %struct.tilebox* %13, i32 0, i32 12
  %14 = load i32, i32* %top, align 4
  %add3 = add nsw i32 %12, %14
  store i32 %add3, i32* %t, align 4
  %15 = load i32, i32* %l, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %t, align 4
  %18 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %18, i32 0, i32 1
  %19 = load double, double* %lweight, align 8
  %call = call i32 @wireestx(i32 %15, i32 %16, i32 %17, double %19)
  %20 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %20, %call
  store i32 %sub, i32* %l, align 4
  %21 = load i32, i32* %r, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %t, align 4
  %24 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %24, i32 0, i32 2
  %25 = load double, double* %rweight, align 8
  %call4 = call i32 @wireestx(i32 %21, i32 %22, i32 %23, double %25)
  %26 = load i32, i32* %r, align 4
  %add5 = add nsw i32 %26, %call4
  store i32 %add5, i32* %r, align 4
  %27 = load i32, i32* %b, align 4
  %28 = load i32, i32* %l, align 4
  %29 = load i32, i32* %r, align 4
  %30 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %30, i32 0, i32 3
  %31 = load double, double* %bweight, align 8
  %call6 = call i32 @wireesty(i32 %27, i32 %28, i32 %29, double %31)
  %32 = load i32, i32* %b, align 4
  %sub7 = sub nsw i32 %32, %call6
  store i32 %sub7, i32* %b, align 4
  %33 = load i32, i32* %t, align 4
  %34 = load i32, i32* %l, align 4
  %35 = load i32, i32* %r, align 4
  %36 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %36, i32 0, i32 4
  %37 = load double, double* %tweight, align 8
  %call8 = call i32 @wireesty(i32 %33, i32 %34, i32 %35, double %37)
  %38 = load i32, i32* %t, align 4
  %add9 = add nsw i32 %38, %call8
  store i32 %add9, i32* %t, align 4
  %39 = load i32, i32* %l, align 4
  %40 = load i32, i32* @spotXhash, align 4
  %sub10 = sub nsw i32 %39, %40
  %41 = load i32, i32* @spotSize, align 4
  %div = sdiv i32 %sub10, %41
  store i32 %div, i32* %lspot, align 4
  %42 = load i32, i32* %r, align 4
  %43 = load i32, i32* @spotXhash, align 4
  %sub11 = sub nsw i32 %42, %43
  %44 = load i32, i32* @spotSize, align 4
  %div12 = sdiv i32 %sub11, %44
  store i32 %div12, i32* %rspot, align 4
  %45 = load i32, i32* %b, align 4
  %46 = load i32, i32* @spotYhash, align 4
  %sub13 = sub nsw i32 %45, %46
  %47 = load i32, i32* @spotSize, align 4
  %div14 = sdiv i32 %sub13, %47
  store i32 %div14, i32* %bspot, align 4
  %48 = load i32, i32* %t, align 4
  %49 = load i32, i32* @spotYhash, align 4
  %sub15 = sub nsw i32 %48, %49
  %50 = load i32, i32* @spotSize, align 4
  %div16 = sdiv i32 %sub15, %50
  store i32 %div16, i32* %tspot, align 4
  %51 = load i32, i32* %lspot, align 4
  %add17 = add nsw i32 %51, 1
  store i32 %add17, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %52 = load i32, i32* %x, align 4
  %53 = load i32, i32* %rspot, align 4
  %cmp = icmp slt i32 %52, %53
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %54 to i64
  %55 = load i8**, i8*** @spots, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %55, i64 %idxprom18
  %56 = load i8*, i8** %arrayidx19, align 8
  %57 = load i32, i32* %bspot, align 4
  %idx.ext = sext i32 %57 to i64
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  store i8* %add.ptr, i8** %sarray, align 8
  %58 = load i32, i32* %bspot, align 4
  %add20 = add nsw i32 %58, 1
  store i32 %add20, i32* %y, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body
  %59 = load i32, i32* %y, align 4
  %60 = load i32, i32* %tspot, align 4
  %cmp22 = icmp slt i32 %59, %60
  br i1 %cmp22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.21
  %61 = load i8*, i8** %sarray, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %sarray, align 8
  %62 = load i8, i8* %incdec.ptr, align 1
  %dec = add i8 %62, -1
  store i8 %dec, i8* %incdec.ptr, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %63 = load i32, i32* %y, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %64 = load i32, i32* %x, align 4
  %inc25 = add nsw i32 %64, 1
  store i32 %inc25, i32* %x, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %65 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %65, i32 0, i32 5
  %66 = load i32, i32* %orient, align 4
  %idxprom27 = sext i32 %66 to i64
  %67 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %config28 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %67, i32 0, i32 21
  %arrayidx29 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config28, i32 0, i64 %idxprom27
  %68 = load %struct.tilebox*, %struct.tilebox** %arrayidx29, align 8
  store %struct.tilebox* %68, %struct.tilebox** %tileptr, align 8
  %69 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %69, i32 0, i32 2
  %70 = load i32, i32* %xcenter, align 4
  store i32 %70, i32* %xc, align 4
  %71 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %71, i32 0, i32 3
  %72 = load i32, i32* %ycenter, align 4
  store i32 %72, i32* %yc, align 4
  %73 = load i32, i32* %xc, align 4
  %74 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left30 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %74, i32 0, i32 9
  %75 = load i32, i32* %left30, align 4
  %add31 = add nsw i32 %73, %75
  store i32 %add31, i32* %l, align 4
  %76 = load i32, i32* %xc, align 4
  %77 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right32 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %77, i32 0, i32 10
  %78 = load i32, i32* %right32, align 4
  %add33 = add nsw i32 %76, %78
  store i32 %add33, i32* %r, align 4
  %79 = load i32, i32* %yc, align 4
  %80 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom34 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %80, i32 0, i32 11
  %81 = load i32, i32* %bottom34, align 4
  %add35 = add nsw i32 %79, %81
  store i32 %add35, i32* %b, align 4
  %82 = load i32, i32* %yc, align 4
  %83 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %83, i32 0, i32 12
  %84 = load i32, i32* %top36, align 4
  %add37 = add nsw i32 %82, %84
  store i32 %add37, i32* %t, align 4
  %85 = load i32, i32* %l, align 4
  %86 = load i32, i32* %b, align 4
  %87 = load i32, i32* %t, align 4
  %88 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %88, i32 0, i32 1
  %89 = load double, double* %lweight38, align 8
  %call39 = call i32 @wireestx(i32 %85, i32 %86, i32 %87, double %89)
  %90 = load i32, i32* %l, align 4
  %sub40 = sub nsw i32 %90, %call39
  store i32 %sub40, i32* %l, align 4
  %91 = load i32, i32* %r, align 4
  %92 = load i32, i32* %b, align 4
  %93 = load i32, i32* %t, align 4
  %94 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %94, i32 0, i32 2
  %95 = load double, double* %rweight41, align 8
  %call42 = call i32 @wireestx(i32 %91, i32 %92, i32 %93, double %95)
  %96 = load i32, i32* %r, align 4
  %add43 = add nsw i32 %96, %call42
  store i32 %add43, i32* %r, align 4
  %97 = load i32, i32* %b, align 4
  %98 = load i32, i32* %l, align 4
  %99 = load i32, i32* %r, align 4
  %100 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight44 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %100, i32 0, i32 3
  %101 = load double, double* %bweight44, align 8
  %call45 = call i32 @wireesty(i32 %97, i32 %98, i32 %99, double %101)
  %102 = load i32, i32* %b, align 4
  %sub46 = sub nsw i32 %102, %call45
  store i32 %sub46, i32* %b, align 4
  %103 = load i32, i32* %t, align 4
  %104 = load i32, i32* %l, align 4
  %105 = load i32, i32* %r, align 4
  %106 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight47 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %106, i32 0, i32 4
  %107 = load double, double* %tweight47, align 8
  %call48 = call i32 @wireesty(i32 %103, i32 %104, i32 %105, double %107)
  %108 = load i32, i32* %t, align 4
  %add49 = add nsw i32 %108, %call48
  store i32 %add49, i32* %t, align 4
  %109 = load i32, i32* %l, align 4
  %110 = load i32, i32* @spotXhash, align 4
  %sub50 = sub nsw i32 %109, %110
  %111 = load i32, i32* @spotSize, align 4
  %div51 = sdiv i32 %sub50, %111
  store i32 %div51, i32* %lspot, align 4
  %112 = load i32, i32* %r, align 4
  %113 = load i32, i32* @spotXhash, align 4
  %sub52 = sub nsw i32 %112, %113
  %114 = load i32, i32* @spotSize, align 4
  %div53 = sdiv i32 %sub52, %114
  store i32 %div53, i32* %rspot, align 4
  %115 = load i32, i32* %b, align 4
  %116 = load i32, i32* @spotYhash, align 4
  %sub54 = sub nsw i32 %115, %116
  %117 = load i32, i32* @spotSize, align 4
  %div55 = sdiv i32 %sub54, %117
  store i32 %div55, i32* %bspot, align 4
  %118 = load i32, i32* %t, align 4
  %119 = load i32, i32* @spotYhash, align 4
  %sub56 = sub nsw i32 %118, %119
  %120 = load i32, i32* @spotSize, align 4
  %div57 = sdiv i32 %sub56, %120
  store i32 %div57, i32* %tspot, align 4
  %121 = load i32, i32* %lspot, align 4
  %add58 = add nsw i32 %121, 1
  store i32 %add58, i32* %x, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.75, %for.end.26
  %122 = load i32, i32* %x, align 4
  %123 = load i32, i32* %rspot, align 4
  %cmp60 = icmp slt i32 %122, %123
  br i1 %cmp60, label %for.body.61, label %for.end.77

for.body.61:                                      ; preds = %for.cond.59
  %124 = load i32, i32* %x, align 4
  %idxprom62 = sext i32 %124 to i64
  %125 = load i8**, i8*** @spots, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %125, i64 %idxprom62
  %126 = load i8*, i8** %arrayidx63, align 8
  %127 = load i32, i32* %bspot, align 4
  %idx.ext64 = sext i32 %127 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %126, i64 %idx.ext64
  store i8* %add.ptr65, i8** %sarray, align 8
  %128 = load i32, i32* %bspot, align 4
  %add66 = add nsw i32 %128, 1
  store i32 %add66, i32* %y, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.72, %for.body.61
  %129 = load i32, i32* %y, align 4
  %130 = load i32, i32* %tspot, align 4
  %cmp68 = icmp slt i32 %129, %130
  br i1 %cmp68, label %for.body.69, label %for.end.74

for.body.69:                                      ; preds = %for.cond.67
  %131 = load i8*, i8** %sarray, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr70, i8** %sarray, align 8
  %132 = load i8, i8* %incdec.ptr70, align 1
  %inc71 = add i8 %132, 1
  store i8 %inc71, i8* %incdec.ptr70, align 1
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.69
  %133 = load i32, i32* %y, align 4
  %inc73 = add nsw i32 %133, 1
  store i32 %inc73, i32* %y, align 4
  br label %for.cond.67

for.end.74:                                       ; preds = %for.cond.67
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %134 = load i32, i32* %x, align 4
  %inc76 = add nsw i32 %134, 1
  store i32 %inc76, i32* %x, align 4
  br label %for.cond.59

for.end.77:                                       ; preds = %for.cond.59
  ret void
}

declare i32 @usiteo1(i32, i32, i32, i32) #1

declare void @selectpin(%struct.cellbox*) #1

declare i32 @uaspect(i32, double) #1

; Function Attrs: nounwind uwtable
define void @fixSpotAsp(%struct.cellbox* %cellptr, i32 %lft, i32 %rte, i32 %bot, i32 %top) #0 {
entry:
  %cellptr.addr = alloca %struct.cellbox*, align 8
  %lft.addr = alloca i32, align 4
  %rte.addr = alloca i32, align 4
  %bot.addr = alloca i32, align 4
  %top.addr = alloca i32, align 4
  %tileptr = alloca %struct.tilebox*, align 8
  %lspot = alloca i32, align 4
  %rspot = alloca i32, align 4
  %bspot = alloca i32, align 4
  %tspot = alloca i32, align 4
  %xc = alloca i32, align 4
  %yc = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %sarray = alloca i8*, align 8
  store %struct.cellbox* %cellptr, %struct.cellbox** %cellptr.addr, align 8
  store i32 %lft, i32* %lft.addr, align 4
  store i32 %rte, i32* %rte.addr, align 4
  store i32 %bot, i32* %bot.addr, align 4
  store i32 %top, i32* %top.addr, align 4
  %0 = load i32, i32* %lft.addr, align 4
  %1 = load i32, i32* %lft.addr, align 4
  %2 = load i32, i32* %bot.addr, align 4
  %3 = load i32, i32* %top.addr, align 4
  %4 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %4, i32 0, i32 1
  %5 = load double, double* %lweight, align 8
  %call = call i32 @wireestx(i32 %1, i32 %2, i32 %3, double %5)
  %sub = sub nsw i32 %0, %call
  store i32 %sub, i32* %l, align 4
  %6 = load i32, i32* %rte.addr, align 4
  %7 = load i32, i32* %rte.addr, align 4
  %8 = load i32, i32* %bot.addr, align 4
  %9 = load i32, i32* %top.addr, align 4
  %10 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %10, i32 0, i32 2
  %11 = load double, double* %rweight, align 8
  %call1 = call i32 @wireestx(i32 %7, i32 %8, i32 %9, double %11)
  %add = add nsw i32 %6, %call1
  store i32 %add, i32* %r, align 4
  %12 = load i32, i32* %bot.addr, align 4
  %13 = load i32, i32* %bot.addr, align 4
  %14 = load i32, i32* %lft.addr, align 4
  %15 = load i32, i32* %rte.addr, align 4
  %16 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %16, i32 0, i32 3
  %17 = load double, double* %bweight, align 8
  %call2 = call i32 @wireesty(i32 %13, i32 %14, i32 %15, double %17)
  %sub3 = sub nsw i32 %12, %call2
  store i32 %sub3, i32* %b, align 4
  %18 = load i32, i32* %top.addr, align 4
  %19 = load i32, i32* %top.addr, align 4
  %20 = load i32, i32* %lft.addr, align 4
  %21 = load i32, i32* %rte.addr, align 4
  %22 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight = getelementptr inbounds %struct.tilebox, %struct.tilebox* %22, i32 0, i32 4
  %23 = load double, double* %tweight, align 8
  %call4 = call i32 @wireesty(i32 %19, i32 %20, i32 %21, double %23)
  %sub5 = sub nsw i32 %18, %call4
  store i32 %sub5, i32* %t, align 4
  %24 = load i32, i32* %l, align 4
  %25 = load i32, i32* @spotXhash, align 4
  %sub6 = sub nsw i32 %24, %25
  %26 = load i32, i32* @spotSize, align 4
  %div = sdiv i32 %sub6, %26
  store i32 %div, i32* %lspot, align 4
  %27 = load i32, i32* %r, align 4
  %28 = load i32, i32* @spotXhash, align 4
  %sub7 = sub nsw i32 %27, %28
  %29 = load i32, i32* @spotSize, align 4
  %div8 = sdiv i32 %sub7, %29
  store i32 %div8, i32* %rspot, align 4
  %30 = load i32, i32* %b, align 4
  %31 = load i32, i32* @spotYhash, align 4
  %sub9 = sub nsw i32 %30, %31
  %32 = load i32, i32* @spotSize, align 4
  %div10 = sdiv i32 %sub9, %32
  store i32 %div10, i32* %bspot, align 4
  %33 = load i32, i32* %t, align 4
  %34 = load i32, i32* @spotYhash, align 4
  %sub11 = sub nsw i32 %33, %34
  %35 = load i32, i32* @spotSize, align 4
  %div12 = sdiv i32 %sub11, %35
  store i32 %div12, i32* %tspot, align 4
  %36 = load i32, i32* %lspot, align 4
  %add13 = add nsw i32 %36, 1
  store i32 %add13, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %rspot, align 4
  %cmp = icmp slt i32 %37, %38
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %x, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load i8**, i8*** @spots, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %40, i64 %idxprom
  %41 = load i8*, i8** %arrayidx, align 8
  %42 = load i32, i32* %bspot, align 4
  %idx.ext = sext i32 %42 to i64
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 %idx.ext
  store i8* %add.ptr, i8** %sarray, align 8
  %43 = load i32, i32* %bspot, align 4
  %add14 = add nsw i32 %43, 1
  store i32 %add14, i32* %y, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* %tspot, align 4
  %cmp16 = icmp slt i32 %44, %45
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %46 = load i8*, i8** %sarray, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %sarray, align 8
  %47 = load i8, i8* %incdec.ptr, align 1
  %dec = add i8 %47, -1
  store i8 %dec, i8* %incdec.ptr, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %48 = load i32, i32* %y, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %49 = load i32, i32* %x, align 4
  %inc19 = add nsw i32 %49, 1
  store i32 %inc19, i32* %x, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %50 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %orient = getelementptr inbounds %struct.cellbox, %struct.cellbox* %50, i32 0, i32 5
  %51 = load i32, i32* %orient, align 4
  %idxprom21 = sext i32 %51 to i64
  %52 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %config = getelementptr inbounds %struct.cellbox, %struct.cellbox* %52, i32 0, i32 21
  %arrayidx22 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %config, i32 0, i64 %idxprom21
  %53 = load %struct.tilebox*, %struct.tilebox** %arrayidx22, align 8
  store %struct.tilebox* %53, %struct.tilebox** %tileptr, align 8
  %54 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %xcenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 2
  %55 = load i32, i32* %xcenter, align 4
  store i32 %55, i32* %xc, align 4
  %56 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %ycenter = getelementptr inbounds %struct.cellbox, %struct.cellbox* %56, i32 0, i32 3
  %57 = load i32, i32* %ycenter, align 4
  store i32 %57, i32* %yc, align 4
  %58 = load i32, i32* %xc, align 4
  %59 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %left = getelementptr inbounds %struct.tilebox, %struct.tilebox* %59, i32 0, i32 9
  %60 = load i32, i32* %left, align 4
  %add23 = add nsw i32 %58, %60
  store i32 %add23, i32* %l, align 4
  %61 = load i32, i32* %xc, align 4
  %62 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %right = getelementptr inbounds %struct.tilebox, %struct.tilebox* %62, i32 0, i32 10
  %63 = load i32, i32* %right, align 4
  %add24 = add nsw i32 %61, %63
  store i32 %add24, i32* %r, align 4
  %64 = load i32, i32* %yc, align 4
  %65 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bottom = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i32 0, i32 11
  %66 = load i32, i32* %bottom, align 4
  %add25 = add nsw i32 %64, %66
  store i32 %add25, i32* %b, align 4
  %67 = load i32, i32* %yc, align 4
  %68 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %top26 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 12
  %69 = load i32, i32* %top26, align 4
  %add27 = add nsw i32 %67, %69
  store i32 %add27, i32* %t, align 4
  %70 = load i32, i32* %l, align 4
  %71 = load i32, i32* %b, align 4
  %72 = load i32, i32* %t, align 4
  %73 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %lweight28 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %73, i32 0, i32 1
  %74 = load double, double* %lweight28, align 8
  %call29 = call i32 @wireestx(i32 %70, i32 %71, i32 %72, double %74)
  %75 = load i32, i32* %l, align 4
  %sub30 = sub nsw i32 %75, %call29
  store i32 %sub30, i32* %l, align 4
  %76 = load i32, i32* %r, align 4
  %77 = load i32, i32* %b, align 4
  %78 = load i32, i32* %t, align 4
  %79 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %rweight31 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %79, i32 0, i32 2
  %80 = load double, double* %rweight31, align 8
  %call32 = call i32 @wireestx(i32 %76, i32 %77, i32 %78, double %80)
  %81 = load i32, i32* %r, align 4
  %add33 = add nsw i32 %81, %call32
  store i32 %add33, i32* %r, align 4
  %82 = load i32, i32* %b, align 4
  %83 = load i32, i32* %l, align 4
  %84 = load i32, i32* %r, align 4
  %85 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %bweight34 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %85, i32 0, i32 3
  %86 = load double, double* %bweight34, align 8
  %call35 = call i32 @wireesty(i32 %82, i32 %83, i32 %84, double %86)
  %87 = load i32, i32* %b, align 4
  %sub36 = sub nsw i32 %87, %call35
  store i32 %sub36, i32* %b, align 4
  %88 = load i32, i32* %t, align 4
  %89 = load i32, i32* %l, align 4
  %90 = load i32, i32* %r, align 4
  %91 = load %struct.tilebox*, %struct.tilebox** %tileptr, align 8
  %tweight37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %91, i32 0, i32 4
  %92 = load double, double* %tweight37, align 8
  %call38 = call i32 @wireesty(i32 %88, i32 %89, i32 %90, double %92)
  %93 = load i32, i32* %t, align 4
  %add39 = add nsw i32 %93, %call38
  store i32 %add39, i32* %t, align 4
  %94 = load i32, i32* %l, align 4
  %95 = load i32, i32* @spotXhash, align 4
  %sub40 = sub nsw i32 %94, %95
  %96 = load i32, i32* @spotSize, align 4
  %div41 = sdiv i32 %sub40, %96
  store i32 %div41, i32* %lspot, align 4
  %97 = load i32, i32* %r, align 4
  %98 = load i32, i32* @spotXhash, align 4
  %sub42 = sub nsw i32 %97, %98
  %99 = load i32, i32* @spotSize, align 4
  %div43 = sdiv i32 %sub42, %99
  store i32 %div43, i32* %rspot, align 4
  %100 = load i32, i32* %b, align 4
  %101 = load i32, i32* @spotYhash, align 4
  %sub44 = sub nsw i32 %100, %101
  %102 = load i32, i32* @spotSize, align 4
  %div45 = sdiv i32 %sub44, %102
  store i32 %div45, i32* %bspot, align 4
  %103 = load i32, i32* %t, align 4
  %104 = load i32, i32* @spotYhash, align 4
  %sub46 = sub nsw i32 %103, %104
  %105 = load i32, i32* @spotSize, align 4
  %div47 = sdiv i32 %sub46, %105
  store i32 %div47, i32* %tspot, align 4
  %106 = load i32, i32* %lspot, align 4
  %add48 = add nsw i32 %106, 1
  store i32 %add48, i32* %x, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.65, %for.end.20
  %107 = load i32, i32* %x, align 4
  %108 = load i32, i32* %rspot, align 4
  %cmp50 = icmp slt i32 %107, %108
  br i1 %cmp50, label %for.body.51, label %for.end.67

for.body.51:                                      ; preds = %for.cond.49
  %109 = load i32, i32* %x, align 4
  %idxprom52 = sext i32 %109 to i64
  %110 = load i8**, i8*** @spots, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %110, i64 %idxprom52
  %111 = load i8*, i8** %arrayidx53, align 8
  %112 = load i32, i32* %bspot, align 4
  %idx.ext54 = sext i32 %112 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %111, i64 %idx.ext54
  store i8* %add.ptr55, i8** %sarray, align 8
  %113 = load i32, i32* %bspot, align 4
  %add56 = add nsw i32 %113, 1
  store i32 %add56, i32* %y, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.62, %for.body.51
  %114 = load i32, i32* %y, align 4
  %115 = load i32, i32* %tspot, align 4
  %cmp58 = icmp slt i32 %114, %115
  br i1 %cmp58, label %for.body.59, label %for.end.64

for.body.59:                                      ; preds = %for.cond.57
  %116 = load i8*, i8** %sarray, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr60, i8** %sarray, align 8
  %117 = load i8, i8* %incdec.ptr60, align 1
  %inc61 = add i8 %117, 1
  store i8 %inc61, i8* %incdec.ptr60, align 1
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.59
  %118 = load i32, i32* %y, align 4
  %inc63 = add nsw i32 %118, 1
  store i32 %inc63, i32* %y, align 4
  br label %for.cond.57

for.end.64:                                       ; preds = %for.cond.57
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %119 = load i32, i32* %x, align 4
  %inc66 = add nsw i32 %119, 1
  store i32 %inc66, i32* %x, align 4
  br label %for.cond.49

for.end.67:                                       ; preds = %for.cond.49
  ret void
}

declare i32 @wireestx(i32, i32, i32, double) #1

declare i32 @wireesty(i32, i32, i32, double) #1

declare i32 @usite2(i32, i32, i32, i32, i32, i32) #1

declare i32 @usiteo2(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
