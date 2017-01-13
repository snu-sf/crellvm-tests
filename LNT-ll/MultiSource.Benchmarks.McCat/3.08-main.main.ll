; ModuleID = './MultiSource.Benchmarks.McCat/3.08-main.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ObjectStruct = type { [57 x i8], %struct.PointListStruct*, %struct.Poly3Struct*, %struct.Poly4Struct*, %struct.Texture*, %struct.Material*, %struct.RGBStruct, i32, i32, %struct.PointStruct, %struct.PointStruct, %struct.PointStruct, %struct.ObjectStruct*, %struct.ObjectStruct*, i32, i32, i32, i32, i32, i32, i32, %struct.ObjectStruct*, %struct.ObjectStruct* }
%struct.PointListStruct = type { %struct.ObjPointStruct*, %struct.PointListStruct*, %struct.PointListStruct* }
%struct.ObjPointStruct = type { double, double, double, double, double, double }
%struct.Poly3Struct = type { [3 x %struct.ObjPointStruct*], %struct.Material*, %struct.Texture*, %struct.Poly3Struct*, %struct.Poly3Struct* }
%struct.Poly4Struct = type { [4 x %struct.ObjPointStruct*], %struct.Material*, %struct.Texture*, %struct.Poly4Struct*, %struct.Poly4Struct* }
%struct.Texture = type { %struct.PointStruct, %struct.BitMapListStruct*, %struct.PointStruct, %struct.PointStruct, %struct.PointStruct, %struct.Texture*, %struct.Texture* }
%struct.BitMapListStruct = type { %struct.BitMapStruct, %struct.BitMapListStruct*, %struct.BitMapListStruct* }
%struct.BitMapStruct = type { i8* }
%struct.Material = type { float, float, float, %struct.Material*, %struct.Material* }
%struct.RGBStruct = type { double, double, double }
%struct.PointStruct = type { double, double, double }

@pyramid = global [12 x [3 x double]] [[3 x double] [double 1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double -1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double 0.000000e+00, double -6.700000e-01, double -1.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double 0.000000e+00, double -6.700000e-01, double -1.000000e+00], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 0.000000e+00, double -6.700000e-01, double -1.000000e+00], [3 x double] [double -1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [3 x double] [double 1.000000e+00, double -6.700000e-01, double 6.700000e-01], [3 x double] [double -1.000000e+00, double -6.700000e-01, double 6.700000e-01]], align 16
@SPyramid = global [24 x [3 x double]] [[3 x double] [double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double -1.000000e+00], [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double -1.000000e+00], [3 x double] [double -1.000000e+00, double -1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00]], align 16
@.str = private unnamed_addr constant [11 x i8] c"TestObject\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SphereObject\00", align 1

