; ModuleID = './MultiSource.Benchmarks.Prolangs-C/262.TimberWolfMC.analyze.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@numcells = external global i32, align 4
@numnets = external global i32, align 4
@how_many = common global i32* null, align 8
@netarray = external global %struct.dimbox**, align 8
@fpo = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0A\0A*************************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"AVERAGE NUMBER OF CELLS PER NET: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"*************************************\0A\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Expected Wire Reduction Relative to Random:%6.2f\0A\0A\00", align 1
@qsz = common global i32 0, align 4
@thresh = common global i32 0, align 4
@mthresh = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define double @analyze() #0 {
entry:
  %number = alloca i32**, align 8
  %i = alloca i32, align 4
  %net = alloca i32, align 4
  %net1 = alloca i32, align 4
  %net2 = alloca i32, align 4
  %num = alloca i32, align 4
  %cell = alloca i32, align 4
  %count = alloca i32*, align 8
  %different = alloca i32, align 4
  %cnum = alloca i32, align 4
  %c2num = alloca i32, align 4
  %arraynet = alloca i32*, align 8
  %num_nets = alloca i32, align 4
  %tot_cels = alloca i32, align 4
  %C = alloca double, align 8
  %C1 = alloca double, align 8
  %ratio = alloca double, align 8
  %netptr = alloca %struct.netbox*, align 8
  %0 = load i32, i32* @numcells, align 4
  %add = add nsw i32 1, %0
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %count, align 8
  %2 = load i32, i32* @numnets, align 4
  %add1 = add nsw i32 1, %2
  %conv2 = sext i32 %add1 to i64
  %mul3 = mul i64 %conv2, 8
  %call4 = call noalias i8* @malloc(i64 %mul3) #3
  %3 = bitcast i8* %call4 to i32**
  store i32** %3, i32*** %number, align 8
  %4 = load i32, i32* @numnets, align 4
  %add5 = add nsw i32 1, %4
  %conv6 = sext i32 %add5 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call noalias i8* @malloc(i64 %mul7) #3
  %5 = bitcast i8* %call8 to i32*
  store i32* %5, i32** @how_many, align 8
  %6 = load i32, i32* @numnets, align 4
  %add9 = add nsw i32 1, %6
  %conv10 = sext i32 %add9 to i64
  %mul11 = mul i64 %conv10, 4
  %call12 = call noalias i8* @malloc(i64 %mul11) #3
  %7 = bitcast i8* %call12 to i32*
  store i32* %7, i32** %arraynet, align 8
  store i32 0, i32* %net, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %net, align 4
  %9 = load i32, i32* @numnets, align 4
  %cmp = icmp sle i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* @numcells, align 4
  %add14 = add nsw i32 1, %10
  %conv15 = sext i32 %add14 to i64
  %mul16 = mul i64 %conv15, 4
  %call17 = call noalias i8* @malloc(i64 %mul16) #3
  %11 = bitcast i8* %call17 to i32*
  %12 = load i32, i32* %net, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32**, i32*** %number, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %13, i64 %idxprom
  store i32* %11, i32** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %net, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %net, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %net, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.71, %for.end
  %15 = load i32, i32* %net, align 4
  %16 = load i32, i32* @numnets, align 4
  %cmp19 = icmp sle i32 %15, %16
  br i1 %cmp19, label %for.body.21, label %for.end.73

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %cell, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.32, %for.body.21
  %17 = load i32, i32* %cell, align 4
  %18 = load i32, i32* @numcells, align 4
  %cmp23 = icmp sle i32 %17, %18
  br i1 %cmp23, label %for.body.25, label %for.end.34

for.body.25:                                      ; preds = %for.cond.22
  %19 = load i32, i32* %cell, align 4
  %idxprom26 = sext i32 %19 to i64
  %20 = load i32*, i32** %count, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %20, i64 %idxprom26
  store i32 0, i32* %arrayidx27, align 4
  %21 = load i32, i32* %cell, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load i32, i32* %net, align 4
  %idxprom29 = sext i32 %22 to i64
  %23 = load i32**, i32*** %number, align 8
  %arrayidx30 = getelementptr inbounds i32*, i32** %23, i64 %idxprom29
  %24 = load i32*, i32** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %24, i64 %idxprom28
  store i32 0, i32* %arrayidx31, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.25
  %25 = load i32, i32* %cell, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, i32* %cell, align 4
  br label %for.cond.22

for.end.34:                                       ; preds = %for.cond.22
  %26 = load i32, i32* %net, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx36 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %27, i64 %idxprom35
  %28 = load %struct.dimbox*, %struct.dimbox** %arrayidx36, align 8
  %netptr37 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %28, i32 0, i32 0
  %29 = load %struct.netbox*, %struct.netbox** %netptr37, align 8
  store %struct.netbox* %29, %struct.netbox** %netptr, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.48, %for.end.34
  %30 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp39 = icmp ne %struct.netbox* %30, null
  br i1 %cmp39, label %for.body.41, label %for.end.49

