; ModuleID = 'parsetcommon.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"AllocPPS: PPS\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"AllocPPS: slice_group_id\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"AllocSPS: SPS\00", align 1

; Function Attrs: nounwind uwtable
define %struct.pic_parameter_set_rbsp_t* @AllocPPS() #0 {
entry:
  %p = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %call = call noalias i8* @calloc(i64 240, i64 1) #3
  %0 = bitcast i8* %call to %struct.pic_parameter_set_rbsp_t*
  store %struct.pic_parameter_set_rbsp_t* %0, %struct.pic_parameter_set_rbsp_t** %p, align 8
  %cmp = icmp eq %struct.pic_parameter_set_rbsp_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @calloc(i64 60000, i64 1) #3
  %1 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %p, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %1, i32 0, i32 16
  store i8* %call1, i8** %slice_group_id, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %p, align 8
  ret %struct.pic_parameter_set_rbsp_t* %2
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.seq_parameter_set_rbsp_t* @AllocSPS() #0 {
entry:
  %p = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %call = call noalias i8* @calloc(i64 2132, i64 1) #3
  %0 = bitcast i8* %call to %struct.seq_parameter_set_rbsp_t*
  store %struct.seq_parameter_set_rbsp_t* %0, %struct.seq_parameter_set_rbsp_t** %p, align 8
  %cmp = icmp eq %struct.seq_parameter_set_rbsp_t* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %p, align 8
  ret %struct.seq_parameter_set_rbsp_t* %1
}

; Function Attrs: nounwind uwtable
define void @FreePPS(%struct.pic_parameter_set_rbsp_t* %pps) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 16
  %1 = load i8*, i8** %slice_group_id, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %slice_group_id1 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %2, i32 0, i32 16
  %3 = load i8*, i8** %slice_group_id1, align 8
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %5 = bitcast %struct.pic_parameter_set_rbsp_t* %4 to i8*
  call void @free(i8* %5) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @FreeSPS(%struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %1 = bitcast %struct.seq_parameter_set_rbsp_t* %0 to i8*
  call void @free(i8* %1) #3
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
