; ModuleID = './MultiSource.Benchmarks.Prolangs-C/158.TimberWolfMC.findnodes.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dlink2 = type { i32, %struct.dlink2*, %struct.dlink2* }

@numRects = external global i32, align 4
@rectArray = external global %struct.rect*, align 8
@Hlist = external global %struct.dlink1*, align 8
@edgeList = external global %struct.edgebox*, align 8
@Vroot = external global %struct.tnode*, align 8
@Vptrs = external global %struct.dlink1**, align 8
@Hroot = external global %struct.tnode*, align 8
@Hptrs = external global %struct.dlink1**, align 8
@hRectRoot = external global %struct.tnode*, align 8
@vRectRoot = external global %struct.tnode*, align 8
@fpdebug = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [26 x i8] c"rect Node: %d  at: %d %d \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"  width:%d  height:%d\0A\00", align 1
@doPlacement = external global i32, align 4
@fpNodes = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"L NC;\0A94 X%d %d %d;\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@HRlist = external global %struct.dlink2*, align 8
@VRlist = external global %struct.dlink2*, align 8
@LEroot = external global %struct.tnode*, align 8
@LEptrs = external global %struct.dlink2**, align 8
@BEroot = external global %struct.tnode*, align 8
@BEptrs = external global %struct.dlink2**, align 8

; Function Attrs: nounwind uwtable
define void @findnodes() #0 {
entry:
  %hptr = alloca %struct.dlink1*, align 8
  %vrptr = alloca %struct.dlink1*, align 8
  %htptr = alloca %struct.dlink1*, align 8
  %vlptr = alloca %struct.dlink1*, align 8
  %v1ptr = alloca %struct.dlink1*, align 8
  %v2ptr = alloca %struct.dlink1*, align 8
  %hedge = alloca i32, align 4
  %hstart = alloca i32, align 4
  %hend = alloca i32, align 4
  %hloc = alloca i32, align 4
  %htedge = alloca i32, align 4
  %htstart = alloca i32, align 4
  %htend = alloca i32, align 4
  %htloc = alloca i32, align 4
  %ht1 = alloca i32, align 4
  %ht2 = alloca i32, align 4
  %vrend = alloca i32, align 4
  %vrstart = alloca i32, align 4
  %vrloc = alloca i32, align 4
  %vredge = alloca i32, align 4
  %vlend = alloca i32, align 4
  %vlstart = alloca i32, align 4
  %vlloc = alloca i32, align 4
  %vledge = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %last = alloca i32, align 4
  %x = alloca i32, align 4
  %bb = alloca i32, align 4
  %tt = alloca i32, align 4
  %done = alloca i32, align 4
  %check = alloca i32, align 4
  %lt = alloca i32, align 4
  %rt = alloca i32, align 4
  store i32 0, i32* @numRects, align 4
  %call = call noalias i8* @malloc(i64 5200) #3
  %0 = bitcast i8* %call to %struct.rect*
  store %struct.rect* %0, %struct.rect** @rectArray, align 8
  store i32 -100000, i32* %last, align 4
  %1 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  store %struct.dlink1* %1, %struct.dlink1** %hptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.594, %entry
  %2 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %cmp = icmp ne %struct.dlink1* %2, null
  br i1 %cmp, label %for.body, label %for.end.596

for.body:                                         ; preds = %for.cond
  %3 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %edge = getelementptr inbounds %struct.dlink1, %struct.dlink1* %3, i32 0, i32 0
  %4 = load i32, i32* %edge, align 4
  store i32 %4, i32* %hedge, align 4
  %5 = load i32, i32* %hedge, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx = getelementptr inbounds %struct.edgebox, %struct.edgebox* %6, i64 %idxprom
  %UorR = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx, i32 0, i32 5
  %7 = load i32, i32* %UorR, align 4
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.594

if.end:                                           ; preds = %for.body
  %8 = load i32, i32* %hedge, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx3 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %9, i64 %idxprom2
  %start = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx3, i32 0, i32 1
  %10 = load i32, i32* %start, align 4
  store i32 %10, i32* %hstart, align 4
  %11 = load i32, i32* %hedge, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx5 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %12, i64 %idxprom4
  %end = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx5, i32 0, i32 2
  %13 = load i32, i32* %end, align 4
  store i32 %13, i32* %hend, align 4
  %14 = load i32, i32* %hedge, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx7 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %15, i64 %idxprom6
  %loc = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx7, i32 0, i32 3
  %16 = load i32, i32* %loc, align 4
  store i32 %16, i32* %hloc, align 4
  %17 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %18 = load i32, i32* %hstart, align 4
  %call8 = call i32 @tprop(%struct.tnode* %17, i32 %18)
  %idxprom9 = sext i32 %call8 to i64
  %19 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx10 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %19, i64 %idxprom9
  %20 = load %struct.dlink1*, %struct.dlink1** %arrayidx10, align 8
  store %struct.dlink1* %20, %struct.dlink1** %vlptr, align 8
  store i32 -100000, i32* %vrloc, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.591, %if.end
  %21 = load %struct.dlink1*, %struct.dlink1** %vlptr, align 8
  %cmp12 = icmp ne %struct.dlink1* %21, null
  br i1 %cmp12, label %for.body.13, label %for.end.593

for.body.13:                                      ; preds = %for.cond.11
  %22 = load %struct.dlink1*, %struct.dlink1** %vlptr, align 8
  %edge14 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %22, i32 0, i32 0
  %23 = load i32, i32* %edge14, align 4
  store i32 %23, i32* %vledge, align 4
  %24 = load i32, i32* %vledge, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx16 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %25, i64 %idxprom15
  %UorR17 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx16, i32 0, i32 5
  %26 = load i32, i32* %UorR17, align 4
  %cmp18 = icmp sgt i32 %26, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.13
  br label %for.inc.591

if.end.20:                                        ; preds = %for.body.13
  %27 = load i32, i32* %vledge, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx22 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %28, i64 %idxprom21
  %loc23 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx22, i32 0, i32 3
  %29 = load i32, i32* %loc23, align 4
  store i32 %29, i32* %vlloc, align 4
  %30 = load i32, i32* %vlloc, align 4
  %31 = load i32, i32* %hend, align 4
  %cmp24 = icmp sgt i32 %30, %31
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  br label %for.end.593

if.end.26:                                        ; preds = %if.end.20
  %32 = load i32, i32* %vlloc, align 4
  %33 = load i32, i32* %vrloc, align 4
  %cmp27 = icmp slt i32 %32, %33
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  br label %for.inc.591

if.end.29:                                        ; preds = %if.end.26
  %34 = load i32, i32* %vledge, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx31 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %35, i64 %idxprom30
  %start32 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx31, i32 0, i32 1
  %36 = load i32, i32* %start32, align 4
  store i32 %36, i32* %vlstart, align 4
  %37 = load i32, i32* %vledge, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx34 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %38, i64 %idxprom33
  %end35 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx34, i32 0, i32 2
  %39 = load i32, i32* %end35, align 4
  store i32 %39, i32* %vlend, align 4
  %40 = load i32, i32* %vlstart, align 4
  %41 = load i32, i32* %hloc, align 4
  %cmp36 = icmp sgt i32 %40, %41
  br i1 %cmp36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %42 = load i32, i32* %vlend, align 4
  %43 = load i32, i32* %hloc, align 4
  %cmp37 = icmp slt i32 %42, %43
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.29
  br label %for.inc.591

if.end.39:                                        ; preds = %lor.lhs.false
  %44 = load i32, i32* %hedge, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx41 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %45, i64 %idxprom40
  %fixed = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx41, i32 0, i32 6
  %46 = load i32, i32* %fixed, align 4
  %cmp42 = icmp eq i32 %46, 0
  br i1 %cmp42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.end.39
  %47 = load i32, i32* %vledge, align 4
  %idxprom44 = sext i32 %47 to i64
  %48 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx45 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %48, i64 %idxprom44
  %fixed46 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx45, i32 0, i32 6
  %49 = load i32, i32* %fixed46, align 4
  %cmp47 = icmp eq i32 %49, 0
  br i1 %cmp47, label %if.end.55, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.then.43
  %50 = load i32, i32* %vledge, align 4
  %idxprom49 = sext i32 %50 to i64
  %51 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx50 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %51, i64 %idxprom49
  %fixed51 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx50, i32 0, i32 6
  %52 = load i32, i32* %fixed51, align 4
  %cmp52 = icmp eq i32 %52, 1
  br i1 %cmp52, label %land.lhs.true, label %if.then.54

land.lhs.true:                                    ; preds = %lor.lhs.false.48
  %53 = load i32, i32* %vlloc, align 4
  %54 = load i32, i32* %hstart, align 4
  %cmp53 = icmp eq i32 %53, %54
  br i1 %cmp53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %land.lhs.true, %lor.lhs.false.48
  br label %for.inc.591

if.end.55:                                        ; preds = %land.lhs.true, %if.then.43
  br label %if.end.64

if.else:                                          ; preds = %if.end.39
  %55 = load i32, i32* %vledge, align 4
  %idxprom56 = sext i32 %55 to i64
  %56 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx57 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %56, i64 %idxprom56
  %fixed58 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx57, i32 0, i32 6
  %57 = load i32, i32* %fixed58, align 4
  %cmp59 = icmp eq i32 %57, 1
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.63

land.lhs.true.60:                                 ; preds = %if.else
  %58 = load i32, i32* %vlend, align 4
  %59 = load i32, i32* %hloc, align 4
  %cmp61 = icmp eq i32 %58, %59
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %land.lhs.true.60
  br label %for.inc.591

if.end.63:                                        ; preds = %land.lhs.true.60, %if.else
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.55
  %60 = load i32, i32* %hloc, align 4
  store i32 %60, i32* %b, align 4
  %61 = load i32, i32* %vlloc, align 4
  store i32 %61, i32* %l, align 4
  %62 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %63 = load i32, i32* %hstart, align 4
  %call65 = call i32 @tprop(%struct.tnode* %62, i32 %63)
  %idxprom66 = sext i32 %call65 to i64
  %64 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx67 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %64, i64 %idxprom66
  %65 = load %struct.dlink1*, %struct.dlink1** %arrayidx67, align 8
  store %struct.dlink1* %65, %struct.dlink1** %vrptr, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.588, %if.end.64
  %66 = load %struct.dlink1*, %struct.dlink1** %vrptr, align 8
  %cmp69 = icmp ne %struct.dlink1* %66, null
  br i1 %cmp69, label %for.body.70, label %for.end.590

