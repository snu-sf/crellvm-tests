; ModuleID = './plug-ins/script-fu/script-fu-text-console.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@script_fu_text_console_run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @script_fu_text_console_run(i8* %name, i32 %nparams, %struct._GimpParam* %params, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  call void @ts_register_output_func(void (i32, i8*, i32, i8*)* @ts_stdout_output_func, i8* null)
  call void @ts_print_welcome()
  %call = call i32 @gimp_plugin_set_pdb_error_handler(i32 1)
  call void @ts_interpret_stdin()
  %call1 = call i32 @gimp_plugin_set_pdb_error_handler(i32 0)
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_text_console_run.values, i32 0, i64 0, i32 0), align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_text_console_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_text_console_run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  ret void
}

declare void @ts_register_output_func(void (i32, i8*, i32, i8*)*, i8*) #1

declare void @ts_stdout_output_func(i32, i8*, i32, i8*) #1

declare void @ts_print_welcome() #1

declare i32 @gimp_plugin_set_pdb_error_handler(i32) #1

declare void @ts_interpret_stdin() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