for.body.41:                                      ; preds = %for.cond.38
  %31 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell42 = getelementptr inbounds %struct.netbox, %struct.netbox* %31, i32 0, i32 7
  %32 = load i32, i32* %cell42, align 4
  %33 = load i32, i32* @numcells, align 4
  %cmp43 = icmp sle i32 %32, %33
  br i1 %cmp43, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.41
  %34 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cell45 = getelementptr inbounds %struct.netbox, %struct.netbox* %34, i32 0, i32 7
  %35 = load i32, i32* %cell45, align 4
  %idxprom46 = sext i32 %35 to i64
  %36 = load i32*, i32** %count, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %36, i64 %idxprom46
  store i32 1, i32* %arrayidx47, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.41
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end
  %37 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %37, i32 0, i32 0
  %38 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %38, %struct.netbox** %netptr, align 8
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  store i32 1, i32* %cell, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.68, %for.end.49
  %39 = load i32, i32* %cell, align 4
  %40 = load i32, i32* @numcells, align 4
  %cmp51 = icmp sle i32 %39, %40
  br i1 %cmp51, label %for.body.53, label %for.end.70

for.body.53:                                      ; preds = %for.cond.50
  %41 = load i32, i32* %cell, align 4
  %idxprom54 = sext i32 %41 to i64
  %42 = load i32*, i32** %count, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %42, i64 %idxprom54
  %43 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp eq i32 %43, 1
  br i1 %cmp56, label %if.then.58, label %if.end.67

if.then.58:                                       ; preds = %for.body.53
  %44 = load i32, i32* %cell, align 4
  %45 = load i32, i32* %net, align 4
  %idxprom59 = sext i32 %45 to i64
  %46 = load i32**, i32*** %number, align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %46, i64 %idxprom59
  %47 = load i32*, i32** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %47, i64 0
  %48 = load i32, i32* %arrayidx61, align 4
  %inc62 = add nsw i32 %48, 1
  store i32 %inc62, i32* %arrayidx61, align 4
  %idxprom63 = sext i32 %inc62 to i64
  %49 = load i32, i32* %net, align 4
  %idxprom64 = sext i32 %49 to i64
  %50 = load i32**, i32*** %number, align 8
  %arrayidx65 = getelementptr inbounds i32*, i32** %50, i64 %idxprom64
  %51 = load i32*, i32** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %51, i64 %idxprom63
  store i32 %44, i32* %arrayidx66, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.58, %for.body.53
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %52 = load i32, i32* %cell, align 4
  %inc69 = add nsw i32 %52, 1
  store i32 %inc69, i32* %cell, align 4
  br label %for.cond.50

for.end.70:                                       ; preds = %for.cond.50
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %53 = load i32, i32* %net, align 4
  %inc72 = add nsw i32 %53, 1
  store i32 %inc72, i32* %net, align 4
  br label %for.cond.18

for.end.73:                                       ; preds = %for.cond.18
  store i32 0, i32* %num_nets, align 4
  store i32 0, i32* %tot_cels, align 4
  store i32 1, i32* %net1, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.90, %for.end.73
  %54 = load i32, i32* %net1, align 4
  %55 = load i32, i32* @numnets, align 4
  %cmp75 = icmp sle i32 %54, %55
  br i1 %cmp75, label %for.body.77, label %for.end.92

for.body.77:                                      ; preds = %for.cond.74
  %56 = load i32, i32* %net1, align 4
  %idxprom78 = sext i32 %56 to i64
  %57 = load i32**, i32*** %number, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %57, i64 %idxprom78
  %58 = load i32*, i32** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %58, i64 0
  %59 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp sle i32 %59, 1
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %for.body.77
  br label %for.inc.90

if.end.84:                                        ; preds = %for.body.77
  %60 = load i32, i32* %num_nets, align 4
  %inc85 = add nsw i32 %60, 1
  store i32 %inc85, i32* %num_nets, align 4
  %61 = load i32, i32* %net1, align 4
  %idxprom86 = sext i32 %61 to i64
  %62 = load i32**, i32*** %number, align 8
  %arrayidx87 = getelementptr inbounds i32*, i32** %62, i64 %idxprom86
  %63 = load i32*, i32** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx88, align 4
  %65 = load i32, i32* %tot_cels, align 4
  %add89 = add nsw i32 %65, %64
  store i32 %add89, i32* %tot_cels, align 4
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.84, %if.then.83
  %66 = load i32, i32* %net1, align 4
  %inc91 = add nsw i32 %66, 1
  store i32 %inc91, i32* %net1, align 4
  br label %for.cond.74

for.end.92:                                       ; preds = %for.cond.74
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %69 = load i32, i32* %tot_cels, align 4
  %conv94 = sitofp i32 %69 to double
  %70 = load i32, i32* %num_nets, align 4
  %conv95 = sitofp i32 %70 to double
  %div = fdiv double %conv94, %conv95
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), double %div)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %net1, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.170, %for.end.92
  %72 = load i32, i32* %net1, align 4
  %73 = load i32, i32* @numnets, align 4
  %cmp99 = icmp sle i32 %72, %73
  br i1 %cmp99, label %for.body.101, label %for.end.172

for.body.101:                                     ; preds = %for.cond.98
  %74 = load i32, i32* %net1, align 4
  %idxprom102 = sext i32 %74 to i64
  %75 = load i32**, i32*** %number, align 8
  %arrayidx103 = getelementptr inbounds i32*, i32** %75, i64 %idxprom102
  %76 = load i32*, i32** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx104, align 4
  %cmp105 = icmp eq i32 %77, 0
  br i1 %cmp105, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %for.body.101
  %78 = load i32, i32* %net1, align 4
  %idxprom108 = sext i32 %78 to i64
  %79 = load i32*, i32** @how_many, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %79, i64 %idxprom108
  store i32 0, i32* %arrayidx109, align 4
  br label %for.inc.170