for.body.70:                                      ; preds = %for.cond.68
  %67 = load %struct.dlink1*, %struct.dlink1** %vrptr, align 8
  %edge71 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %67, i32 0, i32 0
  %68 = load i32, i32* %edge71, align 4
  store i32 %68, i32* %vredge, align 4
  %69 = load i32, i32* %vredge, align 4
  %idxprom72 = sext i32 %69 to i64
  %70 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx73 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %70, i64 %idxprom72
  %UorR74 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx73, i32 0, i32 5
  %71 = load i32, i32* %UorR74, align 4
  %cmp75 = icmp slt i32 %71, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %for.body.70
  br label %for.inc.588

if.end.77:                                        ; preds = %for.body.70
  %72 = load i32, i32* %vredge, align 4
  %idxprom78 = sext i32 %72 to i64
  %73 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx79 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %73, i64 %idxprom78
  %loc80 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx79, i32 0, i32 3
  %74 = load i32, i32* %loc80, align 4
  store i32 %74, i32* %vrloc, align 4
  %75 = load i32, i32* %vrloc, align 4
  %76 = load i32, i32* %vlloc, align 4
  %cmp81 = icmp sge i32 %75, %76
  br i1 %cmp81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %if.end.77
  br label %for.inc.588

if.end.83:                                        ; preds = %if.end.77
  %77 = load i32, i32* %vredge, align 4
  %idxprom84 = sext i32 %77 to i64
  %78 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx85 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %78, i64 %idxprom84
  %start86 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx85, i32 0, i32 1
  %79 = load i32, i32* %start86, align 4
  store i32 %79, i32* %vrstart, align 4
  %80 = load i32, i32* %vredge, align 4
  %idxprom87 = sext i32 %80 to i64
  %81 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx88 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %81, i64 %idxprom87
  %end89 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx88, i32 0, i32 2
  %82 = load i32, i32* %end89, align 4
  store i32 %82, i32* %vrend, align 4
  %83 = load i32, i32* %vrstart, align 4
  %84 = load i32, i32* %hloc, align 4
  %cmp90 = icmp sgt i32 %83, %84
  br i1 %cmp90, label %if.then.93, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.end.83
  %85 = load i32, i32* %vrend, align 4
  %86 = load i32, i32* %hloc, align 4
  %cmp92 = icmp slt i32 %85, %86
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %lor.lhs.false.91, %if.end.83
  br label %for.inc.588

if.end.94:                                        ; preds = %lor.lhs.false.91
  %87 = load i32, i32* %hedge, align 4
  %idxprom95 = sext i32 %87 to i64
  %88 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx96 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %88, i64 %idxprom95
  %fixed97 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx96, i32 0, i32 6
  %89 = load i32, i32* %fixed97, align 4
  %cmp98 = icmp eq i32 %89, 0
  br i1 %cmp98, label %if.then.99, label %if.else.113

if.then.99:                                       ; preds = %if.end.94
  %90 = load i32, i32* %vredge, align 4
  %idxprom100 = sext i32 %90 to i64
  %91 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx101 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %91, i64 %idxprom100
  %fixed102 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx101, i32 0, i32 6
  %92 = load i32, i32* %fixed102, align 4
  %cmp103 = icmp eq i32 %92, 0
  br i1 %cmp103, label %if.end.112, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %if.then.99
  %93 = load i32, i32* %vredge, align 4
  %idxprom105 = sext i32 %93 to i64
  %94 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx106 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %94, i64 %idxprom105
  %fixed107 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx106, i32 0, i32 6
  %95 = load i32, i32* %fixed107, align 4
  %cmp108 = icmp eq i32 %95, 1
  br i1 %cmp108, label %land.lhs.true.109, label %if.then.111

land.lhs.true.109:                                ; preds = %lor.lhs.false.104
  %96 = load i32, i32* %vrloc, align 4
  %97 = load i32, i32* %hend, align 4
  %cmp110 = icmp eq i32 %96, %97
  br i1 %cmp110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.109, %lor.lhs.false.104
  br label %for.inc.588

if.end.112:                                       ; preds = %land.lhs.true.109, %if.then.99
  br label %if.end.122

if.else.113:                                      ; preds = %if.end.94
  %98 = load i32, i32* %vredge, align 4
  %idxprom114 = sext i32 %98 to i64
  %99 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx115 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %99, i64 %idxprom114
  %fixed116 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx115, i32 0, i32 6
  %100 = load i32, i32* %fixed116, align 4
  %cmp117 = icmp eq i32 %100, 1
  br i1 %cmp117, label %land.lhs.true.118, label %if.end.121

land.lhs.true.118:                                ; preds = %if.else.113
  %101 = load i32, i32* %vrend, align 4
  %102 = load i32, i32* %hloc, align 4
  %cmp119 = icmp eq i32 %101, %102
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true.118
  br label %for.inc.588

if.end.121:                                       ; preds = %land.lhs.true.118, %if.else.113
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.112
  %103 = load i32, i32* %vrloc, align 4
  store i32 %103, i32* %r, align 4
  %104 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %105 = load i32, i32* %hloc, align 4
  %call123 = call i32 @tprop(%struct.tnode* %104, i32 %105)
  %idxprom124 = sext i32 %call123 to i64
  %106 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %arrayidx125 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %106, i64 %idxprom124
  %107 = load %struct.dlink1*, %struct.dlink1** %arrayidx125, align 8
  store %struct.dlink1* %107, %struct.dlink1** %htptr, align 8
  store i32 0, i32* %done, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc, %if.end.122
  %108 = load %struct.dlink1*, %struct.dlink1** %htptr, align 8
  %cmp127 = icmp ne %struct.dlink1* %108, null
  br i1 %cmp127, label %for.body.128, label %for.end

for.body.128:                                     ; preds = %for.cond.126
  %109 = load %struct.dlink1*, %struct.dlink1** %htptr, align 8
  %edge129 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %109, i32 0, i32 0
  %110 = load i32, i32* %edge129, align 4
  store i32 %110, i32* %htedge, align 4
  %111 = load i32, i32* %htedge, align 4
  %idxprom130 = sext i32 %111 to i64
  %112 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx131 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %112, i64 %idxprom130
  %UorR132 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx131, i32 0, i32 5
  %113 = load i32, i32* %UorR132, align 4
  %cmp133 = icmp sgt i32 %113, 0
  br i1 %cmp133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %for.body.128
  br label %for.inc

if.end.135:                                       ; preds = %for.body.128
  %114 = load i32, i32* %htedge, align 4
  %idxprom136 = sext i32 %114 to i64
  %115 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx137 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %115, i64 %idxprom136
  %loc138 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx137, i32 0, i32 3
  %116 = load i32, i32* %loc138, align 4
  store i32 %116, i32* %htloc, align 4
  %117 = load i32, i32* %htloc, align 4
  %118 = load i32, i32* %hloc, align 4
  %cmp139 = icmp sge i32 %117, %118
  br i1 %cmp139, label %if.end.141, label %if.then.140

if.then.140:                                      ; preds = %if.end.135
  br label %for.inc

if.end.141:                                       ; preds = %if.end.135
  %119 = load i32, i32* %htedge, align 4
  %idxprom142 = sext i32 %119 to i64
  %120 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx143 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %120, i64 %idxprom142
  %start144 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx143, i32 0, i32 1
  %121 = load i32, i32* %start144, align 4
  store i32 %121, i32* %htstart, align 4
  %122 = load i32, i32* %htedge, align 4
  %idxprom145 = sext i32 %122 to i64
  %123 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx146 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %123, i64 %idxprom145
  %end147 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx146, i32 0, i32 2
  %124 = load i32, i32* %end147, align 4
  store i32 %124, i32* %htend, align 4
  %125 = load i32, i32* %htstart, align 4
  %126 = load i32, i32* %r, align 4
  %cmp148 = icmp sgt i32 %125, %126
  br i1 %cmp148, label %if.then.151, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %if.end.141
  %127 = load i32, i32* %htend, align 4
  %128 = load i32, i32* %l, align 4
  %cmp150 = icmp slt i32 %127, %128
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %lor.lhs.false.149, %if.end.141
  br label %for.inc

if.end.152:                                       ; preds = %lor.lhs.false.149
  %129 = load i32, i32* %r, align 4
  %130 = load i32, i32* %l, align 4
  %cmp153 = icmp eq i32 %129, %130
  br i1 %cmp153, label %if.then.154, label %if.else.198

if.then.154:                                      ; preds = %if.end.152
  %131 = load i32, i32* %htstart, align 4
  %132 = load i32, i32* %l, align 4
  %cmp155 = icmp slt i32 %131, %132
  br i1 %cmp155, label %land.lhs.true.175, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %if.then.154
  %133 = load i32, i32* %htstart, align 4
  %134 = load i32, i32* %l, align 4
  %cmp157 = icmp eq i32 %133, %134
  br i1 %cmp157, label %land.lhs.true.158, label %if.end.197

land.lhs.true.158:                                ; preds = %lor.lhs.false.156
  %135 = load i32, i32* %htedge, align 4
  %idxprom159 = sext i32 %135 to i64
  %136 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx160 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %136, i64 %idxprom159
  %fixed161 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx160, i32 0, i32 6
  %137 = load i32, i32* %fixed161, align 4
  %cmp162 = icmp eq i32 %137, 0
  br i1 %cmp162, label %land.lhs.true.175, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %land.lhs.true.158
  %138 = load i32, i32* %htedge, align 4
  %idxprom164 = sext i32 %138 to i64
  %139 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx165 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %139, i64 %idxprom164
  %UorR166 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx165, i32 0, i32 5
  %140 = load i32, i32* %UorR166, align 4
  %cmp167 = icmp slt i32 %140, 0
  br i1 %cmp167, label %land.lhs.true.168, label %if.end.197

land.lhs.true.168:                                ; preds = %lor.lhs.false.163
  %141 = load i32, i32* %htedge, align 4
  %idxprom169 = sext i32 %141 to i64
  %142 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx170 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %142, i64 %idxprom169
  %nextEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx170, i32 0, i32 8
  %143 = load i32, i32* %nextEdge, align 4
  %idxprom171 = sext i32 %143 to i64
  %144 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx172 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %144, i64 %idxprom171
  %UorR173 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx172, i32 0, i32 5
  %145 = load i32, i32* %UorR173, align 4
  %cmp174 = icmp slt i32 %145, 0
  br i1 %cmp174, label %land.lhs.true.175, label %if.end.197