; Function Attrs: nounwind uwtable
define %struct.ObjectStruct* @MakeSphere(%struct.ObjectStruct* %o, i32 %sli, i32 %pol, double %r) #0 {
entry:
  %o.addr = alloca %struct.ObjectStruct*, align 8
  %sli.addr = alloca i32, align 4
  %pol.addr = alloca i32, align 4
  %r.addr = alloca double, align 8
  %p = alloca [4 x %struct.PointStruct], align 16
  %fi = alloca double, align 8
  %theta = alloca double, align 8
  %dfi = alloca double, align 8
  %dtheta = alloca double, align 8
  store %struct.ObjectStruct* %o, %struct.ObjectStruct** %o.addr, align 8
  store i32 %sli, i32* %sli.addr, align 4
  store i32 %pol, i32* %pol.addr, align 4
  store double %r, double* %r.addr, align 8
  %0 = load i32, i32* %sli.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 0x401921FB54442EEA, %conv
  store double %div, double* %dfi, align 8
  %1 = load i32, i32* %pol.addr, align 4
  %conv1 = sitofp i32 %1 to double
  %div2 = fdiv double 0x401921FB54442EEA, %conv1
  store double %div2, double* %dtheta, align 8
  store double 0xC00921FB54442EEA, double* %fi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.76, %entry
  %2 = load double, double* %fi, align 8
  %cmp = fcmp olt double %2, 0x400921FBDA7BEBF0
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  store double 0xC00921FB54442EEA, double* %theta, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %3 = load double, double* %theta, align 8
  %cmp5 = fcmp olt double %3, 0x400921FBDA7BEBF0
  br i1 %cmp5, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %4 = load double, double* %theta, align 8
  %call = call double @cos(double %4) #3
  %5 = load double, double* %fi, align 8
  %call8 = call double @cos(double %5) #3
  %mul = fmul double %call, %call8
  %6 = load double, double* %r.addr, align 8
  %mul9 = fmul double %mul, %6
  %arrayidx = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 0
  %x = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx, i32 0, i32 0
  store double %mul9, double* %x, align 8
  %7 = load double, double* %theta, align 8
  %call10 = call double @sin(double %7) #3
  %8 = load double, double* %fi, align 8
  %call11 = call double @cos(double %8) #3
  %mul12 = fmul double %call10, %call11
  %9 = load double, double* %r.addr, align 8
  %mul13 = fmul double %mul12, %9
  %arrayidx14 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 0
  %y = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx14, i32 0, i32 1
  store double %mul13, double* %y, align 8
  %10 = load double, double* %fi, align 8
  %call15 = call double @sin(double %10) #3
  %11 = load double, double* %r.addr, align 8
  %mul16 = fmul double %call15, %11
  %arrayidx17 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 0
  %z = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx17, i32 0, i32 2
  store double %mul16, double* %z, align 8
  %12 = load double, double* %theta, align 8
  %call18 = call double @cos(double %12) #3
  %13 = load double, double* %fi, align 8
  %14 = load double, double* %dfi, align 8
  %add = fadd double %13, %14
  %call19 = call double @cos(double %add) #3
  %mul20 = fmul double %call18, %call19
  %15 = load double, double* %r.addr, align 8
  %mul21 = fmul double %mul20, %15
  %arrayidx22 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 1
  %x23 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx22, i32 0, i32 0
  store double %mul21, double* %x23, align 8
  %16 = load double, double* %theta, align 8
  %call24 = call double @sin(double %16) #3
  %17 = load double, double* %fi, align 8
  %18 = load double, double* %dfi, align 8
  %add25 = fadd double %17, %18
  %call26 = call double @cos(double %add25) #3
  %mul27 = fmul double %call24, %call26
  %19 = load double, double* %r.addr, align 8
  %mul28 = fmul double %mul27, %19
  %arrayidx29 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 1
  %y30 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx29, i32 0, i32 1
  store double %mul28, double* %y30, align 8
  %20 = load double, double* %fi, align 8
  %21 = load double, double* %dfi, align 8
  %add31 = fadd double %20, %21
  %call32 = call double @sin(double %add31) #3
  %22 = load double, double* %r.addr, align 8
  %mul33 = fmul double %call32, %22
  %arrayidx34 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 1
  %z35 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx34, i32 0, i32 2
  store double %mul33, double* %z35, align 8
  %23 = load double, double* %theta, align 8
  %24 = load double, double* %dtheta, align 8
  %add36 = fadd double %23, %24
  %call37 = call double @cos(double %add36) #3
  %25 = load double, double* %fi, align 8
  %26 = load double, double* %dfi, align 8
  %add38 = fadd double %25, %26
  %call39 = call double @cos(double %add38) #3
  %mul40 = fmul double %call37, %call39
  %27 = load double, double* %r.addr, align 8
  %mul41 = fmul double %mul40, %27
  %arrayidx42 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 2
  %x43 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx42, i32 0, i32 0
  store double %mul41, double* %x43, align 8
  %28 = load double, double* %theta, align 8
  %29 = load double, double* %dtheta, align 8
  %add44 = fadd double %28, %29
  %call45 = call double @sin(double %add44) #3
  %30 = load double, double* %fi, align 8
  %31 = load double, double* %dfi, align 8
  %add46 = fadd double %30, %31
  %call47 = call double @cos(double %add46) #3
  %mul48 = fmul double %call45, %call47
  %32 = load double, double* %r.addr, align 8
  %mul49 = fmul double %mul48, %32
  %arrayidx50 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 2
  %y51 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx50, i32 0, i32 1
  store double %mul49, double* %y51, align 8
  %33 = load double, double* %fi, align 8
  %34 = load double, double* %dfi, align 8
  %add52 = fadd double %33, %34
  %call53 = call double @sin(double %add52) #3
  %35 = load double, double* %r.addr, align 8
  %mul54 = fmul double %call53, %35
  %arrayidx55 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 2
  %z56 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx55, i32 0, i32 2
  store double %mul54, double* %z56, align 8
  %36 = load double, double* %theta, align 8
  %37 = load double, double* %dtheta, align 8
  %add57 = fadd double %36, %37
  %call58 = call double @cos(double %add57) #3
  %38 = load double, double* %fi, align 8
  %call59 = call double @cos(double %38) #3
  %mul60 = fmul double %call58, %call59
  %39 = load double, double* %r.addr, align 8
  %mul61 = fmul double %mul60, %39
  %arrayidx62 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 3
  %x63 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx62, i32 0, i32 0
  store double %mul61, double* %x63, align 8
  %40 = load double, double* %theta, align 8
  %41 = load double, double* %dtheta, align 8
  %add64 = fadd double %40, %41
  %call65 = call double @sin(double %add64) #3
  %42 = load double, double* %fi, align 8
  %call66 = call double @cos(double %42) #3
  %mul67 = fmul double %call65, %call66
  %43 = load double, double* %r.addr, align 8
  %mul68 = fmul double %mul67, %43
  %arrayidx69 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 3
  %y70 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx69, i32 0, i32 1
  store double %mul68, double* %y70, align 8
  %44 = load double, double* %fi, align 8
  %call71 = call double @sin(double %44) #3
  %45 = load double, double* %r.addr, align 8
  %mul72 = fmul double %call71, %45
  %arrayidx73 = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i64 3
  %z74 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %arrayidx73, i32 0, i32 2
  store double %mul72, double* %z74, align 8
  %46 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  %arraydecay = getelementptr inbounds [4 x %struct.PointStruct], [4 x %struct.PointStruct]* %p, i32 0, i32 0
  call void @InsertPoly4(%struct.ObjectStruct* %46, %struct.PointStruct* %arraydecay, %struct.Texture* null, %struct.Material* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %47 = load double, double* %theta, align 8
  %48 = load double, double* %dtheta, align 8
  %add75 = fadd double %47, %48
  store double %add75, double* %theta, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end
  %49 = load double, double* %fi, align 8
  %50 = load double, double* %dfi, align 8
  %add77 = fadd double %49, %50
  store double %add77, double* %fi, align 8
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  %51 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o.addr, align 8
  ret %struct.ObjectStruct* %51
}

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

