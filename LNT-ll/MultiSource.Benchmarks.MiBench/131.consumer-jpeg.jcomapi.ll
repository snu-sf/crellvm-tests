; ModuleID = './MultiSource.Benchmarks.MiBench/131.consumer-jpeg.jcomapi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_error_mgr = type { {}*, void (%struct.jpeg_common_struct*, i32)*, {}*, void (%struct.jpeg_common_struct*, i8*)*, {}*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

; Function Attrs: nounwind uwtable
define void @jpeg_abort(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool = alloca i32, align 4
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 1, i32* %pool, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pool, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %free_pool = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 9
  %3 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %free_pool, align 8
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %5 = load i32, i32* %pool, align 4
  call void %3(%struct.jpeg_common_struct* %4, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %pool, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %pool, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %is_decompressor = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %7, i32 0, i32 3
  %8 = load i32, i32* %is_decompressor, align 4
  %tobool = icmp ne i32 %8, 0
  %cond = select i1 %tobool, i32 200, i32 100
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %9, i32 0, i32 4
  store i32 %cond, i32* %global_state, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @jpeg_destroy(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %cmp = icmp ne %struct.jpeg_memory_mgr* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8
  %self_destruct = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 10
  %self_destruct2 = bitcast {}** %self_destruct to void (%struct.jpeg_common_struct*)**
  %4 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %self_destruct2, align 8
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %4(%struct.jpeg_common_struct* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %6, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem3, align 8
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %7, i32 0, i32 4
  store i32 0, i32* %global_state, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %tbl = alloca %struct.JQUANT_TBL*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %call = call i8* %2(%struct.jpeg_common_struct* %3, i32 0, i64 132)
  %4 = bitcast i8* %call to %struct.JQUANT_TBL*
  store %struct.JQUANT_TBL* %4, %struct.JQUANT_TBL** %tbl, align 8
  %5 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %tbl, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %5, i32 0, i32 1
  store i32 0, i32* %sent_table, align 4
  %6 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %tbl, align 8
  ret %struct.JQUANT_TBL* %6
}

; Function Attrs: nounwind uwtable
define %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %tbl = alloca %struct.JHUFF_TBL*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %call = call i8* %2(%struct.jpeg_common_struct* %3, i32 0, i64 280)
  %4 = bitcast i8* %call to %struct.JHUFF_TBL*
  store %struct.JHUFF_TBL* %4, %struct.JHUFF_TBL** %tbl, align 8
  %5 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %tbl, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %5, i32 0, i32 2
  store i32 0, i32* %sent_table, align 4
  %6 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %tbl, align 8
  ret %struct.JHUFF_TBL* %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
