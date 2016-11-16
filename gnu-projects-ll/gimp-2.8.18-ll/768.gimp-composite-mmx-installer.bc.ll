; ModuleID = './app/composite/gimp-composite-mmx-installer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.install_table = type { i32, i32, i32, i32, void (%struct.GimpCompositeContext*)* }
%struct.GimpCompositeContext = type { i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.anon.2, i32, i32 }
%struct.anon = type { i32, i8 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i32 }
%struct.anon.2 = type { i32, i32, i32 }

@gimp_composite_mmx_install.t = internal global %struct.install_table* getelementptr inbounds ([14 x %struct.install_table], [14 x %struct.install_table]* @_gimp_composite_mmx, i32 0, i32 0), align 8
@_gimp_composite_mmx = internal constant [14 x %struct.install_table] [%struct.install_table { i32 3, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_multiply_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 4, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_screen_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 6, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_difference_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 7, i32 1, i32 1, i32 1, void (%struct.GimpCompositeContext*)* @gimp_composite_addition_va8_va8_va8_mmx }, %struct.install_table { i32 7, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_addition_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 8, i32 1, i32 1, i32 1, void (%struct.GimpCompositeContext*)* @gimp_composite_subtract_va8_va8_va8_mmx }, %struct.install_table { i32 8, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_subtract_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 9, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_darken_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 10, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_lighten_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 20, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_grain_extract_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 21, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_grain_merge_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 28, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_swap_rgba8_rgba8_rgba8_mmx }, %struct.install_table { i32 29, i32 3, i32 3, i32 3, void (%struct.GimpCompositeContext*)* @gimp_composite_scale_rgba8_rgba8_rgba8_mmx }, %struct.install_table zeroinitializer], align 16
@gimp_composite_function = external global [32 x [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]]], align 16

; Function Attrs: nounwind uwtable
define i32 @gimp_composite_mmx_install() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @gimp_composite_mmx_init()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.install_table* getelementptr inbounds ([14 x %struct.install_table], [14 x %struct.install_table]* @_gimp_composite_mmx, i32 0, i64 0), %struct.install_table** @gimp_composite_mmx_install.t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %0 = load %struct.install_table*, %struct.install_table** @gimp_composite_mmx_install.t, align 8
  %function = getelementptr inbounds %struct.install_table, %struct.install_table* %0, i32 0, i32 4
  %1 = load void (%struct.GimpCompositeContext*)*, void (%struct.GimpCompositeContext*)** %function, align 8
  %cmp = icmp ne void (%struct.GimpCompositeContext*)* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.install_table*, %struct.install_table** @gimp_composite_mmx_install.t, align 8
  %function1 = getelementptr inbounds %struct.install_table, %struct.install_table* %2, i32 0, i32 4
  %3 = load void (%struct.GimpCompositeContext*)*, void (%struct.GimpCompositeContext*)** %function1, align 8
  %4 = load %struct.install_table*, %struct.install_table** @gimp_composite_mmx_install.t, align 8
  %D = getelementptr inbounds %struct.install_table, %struct.install_table* %4, i32 0, i32 3
  %5 = load i32, i32* %D, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.install_table*, %struct.install_table** @gimp_composite_mmx_install.t, align 8
  %B = getelementptr inbounds %struct.install_table, %struct.install_table* %6, i32 0, i32 2
  %7 = load i32, i32* %B, align 4
  %idxprom2 = zext i32 %7 to i64
  %8 = load %struct.install_table*, %struct.install_table** @gimp_composite_mmx_install.t, align 8
  %A = getelementptr inbounds %struct.install_table, %struct.install_table* %8, i32 0, i32 1
  %9 = load i32, i32* %A, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.install_table*, %struct.install_table** @gimp_composite_mmx_install.t, align 8
  %mode = getelementptr inbounds %struct.install_table, %struct.install_table* %10, i32 0, i32 0
  %11 = load i32, i32* %mode, align 4
  %idxprom4 = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds [32 x [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]]], [32 x [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]]]* @gimp_composite_function, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]], [5 x [5 x [5 x void (%struct.GimpCompositeContext*)*]]]* %arrayidx, i32 0, i64 %idxprom3
  %arrayidx6 = getelementptr inbounds [5 x [5 x void (%struct.GimpCompositeContext*)*]], [5 x [5 x void (%struct.GimpCompositeContext*)*]]* %arrayidx5, i32 0, i64 %idxprom2
  %arrayidx7 = getelementptr inbounds [5 x void (%struct.GimpCompositeContext*)*], [5 x void (%struct.GimpCompositeContext*)*]* %arrayidx6, i32 0, i64 %idxprom
  store void (%struct.GimpCompositeContext*)* %3, void (%struct.GimpCompositeContext*)** %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.install_table*, %struct.install_table** @gimp_composite_mmx_install.t, align 8
  %incdec.ptr = getelementptr inbounds %struct.install_table, %struct.install_table* %12, i32 1
  store %struct.install_table* %incdec.ptr, %struct.install_table** @gimp_composite_mmx_install.t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %for.end
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @gimp_composite_mmx_init() #0 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @gimp_cpu_accel_get_support()
  %and = and i32 %call, -2147483648
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval
  ret i32 %0
}

declare i32 @gimp_cpu_accel_get_support() #1

declare void @gimp_composite_multiply_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_screen_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_difference_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_addition_va8_va8_va8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_addition_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_subtract_va8_va8_va8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_subtract_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_darken_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_lighten_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_grain_extract_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_grain_merge_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_swap_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

declare void @gimp_composite_scale_rgba8_rgba8_rgba8_mmx(%struct.GimpCompositeContext*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
