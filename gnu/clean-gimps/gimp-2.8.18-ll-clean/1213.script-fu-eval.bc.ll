; ModuleID = './plug-ins/script-fu/script-fu-eval.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct._GString = type { i8*, i64, i64 }

@script_fu_eval_run.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@.str = private unnamed_addr constant [65 x i8] c"Script-Fu evaluation mode only allows non-interactive invocation\00", align 1

; Function Attrs: nounwind uwtable
define void @script_fu_eval_run(i8* %name, i32 %nparams, %struct._GimpParam* %params, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %output = alloca %struct._GString*, align 8
  %status = alloca i32, align 4
  %run_mode = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %output, align 8
  store i32 3, i32* %status, align 4
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_eval_run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_eval_run.values, i32 0, i64 0, i32 0), align 4
  %2 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %2, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %3 = load i32, i32* %d_int32, align 4
  store i32 %3, i32* %run_mode, align 4
  %4 = load i32, i32* %run_mode, align 4
  call void @ts_set_run_mode(i32 %4)
  %5 = load %struct._GString*, %struct._GString** %output, align 8
  %6 = bitcast %struct._GString* %5 to i8*
  call void @ts_register_output_func(void (i32, i8*, i32, i8*)* @ts_gstring_output_func, i8* %6)
  %7 = load i32, i32* %run_mode, align 4
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.4
    i32 2, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_string = bitcast %union._GimpParamData* %data2 to i8**
  %9 = load i8*, i8** %d_string, align 8
  %call3 = call i32 @ts_interpret_string(i8* %9)
  %cmp = icmp ne i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry, %entry
  store i32 1, i32* %status, align 4
  %10 = load %struct._GString*, %struct._GString** %output, align 8
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0)) #3
  %call6 = call %struct._GString* @g_string_assign(%struct._GString* %10, i8* %call5)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %if.end
  %11 = load i32, i32* %status, align 4
  store i32 %11, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_eval_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %12 = load i32, i32* %status, align 4
  %cmp7 = icmp ne i32 %12, 3
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %13 = load %struct._GString*, %struct._GString** %output, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %13, i32 0, i32 1
  %14 = load i64, i64* %len, align 8
  %cmp8 = icmp ugt i64 %14, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %15 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %15, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_eval_run.values, i32 0, i64 1, i32 0), align 4
  %16 = load %struct._GString*, %struct._GString** %output, align 8
  %call10 = call i8* @g_string_free(%struct._GString* %16, i32 0)
  store i8* %call10, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_eval_run.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %17 = load %struct._GString*, %struct._GString** %output, align 8
  %call11 = call i8* @g_string_free(%struct._GString* %17, i32 1)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.9
  ret void
}

declare %struct._GString* @g_string_new(i8*) #1

declare void @ts_set_run_mode(i32) #1

declare void @ts_register_output_func(void (i32, i8*, i32, i8*)*, i8*) #1

declare void @ts_gstring_output_func(i32, i8*, i32, i8*) #1

declare i32 @ts_interpret_string(i8*) #1

declare %struct._GString* @g_string_assign(%struct._GString*, i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
