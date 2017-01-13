; ModuleID = './MultiSource.Benchmarks.Olden/10.power.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.root = type { %struct.demand, double, double, %struct.demand, double, double, [11 x %struct.lateral*] }
%struct.demand = type { double, double }
%struct.lateral = type { %struct.demand, double, double, double, double, %struct.lateral*, %struct.branch* }
%struct.branch = type { %struct.demand, double, double, double, double, %struct.branch*, [12 x %struct.leaf*] }
%struct.leaf = type { %struct.demand, double, double }

@map_P = global [36 x double] [double 0x40C1181BEA684F5B, double 0x40C07F0DA7604E16, double 0x40BFABFD9D391847, double 0x40BE60310B0328D4, double 0x40BD1FEBA71E5A92, double 0x40BBEA9A288E9D1A, double 0x40BABFB582C7FDD2, double 0x40B99EBBF4CB7FAC, double 0x40B88736A038C964, double 0x40B778B3C360D71F, double 0x40B672C94328F04A, double 0x40B57514089E1EB9, double 0x40B47F34D23EEFB3, double 0x40B390D3FC5A7B6E, double 0x40B2A99DA6100E5A, double 0x40B1C9423C8414CD, double 0x40B0EF7852126044, double 0x40B01BF8B737F64D, double 0x40AE9D00FE3CB161, double 0x40AD0DA29EE5A2A0, double 0x40AB895E04336B67, double 0x40AA0FC0CE2E9912, double 0x40A8A06094DADCCA, double 0x40A73AD7C3FB86B8, double 0x40A5DEC3C0D24B44, double 0x40A48BC8FB588C9A, double 0x40A34190CF0E1AA0, double 0x40A1FFC72F2042DA, double 0x40A0C61BD86709CF, double 0x409F2887F539C232, double 0x409CD3F0FEE2D225, double 0x409A8DE67460B634, double 0x409855E56564BC4B, double 0x40962B71216B1250, double 0x40940E149C150531, double 0x4091FD5A1DC6F685], align 16
@map_Q = global [36 x double] [double 0x409BA362E889ECA8, double 0x409AA8EAFF70494F, double 0x40999503F74DEE8F, double 0x4098868CC01E4645, double 0x409781AD980668F2, double 0x409685E9623CE107, double 0x409592CD79EE94AF, double 0x4094A7EBF8969061, double 0x4093C4E03CDEBECE, double 0x4092E94A29AF0C2E, double 0x409214D02F7EFC3D, double 0x4091471EBFB3E82D, double 0x40907FE5AE0BD2AD, double 0x408F7DB67C259DFD, double 0x408E0771F56A7AC8, double 0x408C9C7843A661C3, double 0x408B3C4E3BE519B1, double 0x4089E67CAFB4857B, double 0x40889A93A84B632B, double 0x4087582AE34A4551, double 0x40861EDDF459365B, double 0x4084EE4D79ADE34A, double 0x4083C620BE304940, double 0x4082A6032A5B597E, double 0x40818DA2BF63B63B, double 0x40807CB35D7322B7, double 0x407EE5DA1130EEA4, double 0x407CE0140842DE66, double 0x407AE78F8D1D2340, double 0x4078FBD09B21F3B5, double 0x40771C616F19E935, double 0x407548CDF9E28D31, double 0x407380A9F7CF2EFD, double 0x4071C38E61319E33, double 0x4070111A83829227, double 0x406CD1DAA162D57C], align 16
@.str = private unnamed_addr constant [21 x i8] c"Past initialization\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Built tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"COMPUTED TREE\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"TR=%4.2f, TI=%4.2f, P0=%4.2f, Q0=%4.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"D TR-%4.2f, TI=%4.2f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %r = alloca %struct.root*, align 8
  %i = alloca i32, align 4
  %finished = alloca i32, align 4
  %d_theta_R = alloca double, align 8
  %d_theta_I = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %finished, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call1 = call %struct.root* @build_tree()
  store %struct.root* %call1, %struct.root** %r, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %0 = load %struct.root*, %struct.root** %r, align 8
  call void @Compute_Tree(%struct.root* %0)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct.root*, %struct.root** %r, align 8
  %D = getelementptr inbounds %struct.root, %struct.root* %1, i32 0, i32 0
  %P = getelementptr inbounds %struct.demand, %struct.demand* %D, i32 0, i32 0
  %2 = load double, double* %P, align 8
  %3 = load %struct.root*, %struct.root** %r, align 8
  %last = getelementptr inbounds %struct.root, %struct.root* %3, i32 0, i32 3
  %P4 = getelementptr inbounds %struct.demand, %struct.demand* %last, i32 0, i32 0
  store double %2, double* %P4, align 8
  %4 = load %struct.root*, %struct.root** %r, align 8
  %D5 = getelementptr inbounds %struct.root, %struct.root* %4, i32 0, i32 0
  %Q = getelementptr inbounds %struct.demand, %struct.demand* %D5, i32 0, i32 1
  %5 = load double, double* %Q, align 8
  %6 = load %struct.root*, %struct.root** %r, align 8
  %last6 = getelementptr inbounds %struct.root, %struct.root* %6, i32 0, i32 3
  %Q7 = getelementptr inbounds %struct.demand, %struct.demand* %last6, i32 0, i32 1
  store double %5, double* %Q7, align 8
  %7 = load %struct.root*, %struct.root** %r, align 8
  %theta_R = getelementptr inbounds %struct.root, %struct.root* %7, i32 0, i32 1
  %8 = load double, double* %theta_R, align 8
  %9 = load %struct.root*, %struct.root** %r, align 8
  %last_theta_R = getelementptr inbounds %struct.root, %struct.root* %9, i32 0, i32 4
  store double %8, double* %last_theta_R, align 8
  %10 = load %struct.root*, %struct.root** %r, align 8
  %theta_I = getelementptr inbounds %struct.root, %struct.root* %10, i32 0, i32 2
  %11 = load double, double* %theta_I, align 8
  %12 = load %struct.root*, %struct.root** %r, align 8
  %last_theta_I = getelementptr inbounds %struct.root, %struct.root* %12, i32 0, i32 5
  store double %11, double* %last_theta_I, align 8
  %13 = load %struct.root*, %struct.root** %r, align 8
  %theta_R8 = getelementptr inbounds %struct.root, %struct.root* %13, i32 0, i32 1
  store double 7.000000e-01, double* %theta_R8, align 8
  %14 = load %struct.root*, %struct.root** %r, align 8
  %theta_I9 = getelementptr inbounds %struct.root, %struct.root* %14, i32 0, i32 2
  store double 1.400000e-01, double* %theta_I9, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.96, %entry
  %15 = load i32, i32* %finished, align 4
  %tobool = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.root*, %struct.root** %r, align 8
  call void @Compute_Tree(%struct.root* %16)
  %17 = load %struct.root*, %struct.root** %r, align 8
  %theta_R10 = getelementptr inbounds %struct.root, %struct.root* %17, i32 0, i32 1
  %18 = load double, double* %theta_R10, align 8
  %19 = load %struct.root*, %struct.root** %r, align 8
  %theta_I11 = getelementptr inbounds %struct.root, %struct.root* %19, i32 0, i32 2
  %20 = load double, double* %theta_I11, align 8
  %21 = load %struct.root*, %struct.root** %r, align 8
  %D12 = getelementptr inbounds %struct.root, %struct.root* %21, i32 0, i32 0
  %P13 = getelementptr inbounds %struct.demand, %struct.demand* %D12, i32 0, i32 0
  %22 = load double, double* %P13, align 8
  %23 = load %struct.root*, %struct.root** %r, align 8
  %D14 = getelementptr inbounds %struct.root, %struct.root* %23, i32 0, i32 0
  %Q15 = getelementptr inbounds %struct.demand, %struct.demand* %D14, i32 0, i32 1
  %24 = load double, double* %Q15, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), double %18, double %20, double %22, double %24)
  %25 = load %struct.root*, %struct.root** %r, align 8
  %D17 = getelementptr inbounds %struct.root, %struct.root* %25, i32 0, i32 0
  %P18 = getelementptr inbounds %struct.demand, %struct.demand* %D17, i32 0, i32 0
  %26 = load double, double* %P18, align 8
  %div = fdiv double %26, 1.000000e+04
  %27 = load %struct.root*, %struct.root** %r, align 8
  %theta_R19 = getelementptr inbounds %struct.root, %struct.root* %27, i32 0, i32 1
  %28 = load double, double* %theta_R19, align 8
  %sub = fsub double %div, %28
  %call20 = call double @fabs(double %sub) #3
  %cmp = fcmp olt double %call20, 1.000000e-05
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %29 = load %struct.root*, %struct.root** %r, align 8
  %D21 = getelementptr inbounds %struct.root, %struct.root* %29, i32 0, i32 0
  %Q22 = getelementptr inbounds %struct.demand, %struct.demand* %D21, i32 0, i32 1
  %30 = load double, double* %Q22, align 8
  %div23 = fdiv double %30, 1.000000e+04
  %31 = load %struct.root*, %struct.root** %r, align 8
  %theta_I24 = getelementptr inbounds %struct.root, %struct.root* %31, i32 0, i32 2
  %32 = load double, double* %theta_I24, align 8
  %sub25 = fsub double %div23, %32
  %call26 = call double @fabs(double %sub25) #3
  %cmp27 = fcmp olt double %call26, 1.000000e-05
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %finished, align 4
  br label %if.end.96

