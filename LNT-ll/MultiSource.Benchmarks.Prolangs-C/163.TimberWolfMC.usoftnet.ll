; ModuleID = './MultiSource.Benchmarks.Prolangs-C/163.TimberWolfMC.usoftnet.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@termarray = external global %struct.termnets**, align 8
@netarray = external global %struct.dimbox**, align 8

; Function Attrs: nounwind uwtable
define i32 @usoftnet(%struct.cellbox* %cellptr) #0 {
entry:
  %cellptr.addr = alloca %struct.cellbox*, align 8
  %dimptr = alloca %struct.dimbox*, align 8
  %netptr = alloca %struct.netbox*, align 8
  %tmptr = alloca %struct.termnets*, align 8
  %UCptr = alloca %struct.uncombox*, align 8
  %tm = alloca i32, align 4
  %cost = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct.cellbox* %cellptr, %struct.cellbox** %cellptr.addr, align 8
  store i32 0, i32* %cost, align 4
  %0 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %unComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %0, i32 0, i32 20
  %1 = load %struct.uncombox*, %struct.uncombox** %unComTerms, align 8
  store %struct.uncombox* %1, %struct.uncombox** %UCptr, align 8
  store i32 1, i32* %tm, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %entry
  %2 = load i32, i32* %tm, align 4
  %3 = load %struct.cellbox*, %struct.cellbox** %cellptr.addr, align 8
  %numUnComTerms = getelementptr inbounds %struct.cellbox, %struct.cellbox* %3, i32 0, i32 18
  %4 = load i32, i32* %numUnComTerms, align 4
  %cmp = icmp sle i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %tm, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.uncombox*, %struct.uncombox** %UCptr, align 8
  %arrayidx = getelementptr inbounds %struct.uncombox, %struct.uncombox* %6, i64 %idxprom
  %terminal = getelementptr inbounds %struct.uncombox, %struct.uncombox* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %terminal, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %arrayidx2 = getelementptr inbounds %struct.termnets*, %struct.termnets** %8, i64 %idxprom1
  %9 = load %struct.termnets*, %struct.termnets** %arrayidx2, align 8
  store %struct.termnets* %9, %struct.termnets** %tmptr, align 8
  %10 = load %struct.termnets*, %struct.termnets** %tmptr, align 8
  %net = getelementptr inbounds %struct.termnets, %struct.termnets* %10, i32 0, i32 0
  %11 = load i32, i32* %net, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %arrayidx4 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %12, i64 %idxprom3
  %13 = load %struct.dimbox*, %struct.dimbox** %arrayidx4, align 8
  store %struct.dimbox* %13, %struct.dimbox** %dimptr, align 8
  %14 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag = getelementptr inbounds %struct.dimbox, %struct.dimbox* %14, i32 0, i32 7
  %15 = load i32, i32* %flag, align 4
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %16 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %skip = getelementptr inbounds %struct.dimbox, %struct.dimbox* %16, i32 0, i32 1
  %17 = load i32, i32* %skip, align 4
  %cmp6 = icmp eq i32 %17, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.91

if.end:                                           ; preds = %lor.lhs.false
  %18 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %flag7 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %18, i32 0, i32 7
  store i32 0, i32* %flag7, align 4
  %19 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %netptr8 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %19, i32 0, i32 0
  %20 = load %struct.netbox*, %struct.netbox** %netptr8, align 8
  store %struct.netbox* %20, %struct.netbox** %netptr, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end
  %21 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp10 = icmp eq %struct.netbox* %21, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.cond.9
  br label %for.end

if.end.12:                                        ; preds = %for.cond.9
  %22 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip13 = getelementptr inbounds %struct.netbox, %struct.netbox* %22, i32 0, i32 9
  %23 = load i32, i32* %skip13, align 4
  %cmp14 = icmp eq i32 %23, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %for.inc