land.lhs.true.175:                                ; preds = %land.lhs.true.168, %land.lhs.true.158, %if.then.154
  %146 = load i32, i32* %htend, align 4
  %147 = load i32, i32* %r, align 4
  %cmp176 = icmp sgt i32 %146, %147
  br i1 %cmp176, label %if.then.196, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %land.lhs.true.175
  %148 = load i32, i32* %htend, align 4
  %149 = load i32, i32* %r, align 4
  %cmp178 = icmp eq i32 %148, %149
  br i1 %cmp178, label %land.lhs.true.179, label %if.end.197

land.lhs.true.179:                                ; preds = %lor.lhs.false.177
  %150 = load i32, i32* %htedge, align 4
  %idxprom180 = sext i32 %150 to i64
  %151 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx181 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %151, i64 %idxprom180
  %fixed182 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx181, i32 0, i32 6
  %152 = load i32, i32* %fixed182, align 4
  %cmp183 = icmp eq i32 %152, 0
  br i1 %cmp183, label %if.then.196, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %land.lhs.true.179
  %153 = load i32, i32* %htedge, align 4
  %idxprom185 = sext i32 %153 to i64
  %154 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx186 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %154, i64 %idxprom185
  %UorR187 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx186, i32 0, i32 5
  %155 = load i32, i32* %UorR187, align 4
  %cmp188 = icmp slt i32 %155, 0
  br i1 %cmp188, label %land.lhs.true.189, label %if.end.197

land.lhs.true.189:                                ; preds = %lor.lhs.false.184
  %156 = load i32, i32* %htedge, align 4
  %idxprom190 = sext i32 %156 to i64
  %157 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx191 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %157, i64 %idxprom190
  %prevEdge = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx191, i32 0, i32 7
  %158 = load i32, i32* %prevEdge, align 4
  %idxprom192 = sext i32 %158 to i64
  %159 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx193 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %159, i64 %idxprom192
  %UorR194 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx193, i32 0, i32 5
  %160 = load i32, i32* %UorR194, align 4
  %cmp195 = icmp sgt i32 %160, 0
  br i1 %cmp195, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %land.lhs.true.189, %land.lhs.true.179, %land.lhs.true.175
  %161 = load i32, i32* %htedge, align 4
  store i32 %161, i32* %ht2, align 4
  store i32 %161, i32* %ht1, align 4
  store i32 4, i32* %done, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %land.lhs.true.189, %lor.lhs.false.184, %lor.lhs.false.177, %land.lhs.true.168, %lor.lhs.false.163, %lor.lhs.false.156
  br label %if.end.348

if.else.198:                                      ; preds = %if.end.152
  %162 = load i32, i32* %done, align 4
  %cmp199 = icmp eq i32 %162, 0
  br i1 %cmp199, label %if.then.200, label %if.end.265

if.then.200:                                      ; preds = %if.else.198
  %163 = load i32, i32* %htstart, align 4
  %164 = load i32, i32* %l, align 4
  %cmp201 = icmp slt i32 %163, %164
  br i1 %cmp201, label %land.lhs.true.222, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %if.then.200
  %165 = load i32, i32* %htstart, align 4
  %166 = load i32, i32* %l, align 4
  %cmp203 = icmp eq i32 %165, %166
  br i1 %cmp203, label %land.lhs.true.204, label %if.end.264

land.lhs.true.204:                                ; preds = %lor.lhs.false.202
  %167 = load i32, i32* %htedge, align 4
  %idxprom205 = sext i32 %167 to i64
  %168 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx206 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %168, i64 %idxprom205
  %fixed207 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx206, i32 0, i32 6
  %169 = load i32, i32* %fixed207, align 4
  %cmp208 = icmp eq i32 %169, 0
  br i1 %cmp208, label %land.lhs.true.222, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %land.lhs.true.204
  %170 = load i32, i32* %htedge, align 4
  %idxprom210 = sext i32 %170 to i64
  %171 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx211 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %171, i64 %idxprom210
  %UorR212 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx211, i32 0, i32 5
  %172 = load i32, i32* %UorR212, align 4
  %cmp213 = icmp slt i32 %172, 0
  br i1 %cmp213, label %land.lhs.true.214, label %if.end.264

land.lhs.true.214:                                ; preds = %lor.lhs.false.209
  %173 = load i32, i32* %htedge, align 4
  %idxprom215 = sext i32 %173 to i64
  %174 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx216 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %174, i64 %idxprom215
  %nextEdge217 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx216, i32 0, i32 8
  %175 = load i32, i32* %nextEdge217, align 4
  %idxprom218 = sext i32 %175 to i64
  %176 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx219 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %176, i64 %idxprom218
  %UorR220 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx219, i32 0, i32 5
  %177 = load i32, i32* %UorR220, align 4
  %cmp221 = icmp slt i32 %177, 0
  br i1 %cmp221, label %land.lhs.true.222, label %if.end.264

land.lhs.true.222:                                ; preds = %land.lhs.true.214, %land.lhs.true.204, %if.then.200
  %178 = load i32, i32* %htend, align 4
  %179 = load i32, i32* %l, align 4
  %cmp223 = icmp sgt i32 %178, %179
  br i1 %cmp223, label %if.then.231, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %land.lhs.true.222
  %180 = load i32, i32* %htend, align 4
  %181 = load i32, i32* %l, align 4
  %cmp225 = icmp eq i32 %180, %181
  br i1 %cmp225, label %land.lhs.true.226, label %if.end.264

land.lhs.true.226:                                ; preds = %lor.lhs.false.224
  %182 = load i32, i32* %htedge, align 4
  %idxprom227 = sext i32 %182 to i64
  %183 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx228 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %183, i64 %idxprom227
  %fixed229 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx228, i32 0, i32 6
  %184 = load i32, i32* %fixed229, align 4
  %cmp230 = icmp eq i32 %184, 0
  br i1 %cmp230, label %if.then.231, label %if.end.264

if.then.231:                                      ; preds = %land.lhs.true.226, %land.lhs.true.222
  %185 = load i32, i32* %htstart, align 4
  %186 = load i32, i32* %r, align 4
  %cmp232 = icmp slt i32 %185, %186
  br i1 %cmp232, label %land.lhs.true.240, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %if.then.231
  %187 = load i32, i32* %htstart, align 4
  %188 = load i32, i32* %r, align 4
  %cmp234 = icmp eq i32 %187, %188
  br i1 %cmp234, label %land.lhs.true.235, label %if.end.263

land.lhs.true.235:                                ; preds = %lor.lhs.false.233
  %189 = load i32, i32* %htedge, align 4
  %idxprom236 = sext i32 %189 to i64
  %190 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx237 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %190, i64 %idxprom236
  %fixed238 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx237, i32 0, i32 6
  %191 = load i32, i32* %fixed238, align 4
  %cmp239 = icmp eq i32 %191, 0
  br i1 %cmp239, label %land.lhs.true.240, label %if.end.263

land.lhs.true.240:                                ; preds = %land.lhs.true.235, %if.then.231
  %192 = load i32, i32* %htend, align 4
  %193 = load i32, i32* %r, align 4
  %cmp241 = icmp sgt i32 %192, %193
  br i1 %cmp241, label %if.then.262, label %lor.lhs.false.242

lor.lhs.false.242:                                ; preds = %land.lhs.true.240
  %194 = load i32, i32* %htend, align 4
  %195 = load i32, i32* %r, align 4
  %cmp243 = icmp eq i32 %194, %195
  br i1 %cmp243, label %land.lhs.true.244, label %if.end.263

land.lhs.true.244:                                ; preds = %lor.lhs.false.242
  %196 = load i32, i32* %htedge, align 4
  %idxprom245 = sext i32 %196 to i64
  %197 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx246 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %197, i64 %idxprom245
  %fixed247 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx246, i32 0, i32 6
  %198 = load i32, i32* %fixed247, align 4
  %cmp248 = icmp eq i32 %198, 0
  br i1 %cmp248, label %if.then.262, label %lor.lhs.false.249

lor.lhs.false.249:                                ; preds = %land.lhs.true.244
  %199 = load i32, i32* %htedge, align 4
  %idxprom250 = sext i32 %199 to i64
  %200 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx251 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %200, i64 %idxprom250
  %UorR252 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx251, i32 0, i32 5
  %201 = load i32, i32* %UorR252, align 4
  %cmp253 = icmp slt i32 %201, 0
  br i1 %cmp253, label %land.lhs.true.254, label %if.end.263

land.lhs.true.254:                                ; preds = %lor.lhs.false.249
  %202 = load i32, i32* %htedge, align 4
  %idxprom255 = sext i32 %202 to i64
  %203 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx256 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %203, i64 %idxprom255
  %prevEdge257 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx256, i32 0, i32 7
  %204 = load i32, i32* %prevEdge257, align 4
  %idxprom258 = sext i32 %204 to i64
  %205 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx259 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %205, i64 %idxprom258
  %UorR260 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx259, i32 0, i32 5
  %206 = load i32, i32* %UorR260, align 4
  %cmp261 = icmp sgt i32 %206, 0
  br i1 %cmp261, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %land.lhs.true.254, %land.lhs.true.244, %land.lhs.true.240
  %207 = load i32, i32* %htedge, align 4
  store i32 %207, i32* %ht2, align 4
  store i32 %207, i32* %ht1, align 4
  store i32 4, i32* %done, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %land.lhs.true.254, %lor.lhs.false.249, %lor.lhs.false.242, %land.lhs.true.235, %lor.lhs.false.233
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %land.lhs.true.226, %lor.lhs.false.224, %land.lhs.true.214, %lor.lhs.false.209, %lor.lhs.false.202
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.else.198
  %208 = load i32, i32* %done, align 4
  %cmp266 = icmp eq i32 %208, 1
  br i1 %cmp266, label %if.then.269, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %if.end.265
  %209 = load i32, i32* %done, align 4
  %cmp268 = icmp eq i32 %209, 0
  br i1 %cmp268, label %if.then.269, label %if.end.306

if.then.269:                                      ; preds = %lor.lhs.false.267, %if.end.265
  %210 = load i32, i32* %htstart, align 4
  %211 = load i32, i32* %r, align 4
  %cmp270 = icmp slt i32 %210, %211
  br i1 %cmp270, label %land.lhs.true.278, label %lor.lhs.false.271