if.else:                                          ; preds = %land.lhs.true, %while.body
  %33 = load %struct.root*, %struct.root** %r, align 8
  %theta_R28 = getelementptr inbounds %struct.root, %struct.root* %33, i32 0, i32 1
  %34 = load double, double* %theta_R28, align 8
  %sub29 = fsub double %34, 6.500000e-01
  %div30 = fdiv double %sub29, 1.000000e-02
  %conv = fptosi double %div30 to i32
  store i32 %conv, i32* %i, align 4
  %35 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %35, 0
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.33, %if.else
  %36 = load i32, i32* %i, align 4
  %cmp34 = icmp sgt i32 %36, 35
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end
  store i32 35, i32* %i, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end
  %37 = load %struct.root*, %struct.root** %r, align 8
  %theta_R38 = getelementptr inbounds %struct.root, %struct.root* %37, i32 0, i32 1
  %38 = load double, double* %theta_R38, align 8
  %39 = load %struct.root*, %struct.root** %r, align 8
  %D39 = getelementptr inbounds %struct.root, %struct.root* %39, i32 0, i32 0
  %P40 = getelementptr inbounds %struct.demand, %struct.demand* %D39, i32 0, i32 0
  %40 = load double, double* %P40, align 8
  %div41 = fdiv double %40, 1.000000e+04
  %sub42 = fsub double %38, %div41
  %sub43 = fsub double -0.000000e+00, %sub42
  %41 = load i32, i32* %i, align 4
  %add = add nsw i32 %41, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [36 x double], [36 x double]* @map_P, i32 0, i64 %idxprom
  %42 = load double, double* %arrayidx, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %43 to i64
  %arrayidx45 = getelementptr inbounds [36 x double], [36 x double]* @map_P, i32 0, i64 %idxprom44
  %44 = load double, double* %arrayidx45, align 8
  %sub46 = fsub double %42, %44
  %div47 = fdiv double %sub46, 1.000000e+02
  %sub48 = fsub double 1.000000e+00, %div47
  %div49 = fdiv double %sub43, %sub48
  store double %div49, double* %d_theta_R, align 8
  %45 = load %struct.root*, %struct.root** %r, align 8
  %theta_I50 = getelementptr inbounds %struct.root, %struct.root* %45, i32 0, i32 2
  %46 = load double, double* %theta_I50, align 8
  %sub51 = fsub double %46, 1.300000e-01
  %div52 = fdiv double %sub51, 2.000000e-03
  %conv53 = fptosi double %div52 to i32
  store i32 %conv53, i32* %i, align 4
  %47 = load i32, i32* %i, align 4
  %cmp54 = icmp slt i32 %47, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.37
  store i32 0, i32* %i, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.37
  %48 = load i32, i32* %i, align 4
  %cmp58 = icmp sgt i32 %48, 35
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  store i32 35, i32* %i, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.57
  %49 = load %struct.root*, %struct.root** %r, align 8
  %theta_I62 = getelementptr inbounds %struct.root, %struct.root* %49, i32 0, i32 2
  %50 = load double, double* %theta_I62, align 8
  %51 = load %struct.root*, %struct.root** %r, align 8
  %D63 = getelementptr inbounds %struct.root, %struct.root* %51, i32 0, i32 0
  %Q64 = getelementptr inbounds %struct.demand, %struct.demand* %D63, i32 0, i32 1
  %52 = load double, double* %Q64, align 8
  %div65 = fdiv double %52, 1.000000e+04
  %sub66 = fsub double %50, %div65
  %sub67 = fsub double -0.000000e+00, %sub66
  %53 = load i32, i32* %i, align 4
  %add68 = add nsw i32 %53, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [36 x double], [36 x double]* @map_Q, i32 0, i64 %idxprom69
  %54 = load double, double* %arrayidx70, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %55 to i64
  %arrayidx72 = getelementptr inbounds [36 x double], [36 x double]* @map_Q, i32 0, i64 %idxprom71
  %56 = load double, double* %arrayidx72, align 8
  %sub73 = fsub double %54, %56
  %div74 = fdiv double %sub73, 2.000000e+01
  %sub75 = fsub double 1.000000e+00, %div74
  %div76 = fdiv double %sub67, %sub75
  store double %div76, double* %d_theta_I, align 8
  %57 = load double, double* %d_theta_R, align 8
  %58 = load double, double* %d_theta_I, align 8
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), double %57, double %58)
  %59 = load %struct.root*, %struct.root** %r, align 8
  %D78 = getelementptr inbounds %struct.root, %struct.root* %59, i32 0, i32 0
  %P79 = getelementptr inbounds %struct.demand, %struct.demand* %D78, i32 0, i32 0
  %60 = load double, double* %P79, align 8
  %61 = load %struct.root*, %struct.root** %r, align 8
  %last80 = getelementptr inbounds %struct.root, %struct.root* %61, i32 0, i32 3
  %P81 = getelementptr inbounds %struct.demand, %struct.demand* %last80, i32 0, i32 0
  store double %60, double* %P81, align 8
  %62 = load %struct.root*, %struct.root** %r, align 8
  %D82 = getelementptr inbounds %struct.root, %struct.root* %62, i32 0, i32 0
  %Q83 = getelementptr inbounds %struct.demand, %struct.demand* %D82, i32 0, i32 1
  %63 = load double, double* %Q83, align 8
  %64 = load %struct.root*, %struct.root** %r, align 8
  %last84 = getelementptr inbounds %struct.root, %struct.root* %64, i32 0, i32 3
  %Q85 = getelementptr inbounds %struct.demand, %struct.demand* %last84, i32 0, i32 1
  store double %63, double* %Q85, align 8
  %65 = load %struct.root*, %struct.root** %r, align 8
  %theta_R86 = getelementptr inbounds %struct.root, %struct.root* %65, i32 0, i32 1
  %66 = load double, double* %theta_R86, align 8
  %67 = load %struct.root*, %struct.root** %r, align 8
  %last_theta_R87 = getelementptr inbounds %struct.root, %struct.root* %67, i32 0, i32 4
  store double %66, double* %last_theta_R87, align 8
  %68 = load %struct.root*, %struct.root** %r, align 8
  %theta_I88 = getelementptr inbounds %struct.root, %struct.root* %68, i32 0, i32 2
  %69 = load double, double* %theta_I88, align 8
  %70 = load %struct.root*, %struct.root** %r, align 8
  %last_theta_I89 = getelementptr inbounds %struct.root, %struct.root* %70, i32 0, i32 5
  store double %69, double* %last_theta_I89, align 8
  %71 = load %struct.root*, %struct.root** %r, align 8
  %theta_R90 = getelementptr inbounds %struct.root, %struct.root* %71, i32 0, i32 1
  %72 = load double, double* %theta_R90, align 8
  %73 = load double, double* %d_theta_R, align 8
  %add91 = fadd double %72, %73
  %74 = load %struct.root*, %struct.root** %r, align 8
  %theta_R92 = getelementptr inbounds %struct.root, %struct.root* %74, i32 0, i32 1
  store double %add91, double* %theta_R92, align 8
  %75 = load %struct.root*, %struct.root** %r, align 8
  %theta_I93 = getelementptr inbounds %struct.root, %struct.root* %75, i32 0, i32 2
  %76 = load double, double* %theta_I93, align 8
  %77 = load double, double* %d_theta_I, align 8
  %add94 = fadd double %76, %77
  %78 = load %struct.root*, %struct.root** %r, align 8
  %theta_I95 = getelementptr inbounds %struct.root, %struct.root* %78, i32 0, i32 2
  store double %add94, double* %theta_I95, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.61, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare %struct.root* @build_tree() #1

declare void @Compute_Tree(%struct.root*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
