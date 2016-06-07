; ModuleID = 'make_lattice.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

@sites_on_node = external global i32, align 4
@lattice = external global %struct.site*, align 8
@.str = private unnamed_addr constant [30 x i8] c"NODE %d: no room for lattice\0A\00", align 1
@this_node = external global i32, align 4
@gen_pt = external global [16 x i8**], align 16
@.str.1 = private unnamed_addr constant [37 x i8] c"NODE %d: no room for pointer vector\0A\00", align 1
@nt = external global i32, align 4
@nz = external global i32, align 4
@ny = external global i32, align 4
@nx = external global i32, align 4
@iseed = external global i32, align 4
@t_longlink = external global %struct.su3_matrix*, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"NODE %d: no room for t_longlink\0A\00", align 1
@t_fatlink = external global %struct.su3_matrix*, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"NODE %d: no room for t_fatlink\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @make_lattice() #0 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %0 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 2048) #3
  %1 = bitcast i8* %call to %struct.site*
  store %struct.site* %1, %struct.site** @lattice, align 8
  %2 = load %struct.site*, %struct.site** @lattice, align 8
  %cmp = icmp eq %struct.site* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @this_node, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %3)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 16
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* @sites_on_node, align 4
  %conv5 = sext i32 %5 to i64
  %call6 = call noalias i8* @calloc(i64 %conv5, i64 8) #3
  %6 = bitcast i8* %call6 to i8**
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom
  store i8** %6, i8*** %arrayidx, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 %idxprom7
  %9 = load i8**, i8*** %arrayidx8, align 8
  %cmp9 = icmp eq i8** %9, null
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.body
  %10 = load i32, i32* @this_node, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i32 %10)
  call void @terminate(i32 1)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %t, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.85, %for.end
  %12 = load i32, i32* %t, align 4
  %13 = load i32, i32* @nt, align 4
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body.17, label %for.end.87

for.body.17:                                      ; preds = %for.cond.14
  store i32 0, i32* %z, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.82, %for.body.17
  %14 = load i32, i32* %z, align 4
  %15 = load i32, i32* @nz, align 4
  %cmp19 = icmp slt i32 %14, %15
  br i1 %cmp19, label %for.body.21, label %for.end.84

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %y, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.79, %for.body.21
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* @ny, align 4
  %cmp23 = icmp slt i32 %16, %17
  br i1 %cmp23, label %for.body.25, label %for.end.81

for.body.25:                                      ; preds = %for.cond.22
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.76, %for.body.25
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* @nx, align 4
  %cmp27 = icmp slt i32 %18, %19
  br i1 %cmp27, label %for.body.29, label %for.end.78

for.body.29:                                      ; preds = %for.cond.26
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %y, align 4
  %22 = load i32, i32* %z, align 4
  %23 = load i32, i32* %t, align 4
  %call30 = call i32 @node_number(i32 %20, i32 %21, i32 %22, i32 %23)
  %call31 = call i32 (...) @mynode()
  %cmp32 = icmp eq i32 %call30, %call31
  br i1 %cmp32, label %if.then.34, label %if.end.75