if.end.110:                                       ; preds = %for.body.101
  %80 = load i32, i32* %net1, align 4
  %idxprom111 = sext i32 %80 to i64
  %81 = load i32**, i32*** %number, align 8
  %arrayidx112 = getelementptr inbounds i32*, i32** %81, i64 %idxprom111
  %82 = load i32*, i32** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %82, i64 0
  %83 = load i32, i32* %arrayidx113, align 4
  %cmp114 = icmp eq i32 %83, 1
  br i1 %cmp114, label %if.then.116, label %if.end.122

if.then.116:                                      ; preds = %if.end.110
  %84 = load i32, i32* %net1, align 4
  %idxprom117 = sext i32 %84 to i64
  %85 = load i32**, i32*** %number, align 8
  %arrayidx118 = getelementptr inbounds i32*, i32** %85, i64 %idxprom117
  %86 = load i32*, i32** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 0, i32* %arrayidx119, align 4
  %87 = load i32, i32* %net1, align 4
  %idxprom120 = sext i32 %87 to i64
  %88 = load i32*, i32** @how_many, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %88, i64 %idxprom120
  store i32 0, i32* %arrayidx121, align 4
  br label %for.inc.170

if.end.122:                                       ; preds = %if.end.110
  %89 = load i32, i32* %net1, align 4
  %idxprom123 = sext i32 %89 to i64
  %90 = load i32*, i32** @how_many, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %90, i64 %idxprom123
  store i32 1, i32* %arrayidx124, align 4
  %91 = load i32, i32* %net1, align 4
  %add125 = add nsw i32 %91, 1
  store i32 %add125, i32* %net2, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.167, %if.end.122
  %92 = load i32, i32* %net2, align 4
  %93 = load i32, i32* @numnets, align 4
  %cmp127 = icmp sle i32 %92, %93
  br i1 %cmp127, label %for.body.129, label %for.end.169

for.body.129:                                     ; preds = %for.cond.126
  %94 = load i32, i32* %net2, align 4
  %idxprom130 = sext i32 %94 to i64
  %95 = load i32**, i32*** %number, align 8
  %arrayidx131 = getelementptr inbounds i32*, i32** %95, i64 %idxprom130
  %96 = load i32*, i32** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %96, i64 0
  %97 = load i32, i32* %arrayidx132, align 4
  %98 = load i32, i32* %net1, align 4
  %idxprom133 = sext i32 %98 to i64
  %99 = load i32**, i32*** %number, align 8
  %arrayidx134 = getelementptr inbounds i32*, i32** %99, i64 %idxprom133
  %100 = load i32*, i32** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %100, i64 0
  %101 = load i32, i32* %arrayidx135, align 4
  %cmp136 = icmp ne i32 %97, %101
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %for.body.129
  br label %for.inc.167

if.end.139:                                       ; preds = %for.body.129
  store i32 0, i32* %different, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.156, %if.end.139
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* @numcells, align 4
  %cmp141 = icmp sle i32 %102, %103
  br i1 %cmp141, label %for.body.143, label %for.end.158

for.body.143:                                     ; preds = %for.cond.140
  %104 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %104 to i64
  %105 = load i32, i32* %net2, align 4
  %idxprom145 = sext i32 %105 to i64
  %106 = load i32**, i32*** %number, align 8
  %arrayidx146 = getelementptr inbounds i32*, i32** %106, i64 %idxprom145
  %107 = load i32*, i32** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %107, i64 %idxprom144
  %108 = load i32, i32* %arrayidx147, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %109 to i64
  %110 = load i32, i32* %net1, align 4
  %idxprom149 = sext i32 %110 to i64
  %111 = load i32**, i32*** %number, align 8
  %arrayidx150 = getelementptr inbounds i32*, i32** %111, i64 %idxprom149
  %112 = load i32*, i32** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %112, i64 %idxprom148
  %113 = load i32, i32* %arrayidx151, align 4
  %cmp152 = icmp ne i32 %108, %113
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %for.body.143
  store i32 1, i32* %different, align 4
  br label %for.end.158

if.end.155:                                       ; preds = %for.body.143
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %114 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %114, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond.140

for.end.158:                                      ; preds = %if.then.154, %for.cond.140
  %115 = load i32, i32* %different, align 4
  %tobool = icmp ne i32 %115, 0
  br i1 %tobool, label %if.end.166, label %if.then.159

if.then.159:                                      ; preds = %for.end.158
  %116 = load i32, i32* %net2, align 4
  %idxprom160 = sext i32 %116 to i64
  %117 = load i32**, i32*** %number, align 8
  %arrayidx161 = getelementptr inbounds i32*, i32** %117, i64 %idxprom160
  %118 = load i32*, i32** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 0, i32* %arrayidx162, align 4
  %119 = load i32, i32* %net1, align 4
  %idxprom163 = sext i32 %119 to i64
  %120 = load i32*, i32** @how_many, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %120, i64 %idxprom163
  %121 = load i32, i32* %arrayidx164, align 4
  %inc165 = add nsw i32 %121, 1
  store i32 %inc165, i32* %arrayidx164, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.159, %for.end.158
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166, %if.then.138
  %122 = load i32, i32* %net2, align 4
  %inc168 = add nsw i32 %122, 1
  store i32 %inc168, i32* %net2, align 4
  br label %for.cond.126