lor.lhs.false.271:                                ; preds = %if.then.269
  %212 = load i32, i32* %htstart, align 4
  %213 = load i32, i32* %r, align 4
  %cmp272 = icmp eq i32 %212, %213
  br i1 %cmp272, label %land.lhs.true.273, label %if.end.305

land.lhs.true.273:                                ; preds = %lor.lhs.false.271
  %214 = load i32, i32* %htedge, align 4
  %idxprom274 = sext i32 %214 to i64
  %215 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx275 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %215, i64 %idxprom274
  %fixed276 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx275, i32 0, i32 6
  %216 = load i32, i32* %fixed276, align 4
  %cmp277 = icmp eq i32 %216, 0
  br i1 %cmp277, label %land.lhs.true.278, label %if.end.305

land.lhs.true.278:                                ; preds = %land.lhs.true.273, %if.then.269
  %217 = load i32, i32* %htend, align 4
  %218 = load i32, i32* %r, align 4
  %cmp279 = icmp sgt i32 %217, %218
  br i1 %cmp279, label %if.then.300, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %land.lhs.true.278
  %219 = load i32, i32* %htend, align 4
  %220 = load i32, i32* %r, align 4
  %cmp281 = icmp eq i32 %219, %220
  br i1 %cmp281, label %land.lhs.true.282, label %if.end.305

land.lhs.true.282:                                ; preds = %lor.lhs.false.280
  %221 = load i32, i32* %htedge, align 4
  %idxprom283 = sext i32 %221 to i64
  %222 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx284 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %222, i64 %idxprom283
  %fixed285 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx284, i32 0, i32 6
  %223 = load i32, i32* %fixed285, align 4
  %cmp286 = icmp eq i32 %223, 0
  br i1 %cmp286, label %if.then.300, label %lor.lhs.false.287

lor.lhs.false.287:                                ; preds = %land.lhs.true.282
  %224 = load i32, i32* %htedge, align 4
  %idxprom288 = sext i32 %224 to i64
  %225 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx289 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %225, i64 %idxprom288
  %UorR290 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx289, i32 0, i32 5
  %226 = load i32, i32* %UorR290, align 4
  %cmp291 = icmp slt i32 %226, 0
  br i1 %cmp291, label %land.lhs.true.292, label %if.end.305

land.lhs.true.292:                                ; preds = %lor.lhs.false.287
  %227 = load i32, i32* %htedge, align 4
  %idxprom293 = sext i32 %227 to i64
  %228 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx294 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %228, i64 %idxprom293
  %prevEdge295 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx294, i32 0, i32 7
  %229 = load i32, i32* %prevEdge295, align 4
  %idxprom296 = sext i32 %229 to i64
  %230 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx297 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %230, i64 %idxprom296
  %UorR298 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx297, i32 0, i32 5
  %231 = load i32, i32* %UorR298, align 4
  %cmp299 = icmp sgt i32 %231, 0
  br i1 %cmp299, label %if.then.300, label %if.end.305

if.then.300:                                      ; preds = %land.lhs.true.292, %land.lhs.true.282, %land.lhs.true.278
  %232 = load i32, i32* %htedge, align 4
  store i32 %232, i32* %ht2, align 4
  %233 = load i32, i32* %done, align 4
  %cmp301 = icmp eq i32 %233, 1
  br i1 %cmp301, label %if.then.302, label %if.else.303

if.then.302:                                      ; preds = %if.then.300
  store i32 3, i32* %done, align 4
  br label %if.end.304

if.else.303:                                      ; preds = %if.then.300
  store i32 2, i32* %done, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.303, %if.then.302
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %land.lhs.true.292, %lor.lhs.false.287, %lor.lhs.false.280, %land.lhs.true.273, %lor.lhs.false.271
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %lor.lhs.false.267
  %234 = load i32, i32* %done, align 4
  %cmp307 = icmp eq i32 %234, 2
  br i1 %cmp307, label %if.then.310, label %lor.lhs.false.308

lor.lhs.false.308:                                ; preds = %if.end.306
  %235 = load i32, i32* %done, align 4
  %cmp309 = icmp eq i32 %235, 0
  br i1 %cmp309, label %if.then.310, label %if.end.347

if.then.310:                                      ; preds = %lor.lhs.false.308, %if.end.306
  %236 = load i32, i32* %htstart, align 4
  %237 = load i32, i32* %l, align 4
  %cmp311 = icmp slt i32 %236, %237
  br i1 %cmp311, label %land.lhs.true.332, label %lor.lhs.false.312

lor.lhs.false.312:                                ; preds = %if.then.310
  %238 = load i32, i32* %htstart, align 4
  %239 = load i32, i32* %l, align 4
  %cmp313 = icmp eq i32 %238, %239
  br i1 %cmp313, label %land.lhs.true.314, label %if.end.346

land.lhs.true.314:                                ; preds = %lor.lhs.false.312
  %240 = load i32, i32* %htedge, align 4
  %idxprom315 = sext i32 %240 to i64
  %241 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx316 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %241, i64 %idxprom315
  %fixed317 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx316, i32 0, i32 6
  %242 = load i32, i32* %fixed317, align 4
  %cmp318 = icmp eq i32 %242, 0
  br i1 %cmp318, label %land.lhs.true.332, label %lor.lhs.false.319

lor.lhs.false.319:                                ; preds = %land.lhs.true.314
  %243 = load i32, i32* %htedge, align 4
  %idxprom320 = sext i32 %243 to i64
  %244 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx321 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %244, i64 %idxprom320
  %UorR322 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx321, i32 0, i32 5
  %245 = load i32, i32* %UorR322, align 4
  %cmp323 = icmp slt i32 %245, 0
  br i1 %cmp323, label %land.lhs.true.324, label %if.end.346

land.lhs.true.324:                                ; preds = %lor.lhs.false.319
  %246 = load i32, i32* %htedge, align 4
  %idxprom325 = sext i32 %246 to i64
  %247 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx326 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %247, i64 %idxprom325
  %nextEdge327 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx326, i32 0, i32 8
  %248 = load i32, i32* %nextEdge327, align 4
  %idxprom328 = sext i32 %248 to i64
  %249 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx329 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %249, i64 %idxprom328
  %UorR330 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx329, i32 0, i32 5
  %250 = load i32, i32* %UorR330, align 4
  %cmp331 = icmp slt i32 %250, 0
  br i1 %cmp331, label %land.lhs.true.332, label %if.end.346

land.lhs.true.332:                                ; preds = %land.lhs.true.324, %land.lhs.true.314, %if.then.310
  %251 = load i32, i32* %htend, align 4
  %252 = load i32, i32* %l, align 4
  %cmp333 = icmp sgt i32 %251, %252
  br i1 %cmp333, label %if.then.341, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %land.lhs.true.332
  %253 = load i32, i32* %htend, align 4
  %254 = load i32, i32* %l, align 4
  %cmp335 = icmp eq i32 %253, %254
  br i1 %cmp335, label %land.lhs.true.336, label %if.end.346

land.lhs.true.336:                                ; preds = %lor.lhs.false.334
  %255 = load i32, i32* %htedge, align 4
  %idxprom337 = sext i32 %255 to i64
  %256 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx338 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %256, i64 %idxprom337
  %fixed339 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx338, i32 0, i32 6
  %257 = load i32, i32* %fixed339, align 4
  %cmp340 = icmp eq i32 %257, 0
  br i1 %cmp340, label %if.then.341, label %if.end.346

if.then.341:                                      ; preds = %land.lhs.true.336, %land.lhs.true.332
  %258 = load i32, i32* %htedge, align 4
  store i32 %258, i32* %ht1, align 4
  %259 = load i32, i32* %done, align 4
  %cmp342 = icmp eq i32 %259, 2
  br i1 %cmp342, label %if.then.343, label %if.else.344

if.then.343:                                      ; preds = %if.then.341
  store i32 3, i32* %done, align 4
  br label %if.end.345

if.else.344:                                      ; preds = %if.then.341
  store i32 1, i32* %done, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.else.344, %if.then.343
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %land.lhs.true.336, %lor.lhs.false.334, %land.lhs.true.324, %lor.lhs.false.319, %lor.lhs.false.312
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %lor.lhs.false.308
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %if.end.197
  %260 = load i32, i32* %done, align 4
  %cmp349 = icmp slt i32 %260, 3
  br i1 %cmp349, label %if.then.350, label %if.else.351

if.then.350:                                      ; preds = %if.end.348
  br label %for.inc

if.else.351:                                      ; preds = %if.end.348
  br label %for.end

for.inc:                                          ; preds = %if.then.350, %if.then.151, %if.then.140, %if.then.134
  %261 = load %struct.dlink1*, %struct.dlink1** %htptr, align 8
  %next = getelementptr inbounds %struct.dlink1, %struct.dlink1* %261, i32 0, i32 2
  %262 = load %struct.dlink1*, %struct.dlink1** %next, align 8
  store %struct.dlink1* %262, %struct.dlink1** %htptr, align 8
  br label %for.cond.126

for.end:                                          ; preds = %if.else.351, %for.cond.126
  %263 = load i32, i32* %done, align 4
  %cmp352 = icmp slt i32 %263, 3
  br i1 %cmp352, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %for.end
  br label %for.end.590

if.end.354:                                       ; preds = %for.end
  %264 = load i32, i32* %htloc, align 4
  store i32 %264, i32* %t, align 4
  %265 = load i32, i32* %ht1, align 4
  %idxprom355 = sext i32 %265 to i64
  %266 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx356 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %266, i64 %idxprom355
  %loc357 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx356, i32 0, i32 3
  %267 = load i32, i32* %loc357, align 4
  %268 = load i32, i32* %ht2, align 4
  %idxprom358 = sext i32 %268 to i64
  %269 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx359 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %269, i64 %idxprom358
  %loc360 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx359, i32 0, i32 3
  %270 = load i32, i32* %loc360, align 4
  %cmp361 = icmp slt i32 %267, %270
  br i1 %cmp361, label %if.then.362, label %if.else.369

