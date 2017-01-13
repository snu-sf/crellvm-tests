; ModuleID = './lib/stat-time.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

; Function Attrs: inlinehint nounwind readonly uwtable
define i64 @get_stat_atime_ns(%struct.stat* %st) #0 {
entry:
  %st.addr = alloca %struct.stat*, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 11
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind readonly uwtable
define i64 @get_stat_ctime_ns(%struct.stat* %st) #0 {
entry:
  %st.addr = alloca %struct.stat*, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 13
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_ctim, i32 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind readonly uwtable
define i64 @get_stat_mtime_ns(%struct.stat* %st) #0 {
entry:
  %st.addr = alloca %struct.stat*, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 12
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  ret i64 %1
}

; Function Attrs: inlinehint nounwind readonly uwtable
define i64 @get_stat_birthtime_ns(%struct.stat* %st) #0 {
entry:
  %st.addr = alloca %struct.stat*, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  ret i64 0
}

; Function Attrs: inlinehint nounwind readonly uwtable
define { i64, i64 } @get_stat_atime(%struct.stat* %st) #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %st.addr = alloca %struct.stat*, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 11
  %1 = bitcast %struct.timespec* %retval to i8*
  %2 = bitcast %struct.timespec* %st_atim to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %4 = load { i64, i64 }, { i64, i64 }* %3, align 8
  ret { i64, i64 } %4
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: inlinehint nounwind readonly uwtable
define { i64, i64 } @get_stat_ctime(%struct.stat* %st) #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %st.addr = alloca %struct.stat*, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_ctim = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 13
  %1 = bitcast %struct.timespec* %retval to i8*
  %2 = bitcast %struct.timespec* %st_ctim to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %4 = load { i64, i64 }, { i64, i64 }* %3, align 8
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint nounwind readonly uwtable
define { i64, i64 } @get_stat_mtime(%struct.stat* %st) #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %st.addr = alloca %struct.stat*, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 12
  %1 = bitcast %struct.timespec* %retval to i8*
  %2 = bitcast %struct.timespec* %st_mtim to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %4 = load { i64, i64 }, { i64, i64 }* %3, align 8
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint nounwind readonly uwtable
define { i64, i64 } @get_stat_birthtime(%struct.stat* %st) #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %st.addr = alloca %struct.stat*, align 8
  %t = alloca %struct.timespec, align 8
  store %struct.stat* %st, %struct.stat** %st.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %t, i32 0, i32 0
  store i64 -1, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %t, i32 0, i32 1
  store i64 -1, i64* %tv_nsec, align 8
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 8
  %1 = bitcast %struct.timespec* %retval to i8*
  %2 = bitcast %struct.timespec* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %4 = load { i64, i64 }, { i64, i64 }* %3, align 8
  ret { i64, i64 } %4
}

attributes #0 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