if.then.34:                                       ; preds = %for.body.29
  %24 = load i32, i32* %x, align 4
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %z, align 4
  %27 = load i32, i32* %t, align 4
  %call35 = call i32 @node_index(i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %call35, i32* %i, align 4
  %28 = load i32, i32* %x, align 4
  %conv36 = trunc i32 %28 to i16
  %29 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %29 to i64
  %30 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx38 = getelementptr inbounds %struct.site, %struct.site* %30, i64 %idxprom37
  %x39 = getelementptr inbounds %struct.site, %struct.site* %arrayidx38, i32 0, i32 0
  store i16 %conv36, i16* %x39, align 2
  %31 = load i32, i32* %y, align 4
  %conv40 = trunc i32 %31 to i16
  %32 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %32 to i64
  %33 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx42 = getelementptr inbounds %struct.site, %struct.site* %33, i64 %idxprom41
  %y43 = getelementptr inbounds %struct.site, %struct.site* %arrayidx42, i32 0, i32 1
  store i16 %conv40, i16* %y43, align 2
  %34 = load i32, i32* %z, align 4
  %conv44 = trunc i32 %34 to i16
  %35 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %35 to i64
  %36 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx46 = getelementptr inbounds %struct.site, %struct.site* %36, i64 %idxprom45
  %z47 = getelementptr inbounds %struct.site, %struct.site* %arrayidx46, i32 0, i32 2
  store i16 %conv44, i16* %z47, align 2
  %37 = load i32, i32* %t, align 4
  %conv48 = trunc i32 %37 to i16
  %38 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %38 to i64
  %39 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx50 = getelementptr inbounds %struct.site, %struct.site* %39, i64 %idxprom49
  %t51 = getelementptr inbounds %struct.site, %struct.site* %arrayidx50, i32 0, i32 3
  store i16 %conv48, i16* %t51, align 2
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* @nx, align 4
  %42 = load i32, i32* %y, align 4
  %43 = load i32, i32* @ny, align 4
  %44 = load i32, i32* %z, align 4
  %45 = load i32, i32* @nz, align 4
  %46 = load i32, i32* %t, align 4
  %mul = mul nsw i32 %45, %46
  %add = add nsw i32 %44, %mul
  %mul52 = mul nsw i32 %43, %add
  %add53 = add nsw i32 %42, %mul52
  %mul54 = mul nsw i32 %41, %add53
  %add55 = add nsw i32 %40, %mul54
  %47 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %47 to i64
  %48 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx57 = getelementptr inbounds %struct.site, %struct.site* %48, i64 %idxprom56
  %index = getelementptr inbounds %struct.site, %struct.site* %arrayidx57, i32 0, i32 5
  store i32 %add55, i32* %index, align 4
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %y, align 4
  %add58 = add nsw i32 %49, %50
  %51 = load i32, i32* %z, align 4
  %add59 = add nsw i32 %add58, %51
  %52 = load i32, i32* %t, align 4
  %add60 = add nsw i32 %add59, %52
  %rem = srem i32 %add60, 2
  %cmp61 = icmp eq i32 %rem, 0
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %if.then.34
  %53 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %53 to i64
  %54 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx65 = getelementptr inbounds %struct.site, %struct.site* %54, i64 %idxprom64
  %parity = getelementptr inbounds %struct.site, %struct.site* %arrayidx65, i32 0, i32 4
  store i8 2, i8* %parity, align 1
  br label %if.end.69

if.else:                                          ; preds = %if.then.34
  %55 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %55 to i64
  %56 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx67 = getelementptr inbounds %struct.site, %struct.site* %56, i64 %idxprom66
  %parity68 = getelementptr inbounds %struct.site, %struct.site* %arrayidx67, i32 0, i32 4
  store i8 1, i8* %parity68, align 1
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.then.63
  %57 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %57 to i64
  %58 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx71 = getelementptr inbounds %struct.site, %struct.site* %58, i64 %idxprom70
  %site_prn = getelementptr inbounds %struct.site, %struct.site* %arrayidx71, i32 0, i32 6
  %59 = load i32, i32* @iseed, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %60 to i64
  %61 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx73 = getelementptr inbounds %struct.site, %struct.site* %61, i64 %idxprom72
  %index74 = getelementptr inbounds %struct.site, %struct.site* %arrayidx73, i32 0, i32 5
  %62 = load i32, i32* %index74, align 4
  call void @initialize_prn(%struct.double_prn* %site_prn, i32 %59, i32 %62)
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.69, %for.body.29
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %63 = load i32, i32* %x, align 4
  %inc77 = add nsw i32 %63, 1
  store i32 %inc77, i32* %x, align 4
  br label %for.cond.26

for.end.78:                                       ; preds = %for.cond.26
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %64 = load i32, i32* %y, align 4
  %inc80 = add nsw i32 %64, 1
  store i32 %inc80, i32* %y, align 4
  br label %for.cond.22

for.end.81:                                       ; preds = %for.cond.22
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.81
  %65 = load i32, i32* %z, align 4
  %inc83 = add nsw i32 %65, 1
  store i32 %inc83, i32* %z, align 4
  br label %for.cond.18

for.end.84:                                       ; preds = %for.cond.18
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end.84
  %66 = load i32, i32* %t, align 4
  %inc86 = add nsw i32 %66, 1
  store i32 %inc86, i32* %t, align 4
  br label %for.cond.14

for.end.87:                                       ; preds = %for.cond.14
  %67 = load i32, i32* @sites_on_node, align 4
  %mul88 = mul nsw i32 %67, 4
  %conv89 = sext i32 %mul88 to i64
  %call90 = call noalias i8* @calloc(i64 %conv89, i64 144) #3
  %68 = bitcast i8* %call90 to %struct.su3_matrix*
  store %struct.su3_matrix* %68, %struct.su3_matrix** @t_longlink, align 8
  %69 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %cmp91 = icmp eq %struct.su3_matrix* %69, null
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %for.end.87
  %70 = load i32, i32* @this_node, align 4
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i32 %70)
  call void @terminate(i32 1)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %for.end.87
  %71 = load i32, i32* @sites_on_node, align 4
  %mul96 = mul nsw i32 %71, 4
  %conv97 = sext i32 %mul96 to i64
  %call98 = call noalias i8* @calloc(i64 %conv97, i64 144) #3
  %72 = bitcast i8* %call98 to %struct.su3_matrix*
  store %struct.su3_matrix* %72, %struct.su3_matrix** @t_fatlink, align 8
  %73 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %cmp99 = icmp eq %struct.su3_matrix* %73, null
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.95
  %74 = load i32, i32* @this_node, align 4
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 %74)
  call void @terminate(i32 1)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.95
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i32 @printf(i8*, ...) #2

declare void @terminate(i32) #2

declare i32 @node_number(i32, i32, i32, i32) #2

declare i32 @mynode(...) #2

declare i32 @node_index(i32, i32, i32, i32) #2

declare void @initialize_prn(%struct.double_prn*, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