if.then.362:                                      ; preds = %if.end.354
  %271 = load i32, i32* %ht2, align 4
  %idxprom363 = sext i32 %271 to i64
  %272 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx364 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %272, i64 %idxprom363
  %start365 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx364, i32 0, i32 1
  %273 = load i32, i32* %start365, align 4
  store i32 %273, i32* %lt, align 4
  %274 = load i32, i32* %ht2, align 4
  %idxprom366 = sext i32 %274 to i64
  %275 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx367 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %275, i64 %idxprom366
  %end368 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx367, i32 0, i32 2
  %276 = load i32, i32* %end368, align 4
  store i32 %276, i32* %rt, align 4
  br label %if.end.392

if.else.369:                                      ; preds = %if.end.354
  %277 = load i32, i32* %ht1, align 4
  %idxprom370 = sext i32 %277 to i64
  %278 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx371 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %278, i64 %idxprom370
  %loc372 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx371, i32 0, i32 3
  %279 = load i32, i32* %loc372, align 4
  %280 = load i32, i32* %ht2, align 4
  %idxprom373 = sext i32 %280 to i64
  %281 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx374 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %281, i64 %idxprom373
  %loc375 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx374, i32 0, i32 3
  %282 = load i32, i32* %loc375, align 4
  %cmp376 = icmp sgt i32 %279, %282
  br i1 %cmp376, label %if.then.377, label %if.else.384

if.then.377:                                      ; preds = %if.else.369
  %283 = load i32, i32* %ht1, align 4
  %idxprom378 = sext i32 %283 to i64
  %284 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx379 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %284, i64 %idxprom378
  %start380 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx379, i32 0, i32 1
  %285 = load i32, i32* %start380, align 4
  store i32 %285, i32* %lt, align 4
  %286 = load i32, i32* %ht1, align 4
  %idxprom381 = sext i32 %286 to i64
  %287 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx382 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %287, i64 %idxprom381
  %end383 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx382, i32 0, i32 2
  %288 = load i32, i32* %end383, align 4
  store i32 %288, i32* %rt, align 4
  br label %if.end.391

if.else.384:                                      ; preds = %if.else.369
  %289 = load i32, i32* %ht1, align 4
  %idxprom385 = sext i32 %289 to i64
  %290 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx386 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %290, i64 %idxprom385
  %start387 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx386, i32 0, i32 1
  %291 = load i32, i32* %start387, align 4
  store i32 %291, i32* %lt, align 4
  %292 = load i32, i32* %ht2, align 4
  %idxprom388 = sext i32 %292 to i64
  %293 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx389 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %293, i64 %idxprom388
  %end390 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx389, i32 0, i32 2
  %294 = load i32, i32* %end390, align 4
  store i32 %294, i32* %rt, align 4
  br label %if.end.391

if.end.391:                                       ; preds = %if.else.384, %if.then.377
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.391, %if.then.362
  %295 = load i32, i32* %vlend, align 4
  %296 = load i32, i32* %t, align 4
  %cmp393 = icmp sle i32 %295, %296
  br i1 %cmp393, label %land.lhs.true.394, label %if.end.470

land.lhs.true.394:                                ; preds = %if.end.392
  %297 = load i32, i32* %lt, align 4
  %298 = load i32, i32* %l, align 4
  %cmp395 = icmp slt i32 %297, %298
  br i1 %cmp395, label %if.then.396, label %if.end.470

if.then.396:                                      ; preds = %land.lhs.true.394
  %299 = load i32, i32* %ht1, align 4
  %idxprom397 = sext i32 %299 to i64
  %300 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx398 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %300, i64 %idxprom397
  %fixed399 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx398, i32 0, i32 6
  %301 = load i32, i32* %fixed399, align 4
  store i32 %301, i32* %check, align 4
  %302 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %303 = load i32, i32* %l, align 4
  %call400 = call i32 @tprop(%struct.tnode* %302, i32 %303)
  %idxprom401 = sext i32 %call400 to i64
  %304 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx402 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %304, i64 %idxprom401
  %305 = load %struct.dlink1*, %struct.dlink1** %arrayidx402, align 8
  store %struct.dlink1* %305, %struct.dlink1** %v1ptr, align 8
  %306 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %edge403 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %306, i32 0, i32 0
  %307 = load i32, i32* %edge403, align 4
  %idxprom404 = sext i32 %307 to i64
  %308 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx405 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %308, i64 %idxprom404
  %loc406 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx405, i32 0, i32 3
  %309 = load i32, i32* %loc406, align 4
  store i32 %309, i32* %x, align 4
  %310 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %next407 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %310, i32 0, i32 2
  %311 = load %struct.dlink1*, %struct.dlink1** %next407, align 8
  store %struct.dlink1* %311, %struct.dlink1** %v1ptr, align 8
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.418, %if.then.396
  %312 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %cmp409 = icmp ne %struct.dlink1* %312, null
  br i1 %cmp409, label %for.body.410, label %for.end.420

for.body.410:                                     ; preds = %for.cond.408
  %313 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %edge411 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %313, i32 0, i32 0
  %314 = load i32, i32* %edge411, align 4
  %idxprom412 = sext i32 %314 to i64
  %315 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx413 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %315, i64 %idxprom412
  %loc414 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx413, i32 0, i32 3
  %316 = load i32, i32* %loc414, align 4
  %317 = load i32, i32* %x, align 4
  %cmp415 = icmp sgt i32 %316, %317
  br i1 %cmp415, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %for.body.410
  br label %for.end.420

if.end.417:                                       ; preds = %for.body.410
  br label %for.inc.418

for.inc.418:                                      ; preds = %if.end.417
  %318 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %next419 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %318, i32 0, i32 2
  %319 = load %struct.dlink1*, %struct.dlink1** %next419, align 8
  store %struct.dlink1* %319, %struct.dlink1** %v1ptr, align 8
  br label %for.cond.408

for.end.420:                                      ; preds = %if.then.416, %for.cond.408
  %320 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %prev = getelementptr inbounds %struct.dlink1, %struct.dlink1* %320, i32 0, i32 1
  %321 = load %struct.dlink1*, %struct.dlink1** %prev, align 8
  store %struct.dlink1* %321, %struct.dlink1** %v1ptr, align 8
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.467, %for.end.420
  %322 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %cmp422 = icmp ne %struct.dlink1* %322, null
  br i1 %cmp422, label %for.body.423, label %for.end.469

for.body.423:                                     ; preds = %for.cond.421
  %323 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %edge424 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %323, i32 0, i32 0
  %324 = load i32, i32* %edge424, align 4
  %idxprom425 = sext i32 %324 to i64
  %325 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx426 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %325, i64 %idxprom425
  %UorR427 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx426, i32 0, i32 5
  %326 = load i32, i32* %UorR427, align 4
  %cmp428 = icmp sgt i32 %326, 0
  br i1 %cmp428, label %if.then.429, label %if.end.430

if.then.429:                                      ; preds = %for.body.423
  br label %for.inc.467

if.end.430:                                       ; preds = %for.body.423
  %327 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %edge431 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %327, i32 0, i32 0
  %328 = load i32, i32* %edge431, align 4
  %idxprom432 = sext i32 %328 to i64
  %329 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx433 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %329, i64 %idxprom432
  %end434 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx433, i32 0, i32 2
  %330 = load i32, i32* %end434, align 4
  store i32 %330, i32* %tt, align 4
  %331 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %edge435 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %331, i32 0, i32 0
  %332 = load i32, i32* %edge435, align 4
  %idxprom436 = sext i32 %332 to i64
  %333 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx437 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %333, i64 %idxprom436
  %start438 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx437, i32 0, i32 1
  %334 = load i32, i32* %start438, align 4
  store i32 %334, i32* %bb, align 4
  %335 = load i32, i32* %bb, align 4
  %336 = load i32, i32* %t, align 4
  %cmp439 = icmp sgt i32 %335, %336
  br i1 %cmp439, label %if.then.442, label %lor.lhs.false.440

lor.lhs.false.440:                                ; preds = %if.end.430
  %337 = load i32, i32* %tt, align 4
  %338 = load i32, i32* %t, align 4
  %cmp441 = icmp slt i32 %337, %338
  br i1 %cmp441, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %lor.lhs.false.440, %if.end.430
  br label %for.inc.467

if.end.443:                                       ; preds = %lor.lhs.false.440
  %339 = load i32, i32* %check, align 4
  %tobool = icmp ne i32 %339, 0
  br i1 %tobool, label %if.then.444, label %if.else.450

if.then.444:                                      ; preds = %if.end.443
  %340 = load i32, i32* %bb, align 4
  %341 = load i32, i32* %t, align 4
  %cmp445 = icmp eq i32 %340, %341
  br i1 %cmp445, label %land.lhs.true.446, label %if.end.449

land.lhs.true.446:                                ; preds = %if.then.444
  %342 = load i32, i32* %tt, align 4
  %343 = load i32, i32* %bb, align 4
  %cmp447 = icmp sgt i32 %342, %343
  br i1 %cmp447, label %if.then.448, label %if.end.449

if.then.448:                                      ; preds = %land.lhs.true.446
  br label %for.inc.467

if.end.449:                                       ; preds = %land.lhs.true.446, %if.then.444
  br label %if.end.462

if.else.450:                                      ; preds = %if.end.443
  %344 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %edge451 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %344, i32 0, i32 0
  %345 = load i32, i32* %edge451, align 4
  %idxprom452 = sext i32 %345 to i64
  %346 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx453 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %346, i64 %idxprom452
  %fixed454 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx453, i32 0, i32 6
  %347 = load i32, i32* %fixed454, align 4
  %cmp455 = icmp eq i32 %347, 1
  br i1 %cmp455, label %land.lhs.true.456, label %if.end.461

land.lhs.true.456:                                ; preds = %if.else.450
  %348 = load i32, i32* %bb, align 4
  %349 = load i32, i32* %t, align 4
  %cmp457 = icmp eq i32 %348, %349
  br i1 %cmp457, label %if.then.460, label %lor.lhs.false.458

lor.lhs.false.458:                                ; preds = %land.lhs.true.456
  %350 = load i32, i32* %tt, align 4
  %351 = load i32, i32* %t, align 4
  %cmp459 = icmp eq i32 %350, %351
  br i1 %cmp459, label %if.then.460, label %if.end.461

if.then.460:                                      ; preds = %lor.lhs.false.458, %land.lhs.true.456
  br label %for.inc.467

if.end.461:                                       ; preds = %lor.lhs.false.458, %if.else.450
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.461, %if.end.449
  %352 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %edge463 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %352, i32 0, i32 0
  %353 = load i32, i32* %edge463, align 4
  %idxprom464 = sext i32 %353 to i64
  %354 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx465 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %354, i64 %idxprom464
  %loc466 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx465, i32 0, i32 3
  %355 = load i32, i32* %loc466, align 4
  store i32 %355, i32* %l, align 4
  br label %for.end.469

