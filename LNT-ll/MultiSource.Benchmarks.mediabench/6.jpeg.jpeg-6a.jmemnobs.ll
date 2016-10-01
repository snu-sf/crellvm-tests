; ModuleID = './MultiSource.Benchmarks.mediabench/6.jpeg.jpeg-6a.jmemnobs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, void (%struct.jpeg_common_struct*)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { void (%struct.jpeg_common_struct*)*, i64, i64, i32, i32 }
%struct.backing_store_struct = type { void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, %struct._IO_FILE*, [64 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind uwtable
define i8* @jpeg_get_small(%struct.jpeg_common_struct* %cinfo, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %sizeofobject.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8
  %0 = load i64, i64* %sizeofobject.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #2
  ret i8* %call
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @jpeg_free_small(%struct.jpeg_common_struct* %cinfo, i8* %object, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %object.addr = alloca i8*, align 8
  %sizeofobject.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i8* %object, i8** %object.addr, align 8
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8
  %0 = load i8*, i8** %object.addr, align 8
  call void @free(i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @jpeg_get_large(%struct.jpeg_common_struct* %cinfo, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %sizeofobject.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8
  %0 = load i64, i64* %sizeofobject.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #2
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define void @jpeg_free_large(%struct.jpeg_common_struct* %cinfo, i8* %object, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %object.addr = alloca i8*, align 8
  %sizeofobject.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i8* %object, i8** %object.addr, align 8
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8
  %0 = load i8*, i8** %object.addr, align 8
  call void @free(i8* %0) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @jpeg_mem_available(%struct.jpeg_common_struct* %cinfo, i64 %min_bytes_needed, i64 %max_bytes_needed, i64 %already_allocated) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %min_bytes_needed.addr = alloca i64, align 8
  %max_bytes_needed.addr = alloca i64, align 8
  %already_allocated.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i64 %min_bytes_needed, i64* %min_bytes_needed.addr, align 8
  store i64 %max_bytes_needed, i64* %max_bytes_needed.addr, align 8
  store i64 %already_allocated, i64* %already_allocated.addr, align 8
  %0 = load i64, i64* %max_bytes_needed.addr, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define void @jpeg_open_backing_store(%struct.jpeg_common_struct* %cinfo, %struct.backing_store_struct* %info, i64 %total_bytes_needed) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %info.addr = alloca %struct.backing_store_struct*, align 8
  %total_bytes_needed.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store %struct.backing_store_struct* %info, %struct.backing_store_struct** %info.addr, align 8
  store i64 %total_bytes_needed, i64* %total_bytes_needed.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 5
  store i32 48, i32* %msg_code, align 4
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 0
  %4 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %4(%struct.jpeg_common_struct* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @jpeg_mem_init(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  ret i64 0
}

; Function Attrs: nounwind uwtable
define void @jpeg_mem_term(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