declare void @InsertPoly4(%struct.ObjectStruct*, %struct.PointStruct*, %struct.Texture*, %struct.Material*) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %o = alloca %struct.ObjectStruct*, align 8
  %tmp = alloca %struct.ObjectStruct*, align 8
  %ttmp = alloca %struct.ObjectStruct*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %o, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %tmp, align 8
  store %struct.ObjectStruct* null, %struct.ObjectStruct** %ttmp, align 8
  %call = call %struct.ObjectStruct* @Oalloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  store %struct.ObjectStruct* %call, %struct.ObjectStruct** %o, align 8
  %call2 = call %struct.ObjectStruct* @Oalloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store %struct.ObjectStruct* %call2, %struct.ObjectStruct** %tmp, align 8
  %0 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %call3 = call %struct.ObjectStruct* @MakeSphere(%struct.ObjectStruct* %0, i32 25, i32 25, double 1.000000e+01)
  store %struct.ObjectStruct* %call3, %struct.ObjectStruct** %tmp, align 8
  %1 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %Origin = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %1, i32 0, i32 9
  %x = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin, i32 0, i32 0
  store double 8.700000e+01, double* %x, align 8
  %2 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  %Origin4 = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %2, i32 0, i32 9
  %y = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Origin4, i32 0, i32 1
  store double 8.700000e+01, double* %y, align 8
  %3 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %4 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  call void @InsertChild(%struct.ObjectStruct* %3, %struct.ObjectStruct* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %5, 360
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %conv = sitofp i32 %6 to double
  %7 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  %Rotation = getelementptr inbounds %struct.ObjectStruct, %struct.ObjectStruct* %7, i32 0, i32 10
  %y5 = getelementptr inbounds %struct.PointStruct, %struct.PointStruct* %Rotation, i32 0, i32 1
  store double %conv, double* %y5, align 8
  %8 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  call void @CalcObject(%struct.ObjectStruct* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.ObjectStruct*, %struct.ObjectStruct** %tmp, align 8
  call void @PrintObject(%struct.ObjectStruct* %10)
  %11 = load %struct.ObjectStruct*, %struct.ObjectStruct** %ttmp, align 8
  store %struct.ObjectStruct* %11, %struct.ObjectStruct** %o, align 8
  %12 = load %struct.ObjectStruct*, %struct.ObjectStruct** %o, align 8
  call void @Draw_All(%struct.ObjectStruct* %12)
  ret i32 0
}

declare %struct.ObjectStruct* @Oalloc(i8*) #2

declare void @InsertChild(%struct.ObjectStruct*, %struct.ObjectStruct*) #2

declare void @CalcObject(%struct.ObjectStruct*) #2

declare void @PrintObject(%struct.ObjectStruct*) #2

declare void @Draw_All(%struct.ObjectStruct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
