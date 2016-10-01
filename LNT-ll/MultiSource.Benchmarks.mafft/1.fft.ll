; ModuleID = './MultiSource.Benchmarks.mafft/1.fft.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Fukusosuu = type { double, double }

@fft.last_n = internal global i32 0, align 4
@fft.bitrev = internal global i32* null, align 8
@fft.sintbl = internal global float* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @fft(i32 %n, %struct._Fukusosuu* %x, i32 %dum) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %x.addr = alloca %struct._Fukusosuu*, align 8
  %dum.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ik = alloca i32, align 4
  %h = alloca i32, align 4
  %d = alloca i32, align 4
  %k2 = alloca i32, align 4
  %n4 = alloca i32, align 4
  %inverse = alloca i32, align 4
  %t = alloca float, align 4
  %s = alloca float, align 4
  %c = alloca float, align 4
  %dR = alloca float, align 4
  %dI = alloca float, align 4
  store i32 %n, i32* %n.addr, align 4
  store %struct._Fukusosuu* %x, %struct._Fukusosuu** %x.addr, align 8
  store i32 %dum, i32* %dum.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, i32* %n.addr, align 4
  store i32 1, i32* %inverse, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %inverse, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %2, 4
  store i32 %div, i32* %n4, align 4
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* @fft.last_n, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.15

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load i32, i32* %n.addr, align 4
  store i32 %6, i32* @fft.last_n, align 4
  %7 = load float*, float** @fft.sintbl, align 8
  %8 = bitcast float* %7 to i8*
  %9 = load i32, i32* %n.addr, align 4
  %10 = load i32, i32* %n4, align 4
  %add = add nsw i32 %9, %10
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @realloc(i8* %8, i64 %mul) #3
  %11 = bitcast i8* %call to float*
  store float* %11, float** @fft.sintbl, align 8
  %12 = load i32*, i32** @fft.bitrev, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i32, i32* %n.addr, align 4
  %conv4 = sext i32 %14 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call i8* @realloc(i8* %13, i64 %mul5) #3
  %15 = bitcast i8* %call6 to i32*
  store i32* %15, i32** @fft.bitrev, align 8
  %16 = load float*, float** @fft.sintbl, align 8
  %cmp7 = icmp eq float* %16, null
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.then.3
  %17 = load i32*, i32** @fft.bitrev, align 8
  %cmp10 = icmp eq i32* %17, null
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %lor.lhs.false.9, %if.then.3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false.9
  %19 = load i32, i32* %n.addr, align 4
  %20 = load float*, float** @fft.sintbl, align 8
  call void @make_sintbl(i32 %19, float* %20)
  %21 = load i32, i32* %n.addr, align 4
  %22 = load i32*, i32** @fft.bitrev, align 8
  call void @make_bitrev(i32 %21, i32* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp16 = icmp slt i32 %23, %24
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i32*, i32** @fft.bitrev, align 8
  %arrayidx = getelementptr inbounds i32, i32* %26, i64 %idxprom
  %27 = load i32, i32* %arrayidx, align 4
  store i32 %27, i32* %j, align 4
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %j, align 4
  %cmp18 = icmp slt i32 %28, %29
  br i1 %cmp18, label %if.then.20, label %if.end.47

if.then.20:                                       ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %31, i64 %idxprom21
  %R = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx22, i32 0, i32 0
  %32 = load double, double* %R, align 8
  %conv23 = fptrunc double %32 to float
  store float %conv23, float* %t, align 4
  %33 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %33 to i64
  %34 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %34, i64 %idxprom24
  %R26 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx25, i32 0, i32 0
  %35 = load double, double* %R26, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %37, i64 %idxprom27
  %R29 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx28, i32 0, i32 0
  store double %35, double* %R29, align 8
  %38 = load float, float* %t, align 4
  %conv30 = fpext float %38 to double
  %39 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %39 to i64
  %40 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %40, i64 %idxprom31
  %R33 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx32, i32 0, i32 0
  store double %conv30, double* %R33, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %41 to i64
  %42 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %42, i64 %idxprom34
  %I = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx35, i32 0, i32 1
  %43 = load double, double* %I, align 8
  %conv36 = fptrunc double %43 to float
  store float %conv36, float* %t, align 4
  %44 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %44 to i64
  %45 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %45, i64 %idxprom37
  %I39 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx38, i32 0, i32 1
  %46 = load double, double* %I39, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %47 to i64
  %48 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %48, i64 %idxprom40
  %I42 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx41, i32 0, i32 1
  store double %46, double* %I42, align 8
  %49 = load float, float* %t, align 4
  %conv43 = fpext float %49 to double
  %50 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %50 to i64
  %51 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %51, i64 %idxprom44
  %I46 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx45, i32 0, i32 1
  store double %conv43, double* %I46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %k, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.131, %for.end
  %53 = load i32, i32* %k, align 4
  %54 = load i32, i32* %n.addr, align 4
  %cmp49 = icmp slt i32 %53, %54
  br i1 %cmp49, label %for.body.51, label %for.end.132

for.body.51:                                      ; preds = %for.cond.48
  store i32 0, i32* %h, align 4
  %55 = load i32, i32* %k, align 4
  %56 = load i32, i32* %k, align 4
  %add52 = add nsw i32 %55, %56
  store i32 %add52, i32* %k2, align 4
  %57 = load i32, i32* %n.addr, align 4
  %58 = load i32, i32* %k2, align 4
  %div53 = sdiv i32 %57, %58
  store i32 %div53, i32* %d, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.128, %for.body.51
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* %k, align 4
  %cmp55 = icmp slt i32 %59, %60
  br i1 %cmp55, label %for.body.57, label %for.end.130

for.body.57:                                      ; preds = %for.cond.54
  %61 = load i32, i32* %h, align 4
  %62 = load i32, i32* %n4, align 4
  %add58 = add nsw i32 %61, %62
  %idxprom59 = sext i32 %add58 to i64
  %63 = load float*, float** @fft.sintbl, align 8
  %arrayidx60 = getelementptr inbounds float, float* %63, i64 %idxprom59
  %64 = load float, float* %arrayidx60, align 4
  store float %64, float* %c, align 4
  %65 = load i32, i32* %inverse, align 4
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.then.61, label %if.else.65

if.then.61:                                       ; preds = %for.body.57
  %66 = load i32, i32* %h, align 4
  %idxprom62 = sext i32 %66 to i64
  %67 = load float*, float** @fft.sintbl, align 8
  %arrayidx63 = getelementptr inbounds float, float* %67, i64 %idxprom62
  %68 = load float, float* %arrayidx63, align 4
  %sub64 = fsub float -0.000000e+00, %68
  store float %sub64, float* %s, align 4
  br label %if.end.68

if.else.65:                                       ; preds = %for.body.57
  %69 = load i32, i32* %h, align 4
  %idxprom66 = sext i32 %69 to i64
  %70 = load float*, float** @fft.sintbl, align 8
  %arrayidx67 = getelementptr inbounds float, float* %70, i64 %idxprom66
  %71 = load float, float* %arrayidx67, align 4
  store float %71, float* %s, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.61
  %72 = load i32, i32* %j, align 4
  store i32 %72, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.124, %if.end.68
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %n.addr, align 4
  %cmp70 = icmp slt i32 %73, %74
  br i1 %cmp70, label %for.body.72, label %for.end.126

for.body.72:                                      ; preds = %for.cond.69
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %k, align 4
  %add73 = add nsw i32 %75, %76
  store i32 %add73, i32* %ik, align 4
  %77 = load float, float* %s, align 4
  %conv74 = fpext float %77 to double
  %78 = load i32, i32* %ik, align 4
  %idxprom75 = sext i32 %78 to i64
  %79 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx76 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %79, i64 %idxprom75
  %I77 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx76, i32 0, i32 1
  %80 = load double, double* %I77, align 8
  %mul78 = fmul double %conv74, %80
  %81 = load float, float* %c, align 4
  %conv79 = fpext float %81 to double
  %82 = load i32, i32* %ik, align 4
  %idxprom80 = sext i32 %82 to i64
  %83 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %83, i64 %idxprom80
  %R82 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx81, i32 0, i32 0
  %84 = load double, double* %R82, align 8
  %mul83 = fmul double %conv79, %84
  %add84 = fadd double %mul78, %mul83
  %conv85 = fptrunc double %add84 to float
  store float %conv85, float* %dR, align 4
  %85 = load float, float* %c, align 4
  %conv86 = fpext float %85 to double
  %86 = load i32, i32* %ik, align 4
  %idxprom87 = sext i32 %86 to i64
  %87 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %87, i64 %idxprom87
  %I89 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx88, i32 0, i32 1
  %88 = load double, double* %I89, align 8
  %mul90 = fmul double %conv86, %88
  %89 = load float, float* %s, align 4
  %conv91 = fpext float %89 to double
  %90 = load i32, i32* %ik, align 4
  %idxprom92 = sext i32 %90 to i64
  %91 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %91, i64 %idxprom92
  %R94 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx93, i32 0, i32 0
  %92 = load double, double* %R94, align 8
  %mul95 = fmul double %conv91, %92
  %sub96 = fsub double %mul90, %mul95
  %conv97 = fptrunc double %sub96 to float
  store float %conv97, float* %dI, align 4
  %93 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %93 to i64
  %94 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx99 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %94, i64 %idxprom98
  %R100 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx99, i32 0, i32 0
  %95 = load double, double* %R100, align 8
  %96 = load float, float* %dR, align 4
  %conv101 = fpext float %96 to double
  %sub102 = fsub double %95, %conv101
  %97 = load i32, i32* %ik, align 4
  %idxprom103 = sext i32 %97 to i64
  %98 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx104 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %98, i64 %idxprom103
  %R105 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx104, i32 0, i32 0
  store double %sub102, double* %R105, align 8
  %99 = load float, float* %dR, align 4
  %conv106 = fpext float %99 to double
  %100 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %100 to i64
  %101 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %101, i64 %idxprom107
  %R109 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx108, i32 0, i32 0
  %102 = load double, double* %R109, align 8
  %add110 = fadd double %102, %conv106
  store double %add110, double* %R109, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %103 to i64
  %104 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx112 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %104, i64 %idxprom111
  %I113 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx112, i32 0, i32 1
  %105 = load double, double* %I113, align 8
  %106 = load float, float* %dI, align 4
  %conv114 = fpext float %106 to double
  %sub115 = fsub double %105, %conv114
  %107 = load i32, i32* %ik, align 4
  %idxprom116 = sext i32 %107 to i64
  %108 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx117 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %108, i64 %idxprom116
  %I118 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx117, i32 0, i32 1
  store double %sub115, double* %I118, align 8
  %109 = load float, float* %dI, align 4
  %conv119 = fpext float %109 to double
  %110 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %110 to i64
  %111 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx121 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %111, i64 %idxprom120
  %I122 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx121, i32 0, i32 1
  %112 = load double, double* %I122, align 8
  %add123 = fadd double %112, %conv119
  store double %add123, double* %I122, align 8
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.72
  %113 = load i32, i32* %k2, align 4
  %114 = load i32, i32* %i, align 4
  %add125 = add nsw i32 %114, %113
  store i32 %add125, i32* %i, align 4
  br label %for.cond.69

for.end.126:                                      ; preds = %for.cond.69
  %115 = load i32, i32* %d, align 4
  %116 = load i32, i32* %h, align 4
  %add127 = add nsw i32 %116, %115
  store i32 %add127, i32* %h, align 4
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.end.126
  %117 = load i32, i32* %j, align 4
  %inc129 = add nsw i32 %117, 1
  store i32 %inc129, i32* %j, align 4
  br label %for.cond.54

for.end.130:                                      ; preds = %for.cond.54
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %118 = load i32, i32* %k2, align 4
  store i32 %118, i32* %k, align 4
  br label %for.cond.48

for.end.132:                                      ; preds = %for.cond.48
  %119 = load i32, i32* %inverse, align 4
  %tobool133 = icmp ne i32 %119, 0
  br i1 %tobool133, label %if.end.152, label %if.then.134

if.then.134:                                      ; preds = %for.end.132
  store i32 0, i32* %i, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.149, %if.then.134
  %120 = load i32, i32* %i, align 4
  %121 = load i32, i32* %n.addr, align 4
  %cmp136 = icmp slt i32 %120, %121
  br i1 %cmp136, label %for.body.138, label %for.end.151

for.body.138:                                     ; preds = %for.cond.135
  %122 = load i32, i32* %n.addr, align 4
  %conv139 = sitofp i32 %122 to double
  %123 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %123 to i64
  %124 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx141 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %124, i64 %idxprom140
  %R142 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx141, i32 0, i32 0
  %125 = load double, double* %R142, align 8
  %div143 = fdiv double %125, %conv139
  store double %div143, double* %R142, align 8
  %126 = load i32, i32* %n.addr, align 4
  %conv144 = sitofp i32 %126 to double
  %127 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %127 to i64
  %128 = load %struct._Fukusosuu*, %struct._Fukusosuu** %x.addr, align 8
  %arrayidx146 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %128, i64 %idxprom145
  %I147 = getelementptr inbounds %struct._Fukusosuu, %struct._Fukusosuu* %arrayidx146, i32 0, i32 1
  %129 = load double, double* %I147, align 8
  %div148 = fdiv double %129, %conv144
  store double %div148, double* %I147, align 8
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.138
  %130 = load i32, i32* %i, align 4
  %inc150 = add nsw i32 %130, 1
  store i32 %inc150, i32* %i, align 4
  br label %for.cond.135

for.end.151:                                      ; preds = %for.cond.135
  br label %if.end.152

if.end.152:                                       ; preds = %for.end.151, %for.end.132
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.152, %if.then.12
  %131 = load i32, i32* %retval
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @make_sintbl(i32 %n, float* %sintbl) #0 {
entry:
  %n.addr = alloca i32, align 4
  %sintbl.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n4 = alloca i32, align 4
  %n8 = alloca i32, align 4
  %c = alloca double, align 8
  %s = alloca double, align 8
  %dc = alloca double, align 8
  %ds = alloca double, align 8
  %t = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store float* %sintbl, float** %sintbl.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %n2, align 4
  %1 = load i32, i32* %n.addr, align 4
  %div1 = sdiv i32 %1, 4
  store i32 %div1, i32* %n4, align 4
  %2 = load i32, i32* %n.addr, align 4
  %div2 = sdiv i32 %2, 8
  store i32 %div2, i32* %n8, align 4
  %3 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %3 to double
  %div3 = fdiv double 0x400921FB54442D18, %conv
  %call = call double @sin(double %div3) #3
  store double %call, double* %t, align 8
  %4 = load double, double* %t, align 8
  %mul = fmul double 2.000000e+00, %4
  %5 = load double, double* %t, align 8
  %mul4 = fmul double %mul, %5
  store double %mul4, double* %dc, align 8
  %6 = load double, double* %dc, align 8
  %7 = load double, double* %dc, align 8
  %sub = fsub double 2.000000e+00, %7
  %mul5 = fmul double %6, %sub
  %call6 = call double @sqrt(double %mul5) #3
  store double %call6, double* %ds, align 8
  %8 = load double, double* %dc, align 8
  %mul7 = fmul double 2.000000e+00, %8
  store double %mul7, double* %t, align 8
  %9 = load i32, i32* %n4, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load float*, float** %sintbl.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %10, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx, align 4
  store double 1.000000e+00, double* %c, align 8
  %11 = load float*, float** %sintbl.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %11, i64 0
  store float 0.000000e+00, float* %arrayidx8, align 4
  store double 0.000000e+00, double* %s, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %n8, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load double, double* %dc, align 8
  %15 = load double, double* %c, align 8
  %sub10 = fsub double %15, %14
  store double %sub10, double* %c, align 8
  %16 = load double, double* %t, align 8
  %17 = load double, double* %c, align 8
  %mul11 = fmul double %16, %17
  %18 = load double, double* %dc, align 8
  %add = fadd double %18, %mul11
  store double %add, double* %dc, align 8
  %19 = load double, double* %ds, align 8
  %20 = load double, double* %s, align 8
  %add12 = fadd double %20, %19
  store double %add12, double* %s, align 8
  %21 = load double, double* %t, align 8
  %22 = load double, double* %s, align 8
  %mul13 = fmul double %21, %22
  %23 = load double, double* %ds, align 8
  %sub14 = fsub double %23, %mul13
  store double %sub14, double* %ds, align 8
  %24 = load double, double* %s, align 8
  %conv15 = fptrunc double %24 to float
  %25 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load float*, float** %sintbl.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %26, i64 %idxprom16
  store float %conv15, float* %arrayidx17, align 4
  %27 = load double, double* %c, align 8
  %conv18 = fptrunc double %27 to float
  %28 = load i32, i32* %n4, align 4
  %29 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %28, %29
  %idxprom20 = sext i32 %sub19 to i64
  %30 = load float*, float** %sintbl.addr, align 8
  %arrayidx21 = getelementptr inbounds float, float* %30, i64 %idxprom20
  store float %conv18, float* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %n8, align 4
  %cmp22 = icmp ne i32 %32, 0
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call24 = call double @sqrt(double 5.000000e-01) #3
  %conv25 = fptrunc double %call24 to float
  %33 = load i32, i32* %n8, align 4
  %idxprom26 = sext i32 %33 to i64
  %34 = load float*, float** %sintbl.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %34, i64 %idxprom26
  store float %conv25, float* %arrayidx27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %if.end
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %n4, align 4
  %cmp29 = icmp slt i32 %35, %36
  br i1 %cmp29, label %for.body.31, label %for.end.39

for.body.31:                                      ; preds = %for.cond.28
  %37 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %37 to i64
  %38 = load float*, float** %sintbl.addr, align 8
  %arrayidx33 = getelementptr inbounds float, float* %38, i64 %idxprom32
  %39 = load float, float* %arrayidx33, align 4
  %40 = load i32, i32* %n2, align 4
  %41 = load i32, i32* %i, align 4
  %sub34 = sub nsw i32 %40, %41
  %idxprom35 = sext i32 %sub34 to i64
  %42 = load float*, float** %sintbl.addr, align 8
  %arrayidx36 = getelementptr inbounds float, float* %42, i64 %idxprom35
  store float %39, float* %arrayidx36, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.31
  %43 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %43, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.51, %for.end.39
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n2, align 4
  %46 = load i32, i32* %n4, align 4
  %add41 = add nsw i32 %45, %46
  %cmp42 = icmp slt i32 %44, %add41
  br i1 %cmp42, label %for.body.44, label %for.end.53

for.body.44:                                      ; preds = %for.cond.40
  %47 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %47 to i64
  %48 = load float*, float** %sintbl.addr, align 8
  %arrayidx46 = getelementptr inbounds float, float* %48, i64 %idxprom45
  %49 = load float, float* %arrayidx46, align 4
  %sub47 = fsub float -0.000000e+00, %49
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %n2, align 4
  %add48 = add nsw i32 %50, %51
  %idxprom49 = sext i32 %add48 to i64
  %52 = load float*, float** %sintbl.addr, align 8
  %arrayidx50 = getelementptr inbounds float, float* %52, i64 %idxprom49
  store float %sub47, float* %arrayidx50, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.44
  %53 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %53, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.40

for.end.53:                                       ; preds = %for.cond.40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_bitrev(i32 %n, i32* %bitrev) #0 {
entry:
  %n.addr = alloca i32, align 4
  %bitrev.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n2 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %bitrev, i32** %bitrev.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %n2, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %bitrev.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %inc, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %6 = load i32, i32* %n2, align 4
  store i32 %6, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %j, align 4
  %cmp1 = icmp sle i32 %7, %8
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %10, %9
  store i32 %sub, i32* %j, align 4
  %11 = load i32, i32* %k, align 4
  %div2 = sdiv i32 %11, 2
  store i32 %div2, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %k, align 4
  %13 = load i32, i32* %j, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
