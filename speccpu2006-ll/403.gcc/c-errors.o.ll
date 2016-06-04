; ModuleID = 'c-errors.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diagnostic_context = type { %struct.output_buffer, i8*, [1 x %struct.__va_list_tag]*, i8*, i32, i32, void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)*, i8* }
%struct.output_buffer = type { %struct.output_state, %struct._IO_FILE*, %struct.obstack, i32, [128 x i8], i32 (%struct.output_buffer*)* }
%struct.output_state = type { i8*, i32, i32, i32, i8, i8, i32, i8*, [1 x %struct.__va_list_tag]*, [7 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@input_filename = external global i8*, align 8
@lineno = external global i32, align 4
@flag_isoc99 = external global i32, align 4
@flag_pedantic_errors = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @pedwarn_c99(i8* %msgid, ...) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %dc = alloca %struct.diagnostic_context, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %msgid.addr, align 8
  %1 = load i8*, i8** @input_filename, align 8
  %2 = load i32, i32* @lineno, align 4
  %3 = load i32, i32* @flag_isoc99, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %4 = load i32, i32* @flag_pedantic_errors, align 4
  %tobool2 = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool2, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  call void @set_diagnostic_context(%struct.diagnostic_context* %dc, i8* %0, [1 x %struct.__va_list_tag]* %ap, i8* %1, i32 %2, i32 %lor.ext)
  call void @report_diagnostic(%struct.diagnostic_context* %dc)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

declare void @set_diagnostic_context(%struct.diagnostic_context*, i8*, [1 x %struct.__va_list_tag]*, i8*, i32, i32) #2

declare void @report_diagnostic(%struct.diagnostic_context*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