for.end.169:                                      ; preds = %for.cond.126
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.end.169, %if.then.116, %if.then.107
  %123 = load i32, i32* %net1, align 4
  %inc171 = add nsw i32 %123, 1
  store i32 %inc171, i32* %net1, align 4
  br label %for.cond.98

for.end.172:                                      ; preds = %for.cond.98
  %124 = load i32*, i32** %arraynet, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 0, i32* %arrayidx173, align 4
  store i32 1, i32* %net, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.188, %for.end.172
  %125 = load i32, i32* %net, align 4
  %126 = load i32, i32* @numnets, align 4
  %cmp175 = icmp sle i32 %125, %126
  br i1 %cmp175, label %for.body.177, label %for.end.190

for.body.177:                                     ; preds = %for.cond.174
  %127 = load i32, i32* %net, align 4
  %idxprom178 = sext i32 %127 to i64
  %128 = load i32*, i32** @how_many, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %128, i64 %idxprom178
  %129 = load i32, i32* %arrayidx179, align 4
  %cmp180 = icmp sle i32 %129, 0
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %for.body.177
  br label %for.inc.188

if.end.183:                                       ; preds = %for.body.177
  %130 = load i32, i32* %net, align 4
  %131 = load i32*, i32** %arraynet, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %131, i64 0
  %132 = load i32, i32* %arrayidx184, align 4
  %inc185 = add nsw i32 %132, 1
  store i32 %inc185, i32* %arrayidx184, align 4
  %idxprom186 = sext i32 %inc185 to i64
  %133 = load i32*, i32** %arraynet, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %133, i64 %idxprom186
  store i32 %130, i32* %arrayidx187, align 4
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.183, %if.then.182
  %134 = load i32, i32* %net, align 4
  %inc189 = add nsw i32 %134, 1
  store i32 %inc189, i32* %net, align 4
  br label %for.cond.174

for.end.190:                                      ; preds = %for.cond.174
  %135 = load i32*, i32** %arraynet, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %135, i64 0
  %136 = load i32, i32* %arrayidx191, align 4
  store i32 %136, i32* %num, align 4
  %137 = load i32*, i32** %arraynet, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %137, i64 0
  %138 = load i32, i32* %arrayidx192, align 4
  %idxprom193 = sext i32 %138 to i64
  %139 = load i32*, i32** %arraynet, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %139, i64 %idxprom193
  %140 = load i32, i32* %arrayidx194, align 4
  %141 = load i32*, i32** %arraynet, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %140, i32* %arrayidx195, align 4
  %142 = load i32*, i32** %arraynet, align 8
  %143 = bitcast i32* %142 to i8*
  %144 = load i32, i32* %num, align 4
  call void @qsortx(i8* %143, i32 %144, i32 4)
  store i32 0, i32* %num, align 4
  store i32 0, i32* %cnum, align 4
  store i32 0, i32* %c2num, align 4
  store i32 1, i32* %net, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.216, %for.end.190
  %145 = load i32, i32* %net, align 4
  %146 = load i32, i32* @numnets, align 4
  %cmp197 = icmp sle i32 %145, %146
  br i1 %cmp197, label %for.body.199, label %for.end.218

for.body.199:                                     ; preds = %for.cond.196
  %147 = load i32, i32* %net, align 4
  %idxprom200 = sext i32 %147 to i64
  %148 = load i32**, i32*** %number, align 8
  %arrayidx201 = getelementptr inbounds i32*, i32** %148, i64 %idxprom200
  %149 = load i32*, i32** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %149, i64 0
  %150 = load i32, i32* %arrayidx202, align 4
  %cmp203 = icmp sgt i32 %150, 0
  br i1 %cmp203, label %if.then.205, label %if.end.215

if.then.205:                                      ; preds = %for.body.199
  %151 = load i32, i32* %net, align 4
  %idxprom206 = sext i32 %151 to i64
  %152 = load i32**, i32*** %number, align 8
  %arrayidx207 = getelementptr inbounds i32*, i32** %152, i64 %idxprom206
  %153 = load i32*, i32** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %153, i64 0
  %154 = load i32, i32* %arrayidx208, align 4
  %sub = sub nsw i32 %154, 1
  %155 = load i32, i32* %cnum, align 4
  %add209 = add nsw i32 %155, %sub
  store i32 %add209, i32* %cnum, align 4
  %156 = load i32, i32* %net, align 4
  %idxprom210 = sext i32 %156 to i64
  %157 = load i32**, i32*** %number, align 8
  %arrayidx211 = getelementptr inbounds i32*, i32** %157, i64 %idxprom210
  %158 = load i32*, i32** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %158, i64 0
  %159 = load i32, i32* %arrayidx212, align 4
  %160 = load i32, i32* %c2num, align 4
  %add213 = add nsw i32 %160, %159
  store i32 %add213, i32* %c2num, align 4
  %161 = load i32, i32* %num, align 4
  %inc214 = add nsw i32 %161, 1
  store i32 %inc214, i32* %num, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.205, %for.body.199
  br label %for.inc.216

for.inc.216:                                      ; preds = %if.end.215
  %162 = load i32, i32* %net, align 4
  %inc217 = add nsw i32 %162, 1
  store i32 %inc217, i32* %net, align 4
  br label %for.cond.196

