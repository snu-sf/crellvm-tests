; ModuleID = 'filehandle.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@WriteNALU = external global i32 (%struct.NALU_t*)*, align 8
@input = external global %struct.InputParameters*, align 8
@errortext = external global [300 x i8], align 16
@.str.1 = private unnamed_addr constant [34 x i8] c"Output File Mode %d not supported\00", align 1
@stats = external global %struct.StatParameters*, align 8

; Function Attrs: nounwind uwtable
define void @error(i8* %text, i32 %code) #0 {
entry:
  %text.addr = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %text.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %1)
  call void (...) @flush_dpb()
  %2 = load i32, i32* %code.addr, align 4
  call void @exit(i32 %2) #4
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @flush_dpb(...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @write_PPS(i32 %len, i32 %PPS_id) #0 {
entry:
  %len.addr = alloca i32, align 4
  %PPS_id.addr = alloca i32, align 4
  %nalu = alloca %struct.NALU_t*, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %PPS_id, i32* %PPS_id.addr, align 4
  store %struct.NALU_t* null, %struct.NALU_t** %nalu, align 8
  %0 = load i32, i32* %PPS_id.addr, align 4
  %call = call %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %0)
  store %struct.NALU_t* %call, %struct.NALU_t** %nalu, align 8
  %1 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %2 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call1 = call i32 %1(%struct.NALU_t* %2)
  %3 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %3, %call1
  store i32 %add, i32* %len.addr, align 4
  %4 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %4)
  %5 = load i32, i32* %len.addr, align 4
  ret i32 %5
}

declare %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32) #1

declare void @FreeNALU(%struct.NALU_t*) #1

; Function Attrs: nounwind uwtable
define i32 @start_sequence() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %total_pps = alloca i32, align 4
  %nalu = alloca %struct.NALU_t*, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 15
  %1 = load i32, i32* %GenerateMultiplePPS, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 3, i32 1
  store i32 %cond, i32* %total_pps, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 60
  %3 = load i32, i32* %of_mode, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %outfile = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 27
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %outfile, i32 0, i32 0
  call void @OpenAnnexbFile(i8* %arraydecay)
  store i32 (%struct.NALU_t*)* @WriteAnnexbNALU, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %outfile2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 27
  %arraydecay3 = getelementptr inbounds [200 x i8], [200 x i8]* %outfile2, i32 0, i32 0
  call void @OpenRTPFile(i8* %arraydecay3)
  store i32 (%struct.NALU_t*)* @WriteRTPNALU, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode4 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 60
  %7 = load i32, i32* %of_mode4, align 4
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %7) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 1)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  store %struct.NALU_t* null, %struct.NALU_t** %nalu, align 8
  %call5 = call %struct.NALU_t* (...) @GenerateSeq_parameter_set_NALU()
  store %struct.NALU_t* %call5, %struct.NALU_t** %nalu, align 8
  %8 = load i32 (%struct.NALU_t*)*, i32 (%struct.NALU_t*)** @WriteNALU, align 8
  %9 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  %call6 = call i32 %8(%struct.NALU_t* %9)
  %10 = load i32, i32* %len, align 4
  %add = add nsw i32 %10, %call6
  store i32 %add, i32* %len, align 4
  %11 = load %struct.NALU_t*, %struct.NALU_t** %nalu, align 8
  call void @FreeNALU(%struct.NALU_t* %11)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %total_pps, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %len, align 4
  %15 = load i32, i32* %i, align 4
  %call7 = call i32 @write_PPS(i32 %14, i32 %15)
  store i32 %call7, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %len, align 4
  %18 = load %struct.StatParameters*, %struct.StatParameters** @stats, align 8
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters, %struct.StatParameters* %18, i32 0, i32 33
  store i32 %17, i32* %bit_ctr_parametersets_n, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.default
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare void @OpenAnnexbFile(i8*) #1

declare i32 @WriteAnnexbNALU(%struct.NALU_t*) #1

declare void @OpenRTPFile(i8*) #1

declare i32 @WriteRTPNALU(%struct.NALU_t*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare %struct.NALU_t* @GenerateSeq_parameter_set_NALU(...) #1

; Function Attrs: nounwind uwtable
define i32 @terminate_sequence() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 60
  %1 = load i32, i32* %of_mode, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  call void (...) @CloseAnnexbFile()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  call void (...) @CloseRTPFile()
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %of_mode2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 60
  %3 = load i32, i32* %of_mode2, align 4
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %3) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 1)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb.1
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @CloseAnnexbFile(...) #1

declare void @CloseRTPFile(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
