; ModuleID = './MultiSource.Applications.viterbi/2.test.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvarray = type { i64, %struct.dvector* }
%struct.dvector = type { i64, double* }
%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }
%struct.bitvector = type { i64, i8* }

@.str = private unnamed_addr constant [86 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/viterbi/Dist_demux\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Starting Viterbi\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Viterbi finished\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Dist_demux = alloca %struct.dvarray, align 8
  %param_viterbi = alloca %struct.param_viterbi_t, align 8
  %Metr_mem = alloca %struct.dvector, align 8
  %history_mem = alloca i8*, align 8
  %d_bit_stream = alloca %struct.bitvector, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @dvarray_init(%struct.dvarray* %Dist_demux, i64 0, i64 0)
  call void @bitvector_init(%struct.bitvector* %d_bit_stream, i64 0)
  call void @init_viterbi(%struct.param_viterbi_t* %param_viterbi, i32 1)
  %call = call noalias i8* @malloc(i64 18304) #4
  store i8* %call, i8** %history_mem, align 8
  %1 = load i8*, i8** %history_mem, align 8
  %history = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %param_viterbi, i32 0, i32 9
  %2 = bitcast [128 x [143 x i8]]* %history to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 18304, i32 1, i1 false)
  call void @dvector_init(%struct.dvector* %Metr_mem, i64 128)
  %data = getelementptr inbounds %struct.dvector, %struct.dvector* %Metr_mem, i32 0, i32 1
  %3 = load double*, double** %data, align 8
  %4 = bitcast double* %3 to i8*
  %Metr = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %param_viterbi, i32 0, i32 8
  %5 = bitcast [128 x double]* %Metr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 1024, i32 8, i1 false)
  %call1 = call i64 @read_dmatrix(%struct.dvarray* %Dist_demux, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %6 = load i8*, i8** %history_mem, align 8
  call void @dec_viterbi_F(%struct.dvector* %Metr_mem, i8* %6, %struct.bitvector* %d_bit_stream, %struct.dvarray* %Dist_demux, %struct.param_viterbi_t* %param_viterbi, i64 0)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  call void @dvector_clear(%struct.dvector* %Metr_mem)
  call void @dvarray_clear(%struct.dvarray* %Dist_demux)
  call void @bitvector_clear(%struct.bitvector* %d_bit_stream)
  %7 = load i8*, i8** %history_mem, align 8
  call void @free(i8* %7) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @dvarray_init(%struct.dvarray* %array, i64 %count, i64 %vlength) #1 {
entry:
  %array.addr = alloca %struct.dvarray*, align 8
  %count.addr = alloca i64, align 8
  %vlength.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.dvarray* %array, %struct.dvarray** %array.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %vlength, i64* %vlength.addr, align 8
  %0 = load i64, i64* %count.addr, align 8
  %1 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %count1 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %1, i32 0, i32 0
  store i64 %0, i64* %count1, align 8
  %2 = load i64, i64* %count.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %count.addr, align 8
  %mul = mul i64 %3, 16
  %call = call noalias i8* @malloc(i64 %mul) #4
  %4 = bitcast i8* %call to %struct.dvector*
  %5 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %data = getelementptr inbounds %struct.dvarray, %struct.dvarray* %5, i32 0, i32 1
  store %struct.dvector* %4, %struct.dvector** %data, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %data2 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %6, i32 0, i32 1
  store %struct.dvector* null, %struct.dvector** %data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %count.addr, align 8
  %cmp = icmp ult i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %data3 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %10, i32 0, i32 1
  %11 = load %struct.dvector*, %struct.dvector** %data3, align 8
  %arrayidx = getelementptr inbounds %struct.dvector, %struct.dvector* %11, i64 %9
  %12 = load i64, i64* %vlength.addr, align 8
  call void @dvector_init(%struct.dvector* %arrayidx, i64 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @bitvector_init(%struct.bitvector* %vector, i64 %length) #1 {
entry:
  %vector.addr = alloca %struct.bitvector*, align 8
  %length.addr = alloca i64, align 8
  store %struct.bitvector* %vector, %struct.bitvector** %vector.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %1 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %length1 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %1, i32 0, i32 0
  store i64 %0, i64* %length1, align 8
  %2 = load i64, i64* %length.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %3, 1
  %call = call noalias i8* @malloc(i64 %mul) #4
  %4 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.bitvector, %struct.bitvector* %4, i32 0, i32 1
  store i8* %call, i8** %data, align 8
  %5 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data2 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %5, i32 0, i32 1
  %6 = load i8*, i8** %data2, align 8
  %7 = load i64, i64* %length.addr, align 8
  %mul3 = mul i64 %7, 1
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %mul3, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data4 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %8, i32 0, i32 1
  store i8* null, i8** %data4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @init_viterbi(%struct.param_viterbi_t*, i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @dvector_init(%struct.dvector* %vector, i64 %length) #1 {
entry:
  %vector.addr = alloca %struct.dvector*, align 8
  %length.addr = alloca i64, align 8
  store %struct.dvector* %vector, %struct.dvector** %vector.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %1 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %length1 = getelementptr inbounds %struct.dvector, %struct.dvector* %1, i32 0, i32 0
  store i64 %0, i64* %length1, align 8
  %2 = load i64, i64* %length.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %3, 8
  %call = call noalias i8* @malloc(i64 %mul) #4
  %4 = bitcast i8* %call to double*
  %5 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.dvector, %struct.dvector* %5, i32 0, i32 1
  store double* %4, double** %data, align 8
  %6 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %data2 = getelementptr inbounds %struct.dvector, %struct.dvector* %6, i32 0, i32 1
  %7 = load double*, double** %data2, align 8
  %8 = bitcast double* %7 to i8*
  %9 = load i64, i64* %length.addr, align 8
  %mul3 = mul i64 %9, 8
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %mul3, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %data4 = getelementptr inbounds %struct.dvector, %struct.dvector* %10, i32 0, i32 1
  store double* null, double** %data4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i64 @read_dmatrix(%struct.dvarray*, i8*) #2

declare i32 @printf(i8*, ...) #2

declare void @dec_viterbi_F(%struct.dvector*, i8*, %struct.bitvector*, %struct.dvarray*, %struct.param_viterbi_t*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @dvector_clear(%struct.dvector* %vector) #1 {
entry:
  %vector.addr = alloca %struct.dvector*, align 8
  store %struct.dvector* %vector, %struct.dvector** %vector.addr, align 8
  %0 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i32 0, i32 1
  %1 = load double*, double** %data, align 8
  %2 = bitcast double* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %length = getelementptr inbounds %struct.dvector, %struct.dvector* %3, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %4 = load %struct.dvector*, %struct.dvector** %vector.addr, align 8
  %data1 = getelementptr inbounds %struct.dvector, %struct.dvector* %4, i32 0, i32 1
  store double* null, double** %data1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @dvarray_clear(%struct.dvarray* %array) #1 {
entry:
  %array.addr = alloca %struct.dvarray*, align 8
  %i = alloca i64, align 8
  store %struct.dvarray* %array, %struct.dvarray** %array.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %count = getelementptr inbounds %struct.dvarray, %struct.dvarray* %1, i32 0, i32 0
  %2 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %data = getelementptr inbounds %struct.dvarray, %struct.dvarray* %4, i32 0, i32 1
  %5 = load %struct.dvector*, %struct.dvector** %data, align 8
  %arrayidx = getelementptr inbounds %struct.dvector, %struct.dvector* %5, i64 %3
  call void @dvector_clear(%struct.dvector* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %data1 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %7, i32 0, i32 1
  %8 = load %struct.dvector*, %struct.dvector** %data1, align 8
  %9 = bitcast %struct.dvector* %8 to i8*
  call void @free(i8* %9) #4
  %10 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %count2 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %10, i32 0, i32 0
  store i64 0, i64* %count2, align 8
  %11 = load %struct.dvarray*, %struct.dvarray** %array.addr, align 8
  %data3 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %11, i32 0, i32 1
  store %struct.dvector* null, %struct.dvector** %data3, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @bitvector_clear(%struct.bitvector* %vector) #1 {
entry:
  %vector.addr = alloca %struct.bitvector*, align 8
  store %struct.bitvector* %vector, %struct.bitvector** %vector.addr, align 8
  %0 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.bitvector, %struct.bitvector* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  call void @free(i8* %1) #4
  %2 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %length = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data1 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %3, i32 0, i32 1
  store i8* null, i8** %data1, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