for.end.218:                                      ; preds = %for.cond.196
  %163 = load i32, i32* %num, align 4
  %conv219 = sitofp i32 %163 to double
  %164 = load i32, i32* @numcells, align 4
  %conv220 = sitofp i32 %164 to double
  %div221 = fdiv double %conv219, %conv220
  store double %div221, double* %C, align 8
  %165 = load i32, i32* %cnum, align 4
  %conv222 = sitofp i32 %165 to double
  %166 = load i32, i32* %num, align 4
  %conv223 = sitofp i32 %166 to double
  %div224 = fdiv double %conv222, %conv223
  store double %div224, double* %C1, align 8
  %167 = load i32, i32* @numcells, align 4
  %168 = load double, double* %C1, align 8
  %169 = load i32, i32* @numnets, align 4
  %conv225 = sitofp i32 %169 to double
  %170 = load i32, i32* @numcells, align 4
  %conv226 = sitofp i32 %170 to double
  %div227 = fdiv double %conv225, %conv226
  %171 = load double, double* %C, align 8
  %div228 = fdiv double %div227, %171
  %172 = load double, double* %C, align 8
  %call229 = call double @wireratio(i32 %167, double %168, double %div228, double %172)
  store double %call229, double* %ratio, align 8
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %174 = load double, double* %ratio, align 8
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i32 0, i32 0), double %174)
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %call231 = call i32 @fflush(%struct._IO_FILE* %175)
  %176 = load double, double* %ratio, align 8
  ret double %176
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @qsortx(i8* %base, i32 %n, i32 %size) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %i = alloca i8*, align 8
  %j = alloca i8*, align 8
  %lo = alloca i8*, align 8
  %hi = alloca i8*, align 8
  %min = alloca i8*, align 8
  %max = alloca i8*, align 8
  store i8* %base, i8** %base.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.52

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  store i32 %1, i32* @qsz, align 4
  %2 = load i32, i32* @qsz, align 4
  %mul = mul nsw i32 %2, 4
  store i32 %mul, i32* @thresh, align 4
  %3 = load i32, i32* @qsz, align 4
  %mul1 = mul nsw i32 %3, 6
  store i32 %mul1, i32* @mthresh, align 4
  %4 = load i8*, i8** %base.addr, align 8
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* @qsz, align 4
  %mul2 = mul nsw i32 %5, %6
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %max, align 8
  %7 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp sge i32 %7, 4
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %8 = load i8*, i8** %base.addr, align 8
  %9 = load i8*, i8** %max, align 8
  call void @qst(i8* %8, i8* %9)
  %10 = load i8*, i8** %base.addr, align 8
  %11 = load i32, i32* @thresh, align 4
  %idx.ext5 = sext i32 %11 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %10, i64 %idx.ext5
  store i8* %add.ptr6, i8** %hi, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %12 = load i8*, i8** %max, align 8
  store i8* %12, i8** %hi, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  %13 = load i8*, i8** %base.addr, align 8
  store i8* %13, i8** %lo, align 8
  store i8* %13, i8** %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.13, %if.end.7
  %14 = load i32, i32* @qsz, align 4
  %15 = load i8*, i8** %lo, align 8
  %idx.ext8 = sext i32 %14 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %15, i64 %idx.ext8
  store i8* %add.ptr9, i8** %lo, align 8
  %16 = load i8*, i8** %hi, align 8
  %cmp10 = icmp ult i8* %add.ptr9, %16
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %j, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i8*, i8** %lo, align 8
  %20 = bitcast i8* %19 to i32*
  %call = call i32 @comparex(i32* %18, i32* %20)
  %cmp11 = icmp sgt i32 %call, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  %21 = load i8*, i8** %lo, align 8
  store i8* %21, i8** %j, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %j, align 8
  %23 = load i8*, i8** %base.addr, align 8
  %cmp14 = icmp ne i8* %22, %23
  br i1 %cmp14, label %if.then.15, label %if.end.23

if.then.15:                                       ; preds = %for.end
  %24 = load i8*, i8** %base.addr, align 8
  store i8* %24, i8** %i, align 8
  %25 = load i8*, i8** %base.addr, align 8
  %26 = load i32, i32* @qsz, align 4
  %idx.ext16 = sext i32 %26 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %25, i64 %idx.ext16
  store i8* %add.ptr17, i8** %hi, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.body.20, %if.then.15
  %27 = load i8*, i8** %i, align 8
  %28 = load i8*, i8** %hi, align 8
  %cmp19 = icmp ult i8* %27, %28
  br i1 %cmp19, label %for.body.20, label %for.end.22

for.body.20:                                      ; preds = %for.cond.18
  %29 = load i8*, i8** %j, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %c, align 1
  %31 = load i8*, i8** %i, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %j, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr, i8** %j, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8, i8* %c, align 1
  %35 = load i8*, i8** %i, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr21, i8** %i, align 8
  store i8 %34, i8* %35, align 1
  br label %for.cond.18

