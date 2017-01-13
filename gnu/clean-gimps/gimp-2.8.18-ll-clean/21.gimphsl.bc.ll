; ModuleID = './libgimpcolor/gimphsl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpHSL = type { double, double, double, double }

@gimp_hsl_get_type.hsl_type = internal global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"GimpHSL\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"LibGimpColor\00", align 1
@__func__.gimp_hsl_set = private unnamed_addr constant [13 x i8] c"gimp_hsl_set\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hsl != NULL\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_hsl_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_hsl_get_type.hsl_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpHSL* (%struct._GimpHSL*)* @gimp_hsl_copy to i8* (i8*)*), void (i8*)* @g_free)
  store i64 %call, i64* @gimp_hsl_get_type.hsl_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_hsl_get_type.hsl_type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpHSL* @gimp_hsl_copy(%struct._GimpHSL* %hsl) #2 {
entry:
  %hsl.addr = alloca %struct._GimpHSL*, align 8
  store %struct._GimpHSL* %hsl, %struct._GimpHSL** %hsl.addr, align 8
  %0 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %1 = bitcast %struct._GimpHSL* %0 to i8*
  %call = call noalias i8* @g_memdup(i8* %1, i32 32)
  %2 = bitcast i8* %call to %struct._GimpHSL*
  ret %struct._GimpHSL* %2
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_hsl_set(%struct._GimpHSL* %hsl, double %h, double %s, double %l) #2 {
entry:
  %hsl.addr = alloca %struct._GimpHSL*, align 8
  %h.addr = alloca double, align 8
  %s.addr = alloca double, align 8
  %l.addr = alloca double, align 8
  store %struct._GimpHSL* %hsl, %struct._GimpHSL** %hsl.addr, align 8
  store double %h, double* %h.addr, align 8
  store double %s, double* %s.addr, align 8
  store double %l, double* %l.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %cmp = icmp ne %struct._GimpHSL* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_hsl_set, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load double, double* %h.addr, align 8
  %2 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %h1 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %2, i32 0, i32 0
  store double %1, double* %h1, align 8
  %3 = load double, double* %s.addr, align 8
  %4 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %s2 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %4, i32 0, i32 1
  store double %3, double* %s2, align 8
  %5 = load double, double* %l.addr, align 8
  %6 = load %struct._GimpHSL*, %struct._GimpHSL** %hsl.addr, align 8
  %l3 = getelementptr inbounds %struct._GimpHSL, %struct._GimpHSL* %6, i32 0, i32 2
  store double %5, double* %l3, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_memdup(i8*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