if.end.16:                                        ; preds = %if.end.12
  %24 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag17 = getelementptr inbounds %struct.netbox, %struct.netbox* %24, i32 0, i32 6
  %25 = load i32, i32* %flag17, align 4
  %cmp18 = icmp eq i32 %25, 1
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  %26 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx = getelementptr inbounds %struct.netbox, %struct.netbox* %26, i32 0, i32 3
  %27 = load i32, i32* %newx, align 4
  %28 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %28, i32 0, i32 5
  store i32 %27, i32* %newxmax, align 4
  %29 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %29, i32 0, i32 3
  store i32 %27, i32* %newxmin, align 4
  %30 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy = getelementptr inbounds %struct.netbox, %struct.netbox* %30, i32 0, i32 4
  %31 = load i32, i32* %newy, align 4
  %32 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %32, i32 0, i32 10
  store i32 %31, i32* %newymax, align 4
  %33 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %33, i32 0, i32 8
  store i32 %31, i32* %newymin, align 4
  %34 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag20 = getelementptr inbounds %struct.netbox, %struct.netbox* %34, i32 0, i32 6
  store i32 0, i32* %flag20, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.end.16
  %35 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos = getelementptr inbounds %struct.netbox, %struct.netbox* %35, i32 0, i32 1
  %36 = load i32, i32* %xpos, align 4
  %37 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax21 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %37, i32 0, i32 5
  store i32 %36, i32* %newxmax21, align 4
  %38 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin22 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %38, i32 0, i32 3
  store i32 %36, i32* %newxmin22, align 4
  %39 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos = getelementptr inbounds %struct.netbox, %struct.netbox* %39, i32 0, i32 2
  %40 = load i32, i32* %ypos, align 4
  %41 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax23 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %41, i32 0, i32 10
  store i32 %40, i32* %newymax23, align 4
  %42 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin24 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %42, i32 0, i32 8
  store i32 %40, i32* %newymin24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.19
  %43 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm = getelementptr inbounds %struct.netbox, %struct.netbox* %43, i32 0, i32 0
  %44 = load %struct.netbox*, %struct.netbox** %nextterm, align 8
  store %struct.netbox* %44, %struct.netbox** %netptr, align 8
  br label %for.end

for.inc:                                          ; preds = %if.then.15
  %45 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm26 = getelementptr inbounds %struct.netbox, %struct.netbox* %45, i32 0, i32 0
  %46 = load %struct.netbox*, %struct.netbox** %nextterm26, align 8
  store %struct.netbox* %46, %struct.netbox** %netptr, align 8
  br label %for.cond.9

for.end:                                          ; preds = %if.end.25, %if.then.11
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.66, %for.end
  %47 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %cmp28 = icmp ne %struct.netbox* %47, null
  br i1 %cmp28, label %for.body.29, label %for.end.68

for.body.29:                                      ; preds = %for.cond.27
  %48 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %skip30 = getelementptr inbounds %struct.netbox, %struct.netbox* %48, i32 0, i32 9
  %49 = load i32, i32* %skip30, align 4
  %cmp31 = icmp eq i32 %49, 1
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body.29
  br label %for.inc.66

if.end.33:                                        ; preds = %for.body.29
  %50 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag34 = getelementptr inbounds %struct.netbox, %struct.netbox* %50, i32 0, i32 6
  %51 = load i32, i32* %flag34, align 4
  %cmp35 = icmp eq i32 %51, 1
  br i1 %cmp35, label %if.then.36, label %if.else.40

if.then.36:                                       ; preds = %if.end.33
  %52 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newx37 = getelementptr inbounds %struct.netbox, %struct.netbox* %52, i32 0, i32 3
  %53 = load i32, i32* %newx37, align 4
  store i32 %53, i32* %x, align 4
  %54 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %newy38 = getelementptr inbounds %struct.netbox, %struct.netbox* %54, i32 0, i32 4
  %55 = load i32, i32* %newy38, align 4
  store i32 %55, i32* %y, align 4
  %56 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %flag39 = getelementptr inbounds %struct.netbox, %struct.netbox* %56, i32 0, i32 6
  store i32 0, i32* %flag39, align 4
  br label %if.end.43

if.else.40:                                       ; preds = %if.end.33
  %57 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %xpos41 = getelementptr inbounds %struct.netbox, %struct.netbox* %57, i32 0, i32 1
  %58 = load i32, i32* %xpos41, align 4
  store i32 %58, i32* %x, align 4
  %59 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %ypos42 = getelementptr inbounds %struct.netbox, %struct.netbox* %59, i32 0, i32 2
  %60 = load i32, i32* %ypos42, align 4
  store i32 %60, i32* %y, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.36
  %61 = load i32, i32* %x, align 4
  %62 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin44 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %62, i32 0, i32 3
  %63 = load i32, i32* %newxmin44, align 4
  %cmp45 = icmp slt i32 %61, %63
  br i1 %cmp45, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %if.end.43
  %64 = load i32, i32* %x, align 4
  %65 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin47 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %65, i32 0, i32 3
  store i32 %64, i32* %newxmin47, align 4
  br label %if.end.54