for.end.22:                                       ; preds = %for.cond.18
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.22, %for.end
  %36 = load i8*, i8** %base.addr, align 8
  store i8* %36, i8** %min, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %if.end.51, %if.end.23
  %37 = load i32, i32* @qsz, align 4
  %38 = load i8*, i8** %min, align 8
  %idx.ext25 = sext i32 %37 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %38, i64 %idx.ext25
  store i8* %add.ptr26, i8** %min, align 8
  store i8* %add.ptr26, i8** %hi, align 8
  %39 = load i8*, i8** %max, align 8
  %cmp27 = icmp ult i8* %add.ptr26, %39
  br i1 %cmp27, label %for.body.28, label %for.end.52

for.body.28:                                      ; preds = %for.cond.24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.28
  %40 = load i32, i32* @qsz, align 4
  %41 = load i8*, i8** %hi, align 8
  %idx.ext29 = sext i32 %40 to i64
  %idx.neg = sub i64 0, %idx.ext29
  %add.ptr30 = getelementptr inbounds i8, i8* %41, i64 %idx.neg
  store i8* %add.ptr30, i8** %hi, align 8
  %42 = bitcast i8* %add.ptr30 to i32*
  %43 = load i8*, i8** %min, align 8
  %44 = bitcast i8* %43 to i32*
  %call31 = call i32 @comparex(i32* %42, i32* %44)
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %45 = load i32, i32* @qsz, align 4
  %46 = load i8*, i8** %hi, align 8
  %idx.ext33 = sext i32 %45 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %46, i64 %idx.ext33
  store i8* %add.ptr34, i8** %hi, align 8
  %47 = load i8*, i8** %min, align 8
  %cmp35 = icmp ne i8* %add.ptr34, %47
  br i1 %cmp35, label %if.then.36, label %if.end.51

if.then.36:                                       ; preds = %while.end
  %48 = load i8*, i8** %min, align 8
  %49 = load i32, i32* @qsz, align 4
  %idx.ext37 = sext i32 %49 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %48, i64 %idx.ext37
  store i8* %add.ptr38, i8** %lo, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.end.49, %if.then.36
  %50 = load i8*, i8** %lo, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %incdec.ptr40, i8** %lo, align 8
  %51 = load i8*, i8** %min, align 8
  %cmp41 = icmp uge i8* %incdec.ptr40, %51
  br i1 %cmp41, label %for.body.42, label %for.end.50

for.body.42:                                      ; preds = %for.cond.39
  %52 = load i8*, i8** %lo, align 8
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %c, align 1
  %54 = load i8*, i8** %lo, align 8
  store i8* %54, i8** %j, align 8
  store i8* %54, i8** %i, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %for.body.42
  %55 = load i32, i32* @qsz, align 4
  %56 = load i8*, i8** %j, align 8
  %idx.ext44 = sext i32 %55 to i64
  %idx.neg45 = sub i64 0, %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, i8* %56, i64 %idx.neg45
  store i8* %add.ptr46, i8** %j, align 8
  %57 = load i8*, i8** %hi, align 8
  %cmp47 = icmp uge i8* %add.ptr46, %57
  br i1 %cmp47, label %for.body.48, label %for.end.49

for.body.48:                                      ; preds = %for.cond.43
  %58 = load i8*, i8** %j, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %i, align 8
  store i8 %59, i8* %60, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.48
  %61 = load i8*, i8** %j, align 8
  store i8* %61, i8** %i, align 8
  br label %for.cond.43

for.end.49:                                       ; preds = %for.cond.43
  %62 = load i8, i8* %c, align 1
  %63 = load i8*, i8** %i, align 8
  store i8 %62, i8* %63, align 1
  br label %for.cond.39

for.end.50:                                       ; preds = %for.cond.39
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %while.end
  br label %for.cond.24

for.end.52:                                       ; preds = %if.then, %for.cond.24
  ret void
}

declare double @wireratio(i32, double, double, double) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @comparex(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %b.addr, align 8
  %1 = load i32, i32* %0, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** @how_many, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32*, i32** %a.addr, align 8
  %5 = load i32, i32* %4, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** @how_many, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %3, %7
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define void @qst(i8* %base, i8* %max) #0 {
entry:
  %base.addr = alloca i8*, align 8
  %max.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %i = alloca i8*, align 8
  %j = alloca i8*, align 8
  %jj = alloca i8*, align 8
  %ii = alloca i32, align 4
  %mid = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  store i8* %base, i8** %base.addr, align 8
  store i8* %max, i8** %max.addr, align 8
  %0 = load i8*, i8** %max.addr, align 8
  %1 = load i8*, i8** %base.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %lo, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.100, %entry
  %2 = load i8*, i8** %base.addr, align 8
  %3 = load i32, i32* @qsz, align 4
  %4 = load i32, i32* %lo, align 4
  %5 = load i32, i32* @qsz, align 4
  %div = sdiv i32 %4, %5
  %shr = ashr i32 %div, 1
  %mul = mul nsw i32 %3, %shr
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %i, align 8
  store i8* %add.ptr, i8** %mid, align 8
  %6 = load i32, i32* %lo, align 4
  %7 = load i32, i32* @mthresh, align 4
  %cmp = icmp sge i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end.29

if.then:                                          ; preds = %do.body
  %8 = load i8*, i8** %base.addr, align 8
  store i8* %8, i8** %jj, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load i8*, i8** %i, align 8
  %11 = bitcast i8* %10 to i32*
  %call = call i32 @comparex(i32* %9, i32* %11)
  %cmp4 = icmp sgt i32 %call, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load i8*, i8** %jj, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load i8*, i8** %i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %13, %cond.false ]
  store i8* %cond, i8** %j, align 8
  %14 = load i8*, i8** %j, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i8*, i8** %max.addr, align 8
  %17 = load i32, i32* @qsz, align 4
  %idx.ext6 = sext i32 %17 to i64
  %idx.neg = sub i64 0, %idx.ext6
  %add.ptr7 = getelementptr inbounds i8, i8* %16, i64 %idx.neg
  store i8* %add.ptr7, i8** %tmp, align 8
  %18 = bitcast i8* %add.ptr7 to i32*
  %call8 = call i32 @comparex(i32* %15, i32* %18)
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.22