for.inc.467:                                      ; preds = %if.then.460, %if.then.448, %if.then.442, %if.then.429
  %356 = load %struct.dlink1*, %struct.dlink1** %v1ptr, align 8
  %prev468 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %356, i32 0, i32 1
  %357 = load %struct.dlink1*, %struct.dlink1** %prev468, align 8
  store %struct.dlink1* %357, %struct.dlink1** %v1ptr, align 8
  br label %for.cond.421

for.end.469:                                      ; preds = %if.end.462, %for.cond.421
  br label %if.end.470

if.end.470:                                       ; preds = %for.end.469, %land.lhs.true.394, %if.end.392
  %358 = load i32, i32* %vrend, align 4
  %359 = load i32, i32* %t, align 4
  %cmp471 = icmp sle i32 %358, %359
  br i1 %cmp471, label %land.lhs.true.472, label %if.end.531

land.lhs.true.472:                                ; preds = %if.end.470
  %360 = load i32, i32* %rt, align 4
  %361 = load i32, i32* %r, align 4
  %cmp473 = icmp sgt i32 %360, %361
  br i1 %cmp473, label %if.then.474, label %if.end.531

if.then.474:                                      ; preds = %land.lhs.true.472
  %362 = load i32, i32* %ht2, align 4
  %idxprom475 = sext i32 %362 to i64
  %363 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx476 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %363, i64 %idxprom475
  %fixed477 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx476, i32 0, i32 6
  %364 = load i32, i32* %fixed477, align 4
  store i32 %364, i32* %check, align 4
  %365 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %366 = load i32, i32* %r, align 4
  %call478 = call i32 @tprop(%struct.tnode* %365, i32 %366)
  %idxprom479 = sext i32 %call478 to i64
  %367 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %arrayidx480 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %367, i64 %idxprom479
  %368 = load %struct.dlink1*, %struct.dlink1** %arrayidx480, align 8
  store %struct.dlink1* %368, %struct.dlink1** %v2ptr, align 8
  br label %for.cond.481

for.cond.481:                                     ; preds = %for.inc.528, %if.then.474
  %369 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %cmp482 = icmp ne %struct.dlink1* %369, null
  br i1 %cmp482, label %for.body.483, label %for.end.530

for.body.483:                                     ; preds = %for.cond.481
  %370 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %edge484 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %370, i32 0, i32 0
  %371 = load i32, i32* %edge484, align 4
  %idxprom485 = sext i32 %371 to i64
  %372 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx486 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %372, i64 %idxprom485
  %UorR487 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx486, i32 0, i32 5
  %373 = load i32, i32* %UorR487, align 4
  %cmp488 = icmp slt i32 %373, 0
  br i1 %cmp488, label %if.then.489, label %if.end.490

if.then.489:                                      ; preds = %for.body.483
  br label %for.inc.528

if.end.490:                                       ; preds = %for.body.483
  %374 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %edge491 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %374, i32 0, i32 0
  %375 = load i32, i32* %edge491, align 4
  %idxprom492 = sext i32 %375 to i64
  %376 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx493 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %376, i64 %idxprom492
  %end494 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx493, i32 0, i32 2
  %377 = load i32, i32* %end494, align 4
  store i32 %377, i32* %tt, align 4
  %378 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %edge495 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %378, i32 0, i32 0
  %379 = load i32, i32* %edge495, align 4
  %idxprom496 = sext i32 %379 to i64
  %380 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx497 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %380, i64 %idxprom496
  %start498 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx497, i32 0, i32 1
  %381 = load i32, i32* %start498, align 4
  store i32 %381, i32* %bb, align 4
  %382 = load i32, i32* %bb, align 4
  %383 = load i32, i32* %t, align 4
  %cmp499 = icmp sgt i32 %382, %383
  br i1 %cmp499, label %if.then.502, label %lor.lhs.false.500

lor.lhs.false.500:                                ; preds = %if.end.490
  %384 = load i32, i32* %tt, align 4
  %385 = load i32, i32* %t, align 4
  %cmp501 = icmp slt i32 %384, %385
  br i1 %cmp501, label %if.then.502, label %if.end.503

if.then.502:                                      ; preds = %lor.lhs.false.500, %if.end.490
  br label %for.inc.528

if.end.503:                                       ; preds = %lor.lhs.false.500
  %386 = load i32, i32* %check, align 4
  %tobool504 = icmp ne i32 %386, 0
  br i1 %tobool504, label %if.then.505, label %if.else.511

if.then.505:                                      ; preds = %if.end.503
  %387 = load i32, i32* %bb, align 4
  %388 = load i32, i32* %t, align 4
  %cmp506 = icmp eq i32 %387, %388
  br i1 %cmp506, label %land.lhs.true.507, label %if.end.510

land.lhs.true.507:                                ; preds = %if.then.505
  %389 = load i32, i32* %tt, align 4
  %390 = load i32, i32* %bb, align 4
  %cmp508 = icmp sgt i32 %389, %390
  br i1 %cmp508, label %if.then.509, label %if.end.510

if.then.509:                                      ; preds = %land.lhs.true.507
  br label %for.inc.528

if.end.510:                                       ; preds = %land.lhs.true.507, %if.then.505
  br label %if.end.523

if.else.511:                                      ; preds = %if.end.503
  %391 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %edge512 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %391, i32 0, i32 0
  %392 = load i32, i32* %edge512, align 4
  %idxprom513 = sext i32 %392 to i64
  %393 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx514 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %393, i64 %idxprom513
  %fixed515 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx514, i32 0, i32 6
  %394 = load i32, i32* %fixed515, align 4
  %cmp516 = icmp eq i32 %394, 1
  br i1 %cmp516, label %land.lhs.true.517, label %if.end.522

land.lhs.true.517:                                ; preds = %if.else.511
  %395 = load i32, i32* %bb, align 4
  %396 = load i32, i32* %t, align 4
  %cmp518 = icmp eq i32 %395, %396
  br i1 %cmp518, label %if.then.521, label %lor.lhs.false.519

lor.lhs.false.519:                                ; preds = %land.lhs.true.517
  %397 = load i32, i32* %tt, align 4
  %398 = load i32, i32* %t, align 4
  %cmp520 = icmp eq i32 %397, %398
  br i1 %cmp520, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %lor.lhs.false.519, %land.lhs.true.517
  br label %for.inc.528

if.end.522:                                       ; preds = %lor.lhs.false.519, %if.else.511
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.522, %if.end.510
  %399 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %edge524 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %399, i32 0, i32 0
  %400 = load i32, i32* %edge524, align 4
  %idxprom525 = sext i32 %400 to i64
  %401 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %arrayidx526 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %401, i64 %idxprom525
  %loc527 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %arrayidx526, i32 0, i32 3
  %402 = load i32, i32* %loc527, align 4
  store i32 %402, i32* %r, align 4
  br label %for.end.530

for.inc.528:                                      ; preds = %if.then.521, %if.then.509, %if.then.502, %if.then.489
  %403 = load %struct.dlink1*, %struct.dlink1** %v2ptr, align 8
  %next529 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %403, i32 0, i32 2
  %404 = load %struct.dlink1*, %struct.dlink1** %next529, align 8
  store %struct.dlink1* %404, %struct.dlink1** %v2ptr, align 8
  br label %for.cond.481

for.end.530:                                      ; preds = %if.end.523, %for.cond.481
  br label %if.end.531

if.end.531:                                       ; preds = %for.end.530, %land.lhs.true.472, %if.end.470
  %405 = load i32, i32* %l, align 4
  %406 = load i32, i32* %r, align 4
  %407 = load i32, i32* %b, align 4
  %408 = load i32, i32* %t, align 4
  %call532 = call i32 @backCheck(i32 %405, i32 %406, i32 %407, i32 %408)
  %tobool533 = icmp ne i32 %call532, 0
  br i1 %tobool533, label %if.then.534, label %if.end.535

if.then.534:                                      ; preds = %if.end.531
  br label %for.end.590

if.end.535:                                       ; preds = %if.end.531
  %409 = load i32, i32* @numRects, align 4
  %inc = add nsw i32 %409, 1
  store i32 %inc, i32* @numRects, align 4
  %rem = srem i32 %inc, 100
  %cmp536 = icmp eq i32 %rem, 0
  br i1 %cmp536, label %if.then.537, label %if.end.539

if.then.537:                                      ; preds = %if.end.535
  %410 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %411 = bitcast %struct.rect* %410 to i8*
  %412 = load i32, i32* @numRects, align 4
  %add = add nsw i32 %412, 100
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 52
  %call538 = call i8* @realloc(i8* %411, i64 %mul) #3
  %413 = bitcast i8* %call538 to %struct.rect*
  store %struct.rect* %413, %struct.rect** @rectArray, align 8
  br label %if.end.539