if.else.48:                                       ; preds = %if.end.43
  %66 = load i32, i32* %x, align 4
  %67 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax49 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %67, i32 0, i32 5
  %68 = load i32, i32* %newxmax49, align 4
  %cmp50 = icmp sgt i32 %66, %68
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.else.48
  %69 = load i32, i32* %x, align 4
  %70 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax52 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %70, i32 0, i32 5
  store i32 %69, i32* %newxmax52, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.else.48
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.46
  %71 = load i32, i32* %y, align 4
  %72 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin55 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %72, i32 0, i32 8
  %73 = load i32, i32* %newymin55, align 4
  %cmp56 = icmp slt i32 %71, %73
  br i1 %cmp56, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.end.54
  %74 = load i32, i32* %y, align 4
  %75 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin58 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %75, i32 0, i32 8
  store i32 %74, i32* %newymin58, align 4
  br label %if.end.65

if.else.59:                                       ; preds = %if.end.54
  %76 = load i32, i32* %y, align 4
  %77 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax60 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %77, i32 0, i32 10
  %78 = load i32, i32* %newymax60, align 4
  %cmp61 = icmp sgt i32 %76, %78
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.else.59
  %79 = load i32, i32* %y, align 4
  %80 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax63 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %80, i32 0, i32 10
  store i32 %79, i32* %newymax63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.else.59
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.57
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65, %if.then.32
  %81 = load %struct.netbox*, %struct.netbox** %netptr, align 8
  %nextterm67 = getelementptr inbounds %struct.netbox, %struct.netbox* %81, i32 0, i32 0
  %82 = load %struct.netbox*, %struct.netbox** %nextterm67, align 8
  store %struct.netbox* %82, %struct.netbox** %netptr, align 8
  br label %for.cond.27

for.end.68:                                       ; preds = %for.cond.27
  %83 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %83, i32 0, i32 11
  %84 = load double, double* %Hweight, align 8
  %85 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmax69 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %85, i32 0, i32 5
  %86 = load i32, i32* %newxmax69, align 4
  %87 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newxmin70 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %87, i32 0, i32 3
  %88 = load i32, i32* %newxmin70, align 4
  %sub = sub nsw i32 %86, %88
  %conv = sitofp i32 %sub to double
  %mul = fmul double %84, %conv
  %conv71 = fptosi double %mul to i32
  %89 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Hweight72 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %89, i32 0, i32 11
  %90 = load double, double* %Hweight72, align 8
  %91 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %91, i32 0, i32 4
  %92 = load i32, i32* %xmax, align 4
  %93 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %xmin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %93, i32 0, i32 2
  %94 = load i32, i32* %xmin, align 4
  %sub73 = sub nsw i32 %92, %94
  %conv74 = sitofp i32 %sub73 to double
  %mul75 = fmul double %90, %conv74
  %conv76 = fptosi double %mul75 to i32
  %sub77 = sub nsw i32 %conv71, %conv76
  %95 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight = getelementptr inbounds %struct.dimbox, %struct.dimbox* %95, i32 0, i32 12
  %96 = load double, double* %Vweight, align 8
  %97 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymax78 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %97, i32 0, i32 10
  %98 = load i32, i32* %newymax78, align 4
  %99 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %newymin79 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %99, i32 0, i32 8
  %100 = load i32, i32* %newymin79, align 4
  %sub80 = sub nsw i32 %98, %100
  %conv81 = sitofp i32 %sub80 to double
  %mul82 = fmul double %96, %conv81
  %conv83 = fptosi double %mul82 to i32
  %add = add nsw i32 %sub77, %conv83
  %101 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %Vweight84 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %101, i32 0, i32 12
  %102 = load double, double* %Vweight84, align 8
  %103 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymax = getelementptr inbounds %struct.dimbox, %struct.dimbox* %103, i32 0, i32 9
  %104 = load i32, i32* %ymax, align 4
  %105 = load %struct.dimbox*, %struct.dimbox** %dimptr, align 8
  %ymin = getelementptr inbounds %struct.dimbox, %struct.dimbox* %105, i32 0, i32 6
  %106 = load i32, i32* %ymin, align 4
  %sub85 = sub nsw i32 %104, %106
  %conv86 = sitofp i32 %sub85 to double
  %mul87 = fmul double %102, %conv86
  %conv88 = fptosi double %mul87 to i32
  %sub89 = sub nsw i32 %add, %conv88
  %107 = load i32, i32* %cost, align 4
  %add90 = add nsw i32 %107, %sub89
  store i32 %add90, i32* %cost, align 4
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.68, %if.then
  %108 = load i32, i32* %tm, align 4
  %inc = add nsw i32 %108, 1
  store i32 %inc, i32* %tm, align 4
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %109 = load i32, i32* %cost, align 4
  ret i32 %109
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