if.then.11:                                       ; preds = %cond.end
  %19 = load i8*, i8** %j, align 8
  %20 = load i8*, i8** %jj, align 8
  %cmp12 = icmp eq i8* %19, %20
  br i1 %cmp12, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %if.then.11
  %21 = load i8*, i8** %i, align 8
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.then.11
  %22 = load i8*, i8** %jj, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.14
  %cond17 = phi i8* [ %21, %cond.true.14 ], [ %22, %cond.false.15 ]
  store i8* %cond17, i8** %j, align 8
  %23 = load i8*, i8** %j, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i8*, i8** %tmp, align 8
  %26 = bitcast i8* %25 to i32*
  %call18 = call i32 @comparex(i32* %24, i32* %26)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %cond.end.16
  %27 = load i8*, i8** %tmp, align 8
  store i8* %27, i8** %j, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %cond.end.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %cond.end
  %28 = load i8*, i8** %j, align 8
  %29 = load i8*, i8** %i, align 8
  %cmp23 = icmp ne i8* %28, %29
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.22
  %30 = load i32, i32* @qsz, align 4
  store i32 %30, i32* %ii, align 4
  br label %do.body.26

do.body.26:                                       ; preds = %do.cond, %if.then.25
  %31 = load i8*, i8** %i, align 8
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %c, align 1
  %33 = load i8*, i8** %j, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %i, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %i, align 8
  store i8 %34, i8* %35, align 1
  %36 = load i8, i8* %c, align 1
  %37 = load i8*, i8** %j, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr27, i8** %j, align 8
  store i8 %36, i8* %37, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body.26
  %38 = load i32, i32* %ii, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %ii, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body.26, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.28

if.end.28:                                        ; preds = %do.end, %if.end.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.body
  %39 = load i8*, i8** %base.addr, align 8
  store i8* %39, i8** %i, align 8
  %40 = load i8*, i8** %max.addr, align 8
  %41 = load i32, i32* @qsz, align 4
  %idx.ext30 = sext i32 %41 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %40, i64 %idx.neg31
  store i8* %add.ptr32, i8** %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end.76, %if.end.29
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %42 = load i8*, i8** %i, align 8
  %43 = load i8*, i8** %mid, align 8
  %cmp33 = icmp ult i8* %42, %43
  br i1 %cmp33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %44 = load i8*, i8** %i, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i8*, i8** %mid, align 8
  %47 = bitcast i8* %46 to i32*
  %call35 = call i32 @comparex(i32* %45, i32* %47)
  %cmp36 = icmp sle i32 %call35, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %48 = phi i1 [ false, %while.cond ], [ %cmp36, %land.rhs ]
  br i1 %48, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %49 = load i32, i32* @qsz, align 4
  %50 = load i8*, i8** %i, align 8
  %idx.ext38 = sext i32 %49 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %50, i64 %idx.ext38
  store i8* %add.ptr39, i8** %i, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.40

while.cond.40:                                    ; preds = %if.then.47, %while.end
  %51 = load i8*, i8** %j, align 8
  %52 = load i8*, i8** %mid, align 8
  %cmp41 = icmp ugt i8* %51, %52
  br i1 %cmp41, label %while.body.43, label %while.end.61

while.body.43:                                    ; preds = %while.cond.40
  %53 = load i8*, i8** %mid, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i8*, i8** %j, align 8
  %56 = bitcast i8* %55 to i32*
  %call44 = call i32 @comparex(i32* %54, i32* %56)
  %cmp45 = icmp sle i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %while.body.43
  %57 = load i32, i32* @qsz, align 4
  %58 = load i8*, i8** %j, align 8
  %idx.ext48 = sext i32 %57 to i64
  %idx.neg49 = sub i64 0, %idx.ext48
  %add.ptr50 = getelementptr inbounds i8, i8* %58, i64 %idx.neg49
  store i8* %add.ptr50, i8** %j, align 8
  br label %while.cond.40

if.end.51:                                        ; preds = %while.body.43
  %59 = load i8*, i8** %i, align 8
  %60 = load i32, i32* @qsz, align 4
  %idx.ext52 = sext i32 %60 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %59, i64 %idx.ext52
  store i8* %add.ptr53, i8** %tmp, align 8
  %61 = load i8*, i8** %i, align 8
  %62 = load i8*, i8** %mid, align 8
  %cmp54 = icmp eq i8* %61, %62
  br i1 %cmp54, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %if.end.51
  %63 = load i8*, i8** %j, align 8
  store i8* %63, i8** %jj, align 8
  store i8* %63, i8** %mid, align 8
  br label %if.end.60