if.end.539:                                       ; preds = %if.then.537, %if.end.535
  %414 = load i32, i32* %l, align 4
  %415 = load i32, i32* @numRects, align 4
  %idxprom540 = sext i32 %415 to i64
  %416 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx541 = getelementptr inbounds %struct.rect, %struct.rect* %416, i64 %idxprom540
  %l542 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx541, i32 0, i32 4
  store i32 %414, i32* %l542, align 4
  %417 = load i32, i32* %r, align 4
  %418 = load i32, i32* @numRects, align 4
  %idxprom543 = sext i32 %418 to i64
  %419 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx544 = getelementptr inbounds %struct.rect, %struct.rect* %419, i64 %idxprom543
  %r545 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx544, i32 0, i32 5
  store i32 %417, i32* %r545, align 4
  %420 = load i32, i32* %b, align 4
  %421 = load i32, i32* @numRects, align 4
  %idxprom546 = sext i32 %421 to i64
  %422 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx547 = getelementptr inbounds %struct.rect, %struct.rect* %422, i64 %idxprom546
  %b548 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx547, i32 0, i32 6
  store i32 %420, i32* %b548, align 4
  %423 = load i32, i32* %t, align 4
  %424 = load i32, i32* @numRects, align 4
  %idxprom549 = sext i32 %424 to i64
  %425 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx550 = getelementptr inbounds %struct.rect, %struct.rect* %425, i64 %idxprom549
  %t551 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx550, i32 0, i32 7
  store i32 %423, i32* %t551, align 4
  %426 = load i32, i32* @numRects, align 4
  %idxprom552 = sext i32 %426 to i64
  %427 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx553 = getelementptr inbounds %struct.rect, %struct.rect* %427, i64 %idxprom552
  %ur = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx553, i32 0, i32 8
  store i32 0, i32* %ur, align 4
  %428 = load i32, i32* @numRects, align 4
  %idxprom554 = sext i32 %428 to i64
  %429 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx555 = getelementptr inbounds %struct.rect, %struct.rect* %429, i64 %idxprom554
  %ul = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx555, i32 0, i32 9
  store i32 0, i32* %ul, align 4
  %430 = load i32, i32* @numRects, align 4
  %idxprom556 = sext i32 %430 to i64
  %431 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx557 = getelementptr inbounds %struct.rect, %struct.rect* %431, i64 %idxprom556
  %lr = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx557, i32 0, i32 10
  store i32 0, i32* %lr, align 4
  %432 = load i32, i32* @numRects, align 4
  %idxprom558 = sext i32 %432 to i64
  %433 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx559 = getelementptr inbounds %struct.rect, %struct.rect* %433, i64 %idxprom558
  %ll = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx559, i32 0, i32 11
  store i32 0, i32* %ll, align 4
  %434 = load i32, i32* %l, align 4
  %435 = load i32, i32* %r, align 4
  %add560 = add nsw i32 %434, %435
  %div = sdiv i32 %add560, 2
  %436 = load i32, i32* @numRects, align 4
  %idxprom561 = sext i32 %436 to i64
  %437 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx562 = getelementptr inbounds %struct.rect, %struct.rect* %437, i64 %idxprom561
  %xc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx562, i32 0, i32 0
  store i32 %div, i32* %xc, align 4
  %438 = load i32, i32* %b, align 4
  %439 = load i32, i32* %t, align 4
  %add563 = add nsw i32 %438, %439
  %div564 = sdiv i32 %add563, 2
  %440 = load i32, i32* @numRects, align 4
  %idxprom565 = sext i32 %440 to i64
  %441 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx566 = getelementptr inbounds %struct.rect, %struct.rect* %441, i64 %idxprom565
  %yc = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx566, i32 0, i32 1
  store i32 %div564, i32* %yc, align 4
  %442 = load i32, i32* @numRects, align 4
  %idxprom567 = sext i32 %442 to i64
  %443 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx568 = getelementptr inbounds %struct.rect, %struct.rect* %443, i64 %idxprom567
  %xreset = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx568, i32 0, i32 2
  store i32 0, i32* %xreset, align 4
  %444 = load i32, i32* @numRects, align 4
  %idxprom569 = sext i32 %444 to i64
  %445 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx570 = getelementptr inbounds %struct.rect, %struct.rect* %445, i64 %idxprom569
  %yreset = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx570, i32 0, i32 3
  store i32 0, i32* %yreset, align 4
  %446 = load i32, i32* %l, align 4
  %447 = load i32, i32* @numRects, align 4
  call void @tinsert(%struct.tnode** @hRectRoot, i32 %446, i32 %447)
  %448 = load i32, i32* %b, align 4
  %449 = load i32, i32* @numRects, align 4
  call void @tinsert(%struct.tnode** @vRectRoot, i32 %448, i32 %449)
  %450 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %451 = load i32, i32* @numRects, align 4
  %452 = load i32, i32* @numRects, align 4
  %idxprom571 = sext i32 %452 to i64
  %453 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx572 = getelementptr inbounds %struct.rect, %struct.rect* %453, i64 %idxprom571
  %xc573 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx572, i32 0, i32 0
  %454 = load i32, i32* %xc573, align 4
  %455 = load i32, i32* @numRects, align 4
  %idxprom574 = sext i32 %455 to i64
  %456 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx575 = getelementptr inbounds %struct.rect, %struct.rect* %456, i64 %idxprom574
  %yc576 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx575, i32 0, i32 1
  %457 = load i32, i32* %yc576, align 4
  %call577 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %450, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %451, i32 %454, i32 %457)
  %458 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %459 = load i32, i32* %r, align 4
  %460 = load i32, i32* %l, align 4
  %sub = sub nsw i32 %459, %460
  %461 = load i32, i32* %t, align 4
  %462 = load i32, i32* %b, align 4
  %sub578 = sub nsw i32 %461, %462
  %call579 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %458, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 %sub, i32 %sub578)
  %463 = load i32, i32* @doPlacement, align 4
  %tobool580 = icmp ne i32 %463, 0
  br i1 %tobool580, label %if.then.581, label %if.end.587

if.then.581:                                      ; preds = %if.end.539
  %464 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %465 = load i32, i32* @numRects, align 4
  %466 = load i32, i32* %r, align 4
  %467 = load i32, i32* %l, align 4
  %add582 = add nsw i32 %466, %467
  %div583 = sdiv i32 %add582, 2
  %468 = load i32, i32* %t, align 4
  %469 = load i32, i32* %b, align 4
  %add584 = add nsw i32 %468, %469
  %div585 = sdiv i32 %add584, 2
  %call586 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %464, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 %465, i32 %div583, i32 %div585)
  br label %if.end.587

if.end.587:                                       ; preds = %if.then.581, %if.end.539
  br label %for.end.590

for.inc.588:                                      ; preds = %if.then.120, %if.then.111, %if.then.93, %if.then.82, %if.then.76
  %470 = load %struct.dlink1*, %struct.dlink1** %vrptr, align 8
  %next589 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %470, i32 0, i32 2
  %471 = load %struct.dlink1*, %struct.dlink1** %next589, align 8
  store %struct.dlink1* %471, %struct.dlink1** %vrptr, align 8
  br label %for.cond.68

for.end.590:                                      ; preds = %if.end.587, %if.then.534, %if.then.353, %for.cond.68
  br label %for.inc.591

for.inc.591:                                      ; preds = %for.end.590, %if.then.62, %if.then.54, %if.then.38, %if.then.28, %if.then.19
  %472 = load %struct.dlink1*, %struct.dlink1** %vlptr, align 8
  %next592 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %472, i32 0, i32 2
  %473 = load %struct.dlink1*, %struct.dlink1** %next592, align 8
  store %struct.dlink1* %473, %struct.dlink1** %vlptr, align 8
  br label %for.cond.11

for.end.593:                                      ; preds = %if.then.25, %for.cond.11
  br label %for.inc.594

for.inc.594:                                      ; preds = %for.end.593, %if.then
  %474 = load %struct.dlink1*, %struct.dlink1** %hptr, align 8
  %next595 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %474, i32 0, i32 2
  %475 = load %struct.dlink1*, %struct.dlink1** %next595, align 8
  store %struct.dlink1* %475, %struct.dlink1** %hptr, align 8
  br label %for.cond

for.end.596:                                      ; preds = %for.cond
  call void @rectlink()
  call void @makeRLEtree()
  call void @makeRBEtree()
  %476 = load i32, i32* @doPlacement, align 4
  %tobool597 = icmp ne i32 %476, 0
  br i1 %tobool597, label %if.then.598, label %if.end.601

if.then.598:                                      ; preds = %for.end.596
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %call599 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %477, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %478 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %call600 = call i32 @fclose(%struct._IO_FILE* %478)
  br label %if.end.601