if.else:                                          ; preds = %if.end.51
  %64 = load i8*, i8** %j, align 8
  store i8* %64, i8** %jj, align 8
  %65 = load i32, i32* @qsz, align 4
  %66 = load i8*, i8** %j, align 8
  %idx.ext57 = sext i32 %65 to i64
  %idx.neg58 = sub i64 0, %idx.ext57
  %add.ptr59 = getelementptr inbounds i8, i8* %66, i64 %idx.neg58
  store i8* %add.ptr59, i8** %j, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.56
  br label %swap

while.end.61:                                     ; preds = %while.cond.40
  %67 = load i8*, i8** %i, align 8
  %68 = load i8*, i8** %mid, align 8
  %cmp62 = icmp eq i8* %67, %68
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %while.end.61
  br label %for.end

if.else.65:                                       ; preds = %while.end.61
  %69 = load i8*, i8** %mid, align 8
  store i8* %69, i8** %jj, align 8
  %70 = load i8*, i8** %i, align 8
  store i8* %70, i8** %mid, align 8
  store i8* %70, i8** %tmp, align 8
  %71 = load i32, i32* @qsz, align 4
  %72 = load i8*, i8** %j, align 8
  %idx.ext66 = sext i32 %71 to i64
  %idx.neg67 = sub i64 0, %idx.ext66
  %add.ptr68 = getelementptr inbounds i8, i8* %72, i64 %idx.neg67
  store i8* %add.ptr68, i8** %j, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.65
  br label %swap

swap:                                             ; preds = %if.end.69, %if.end.60
  %73 = load i32, i32* @qsz, align 4
  store i32 %73, i32* %ii, align 4
  br label %do.body.70

do.body.70:                                       ; preds = %do.cond.73, %swap
  %74 = load i8*, i8** %i, align 8
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %c, align 1
  %76 = load i8*, i8** %jj, align 8
  %77 = load i8, i8* %76, align 1
  %78 = load i8*, i8** %i, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr71, i8** %i, align 8
  store i8 %77, i8* %78, align 1
  %79 = load i8, i8* %c, align 1
  %80 = load i8*, i8** %jj, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr72, i8** %jj, align 8
  store i8 %79, i8* %80, align 1
  br label %do.cond.73

do.cond.73:                                       ; preds = %do.body.70
  %81 = load i32, i32* %ii, align 4
  %dec74 = add nsw i32 %81, -1
  store i32 %dec74, i32* %ii, align 4
  %tobool75 = icmp ne i32 %dec74, 0
  br i1 %tobool75, label %do.body.70, label %do.end.76

do.end.76:                                        ; preds = %do.cond.73
  %82 = load i8*, i8** %tmp, align 8
  store i8* %82, i8** %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.64
  %83 = load i8*, i8** %mid, align 8
  store i8* %83, i8** %j, align 8
  %84 = load i32, i32* @qsz, align 4
  %idx.ext77 = sext i32 %84 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %83, i64 %idx.ext77
  store i8* %add.ptr78, i8** %i, align 8
  %85 = load i8*, i8** %j, align 8
  %86 = load i8*, i8** %base.addr, align 8
  %sub.ptr.lhs.cast79 = ptrtoint i8* %85 to i64
  %sub.ptr.rhs.cast80 = ptrtoint i8* %86 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %conv82 = trunc i64 %sub.ptr.sub81 to i32
  store i32 %conv82, i32* %lo, align 4
  %87 = load i8*, i8** %max.addr, align 8
  %88 = load i8*, i8** %i, align 8
  %sub.ptr.lhs.cast83 = ptrtoint i8* %87 to i64
  %sub.ptr.rhs.cast84 = ptrtoint i8* %88 to i64
  %sub.ptr.sub85 = sub i64 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84
  %conv86 = trunc i64 %sub.ptr.sub85 to i32
  store i32 %conv86, i32* %hi, align 4
  %cmp87 = icmp sle i32 %conv82, %conv86
  br i1 %cmp87, label %if.then.89, label %if.else.94

if.then.89:                                       ; preds = %for.end
  %89 = load i32, i32* %lo, align 4
  %90 = load i32, i32* @thresh, align 4
  %cmp90 = icmp sge i32 %89, %90
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.89
  %91 = load i8*, i8** %base.addr, align 8
  %92 = load i8*, i8** %j, align 8
  call void @qst(i8* %91, i8* %92)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.then.89
  %93 = load i8*, i8** %i, align 8
  store i8* %93, i8** %base.addr, align 8
  %94 = load i32, i32* %hi, align 4
  store i32 %94, i32* %lo, align 4
  br label %if.end.99

if.else.94:                                       ; preds = %for.end
  %95 = load i32, i32* %hi, align 4
  %96 = load i32, i32* @thresh, align 4
  %cmp95 = icmp sge i32 %95, %96
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.else.94
  %97 = load i8*, i8** %i, align 8
  %98 = load i8*, i8** %max.addr, align 8
  call void @qst(i8* %97, i8* %98)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.else.94
  %99 = load i8*, i8** %j, align 8
  store i8* %99, i8** %max.addr, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.93
  br label %do.cond.100

do.cond.100:                                      ; preds = %if.end.99
  %100 = load i32, i32* %lo, align 4
  %101 = load i32, i32* @thresh, align 4
  %cmp101 = icmp sge i32 %100, %101
  br i1 %cmp101, label %do.body, label %do.end.103

do.end.103:                                       ; preds = %do.cond.100
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