if.end.601:                                       ; preds = %if.then.598, %for.end.596
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @tprop(%struct.tnode*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @backCheck(i32 %l, i32 %r, i32 %b, i32 %t) #0 {
entry:
  %retval = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %rec = alloca i32, align 4
  %lChk = alloca i32, align 4
  %rChk = alloca i32, align 4
  %bChk = alloca i32, align 4
  %tChk = alloca i32, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* @numRects, align 4
  store i32 %0, i32* %rec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %rec, align 4
  %cmp = icmp sge i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %rec, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx = getelementptr inbounds %struct.rect, %struct.rect* %3, i64 %idxprom
  %l1 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx, i32 0, i32 4
  %4 = load i32, i32* %l1, align 4
  store i32 %4, i32* %lChk, align 4
  %5 = load i32, i32* %rec, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx3 = getelementptr inbounds %struct.rect, %struct.rect* %6, i64 %idxprom2
  %r4 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx3, i32 0, i32 5
  %7 = load i32, i32* %r4, align 4
  store i32 %7, i32* %rChk, align 4
  %8 = load i32, i32* %l.addr, align 4
  %9 = load i32, i32* %rChk, align 4
  %cmp5 = icmp sgt i32 %8, %9
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %r.addr, align 4
  %11 = load i32, i32* %lChk, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  br label %for.end

for.inc:                                          ; preds = %if.then
  %12 = load i32, i32* %rec, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %rec, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %13 = load i32, i32* %rec, align 4
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  %14 = load i32, i32* %rec, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx10 = getelementptr inbounds %struct.rect, %struct.rect* %15, i64 %idxprom9
  %b11 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx10, i32 0, i32 6
  %16 = load i32, i32* %b11, align 4
  store i32 %16, i32* %bChk, align 4
  %17 = load i32, i32* %rec, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx13 = getelementptr inbounds %struct.rect, %struct.rect* %18, i64 %idxprom12
  %t14 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx13, i32 0, i32 7
  %19 = load i32, i32* %t14, align 4
  store i32 %19, i32* %tChk, align 4
  %20 = load i32, i32* %b.addr, align 4
  %21 = load i32, i32* %tChk, align 4
  %cmp15 = icmp sgt i32 %20, %21
  br i1 %cmp15, label %if.then.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.else
  %22 = load i32, i32* %t.addr, align 4
  %23 = load i32, i32* %bChk, align 4
  %cmp17 = icmp slt i32 %22, %23
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %lor.lhs.false.16, %if.else
  store i32 0, i32* %retval
  br label %return

if.else.19:                                       ; preds = %lor.lhs.false.16
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else.19, %if.then.18, %if.then.8
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare void @tinsert(%struct.tnode**, i32, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @rectlink() #0 {
entry:
  %junkptr = alloca %struct.tnode*, align 8
  %ptr = alloca %struct.dlink2*, align 8
  %pptr = alloca %struct.dlink2*, align 8
  %center = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.dlink2* null, %struct.dlink2** @HRlist, align 8
  store %struct.dlink2* null, %struct.dlink2** @VRlist, align 8
  call void @tpop(%struct.tnode** @hRectRoot, %struct.tnode** %junkptr, i32* %center, i32* %index)
  %0 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp = icmp eq %struct.tnode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call noalias i8* @malloc(i64 24) #3
  %1 = bitcast i8* %call to %struct.dlink2*
  store %struct.dlink2* %1, %struct.dlink2** @HRlist, align 8
  %2 = load i32, i32* %index, align 4
  %3 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  %index1 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %3, i32 0, i32 0
  store i32 %2, i32* %index1, align 4
  %4 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  %next = getelementptr inbounds %struct.dlink2, %struct.dlink2* %4, i32 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %next, align 8
  %5 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  %prev = getelementptr inbounds %struct.dlink2, %struct.dlink2* %5, i32 0, i32 1
  store %struct.dlink2* null, %struct.dlink2** %prev, align 8
  call void @tpop(%struct.tnode** @vRectRoot, %struct.tnode** %junkptr, i32* %center, i32* %index)
  %call2 = call noalias i8* @malloc(i64 24) #3
  %6 = bitcast i8* %call2 to %struct.dlink2*
  store %struct.dlink2* %6, %struct.dlink2** @VRlist, align 8
  %7 = load i32, i32* %index, align 4
  %8 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  %index3 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %8, i32 0, i32 0
  store i32 %7, i32* %index3, align 4
  %9 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  %next4 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %9, i32 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %next4, align 8
  %10 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  %prev5 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %10, i32 0, i32 1
  store %struct.dlink2* null, %struct.dlink2** %prev5, align 8
  %11 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  store %struct.dlink2* %11, %struct.dlink2** %pptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.8, %if.end
  call void @tpop(%struct.tnode** @hRectRoot, %struct.tnode** %junkptr, i32* %center, i32* %index)
  %12 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp6 = icmp eq %struct.tnode* %12, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.cond
  br label %for.end

if.end.8:                                         ; preds = %for.cond
  %call9 = call noalias i8* @malloc(i64 24) #3
  %13 = bitcast i8* %call9 to %struct.dlink2*
  store %struct.dlink2* %13, %struct.dlink2** %ptr, align 8
  %14 = load i32, i32* %index, align 4
  %15 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  %index10 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %15, i32 0, i32 0
  store i32 %14, i32* %index10, align 4
  %16 = load %struct.dlink2*, %struct.dlink2** %pptr, align 8
  %17 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  %prev11 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %17, i32 0, i32 1
  store %struct.dlink2* %16, %struct.dlink2** %prev11, align 8
  %18 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  %next12 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %18, i32 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %next12, align 8
  %19 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  %20 = load %struct.dlink2*, %struct.dlink2** %pptr, align 8
  %next13 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %20, i32 0, i32 2
  store %struct.dlink2* %19, %struct.dlink2** %next13, align 8
  %21 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  store %struct.dlink2* %21, %struct.dlink2** %pptr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.7
  %22 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  store %struct.dlink2* %22, %struct.dlink2** %pptr, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %if.end.17, %for.end
  call void @tpop(%struct.tnode** @vRectRoot, %struct.tnode** %junkptr, i32* %center, i32* %index)
  %23 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp15 = icmp eq %struct.tnode* %23, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.cond.14
  br label %for.end.23

if.end.17:                                        ; preds = %for.cond.14
  %call18 = call noalias i8* @malloc(i64 24) #3
  %24 = bitcast i8* %call18 to %struct.dlink2*
  store %struct.dlink2* %24, %struct.dlink2** %ptr, align 8
  %25 = load i32, i32* %index, align 4
  %26 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  %index19 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %26, i32 0, i32 0
  store i32 %25, i32* %index19, align 4
  %27 = load %struct.dlink2*, %struct.dlink2** %pptr, align 8
  %28 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  %prev20 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %28, i32 0, i32 1
  store %struct.dlink2* %27, %struct.dlink2** %prev20, align 8
  %29 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  %next21 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %29, i32 0, i32 2
  store %struct.dlink2* null, %struct.dlink2** %next21, align 8
  %30 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  %31 = load %struct.dlink2*, %struct.dlink2** %pptr, align 8
  %next22 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %31, i32 0, i32 2
  store %struct.dlink2* %30, %struct.dlink2** %next22, align 8
  %32 = load %struct.dlink2*, %struct.dlink2** %ptr, align 8
  store %struct.dlink2* %32, %struct.dlink2** %pptr, align 8
  br label %for.cond.14

for.end.23:                                       ; preds = %if.then.16
  br label %return

return:                                           ; preds = %for.end.23, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeRLEtree() #0 {
entry:
  %leptr = alloca %struct.dlink2*, align 8
  %last = alloca i32, align 4
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.tnode* null, %struct.tnode** @LEroot, align 8
  %call = call noalias i8* @malloc(i64 800) #3
  %0 = bitcast i8* %call to %struct.dlink2**
  store %struct.dlink2** %0, %struct.dlink2*** @LEptrs, align 8
  store i32 0, i32* %count, align 4
  store i32 -1000000, i32* %last, align 4
  %1 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  store %struct.dlink2* %1, %struct.dlink2** %leptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.dlink2*, %struct.dlink2** %leptr, align 8
  %cmp = icmp ne %struct.dlink2* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.dlink2*, %struct.dlink2** %leptr, align 8
  %index1 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %3, i32 0, i32 0
  %4 = load i32, i32* %index1, align 4
  store i32 %4, i32* %index, align 4
  %5 = load i32, i32* %index, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx = getelementptr inbounds %struct.rect, %struct.rect* %6, i64 %idxprom
  %l = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx, i32 0, i32 4
  %7 = load i32, i32* %l, align 4
  %8 = load i32, i32* %last, align 4
  %cmp2 = icmp sgt i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %index, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx4 = getelementptr inbounds %struct.rect, %struct.rect* %10, i64 %idxprom3
  %l5 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx4, i32 0, i32 4
  %11 = load i32, i32* %l5, align 4
  store i32 %11, i32* %last, align 4
  %12 = load i32, i32* %count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count, align 4
  %rem = srem i32 %inc, 100
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %13 = load %struct.dlink2**, %struct.dlink2*** @LEptrs, align 8
  %14 = bitcast %struct.dlink2** %13 to i8*
  %15 = load i32, i32* %count, align 4
  %add = add nsw i32 %15, 100
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call8 = call i8* @realloc(i8* %14, i64 %mul) #3
  %16 = bitcast i8* %call8 to %struct.dlink2**
  store %struct.dlink2** %16, %struct.dlink2*** @LEptrs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %17 = load %struct.dlink2*, %struct.dlink2** %leptr, align 8
  %18 = load i32, i32* %count, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.dlink2**, %struct.dlink2*** @LEptrs, align 8
  %arrayidx10 = getelementptr inbounds %struct.dlink2*, %struct.dlink2** %19, i64 %idxprom9
  store %struct.dlink2* %17, %struct.dlink2** %arrayidx10, align 8
  %20 = load i32, i32* %last, align 4
  %21 = load i32, i32* %count, align 4
  call void @tinsert(%struct.tnode** @LEroot, i32 %20, i32 %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load %struct.dlink2*, %struct.dlink2** %leptr, align 8
  %next = getelementptr inbounds %struct.dlink2, %struct.dlink2* %22, i32 0, i32 2
  %23 = load %struct.dlink2*, %struct.dlink2** %next, align 8
  store %struct.dlink2* %23, %struct.dlink2** %leptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeRBEtree() #0 {
entry:
  %beptr = alloca %struct.dlink2*, align 8
  %last = alloca i32, align 4
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.tnode* null, %struct.tnode** @BEroot, align 8
  %call = call noalias i8* @malloc(i64 800) #3
  %0 = bitcast i8* %call to %struct.dlink2**
  store %struct.dlink2** %0, %struct.dlink2*** @BEptrs, align 8
  store i32 0, i32* %count, align 4
  store i32 -1000000, i32* %last, align 4
  %1 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  store %struct.dlink2* %1, %struct.dlink2** %beptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.dlink2*, %struct.dlink2** %beptr, align 8
  %cmp = icmp ne %struct.dlink2* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.dlink2*, %struct.dlink2** %beptr, align 8
  %index1 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %3, i32 0, i32 0
  %4 = load i32, i32* %index1, align 4
  store i32 %4, i32* %index, align 4
  %5 = load i32, i32* %index, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx = getelementptr inbounds %struct.rect, %struct.rect* %6, i64 %idxprom
  %b = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx, i32 0, i32 6
  %7 = load i32, i32* %b, align 4
  %8 = load i32, i32* %last, align 4
  %cmp2 = icmp sgt i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %index, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.rect*, %struct.rect** @rectArray, align 8
  %arrayidx4 = getelementptr inbounds %struct.rect, %struct.rect* %10, i64 %idxprom3
  %b5 = getelementptr inbounds %struct.rect, %struct.rect* %arrayidx4, i32 0, i32 6
  %11 = load i32, i32* %b5, align 4
  store i32 %11, i32* %last, align 4
  %12 = load i32, i32* %count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count, align 4
  %rem = srem i32 %inc, 100
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %13 = load %struct.dlink2**, %struct.dlink2*** @BEptrs, align 8
  %14 = bitcast %struct.dlink2** %13 to i8*
  %15 = load i32, i32* %count, align 4
  %add = add nsw i32 %15, 100
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call8 = call i8* @realloc(i8* %14, i64 %mul) #3
  %16 = bitcast i8* %call8 to %struct.dlink2**
  store %struct.dlink2** %16, %struct.dlink2*** @BEptrs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %17 = load %struct.dlink2*, %struct.dlink2** %beptr, align 8
  %18 = load i32, i32* %count, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.dlink2**, %struct.dlink2*** @BEptrs, align 8
  %arrayidx10 = getelementptr inbounds %struct.dlink2*, %struct.dlink2** %19, i64 %idxprom9
  store %struct.dlink2* %17, %struct.dlink2** %arrayidx10, align 8
  %20 = load i32, i32* %last, align 4
  %21 = load i32, i32* %count, align 4
  call void @tinsert(%struct.tnode** @BEroot, i32 %20, i32 %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load %struct.dlink2*, %struct.dlink2** %beptr, align 8
  %next = getelementptr inbounds %struct.dlink2, %struct.dlink2* %22, i32 0, i32 2
  %23 = load %struct.dlink2*, %struct.dlink2** %next, align 8
  store %struct.dlink2* %23, %struct.dlink2** %beptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
