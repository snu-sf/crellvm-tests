; ModuleID = './MultiSource.Benchmarks.mediabench/38.jpeg.jpeg-6a.jmemmgr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_error_mgr = type { {}*, void (%struct.jpeg_common_struct*, i32)*, {}*, void (%struct.jpeg_common_struct*, i8*)*, {}*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type { i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.jvirt_sarray_control*, %struct.backing_store_struct }
%struct.backing_store_struct = type { void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, %struct._IO_FILE*, [64 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.jvirt_barray_control = type { [64 x i16]**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.jvirt_barray_control*, %struct.backing_store_struct }
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.my_memory_mgr = type { %struct.jpeg_memory_mgr, [2 x %union.small_pool_struct*], [2 x %union.large_pool_struct*], %struct.jvirt_sarray_control*, %struct.jvirt_barray_control*, i64, i32 }
%union.small_pool_struct = type { %struct.anon }
%struct.anon = type { %union.small_pool_struct*, i64, i64 }
%union.large_pool_struct = type { %struct.anon.0 }
%struct.anon.0 = type { %union.large_pool_struct*, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@first_pool_slop = internal constant [2 x i64] [i64 1600, i64 16000], align 16
@extra_pool_slop = internal constant [2 x i64] [i64 0, i64 5000], align 16

; Function Attrs: nounwind uwtable
define void @jinit_memory_mgr(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %mem = alloca %struct.my_memory_mgr*, align 8
  %max_to_use = alloca i64, align 8
  %pool = alloca i32, align 4
  %test_mac = alloca i64, align 8
  %memenv = alloca i8*, align 8
  %ch = alloca i8, align 1
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem1, align 8
  store i64 1000000000, i64* %test_mac, align 8
  %1 = load i64, i64* %test_mac, align 8
  %cmp = icmp ne i64 %1, 1000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 0
  %error_exit3 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %6 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit3, align 8
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %6(%struct.jpeg_common_struct* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %call = call i64 @jpeg_mem_init(%struct.jpeg_common_struct* %8)
  store i64 %call, i64* %max_to_use, align 8
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %call4 = call i8* @jpeg_get_small(%struct.jpeg_common_struct* %9, i64 160)
  %10 = bitcast i8* %call4 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %10, %struct.my_memory_mgr** %mem, align 8
  %11 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %cmp5 = icmp eq %struct.my_memory_mgr* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void @jpeg_mem_term(%struct.jpeg_common_struct* %12)
  %13 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 53, i32* %msg_code8, align 4
  %15 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %error_exit12 = bitcast {}** %error_exit11 to void (%struct.jpeg_common_struct*)**
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit12, align 8
  %20 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %19(%struct.jpeg_common_struct* %20)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.6, %if.end
  %21 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %21, i32 0, i32 0
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub, i32 0, i32 0
  store i8* (%struct.jpeg_common_struct*, i32, i64)* @alloc_small, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %22 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub14 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %22, i32 0, i32 0
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub14, i32 0, i32 1
  store i8* (%struct.jpeg_common_struct*, i32, i64)* @alloc_large, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8
  %23 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub15 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %23, i32 0, i32 0
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub15, i32 0, i32 2
  store i8** (%struct.jpeg_common_struct*, i32, i32, i32)* @alloc_sarray, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8
  %24 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub16 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %24, i32 0, i32 0
  %alloc_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub16, i32 0, i32 3
  store [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)* @alloc_barray, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_barray, align 8
  %25 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub17 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %25, i32 0, i32 0
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub17, i32 0, i32 4
  store %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)* @request_virt_sarray, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8
  %26 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub18 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %26, i32 0, i32 0
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub18, i32 0, i32 5
  store %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)* @request_virt_barray, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_barray, align 8
  %27 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub19 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %27, i32 0, i32 0
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub19, i32 0, i32 6
  %realize_virt_arrays20 = bitcast {}** %realize_virt_arrays to void (%struct.jpeg_common_struct*)**
  store void (%struct.jpeg_common_struct*)* @realize_virt_arrays, void (%struct.jpeg_common_struct*)** %realize_virt_arrays20, align 8
  %28 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub21 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %28, i32 0, i32 0
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub21, i32 0, i32 7
  store i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)* @access_virt_sarray, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8
  %29 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub22 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %29, i32 0, i32 0
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub22, i32 0, i32 8
  store [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)* @access_virt_barray, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8
  %30 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub23 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %30, i32 0, i32 0
  %free_pool = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub23, i32 0, i32 9
  store void (%struct.jpeg_common_struct*, i32)* @free_pool, void (%struct.jpeg_common_struct*, i32)** %free_pool, align 8
  %31 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub24 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %31, i32 0, i32 0
  %self_destruct = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub24, i32 0, i32 10
  %self_destruct25 = bitcast {}** %self_destruct to void (%struct.jpeg_common_struct*)**
  store void (%struct.jpeg_common_struct*)* @self_destruct, void (%struct.jpeg_common_struct*)** %self_destruct25, align 8
  %32 = load i64, i64* %max_to_use, align 8
  %33 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub26 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %33, i32 0, i32 0
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub26, i32 0, i32 11
  store i64 %32, i64* %max_memory_to_use, align 8
  store i32 1, i32* %pool, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %34 = load i32, i32* %pool, align 4
  %cmp27 = icmp sge i32 %34, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %pool, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %small_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %36, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list, i32 0, i64 %idxprom
  store %union.small_pool_struct* null, %union.small_pool_struct** %arrayidx28, align 8
  %37 = load i32, i32* %pool, align 4
  %idxprom29 = sext i32 %37 to i64
  %38 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %large_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %38, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list, i32 0, i64 %idxprom29
  store %union.large_pool_struct* null, %union.large_pool_struct** %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %pool, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %pool, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %40, i32 0, i32 3
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %virt_sarray_list, align 8
  %41 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %41, i32 0, i32 4
  store %struct.jvirt_barray_control* null, %struct.jvirt_barray_control** %virt_barray_list, align 8
  %42 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %42, i32 0, i32 5
  store i64 160, i64* %total_space_allocated, align 8
  %43 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub31 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %43, i32 0, i32 0
  %44 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem32 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %44, i32 0, i32 1
  store %struct.jpeg_memory_mgr* %pub31, %struct.jpeg_memory_mgr** %mem32, align 8
  %call33 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)) #3
  store i8* %call33, i8** %memenv, align 8
  %cmp34 = icmp ne i8* %call33, null
  br i1 %cmp34, label %if.then.35, label %if.end.50

if.then.35:                                       ; preds = %for.end
  store i8 120, i8* %ch, align 1
  %45 = load i8*, i8** %memenv, align 8
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64* %max_to_use, i8* %ch) #3
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %if.then.35
  %46 = load i8, i8* %ch, align 1
  %conv = sext i8 %46 to i32
  %cmp39 = icmp eq i32 %conv, 109
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.38
  %47 = load i8, i8* %ch, align 1
  %conv41 = sext i8 %47 to i32
  %cmp42 = icmp eq i32 %conv41, 77
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false, %if.then.38
  %48 = load i64, i64* %max_to_use, align 8
  %mul = mul nsw i64 %48, 1000
  store i64 %mul, i64* %max_to_use, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false
  %49 = load i64, i64* %max_to_use, align 8
  %mul46 = mul nsw i64 %49, 1000
  %50 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %pub47 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %50, i32 0, i32 0
  %max_memory_to_use48 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub47, i32 0, i32 11
  store i64 %mul46, i64* %max_memory_to_use48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.45, %if.then.35
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %for.end
  ret void
}

declare i64 @jpeg_mem_init(%struct.jpeg_common_struct*) #1

declare i8* @jpeg_get_small(%struct.jpeg_common_struct*, i64) #1

declare void @jpeg_mem_term(%struct.jpeg_common_struct*) #1

; Function Attrs: nounwind uwtable
define internal i8* @alloc_small(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %sizeofobject.addr = alloca i64, align 8
  %mem = alloca %struct.my_memory_mgr*, align 8
  %hdr_ptr = alloca %union.small_pool_struct*, align 8
  %prev_hdr_ptr = alloca %union.small_pool_struct*, align 8
  %data_ptr = alloca i8*, align 8
  %odd_bytes = alloca i64, align 8
  %min_request = alloca i64, align 8
  %slop = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 %pool_id, i32* %pool_id.addr, align 4
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8
  %2 = bitcast %struct.jpeg_memory_mgr* %1 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %2, %struct.my_memory_mgr** %mem, align 8
  %3 = load i64, i64* %sizeofobject.addr, align 8
  %cmp = icmp ugt i64 %3, 999999976
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void @out_of_memory(%struct.jpeg_common_struct* %4, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %sizeofobject.addr, align 8
  %rem = urem i64 %5, 8
  store i64 %rem, i64* %odd_bytes, align 8
  %6 = load i64, i64* %odd_bytes, align 8
  %cmp2 = icmp ugt i64 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load i64, i64* %odd_bytes, align 8
  %sub = sub i64 8, %7
  %8 = load i64, i64* %sizeofobject.addr, align 8
  %add = add i64 %8, %sub
  store i64 %add, i64* %sizeofobject.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load i32, i32* %pool_id.addr, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %10 = load i32, i32* %pool_id.addr, align 4
  %cmp6 = icmp sge i32 %10, 2
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %11 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4
  %13 = load i32, i32* %pool_id.addr, align 4
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %13, i32* %arrayidx, align 4
  %16 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %error_exit10 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit10, align 8
  %19 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %18(%struct.jpeg_common_struct* %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %lor.lhs.false
  store %union.small_pool_struct* null, %union.small_pool_struct** %prev_hdr_ptr, align 8
  %20 = load i32, i32* %pool_id.addr, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %small_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %21, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list, i32 0, i64 %idxprom
  %22 = load %union.small_pool_struct*, %union.small_pool_struct** %arrayidx12, align 8
  store %union.small_pool_struct* %22, %union.small_pool_struct** %hdr_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end.11
  %23 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %cmp13 = icmp ne %union.small_pool_struct* %23, null
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %hdr = bitcast %union.small_pool_struct* %24 to %struct.anon*
  %bytes_left = getelementptr inbounds %struct.anon, %struct.anon* %hdr, i32 0, i32 2
  %25 = load i64, i64* %bytes_left, align 8
  %26 = load i64, i64* %sizeofobject.addr, align 8
  %cmp14 = icmp uge i64 %25, %26
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body
  br label %while.end

if.end.16:                                        ; preds = %while.body
  %27 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  store %union.small_pool_struct* %27, %union.small_pool_struct** %prev_hdr_ptr, align 8
  %28 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %hdr17 = bitcast %union.small_pool_struct* %28 to %struct.anon*
  %next = getelementptr inbounds %struct.anon, %struct.anon* %hdr17, i32 0, i32 0
  %29 = load %union.small_pool_struct*, %union.small_pool_struct** %next, align 8
  store %union.small_pool_struct* %29, %union.small_pool_struct** %hdr_ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.15, %while.cond
  %30 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %cmp18 = icmp eq %union.small_pool_struct* %30, null
  br i1 %cmp18, label %if.then.19, label %if.end.57

if.then.19:                                       ; preds = %while.end
  %31 = load i64, i64* %sizeofobject.addr, align 8
  %add20 = add i64 %31, 24
  store i64 %add20, i64* %min_request, align 8
  %32 = load %union.small_pool_struct*, %union.small_pool_struct** %prev_hdr_ptr, align 8
  %cmp21 = icmp eq %union.small_pool_struct* %32, null
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.19
  %33 = load i32, i32* %pool_id.addr, align 4
  %idxprom23 = sext i32 %33 to i64
  %arrayidx24 = getelementptr inbounds [2 x i64], [2 x i64]* @first_pool_slop, i32 0, i64 %idxprom23
  %34 = load i64, i64* %arrayidx24, align 8
  store i64 %34, i64* %slop, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.then.19
  %35 = load i32, i32* %pool_id.addr, align 4
  %idxprom25 = sext i32 %35 to i64
  %arrayidx26 = getelementptr inbounds [2 x i64], [2 x i64]* @extra_pool_slop, i32 0, i64 %idxprom25
  %36 = load i64, i64* %arrayidx26, align 8
  store i64 %36, i64* %slop, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.22
  %37 = load i64, i64* %slop, align 8
  %38 = load i64, i64* %min_request, align 8
  %sub28 = sub i64 1000000000, %38
  %cmp29 = icmp ugt i64 %37, %sub28
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.27
  %39 = load i64, i64* %min_request, align 8
  %sub31 = sub i64 1000000000, %39
  store i64 %sub31, i64* %slop, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.27
  br label %for.cond

for.cond:                                         ; preds = %if.end.39, %if.end.32
  %40 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %41 = load i64, i64* %min_request, align 8
  %42 = load i64, i64* %slop, align 8
  %add33 = add i64 %41, %42
  %call = call i8* @jpeg_get_small(%struct.jpeg_common_struct* %40, i64 %add33)
  %43 = bitcast i8* %call to %union.small_pool_struct*
  store %union.small_pool_struct* %43, %union.small_pool_struct** %hdr_ptr, align 8
  %44 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %cmp34 = icmp ne %union.small_pool_struct* %44, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.cond
  br label %for.end

if.end.36:                                        ; preds = %for.cond
  %45 = load i64, i64* %slop, align 8
  %div = udiv i64 %45, 2
  store i64 %div, i64* %slop, align 8
  %46 = load i64, i64* %slop, align 8
  %cmp37 = icmp ult i64 %46, 50
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  %47 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void @out_of_memory(%struct.jpeg_common_struct* %47, i32 2)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  br label %for.cond

for.end:                                          ; preds = %if.then.35
  %48 = load i64, i64* %min_request, align 8
  %49 = load i64, i64* %slop, align 8
  %add40 = add i64 %48, %49
  %50 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %50, i32 0, i32 5
  %51 = load i64, i64* %total_space_allocated, align 8
  %add41 = add i64 %51, %add40
  store i64 %add41, i64* %total_space_allocated, align 8
  %52 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %hdr42 = bitcast %union.small_pool_struct* %52 to %struct.anon*
  %next43 = getelementptr inbounds %struct.anon, %struct.anon* %hdr42, i32 0, i32 0
  store %union.small_pool_struct* null, %union.small_pool_struct** %next43, align 8
  %53 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %hdr44 = bitcast %union.small_pool_struct* %53 to %struct.anon*
  %bytes_used = getelementptr inbounds %struct.anon, %struct.anon* %hdr44, i32 0, i32 1
  store i64 0, i64* %bytes_used, align 8
  %54 = load i64, i64* %sizeofobject.addr, align 8
  %55 = load i64, i64* %slop, align 8
  %add45 = add i64 %54, %55
  %56 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %hdr46 = bitcast %union.small_pool_struct* %56 to %struct.anon*
  %bytes_left47 = getelementptr inbounds %struct.anon, %struct.anon* %hdr46, i32 0, i32 2
  store i64 %add45, i64* %bytes_left47, align 8
  %57 = load %union.small_pool_struct*, %union.small_pool_struct** %prev_hdr_ptr, align 8
  %cmp48 = icmp eq %union.small_pool_struct* %57, null
  br i1 %cmp48, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %for.end
  %58 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %59 = load i32, i32* %pool_id.addr, align 4
  %idxprom50 = sext i32 %59 to i64
  %60 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %small_list51 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %60, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list51, i32 0, i64 %idxprom50
  store %union.small_pool_struct* %58, %union.small_pool_struct** %arrayidx52, align 8
  br label %if.end.56

if.else.53:                                       ; preds = %for.end
  %61 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %62 = load %union.small_pool_struct*, %union.small_pool_struct** %prev_hdr_ptr, align 8
  %hdr54 = bitcast %union.small_pool_struct* %62 to %struct.anon*
  %next55 = getelementptr inbounds %struct.anon, %struct.anon* %hdr54, i32 0, i32 0
  store %union.small_pool_struct* %61, %union.small_pool_struct** %next55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %while.end
  %63 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %add.ptr = getelementptr inbounds %union.small_pool_struct, %union.small_pool_struct* %63, i64 1
  %64 = bitcast %union.small_pool_struct* %add.ptr to i8*
  store i8* %64, i8** %data_ptr, align 8
  %65 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %hdr58 = bitcast %union.small_pool_struct* %65 to %struct.anon*
  %bytes_used59 = getelementptr inbounds %struct.anon, %struct.anon* %hdr58, i32 0, i32 1
  %66 = load i64, i64* %bytes_used59, align 8
  %67 = load i8*, i8** %data_ptr, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %add.ptr60, i8** %data_ptr, align 8
  %68 = load i64, i64* %sizeofobject.addr, align 8
  %69 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %hdr61 = bitcast %union.small_pool_struct* %69 to %struct.anon*
  %bytes_used62 = getelementptr inbounds %struct.anon, %struct.anon* %hdr61, i32 0, i32 1
  %70 = load i64, i64* %bytes_used62, align 8
  %add63 = add i64 %70, %68
  store i64 %add63, i64* %bytes_used62, align 8
  %71 = load i64, i64* %sizeofobject.addr, align 8
  %72 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8
  %hdr64 = bitcast %union.small_pool_struct* %72 to %struct.anon*
  %bytes_left65 = getelementptr inbounds %struct.anon, %struct.anon* %hdr64, i32 0, i32 2
  %73 = load i64, i64* %bytes_left65, align 8
  %sub66 = sub i64 %73, %71
  store i64 %sub66, i64* %bytes_left65, align 8
  %74 = load i8*, i8** %data_ptr, align 8
  ret i8* %74
}

; Function Attrs: nounwind uwtable
define internal i8* @alloc_large(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %sizeofobject.addr = alloca i64, align 8
  %mem = alloca %struct.my_memory_mgr*, align 8
  %hdr_ptr = alloca %union.large_pool_struct*, align 8
  %odd_bytes = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 %pool_id, i32* %pool_id.addr, align 4
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8
  %2 = bitcast %struct.jpeg_memory_mgr* %1 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %2, %struct.my_memory_mgr** %mem, align 8
  %3 = load i64, i64* %sizeofobject.addr, align 8
  %cmp = icmp ugt i64 %3, 999999976
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void @out_of_memory(%struct.jpeg_common_struct* %4, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %sizeofobject.addr, align 8
  %rem = urem i64 %5, 8
  store i64 %rem, i64* %odd_bytes, align 8
  %6 = load i64, i64* %odd_bytes, align 8
  %cmp2 = icmp ugt i64 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load i64, i64* %odd_bytes, align 8
  %sub = sub i64 8, %7
  %8 = load i64, i64* %sizeofobject.addr, align 8
  %add = add i64 %8, %sub
  store i64 %add, i64* %sizeofobject.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %9 = load i32, i32* %pool_id.addr, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %10 = load i32, i32* %pool_id.addr, align 4
  %cmp6 = icmp sge i32 %10, 2
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %11 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4
  %13 = load i32, i32* %pool_id.addr, align 4
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %13, i32* %arrayidx, align 4
  %16 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %error_exit10 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit10, align 8
  %19 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %18(%struct.jpeg_common_struct* %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %lor.lhs.false
  %20 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %21 = load i64, i64* %sizeofobject.addr, align 8
  %add12 = add i64 %21, 24
  %call = call i8* @jpeg_get_large(%struct.jpeg_common_struct* %20, i64 %add12)
  %22 = bitcast i8* %call to %union.large_pool_struct*
  store %union.large_pool_struct* %22, %union.large_pool_struct** %hdr_ptr, align 8
  %23 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8
  %cmp13 = icmp eq %union.large_pool_struct* %23, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %24 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void @out_of_memory(%struct.jpeg_common_struct* %24, i32 4)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %25 = load i64, i64* %sizeofobject.addr, align 8
  %add16 = add i64 %25, 24
  %26 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %26, i32 0, i32 5
  %27 = load i64, i64* %total_space_allocated, align 8
  %add17 = add i64 %27, %add16
  store i64 %add17, i64* %total_space_allocated, align 8
  %28 = load i32, i32* %pool_id.addr, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %large_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %29, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list, i32 0, i64 %idxprom
  %30 = load %union.large_pool_struct*, %union.large_pool_struct** %arrayidx18, align 8
  %31 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8
  %hdr = bitcast %union.large_pool_struct* %31 to %struct.anon.0*
  %next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr, i32 0, i32 0
  store %union.large_pool_struct* %30, %union.large_pool_struct** %next, align 8
  %32 = load i64, i64* %sizeofobject.addr, align 8
  %33 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8
  %hdr19 = bitcast %union.large_pool_struct* %33 to %struct.anon.0*
  %bytes_used = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr19, i32 0, i32 1
  store i64 %32, i64* %bytes_used, align 8
  %34 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8
  %hdr20 = bitcast %union.large_pool_struct* %34 to %struct.anon.0*
  %bytes_left = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr20, i32 0, i32 2
  store i64 0, i64* %bytes_left, align 8
  %35 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8
  %36 = load i32, i32* %pool_id.addr, align 4
  %idxprom21 = sext i32 %36 to i64
  %37 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %large_list22 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %37, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list22, i32 0, i64 %idxprom21
  store %union.large_pool_struct* %35, %union.large_pool_struct** %arrayidx23, align 8
  %38 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8
  %add.ptr = getelementptr inbounds %union.large_pool_struct, %union.large_pool_struct* %38, i64 1
  %39 = bitcast %union.large_pool_struct* %add.ptr to i8*
  ret i8* %39
}

; Function Attrs: nounwind uwtable
define internal i8** @alloc_sarray(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i32 %samplesperrow, i32 %numrows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %samplesperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %result = alloca i8**, align 8
  %workspace = alloca i8*, align 8
  %rowsperchunk = alloca i32, align 4
  %currow = alloca i32, align 4
  %i = alloca i32, align 4
  %ltemp = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 %pool_id, i32* %pool_id.addr, align 4
  store i32 %samplesperrow, i32* %samplesperrow.addr, align 4
  store i32 %numrows, i32* %numrows.addr, align 4
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8
  %2 = bitcast %struct.jpeg_memory_mgr* %1 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %2, %struct.my_memory_mgr** %mem, align 8
  %3 = load i32, i32* %samplesperrow.addr, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 1
  %div = udiv i64 999999976, %mul
  store i64 %div, i64* %ltemp, align 8
  %4 = load i64, i64* %ltemp, align 8
  %cmp = icmp sle i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 69, i32* %msg_code, align 4
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %error_exit4 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit4, align 8
  %10 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %9(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %ltemp, align 8
  %12 = load i32, i32* %numrows.addr, align 4
  %conv5 = zext i32 %12 to i64
  %cmp6 = icmp slt i64 %11, %conv5
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %13 = load i64, i64* %ltemp, align 8
  %conv9 = trunc i64 %13 to i32
  store i32 %conv9, i32* %rowsperchunk, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %numrows.addr, align 4
  store i32 %14, i32* %rowsperchunk, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %15 = load i32, i32* %rowsperchunk, align 4
  %16 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %16, i32 0, i32 6
  store i32 %15, i32* %last_rowsperchunk, align 4
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %18 = load i32, i32* %pool_id.addr, align 4
  %19 = load i32, i32* %numrows.addr, align 4
  %conv11 = zext i32 %19 to i64
  %mul12 = mul i64 %conv11, 8
  %call = call i8* @alloc_small(%struct.jpeg_common_struct* %17, i32 %18, i64 %mul12)
  %20 = bitcast i8* %call to i8**
  store i8** %20, i8*** %result, align 8
  store i32 0, i32* %currow, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.10
  %21 = load i32, i32* %currow, align 4
  %22 = load i32, i32* %numrows.addr, align 4
  %cmp13 = icmp ult i32 %21, %22
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* %rowsperchunk, align 4
  %24 = load i32, i32* %numrows.addr, align 4
  %25 = load i32, i32* %currow, align 4
  %sub = sub i32 %24, %25
  %cmp15 = icmp ult i32 %23, %sub
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %26 = load i32, i32* %rowsperchunk, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %27 = load i32, i32* %numrows.addr, align 4
  %28 = load i32, i32* %currow, align 4
  %sub17 = sub i32 %27, %28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %sub17, %cond.false ]
  store i32 %cond, i32* %rowsperchunk, align 4
  %29 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %30 = load i32, i32* %pool_id.addr, align 4
  %31 = load i32, i32* %rowsperchunk, align 4
  %conv18 = zext i32 %31 to i64
  %32 = load i32, i32* %samplesperrow.addr, align 4
  %conv19 = zext i32 %32 to i64
  %mul20 = mul i64 %conv18, %conv19
  %mul21 = mul i64 %mul20, 1
  %call22 = call i8* @alloc_large(%struct.jpeg_common_struct* %29, i32 %30, i64 %mul21)
  store i8* %call22, i8** %workspace, align 8
  %33 = load i32, i32* %rowsperchunk, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %34 = load i32, i32* %i, align 4
  %cmp23 = icmp ugt i32 %34, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i8*, i8** %workspace, align 8
  %36 = load i32, i32* %currow, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %currow, align 4
  %idxprom = zext i32 %36 to i64
  %37 = load i8**, i8*** %result, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %idxprom
  store i8* %35, i8** %arrayidx, align 8
  %38 = load i32, i32* %samplesperrow.addr, align 4
  %39 = load i8*, i8** %workspace, align 8
  %idx.ext = zext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr, i8** %workspace, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %dec = add i32 %40, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = load i8**, i8*** %result, align 8
  ret i8** %41
}

; Function Attrs: nounwind uwtable
define internal [64 x i16]** @alloc_barray(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i32 %blocksperrow, i32 %numrows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %blocksperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %result = alloca [64 x i16]**, align 8
  %workspace = alloca [64 x i16]*, align 8
  %rowsperchunk = alloca i32, align 4
  %currow = alloca i32, align 4
  %i = alloca i32, align 4
  %ltemp = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 %pool_id, i32* %pool_id.addr, align 4
  store i32 %blocksperrow, i32* %blocksperrow.addr, align 4
  store i32 %numrows, i32* %numrows.addr, align 4
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8
  %2 = bitcast %struct.jpeg_memory_mgr* %1 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %2, %struct.my_memory_mgr** %mem, align 8
  %3 = load i32, i32* %blocksperrow.addr, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 128
  %div = udiv i64 999999976, %mul
  store i64 %div, i64* %ltemp, align 8
  %4 = load i64, i64* %ltemp, align 8
  %cmp = icmp sle i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 69, i32* %msg_code, align 4
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 0
  %error_exit4 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit4, align 8
  %10 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %9(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, i64* %ltemp, align 8
  %12 = load i32, i32* %numrows.addr, align 4
  %conv5 = zext i32 %12 to i64
  %cmp6 = icmp slt i64 %11, %conv5
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %13 = load i64, i64* %ltemp, align 8
  %conv9 = trunc i64 %13 to i32
  store i32 %conv9, i32* %rowsperchunk, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %numrows.addr, align 4
  store i32 %14, i32* %rowsperchunk, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %15 = load i32, i32* %rowsperchunk, align 4
  %16 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %16, i32 0, i32 6
  store i32 %15, i32* %last_rowsperchunk, align 4
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %18 = load i32, i32* %pool_id.addr, align 4
  %19 = load i32, i32* %numrows.addr, align 4
  %conv11 = zext i32 %19 to i64
  %mul12 = mul i64 %conv11, 8
  %call = call i8* @alloc_small(%struct.jpeg_common_struct* %17, i32 %18, i64 %mul12)
  %20 = bitcast i8* %call to [64 x i16]**
  store [64 x i16]** %20, [64 x i16]*** %result, align 8
  store i32 0, i32* %currow, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.10
  %21 = load i32, i32* %currow, align 4
  %22 = load i32, i32* %numrows.addr, align 4
  %cmp13 = icmp ult i32 %21, %22
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* %rowsperchunk, align 4
  %24 = load i32, i32* %numrows.addr, align 4
  %25 = load i32, i32* %currow, align 4
  %sub = sub i32 %24, %25
  %cmp15 = icmp ult i32 %23, %sub
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %26 = load i32, i32* %rowsperchunk, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %27 = load i32, i32* %numrows.addr, align 4
  %28 = load i32, i32* %currow, align 4
  %sub17 = sub i32 %27, %28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %sub17, %cond.false ]
  store i32 %cond, i32* %rowsperchunk, align 4
  %29 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %30 = load i32, i32* %pool_id.addr, align 4
  %31 = load i32, i32* %rowsperchunk, align 4
  %conv18 = zext i32 %31 to i64
  %32 = load i32, i32* %blocksperrow.addr, align 4
  %conv19 = zext i32 %32 to i64
  %mul20 = mul i64 %conv18, %conv19
  %mul21 = mul i64 %mul20, 128
  %call22 = call i8* @alloc_large(%struct.jpeg_common_struct* %29, i32 %30, i64 %mul21)
  %33 = bitcast i8* %call22 to [64 x i16]*
  store [64 x i16]* %33, [64 x i16]** %workspace, align 8
  %34 = load i32, i32* %rowsperchunk, align 4
  store i32 %34, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %35 = load i32, i32* %i, align 4
  %cmp23 = icmp ugt i32 %35, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load [64 x i16]*, [64 x i16]** %workspace, align 8
  %37 = load i32, i32* %currow, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %currow, align 4
  %idxprom = zext i32 %37 to i64
  %38 = load [64 x i16]**, [64 x i16]*** %result, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %38, i64 %idxprom
  store [64 x i16]* %36, [64 x i16]** %arrayidx, align 8
  %39 = load i32, i32* %blocksperrow.addr, align 4
  %40 = load [64 x i16]*, [64 x i16]** %workspace, align 8
  %idx.ext = zext i32 %39 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %40, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %workspace, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %dec = add i32 %41, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load [64 x i16]**, [64 x i16]*** %result, align 8
  ret [64 x i16]** %42
}

; Function Attrs: nounwind uwtable
define internal %struct.jvirt_sarray_control* @request_virt_sarray(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i32 %pre_zero, i32 %samplesperrow, i32 %numrows, i32 %maxaccess) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %pre_zero.addr = alloca i32, align 4
  %samplesperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %maxaccess.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %result = alloca %struct.jvirt_sarray_control*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 %pool_id, i32* %pool_id.addr, align 4
  store i32 %pre_zero, i32* %pre_zero.addr, align 4
  store i32 %samplesperrow, i32* %samplesperrow.addr, align 4
  store i32 %numrows, i32* %numrows.addr, align 4
  store i32 %maxaccess, i32* %maxaccess.addr, align 4
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8
  %2 = bitcast %struct.jpeg_memory_mgr* %1 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %2, %struct.my_memory_mgr** %mem, align 8
  %3 = load i32, i32* %pool_id.addr, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4
  %6 = load i32, i32* %pool_id.addr, align 4
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %error_exit4 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit4, align 8
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %11(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %14 = load i32, i32* %pool_id.addr, align 4
  %call = call i8* @alloc_small(%struct.jpeg_common_struct* %13, i32 %14, i64 152)
  %15 = bitcast i8* %call to %struct.jvirt_sarray_control*
  store %struct.jvirt_sarray_control* %15, %struct.jvirt_sarray_control** %result, align 8
  %16 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %16, i32 0, i32 0
  store i8** null, i8*** %mem_buffer, align 8
  %17 = load i32, i32* %numrows.addr, align 4
  %18 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %18, i32 0, i32 1
  store i32 %17, i32* %rows_in_array, align 4
  %19 = load i32, i32* %samplesperrow.addr, align 4
  %20 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8
  %samplesperrow5 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %20, i32 0, i32 2
  store i32 %19, i32* %samplesperrow5, align 4
  %21 = load i32, i32* %maxaccess.addr, align 4
  %22 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8
  %maxaccess6 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %22, i32 0, i32 3
  store i32 %21, i32* %maxaccess6, align 4
  %23 = load i32, i32* %pre_zero.addr, align 4
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8
  %pre_zero7 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %24, i32 0, i32 8
  store i32 %23, i32* %pre_zero7, align 4
  %25 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %25, i32 0, i32 10
  store i32 0, i32* %b_s_open, align 4
  %26 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %26, i32 0, i32 3
  %27 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %virt_sarray_list, align 8
  %28 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8
  %next = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %28, i32 0, i32 11
  store %struct.jvirt_sarray_control* %27, %struct.jvirt_sarray_control** %next, align 8
  %29 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8
  %30 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_sarray_list8 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %30, i32 0, i32 3
  store %struct.jvirt_sarray_control* %29, %struct.jvirt_sarray_control** %virt_sarray_list8, align 8
  %31 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8
  ret %struct.jvirt_sarray_control* %31
}

; Function Attrs: nounwind uwtable
define internal %struct.jvirt_barray_control* @request_virt_barray(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i32 %pre_zero, i32 %blocksperrow, i32 %numrows, i32 %maxaccess) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %pre_zero.addr = alloca i32, align 4
  %blocksperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %maxaccess.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %result = alloca %struct.jvirt_barray_control*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 %pool_id, i32* %pool_id.addr, align 4
  store i32 %pre_zero, i32* %pre_zero.addr, align 4
  store i32 %blocksperrow, i32* %blocksperrow.addr, align 4
  store i32 %numrows, i32* %numrows.addr, align 4
  store i32 %maxaccess, i32* %maxaccess.addr, align 4
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8
  %2 = bitcast %struct.jpeg_memory_mgr* %1 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %2, %struct.my_memory_mgr** %mem, align 8
  %3 = load i32, i32* %pool_id.addr, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4
  %6 = load i32, i32* %pool_id.addr, align 4
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %error_exit4 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit4, align 8
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %11(%struct.jpeg_common_struct* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %14 = load i32, i32* %pool_id.addr, align 4
  %call = call i8* @alloc_small(%struct.jpeg_common_struct* %13, i32 %14, i64 152)
  %15 = bitcast i8* %call to %struct.jvirt_barray_control*
  store %struct.jvirt_barray_control* %15, %struct.jvirt_barray_control** %result, align 8
  %16 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %16, i32 0, i32 0
  store [64 x i16]** null, [64 x i16]*** %mem_buffer, align 8
  %17 = load i32, i32* %numrows.addr, align 4
  %18 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %18, i32 0, i32 1
  store i32 %17, i32* %rows_in_array, align 4
  %19 = load i32, i32* %blocksperrow.addr, align 4
  %20 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8
  %blocksperrow5 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %20, i32 0, i32 2
  store i32 %19, i32* %blocksperrow5, align 4
  %21 = load i32, i32* %maxaccess.addr, align 4
  %22 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8
  %maxaccess6 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %22, i32 0, i32 3
  store i32 %21, i32* %maxaccess6, align 4
  %23 = load i32, i32* %pre_zero.addr, align 4
  %24 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8
  %pre_zero7 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %24, i32 0, i32 8
  store i32 %23, i32* %pre_zero7, align 4
  %25 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %25, i32 0, i32 10
  store i32 0, i32* %b_s_open, align 4
  %26 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %26, i32 0, i32 4
  %27 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %virt_barray_list, align 8
  %28 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8
  %next = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %28, i32 0, i32 11
  store %struct.jvirt_barray_control* %27, %struct.jvirt_barray_control** %next, align 8
  %29 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8
  %30 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_barray_list8 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %30, i32 0, i32 4
  store %struct.jvirt_barray_control* %29, %struct.jvirt_barray_control** %virt_barray_list8, align 8
  %31 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8
  ret %struct.jvirt_barray_control* %31
}

; Function Attrs: nounwind uwtable
define internal void @realize_virt_arrays(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %mem = alloca %struct.my_memory_mgr*, align 8
  %space_per_minheight = alloca i64, align 8
  %maximum_space = alloca i64, align 8
  %avail_mem = alloca i64, align 8
  %minheights = alloca i64, align 8
  %max_minheights = alloca i64, align 8
  %sptr = alloca %struct.jvirt_sarray_control*, align 8
  %bptr = alloca %struct.jvirt_barray_control*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8
  %2 = bitcast %struct.jpeg_memory_mgr* %1 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %2, %struct.my_memory_mgr** %mem, align 8
  store i64 0, i64* %space_per_minheight, align 8
  store i64 0, i64* %maximum_space, align 8
  %3 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %3, i32 0, i32 3
  %4 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %virt_sarray_list, align 8
  store %struct.jvirt_sarray_control* %4, %struct.jvirt_sarray_control** %sptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %cmp = icmp ne %struct.jvirt_sarray_control* %5, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %6, i32 0, i32 0
  %7 = load i8**, i8*** %mem_buffer, align 8
  %cmp2 = icmp eq i8** %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %maxaccess = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %8, i32 0, i32 3
  %9 = load i32, i32* %maxaccess, align 4
  %conv = zext i32 %9 to i64
  %10 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %10, i32 0, i32 2
  %11 = load i32, i32* %samplesperrow, align 4
  %conv3 = zext i32 %11 to i64
  %mul = mul nsw i64 %conv, %conv3
  %mul4 = mul i64 %mul, 1
  %12 = load i64, i64* %space_per_minheight, align 8
  %add = add i64 %12, %mul4
  store i64 %add, i64* %space_per_minheight, align 8
  %13 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %13, i32 0, i32 1
  %14 = load i32, i32* %rows_in_array, align 4
  %conv5 = zext i32 %14 to i64
  %15 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %samplesperrow6 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %15, i32 0, i32 2
  %16 = load i32, i32* %samplesperrow6, align 4
  %conv7 = zext i32 %16 to i64
  %mul8 = mul nsw i64 %conv5, %conv7
  %mul9 = mul i64 %mul8, 1
  %17 = load i64, i64* %maximum_space, align 8
  %add10 = add i64 %17, %mul9
  store i64 %add10, i64* %maximum_space, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %next = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %18, i32 0, i32 11
  %19 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %next, align 8
  store %struct.jvirt_sarray_control* %19, %struct.jvirt_sarray_control** %sptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %20, i32 0, i32 4
  %21 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %virt_barray_list, align 8
  store %struct.jvirt_barray_control* %21, %struct.jvirt_barray_control** %bptr, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.33, %for.end
  %22 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %cmp12 = icmp ne %struct.jvirt_barray_control* %22, null
  br i1 %cmp12, label %for.body.14, label %for.end.35

for.body.14:                                      ; preds = %for.cond.11
  %23 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %mem_buffer15 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %23, i32 0, i32 0
  %24 = load [64 x i16]**, [64 x i16]*** %mem_buffer15, align 8
  %cmp16 = icmp eq [64 x i16]** %24, null
  br i1 %cmp16, label %if.then.18, label %if.end.32

if.then.18:                                       ; preds = %for.body.14
  %25 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %maxaccess19 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %25, i32 0, i32 3
  %26 = load i32, i32* %maxaccess19, align 4
  %conv20 = zext i32 %26 to i64
  %27 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %27, i32 0, i32 2
  %28 = load i32, i32* %blocksperrow, align 4
  %conv21 = zext i32 %28 to i64
  %mul22 = mul nsw i64 %conv20, %conv21
  %mul23 = mul i64 %mul22, 128
  %29 = load i64, i64* %space_per_minheight, align 8
  %add24 = add i64 %29, %mul23
  store i64 %add24, i64* %space_per_minheight, align 8
  %30 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %rows_in_array25 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %30, i32 0, i32 1
  %31 = load i32, i32* %rows_in_array25, align 4
  %conv26 = zext i32 %31 to i64
  %32 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %blocksperrow27 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %32, i32 0, i32 2
  %33 = load i32, i32* %blocksperrow27, align 4
  %conv28 = zext i32 %33 to i64
  %mul29 = mul nsw i64 %conv26, %conv28
  %mul30 = mul i64 %mul29, 128
  %34 = load i64, i64* %maximum_space, align 8
  %add31 = add i64 %34, %mul30
  store i64 %add31, i64* %maximum_space, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.18, %for.body.14
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %35 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %next34 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %35, i32 0, i32 11
  %36 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %next34, align 8
  store %struct.jvirt_barray_control* %36, %struct.jvirt_barray_control** %bptr, align 8
  br label %for.cond.11

for.end.35:                                       ; preds = %for.cond.11
  %37 = load i64, i64* %space_per_minheight, align 8
  %cmp36 = icmp sle i64 %37, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.35
  br label %for.end.136

if.end.39:                                        ; preds = %for.end.35
  %38 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %39 = load i64, i64* %space_per_minheight, align 8
  %40 = load i64, i64* %maximum_space, align 8
  %41 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %41, i32 0, i32 5
  %42 = load i64, i64* %total_space_allocated, align 8
  %call = call i64 @jpeg_mem_available(%struct.jpeg_common_struct* %38, i64 %39, i64 %40, i64 %42)
  store i64 %call, i64* %avail_mem, align 8
  %43 = load i64, i64* %avail_mem, align 8
  %44 = load i64, i64* %maximum_space, align 8
  %cmp40 = icmp sge i64 %43, %44
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.39
  store i64 1000000000, i64* %max_minheights, align 8
  br label %if.end.47

if.else:                                          ; preds = %if.end.39
  %45 = load i64, i64* %avail_mem, align 8
  %46 = load i64, i64* %space_per_minheight, align 8
  %div = sdiv i64 %45, %46
  store i64 %div, i64* %max_minheights, align 8
  %47 = load i64, i64* %max_minheights, align 8
  %cmp43 = icmp sle i64 %47, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else
  store i64 1, i64* %max_minheights, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.42
  %48 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_sarray_list48 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %48, i32 0, i32 3
  %49 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %virt_sarray_list48, align 8
  store %struct.jvirt_sarray_control* %49, %struct.jvirt_sarray_control** %sptr, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.85, %if.end.47
  %50 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %cmp50 = icmp ne %struct.jvirt_sarray_control* %50, null
  br i1 %cmp50, label %for.body.52, label %for.end.87

for.body.52:                                      ; preds = %for.cond.49
  %51 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %mem_buffer53 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %51, i32 0, i32 0
  %52 = load i8**, i8*** %mem_buffer53, align 8
  %cmp54 = icmp eq i8** %52, null
  br i1 %cmp54, label %if.then.56, label %if.end.84

if.then.56:                                       ; preds = %for.body.52
  %53 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %rows_in_array57 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %53, i32 0, i32 1
  %54 = load i32, i32* %rows_in_array57, align 4
  %conv58 = zext i32 %54 to i64
  %sub = sub nsw i64 %conv58, 1
  %55 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %maxaccess59 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %55, i32 0, i32 3
  %56 = load i32, i32* %maxaccess59, align 4
  %conv60 = zext i32 %56 to i64
  %div61 = sdiv i64 %sub, %conv60
  %add62 = add nsw i64 %div61, 1
  store i64 %add62, i64* %minheights, align 8
  %57 = load i64, i64* %minheights, align 8
  %58 = load i64, i64* %max_minheights, align 8
  %cmp63 = icmp sle i64 %57, %58
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.then.56
  %59 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %rows_in_array66 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %59, i32 0, i32 1
  %60 = load i32, i32* %rows_in_array66, align 4
  %61 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %61, i32 0, i32 4
  store i32 %60, i32* %rows_in_mem, align 4
  br label %if.end.79

if.else.67:                                       ; preds = %if.then.56
  %62 = load i64, i64* %max_minheights, align 8
  %63 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %maxaccess68 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %63, i32 0, i32 3
  %64 = load i32, i32* %maxaccess68, align 4
  %conv69 = zext i32 %64 to i64
  %mul70 = mul nsw i64 %62, %conv69
  %conv71 = trunc i64 %mul70 to i32
  %65 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %rows_in_mem72 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %65, i32 0, i32 4
  store i32 %conv71, i32* %rows_in_mem72, align 4
  %66 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %67 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %67, i32 0, i32 12
  %68 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %rows_in_array73 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %68, i32 0, i32 1
  %69 = load i32, i32* %rows_in_array73, align 4
  %conv74 = zext i32 %69 to i64
  %70 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %samplesperrow75 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %70, i32 0, i32 2
  %71 = load i32, i32* %samplesperrow75, align 4
  %conv76 = zext i32 %71 to i64
  %mul77 = mul nsw i64 %conv74, %conv76
  %mul78 = mul nsw i64 %mul77, 1
  call void @jpeg_open_backing_store(%struct.jpeg_common_struct* %66, %struct.backing_store_struct* %b_s_info, i64 %mul78)
  %72 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %72, i32 0, i32 10
  store i32 1, i32* %b_s_open, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.67, %if.then.65
  %73 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %74 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %samplesperrow80 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %74, i32 0, i32 2
  %75 = load i32, i32* %samplesperrow80, align 4
  %76 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %rows_in_mem81 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %76, i32 0, i32 4
  %77 = load i32, i32* %rows_in_mem81, align 4
  %call82 = call i8** @alloc_sarray(%struct.jpeg_common_struct* %73, i32 1, i32 %75, i32 %77)
  %78 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %mem_buffer83 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %78, i32 0, i32 0
  store i8** %call82, i8*** %mem_buffer83, align 8
  %79 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %79, i32 0, i32 6
  %80 = load i32, i32* %last_rowsperchunk, align 4
  %81 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %rowsperchunk = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %81, i32 0, i32 5
  store i32 %80, i32* %rowsperchunk, align 4
  %82 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %82, i32 0, i32 6
  store i32 0, i32* %cur_start_row, align 4
  %83 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %83, i32 0, i32 7
  store i32 0, i32* %first_undef_row, align 4
  %84 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %dirty = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %84, i32 0, i32 9
  store i32 0, i32* %dirty, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.79, %for.body.52
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %85 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %next86 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %85, i32 0, i32 11
  %86 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %next86, align 8
  store %struct.jvirt_sarray_control* %86, %struct.jvirt_sarray_control** %sptr, align 8
  br label %for.cond.49

for.end.87:                                       ; preds = %for.cond.49
  %87 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_barray_list88 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %87, i32 0, i32 4
  %88 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %virt_barray_list88, align 8
  store %struct.jvirt_barray_control* %88, %struct.jvirt_barray_control** %bptr, align 8
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.134, %for.end.87
  %89 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %cmp90 = icmp ne %struct.jvirt_barray_control* %89, null
  br i1 %cmp90, label %for.body.92, label %for.end.136

for.body.92:                                      ; preds = %for.cond.89
  %90 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %mem_buffer93 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %90, i32 0, i32 0
  %91 = load [64 x i16]**, [64 x i16]*** %mem_buffer93, align 8
  %cmp94 = icmp eq [64 x i16]** %91, null
  br i1 %cmp94, label %if.then.96, label %if.end.133

if.then.96:                                       ; preds = %for.body.92
  %92 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %rows_in_array97 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %92, i32 0, i32 1
  %93 = load i32, i32* %rows_in_array97, align 4
  %conv98 = zext i32 %93 to i64
  %sub99 = sub nsw i64 %conv98, 1
  %94 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %maxaccess100 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %94, i32 0, i32 3
  %95 = load i32, i32* %maxaccess100, align 4
  %conv101 = zext i32 %95 to i64
  %div102 = sdiv i64 %sub99, %conv101
  %add103 = add nsw i64 %div102, 1
  store i64 %add103, i64* %minheights, align 8
  %96 = load i64, i64* %minheights, align 8
  %97 = load i64, i64* %max_minheights, align 8
  %cmp104 = icmp sle i64 %96, %97
  br i1 %cmp104, label %if.then.106, label %if.else.109

if.then.106:                                      ; preds = %if.then.96
  %98 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %rows_in_array107 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %98, i32 0, i32 1
  %99 = load i32, i32* %rows_in_array107, align 4
  %100 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %rows_in_mem108 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %100, i32 0, i32 4
  store i32 %99, i32* %rows_in_mem108, align 4
  br label %if.end.123

if.else.109:                                      ; preds = %if.then.96
  %101 = load i64, i64* %max_minheights, align 8
  %102 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %maxaccess110 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %102, i32 0, i32 3
  %103 = load i32, i32* %maxaccess110, align 4
  %conv111 = zext i32 %103 to i64
  %mul112 = mul nsw i64 %101, %conv111
  %conv113 = trunc i64 %mul112 to i32
  %104 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %rows_in_mem114 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %104, i32 0, i32 4
  store i32 %conv113, i32* %rows_in_mem114, align 4
  %105 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %106 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %b_s_info115 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %106, i32 0, i32 12
  %107 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %rows_in_array116 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %107, i32 0, i32 1
  %108 = load i32, i32* %rows_in_array116, align 4
  %conv117 = zext i32 %108 to i64
  %109 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %blocksperrow118 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %109, i32 0, i32 2
  %110 = load i32, i32* %blocksperrow118, align 4
  %conv119 = zext i32 %110 to i64
  %mul120 = mul nsw i64 %conv117, %conv119
  %mul121 = mul nsw i64 %mul120, 128
  call void @jpeg_open_backing_store(%struct.jpeg_common_struct* %105, %struct.backing_store_struct* %b_s_info115, i64 %mul121)
  %111 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %b_s_open122 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %111, i32 0, i32 10
  store i32 1, i32* %b_s_open122, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.109, %if.then.106
  %112 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %113 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %blocksperrow124 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %113, i32 0, i32 2
  %114 = load i32, i32* %blocksperrow124, align 4
  %115 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %rows_in_mem125 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %115, i32 0, i32 4
  %116 = load i32, i32* %rows_in_mem125, align 4
  %call126 = call [64 x i16]** @alloc_barray(%struct.jpeg_common_struct* %112, i32 1, i32 %114, i32 %116)
  %117 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %mem_buffer127 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %117, i32 0, i32 0
  store [64 x i16]** %call126, [64 x i16]*** %mem_buffer127, align 8
  %118 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %last_rowsperchunk128 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %118, i32 0, i32 6
  %119 = load i32, i32* %last_rowsperchunk128, align 4
  %120 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %rowsperchunk129 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %120, i32 0, i32 5
  store i32 %119, i32* %rowsperchunk129, align 4
  %121 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %cur_start_row130 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %121, i32 0, i32 6
  store i32 0, i32* %cur_start_row130, align 4
  %122 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %first_undef_row131 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %122, i32 0, i32 7
  store i32 0, i32* %first_undef_row131, align 4
  %123 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %dirty132 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %123, i32 0, i32 9
  store i32 0, i32* %dirty132, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.123, %for.body.92
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %124 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %next135 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %124, i32 0, i32 11
  %125 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %next135, align 8
  store %struct.jvirt_barray_control* %125, %struct.jvirt_barray_control** %bptr, align 8
  br label %for.cond.89

for.end.136:                                      ; preds = %if.then.38, %for.cond.89
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8** @access_virt_sarray(%struct.jpeg_common_struct* %cinfo, %struct.jvirt_sarray_control* %ptr, i32 %start_row, i32 %num_rows, i32 %writable) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %ptr.addr = alloca %struct.jvirt_sarray_control*, align 8
  %start_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %end_row = alloca i32, align 4
  %undef_row = alloca i32, align 4
  %ltemp = alloca i64, align 8
  %bytesperrow = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store %struct.jvirt_sarray_control* %ptr, %struct.jvirt_sarray_control** %ptr.addr, align 8
  store i32 %start_row, i32* %start_row.addr, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  store i32 %writable, i32* %writable.addr, align 4
  %0 = load i32, i32* %start_row.addr, align 4
  %1 = load i32, i32* %num_rows.addr, align 4
  %add = add i32 %0, %1
  store i32 %add, i32* %end_row, align 4
  %2 = load i32, i32* %end_row, align 4
  %3 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %3, i32 0, i32 1
  %4 = load i32, i32* %rows_in_array, align 4
  %cmp = icmp ugt i32 %2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %num_rows.addr, align 4
  %6 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %maxaccess = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %6, i32 0, i32 3
  %7 = load i32, i32* %maxaccess, align 4
  %cmp1 = icmp ugt i32 %5, %7
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %8 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %8, i32 0, i32 0
  %9 = load i8**, i8*** %mem_buffer, align 8
  %cmp3 = icmp eq i8** %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %10 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 20, i32* %msg_code, align 4
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %error_exit5 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit5, align 8
  %15 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %14(%struct.jpeg_common_struct* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  %16 = load i32, i32* %start_row.addr, align 4
  %17 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %17, i32 0, i32 6
  %18 = load i32, i32* %cur_start_row, align 4
  %cmp6 = icmp ult i32 %16, %18
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %19 = load i32, i32* %end_row, align 4
  %20 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row8 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %20, i32 0, i32 6
  %21 = load i32, i32* %cur_start_row8, align 4
  %22 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %22, i32 0, i32 4
  %23 = load i32, i32* %rows_in_mem, align 4
  %add9 = add i32 %21, %23
  %cmp10 = icmp ugt i32 %19, %add9
  br i1 %cmp10, label %if.then.11, label %if.end.36

if.then.11:                                       ; preds = %lor.lhs.false.7, %if.end
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %24, i32 0, i32 10
  %25 = load i32, i32* %b_s_open, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end.18, label %if.then.12

if.then.12:                                       ; preds = %if.then.11
  %26 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %msg_code14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 5
  store i32 68, i32* %msg_code14, align 4
  %28 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %error_exit16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %error_exit17 = bitcast {}** %error_exit16 to void (%struct.jpeg_common_struct*)**
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit17, align 8
  %31 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %30(%struct.jpeg_common_struct* %31)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.then.11
  %32 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %dirty = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %32, i32 0, i32 9
  %33 = load i32, i32* %dirty, align 4
  %tobool19 = icmp ne i32 %33, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %34 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %35 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  call void @do_sarray_io(%struct.jpeg_common_struct* %34, %struct.jvirt_sarray_control* %35, i32 1)
  %36 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %dirty21 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %36, i32 0, i32 9
  store i32 0, i32* %dirty21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %37 = load i32, i32* %start_row.addr, align 4
  %38 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row23 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %38, i32 0, i32 6
  %39 = load i32, i32* %cur_start_row23, align 4
  %cmp24 = icmp ugt i32 %37, %39
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.22
  %40 = load i32, i32* %start_row.addr, align 4
  %41 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row26 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %41, i32 0, i32 6
  store i32 %40, i32* %cur_start_row26, align 4
  br label %if.end.35

if.else:                                          ; preds = %if.end.22
  %42 = load i32, i32* %end_row, align 4
  %conv = zext i32 %42 to i64
  %43 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rows_in_mem27 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %43, i32 0, i32 4
  %44 = load i32, i32* %rows_in_mem27, align 4
  %conv28 = zext i32 %44 to i64
  %sub = sub nsw i64 %conv, %conv28
  store i64 %sub, i64* %ltemp, align 8
  %45 = load i64, i64* %ltemp, align 8
  %cmp29 = icmp slt i64 %45, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else
  store i64 0, i64* %ltemp, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.else
  %46 = load i64, i64* %ltemp, align 8
  %conv33 = trunc i64 %46 to i32
  %47 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row34 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %47, i32 0, i32 6
  store i32 %conv33, i32* %cur_start_row34, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %if.then.25
  %48 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %49 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  call void @do_sarray_io(%struct.jpeg_common_struct* %48, %struct.jvirt_sarray_control* %49, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %lor.lhs.false.7
  %50 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %50, i32 0, i32 7
  %51 = load i32, i32* %first_undef_row, align 4
  %52 = load i32, i32* %end_row, align 4
  %cmp37 = icmp ult i32 %51, %52
  br i1 %cmp37, label %if.then.39, label %if.end.79

if.then.39:                                       ; preds = %if.end.36
  %53 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %first_undef_row40 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %53, i32 0, i32 7
  %54 = load i32, i32* %first_undef_row40, align 4
  %55 = load i32, i32* %start_row.addr, align 4
  %cmp41 = icmp ult i32 %54, %55
  br i1 %cmp41, label %if.then.43, label %if.else.52

if.then.43:                                       ; preds = %if.then.39
  %56 = load i32, i32* %writable.addr, align 4
  %tobool44 = icmp ne i32 %56, 0
  br i1 %tobool44, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.then.43
  %57 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 5
  store i32 20, i32* %msg_code47, align 4
  %59 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err48 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8
  %error_exit49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 0
  %error_exit50 = bitcast {}** %error_exit49 to void (%struct.jpeg_common_struct*)**
  %61 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit50, align 8
  %62 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %61(%struct.jpeg_common_struct* %62)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.45, %if.then.43
  %63 = load i32, i32* %start_row.addr, align 4
  store i32 %63, i32* %undef_row, align 4
  br label %if.end.54

if.else.52:                                       ; preds = %if.then.39
  %64 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %first_undef_row53 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %64, i32 0, i32 7
  %65 = load i32, i32* %first_undef_row53, align 4
  store i32 %65, i32* %undef_row, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.end.51
  %66 = load i32, i32* %writable.addr, align 4
  %tobool55 = icmp ne i32 %66, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %67 = load i32, i32* %end_row, align 4
  %68 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %first_undef_row57 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %68, i32 0, i32 7
  store i32 %67, i32* %first_undef_row57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  %69 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %pre_zero = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %69, i32 0, i32 8
  %70 = load i32, i32* %pre_zero, align 4
  %tobool59 = icmp ne i32 %70, 0
  br i1 %tobool59, label %if.then.60, label %if.else.69

if.then.60:                                       ; preds = %if.end.58
  %71 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %71, i32 0, i32 2
  %72 = load i32, i32* %samplesperrow, align 4
  %conv61 = zext i32 %72 to i64
  %mul = mul i64 %conv61, 1
  store i64 %mul, i64* %bytesperrow, align 8
  %73 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row62 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %73, i32 0, i32 6
  %74 = load i32, i32* %cur_start_row62, align 4
  %75 = load i32, i32* %undef_row, align 4
  %sub63 = sub i32 %75, %74
  store i32 %sub63, i32* %undef_row, align 4
  %76 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row64 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %76, i32 0, i32 6
  %77 = load i32, i32* %cur_start_row64, align 4
  %78 = load i32, i32* %end_row, align 4
  %sub65 = sub i32 %78, %77
  store i32 %sub65, i32* %end_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.60
  %79 = load i32, i32* %undef_row, align 4
  %80 = load i32, i32* %end_row, align 4
  %cmp66 = icmp ult i32 %79, %80
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %81 = load i32, i32* %undef_row, align 4
  %idxprom = zext i32 %81 to i64
  %82 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %mem_buffer68 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %82, i32 0, i32 0
  %83 = load i8**, i8*** %mem_buffer68, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %83, i64 %idxprom
  %84 = load i8*, i8** %arrayidx, align 8
  %85 = load i64, i64* %bytesperrow, align 8
  call void @jzero_far(i8* %84, i64 %85)
  %86 = load i32, i32* %undef_row, align 4
  %inc = add i32 %86, 1
  store i32 %inc, i32* %undef_row, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.78

if.else.69:                                       ; preds = %if.end.58
  %87 = load i32, i32* %writable.addr, align 4
  %tobool70 = icmp ne i32 %87, 0
  br i1 %tobool70, label %if.end.77, label %if.then.71

if.then.71:                                       ; preds = %if.else.69
  %88 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %88, i32 0, i32 0
  %89 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %89, i32 0, i32 5
  store i32 20, i32* %msg_code73, align 4
  %90 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %90, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8
  %error_exit75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 0
  %error_exit76 = bitcast {}** %error_exit75 to void (%struct.jpeg_common_struct*)**
  %92 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit76, align 8
  %93 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %92(%struct.jpeg_common_struct* %93)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %if.else.69
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %while.end
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.36
  %94 = load i32, i32* %writable.addr, align 4
  %tobool80 = icmp ne i32 %94, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %95 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %dirty82 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %95, i32 0, i32 9
  store i32 1, i32* %dirty82, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.79
  %96 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %mem_buffer84 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %96, i32 0, i32 0
  %97 = load i8**, i8*** %mem_buffer84, align 8
  %98 = load i32, i32* %start_row.addr, align 4
  %99 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row85 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %99, i32 0, i32 6
  %100 = load i32, i32* %cur_start_row85, align 4
  %sub86 = sub i32 %98, %100
  %idx.ext = zext i32 %sub86 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %97, i64 %idx.ext
  ret i8** %add.ptr
}

; Function Attrs: nounwind uwtable
define internal [64 x i16]** @access_virt_barray(%struct.jpeg_common_struct* %cinfo, %struct.jvirt_barray_control* %ptr, i32 %start_row, i32 %num_rows, i32 %writable) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %ptr.addr = alloca %struct.jvirt_barray_control*, align 8
  %start_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %end_row = alloca i32, align 4
  %undef_row = alloca i32, align 4
  %ltemp = alloca i64, align 8
  %bytesperrow = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store %struct.jvirt_barray_control* %ptr, %struct.jvirt_barray_control** %ptr.addr, align 8
  store i32 %start_row, i32* %start_row.addr, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  store i32 %writable, i32* %writable.addr, align 4
  %0 = load i32, i32* %start_row.addr, align 4
  %1 = load i32, i32* %num_rows.addr, align 4
  %add = add i32 %0, %1
  store i32 %add, i32* %end_row, align 4
  %2 = load i32, i32* %end_row, align 4
  %3 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %3, i32 0, i32 1
  %4 = load i32, i32* %rows_in_array, align 4
  %cmp = icmp ugt i32 %2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %num_rows.addr, align 4
  %6 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %maxaccess = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %6, i32 0, i32 3
  %7 = load i32, i32* %maxaccess, align 4
  %cmp1 = icmp ugt i32 %5, %7
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %8 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %8, i32 0, i32 0
  %9 = load [64 x i16]**, [64 x i16]*** %mem_buffer, align 8
  %cmp3 = icmp eq [64 x i16]** %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %10 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 20, i32* %msg_code, align 4
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 0
  %error_exit5 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %14 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit5, align 8
  %15 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %14(%struct.jpeg_common_struct* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  %16 = load i32, i32* %start_row.addr, align 4
  %17 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %17, i32 0, i32 6
  %18 = load i32, i32* %cur_start_row, align 4
  %cmp6 = icmp ult i32 %16, %18
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %19 = load i32, i32* %end_row, align 4
  %20 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row8 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %20, i32 0, i32 6
  %21 = load i32, i32* %cur_start_row8, align 4
  %22 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %22, i32 0, i32 4
  %23 = load i32, i32* %rows_in_mem, align 4
  %add9 = add i32 %21, %23
  %cmp10 = icmp ugt i32 %19, %add9
  br i1 %cmp10, label %if.then.11, label %if.end.36

if.then.11:                                       ; preds = %lor.lhs.false.7, %if.end
  %24 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %24, i32 0, i32 10
  %25 = load i32, i32* %b_s_open, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.end.18, label %if.then.12

if.then.12:                                       ; preds = %if.then.11
  %26 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %26, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8
  %msg_code14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 5
  store i32 68, i32* %msg_code14, align 4
  %28 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %error_exit16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %error_exit17 = bitcast {}** %error_exit16 to void (%struct.jpeg_common_struct*)**
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit17, align 8
  %31 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %30(%struct.jpeg_common_struct* %31)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.then.11
  %32 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %dirty = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %32, i32 0, i32 9
  %33 = load i32, i32* %dirty, align 4
  %tobool19 = icmp ne i32 %33, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %34 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %35 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  call void @do_barray_io(%struct.jpeg_common_struct* %34, %struct.jvirt_barray_control* %35, i32 1)
  %36 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %dirty21 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %36, i32 0, i32 9
  store i32 0, i32* %dirty21, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %37 = load i32, i32* %start_row.addr, align 4
  %38 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row23 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %38, i32 0, i32 6
  %39 = load i32, i32* %cur_start_row23, align 4
  %cmp24 = icmp ugt i32 %37, %39
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.22
  %40 = load i32, i32* %start_row.addr, align 4
  %41 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row26 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %41, i32 0, i32 6
  store i32 %40, i32* %cur_start_row26, align 4
  br label %if.end.35

if.else:                                          ; preds = %if.end.22
  %42 = load i32, i32* %end_row, align 4
  %conv = zext i32 %42 to i64
  %43 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rows_in_mem27 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %43, i32 0, i32 4
  %44 = load i32, i32* %rows_in_mem27, align 4
  %conv28 = zext i32 %44 to i64
  %sub = sub nsw i64 %conv, %conv28
  store i64 %sub, i64* %ltemp, align 8
  %45 = load i64, i64* %ltemp, align 8
  %cmp29 = icmp slt i64 %45, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else
  store i64 0, i64* %ltemp, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.else
  %46 = load i64, i64* %ltemp, align 8
  %conv33 = trunc i64 %46 to i32
  %47 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row34 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %47, i32 0, i32 6
  store i32 %conv33, i32* %cur_start_row34, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %if.then.25
  %48 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %49 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  call void @do_barray_io(%struct.jpeg_common_struct* %48, %struct.jvirt_barray_control* %49, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %lor.lhs.false.7
  %50 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %50, i32 0, i32 7
  %51 = load i32, i32* %first_undef_row, align 4
  %52 = load i32, i32* %end_row, align 4
  %cmp37 = icmp ult i32 %51, %52
  br i1 %cmp37, label %if.then.39, label %if.end.79

if.then.39:                                       ; preds = %if.end.36
  %53 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %first_undef_row40 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %53, i32 0, i32 7
  %54 = load i32, i32* %first_undef_row40, align 4
  %55 = load i32, i32* %start_row.addr, align 4
  %cmp41 = icmp ult i32 %54, %55
  br i1 %cmp41, label %if.then.43, label %if.else.52

if.then.43:                                       ; preds = %if.then.39
  %56 = load i32, i32* %writable.addr, align 4
  %tobool44 = icmp ne i32 %56, 0
  br i1 %tobool44, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.then.43
  %57 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 5
  store i32 20, i32* %msg_code47, align 4
  %59 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err48 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %59, i32 0, i32 0
  %60 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8
  %error_exit49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %60, i32 0, i32 0
  %error_exit50 = bitcast {}** %error_exit49 to void (%struct.jpeg_common_struct*)**
  %61 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit50, align 8
  %62 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %61(%struct.jpeg_common_struct* %62)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.45, %if.then.43
  %63 = load i32, i32* %start_row.addr, align 4
  store i32 %63, i32* %undef_row, align 4
  br label %if.end.54

if.else.52:                                       ; preds = %if.then.39
  %64 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %first_undef_row53 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %64, i32 0, i32 7
  %65 = load i32, i32* %first_undef_row53, align 4
  store i32 %65, i32* %undef_row, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.end.51
  %66 = load i32, i32* %writable.addr, align 4
  %tobool55 = icmp ne i32 %66, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %67 = load i32, i32* %end_row, align 4
  %68 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %first_undef_row57 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %68, i32 0, i32 7
  store i32 %67, i32* %first_undef_row57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  %69 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %pre_zero = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %69, i32 0, i32 8
  %70 = load i32, i32* %pre_zero, align 4
  %tobool59 = icmp ne i32 %70, 0
  br i1 %tobool59, label %if.then.60, label %if.else.69

if.then.60:                                       ; preds = %if.end.58
  %71 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %71, i32 0, i32 2
  %72 = load i32, i32* %blocksperrow, align 4
  %conv61 = zext i32 %72 to i64
  %mul = mul i64 %conv61, 128
  store i64 %mul, i64* %bytesperrow, align 8
  %73 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row62 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %73, i32 0, i32 6
  %74 = load i32, i32* %cur_start_row62, align 4
  %75 = load i32, i32* %undef_row, align 4
  %sub63 = sub i32 %75, %74
  store i32 %sub63, i32* %undef_row, align 4
  %76 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row64 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %76, i32 0, i32 6
  %77 = load i32, i32* %cur_start_row64, align 4
  %78 = load i32, i32* %end_row, align 4
  %sub65 = sub i32 %78, %77
  store i32 %sub65, i32* %end_row, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.60
  %79 = load i32, i32* %undef_row, align 4
  %80 = load i32, i32* %end_row, align 4
  %cmp66 = icmp ult i32 %79, %80
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %81 = load i32, i32* %undef_row, align 4
  %idxprom = zext i32 %81 to i64
  %82 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %mem_buffer68 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %82, i32 0, i32 0
  %83 = load [64 x i16]**, [64 x i16]*** %mem_buffer68, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %83, i64 %idxprom
  %84 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  %85 = bitcast [64 x i16]* %84 to i8*
  %86 = load i64, i64* %bytesperrow, align 8
  call void @jzero_far(i8* %85, i64 %86)
  %87 = load i32, i32* %undef_row, align 4
  %inc = add i32 %87, 1
  store i32 %inc, i32* %undef_row, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.78

if.else.69:                                       ; preds = %if.end.58
  %88 = load i32, i32* %writable.addr, align 4
  %tobool70 = icmp ne i32 %88, 0
  br i1 %tobool70, label %if.end.77, label %if.then.71

if.then.71:                                       ; preds = %if.else.69
  %89 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %89, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 5
  store i32 20, i32* %msg_code73, align 4
  %91 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %91, i32 0, i32 0
  %92 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8
  %error_exit75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %92, i32 0, i32 0
  %error_exit76 = bitcast {}** %error_exit75 to void (%struct.jpeg_common_struct*)**
  %93 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit76, align 8
  %94 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %93(%struct.jpeg_common_struct* %94)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %if.else.69
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %while.end
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.36
  %95 = load i32, i32* %writable.addr, align 4
  %tobool80 = icmp ne i32 %95, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %96 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %dirty82 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %96, i32 0, i32 9
  store i32 1, i32* %dirty82, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.79
  %97 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %mem_buffer84 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %97, i32 0, i32 0
  %98 = load [64 x i16]**, [64 x i16]*** %mem_buffer84, align 8
  %99 = load i32, i32* %start_row.addr, align 4
  %100 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row85 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %100, i32 0, i32 6
  %101 = load i32, i32* %cur_start_row85, align 4
  %sub86 = sub i32 %99, %101
  %idx.ext = zext i32 %sub86 to i64
  %add.ptr = getelementptr inbounds [64 x i16]*, [64 x i16]** %98, i64 %idx.ext
  ret [64 x i16]** %add.ptr
}

; Function Attrs: nounwind uwtable
define internal void @free_pool(%struct.jpeg_common_struct* %cinfo, i32 %pool_id) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %shdr_ptr = alloca %union.small_pool_struct*, align 8
  %lhdr_ptr = alloca %union.large_pool_struct*, align 8
  %space_freed = alloca i64, align 8
  %sptr = alloca %struct.jvirt_sarray_control*, align 8
  %bptr = alloca %struct.jvirt_barray_control*, align 8
  %next_lhdr_ptr = alloca %union.large_pool_struct*, align 8
  %next_shdr_ptr = alloca %union.small_pool_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 %pool_id, i32* %pool_id.addr, align 4
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8
  %2 = bitcast %struct.jpeg_memory_mgr* %1 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %2, %struct.my_memory_mgr** %mem, align 8
  %3 = load i32, i32* %pool_id.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %pool_id.addr, align 4
  %cmp2 = icmp sge i32 %4, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4
  %7 = load i32, i32* %pool_id.addr, align 4
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4
  %10 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %error_exit5 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit5, align 8
  %13 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %12(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load i32, i32* %pool_id.addr, align 4
  %cmp6 = icmp eq i32 %14, 1
  br i1 %cmp6, label %if.then.7, label %if.end.29

if.then.7:                                        ; preds = %if.end
  %15 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %15, i32 0, i32 3
  %16 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %virt_sarray_list, align 8
  store %struct.jvirt_sarray_control* %16, %struct.jvirt_sarray_control** %sptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %17 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %cmp8 = icmp ne %struct.jvirt_sarray_control* %17, null
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %18, i32 0, i32 10
  %19 = load i32, i32* %b_s_open, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %for.body
  %20 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %b_s_open10 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %20, i32 0, i32 10
  store i32 0, i32* %b_s_open10, align 4
  %21 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %21, i32 0, i32 12
  %close_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info, i32 0, i32 2
  %22 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)** %close_backing_store, align 8
  %23 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %b_s_info11 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %24, i32 0, i32 12
  call void %22(%struct.jpeg_common_struct* %23, %struct.backing_store_struct* %b_s_info11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %25 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8
  %next = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %25, i32 0, i32 11
  %26 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %next, align 8
  store %struct.jvirt_sarray_control* %26, %struct.jvirt_sarray_control** %sptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_sarray_list13 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %27, i32 0, i32 3
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %virt_sarray_list13, align 8
  %28 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %28, i32 0, i32 4
  %29 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %virt_barray_list, align 8
  store %struct.jvirt_barray_control* %29, %struct.jvirt_barray_control** %bptr, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.25, %for.end
  %30 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %cmp15 = icmp ne %struct.jvirt_barray_control* %30, null
  br i1 %cmp15, label %for.body.16, label %for.end.27

for.body.16:                                      ; preds = %for.cond.14
  %31 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %b_s_open17 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %31, i32 0, i32 10
  %32 = load i32, i32* %b_s_open17, align 4
  %tobool18 = icmp ne i32 %32, 0
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %for.body.16
  %33 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %b_s_open20 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %33, i32 0, i32 10
  store i32 0, i32* %b_s_open20, align 4
  %34 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %b_s_info21 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %34, i32 0, i32 12
  %close_backing_store22 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info21, i32 0, i32 2
  %35 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)** %close_backing_store22, align 8
  %36 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %37 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %b_s_info23 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %37, i32 0, i32 12
  call void %35(%struct.jpeg_common_struct* %36, %struct.backing_store_struct* %b_s_info23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %for.body.16
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %38 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8
  %next26 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %38, i32 0, i32 11
  %39 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %next26, align 8
  store %struct.jvirt_barray_control* %39, %struct.jvirt_barray_control** %bptr, align 8
  br label %for.cond.14

for.end.27:                                       ; preds = %for.cond.14
  %40 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %virt_barray_list28 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %40, i32 0, i32 4
  store %struct.jvirt_barray_control* null, %struct.jvirt_barray_control** %virt_barray_list28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.27, %if.end
  %41 = load i32, i32* %pool_id.addr, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %large_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %42, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list, i32 0, i64 %idxprom
  %43 = load %union.large_pool_struct*, %union.large_pool_struct** %arrayidx30, align 8
  store %union.large_pool_struct* %43, %union.large_pool_struct** %lhdr_ptr, align 8
  %44 = load i32, i32* %pool_id.addr, align 4
  %idxprom31 = sext i32 %44 to i64
  %45 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %large_list32 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %45, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list32, i32 0, i64 %idxprom31
  store %union.large_pool_struct* null, %union.large_pool_struct** %arrayidx33, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.29
  %46 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8
  %cmp34 = icmp ne %union.large_pool_struct* %46, null
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8
  %hdr = bitcast %union.large_pool_struct* %47 to %struct.anon.0*
  %next35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr, i32 0, i32 0
  %48 = load %union.large_pool_struct*, %union.large_pool_struct** %next35, align 8
  store %union.large_pool_struct* %48, %union.large_pool_struct** %next_lhdr_ptr, align 8
  %49 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8
  %hdr36 = bitcast %union.large_pool_struct* %49 to %struct.anon.0*
  %bytes_used = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr36, i32 0, i32 1
  %50 = load i64, i64* %bytes_used, align 8
  %51 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8
  %hdr37 = bitcast %union.large_pool_struct* %51 to %struct.anon.0*
  %bytes_left = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr37, i32 0, i32 2
  %52 = load i64, i64* %bytes_left, align 8
  %add = add i64 %50, %52
  %add38 = add i64 %add, 24
  store i64 %add38, i64* %space_freed, align 8
  %53 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %54 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8
  %55 = bitcast %union.large_pool_struct* %54 to i8*
  %56 = load i64, i64* %space_freed, align 8
  call void @jpeg_free_large(%struct.jpeg_common_struct* %53, i8* %55, i64 %56)
  %57 = load i64, i64* %space_freed, align 8
  %58 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %58, i32 0, i32 5
  %59 = load i64, i64* %total_space_allocated, align 8
  %sub = sub i64 %59, %57
  store i64 %sub, i64* %total_space_allocated, align 8
  %60 = load %union.large_pool_struct*, %union.large_pool_struct** %next_lhdr_ptr, align 8
  store %union.large_pool_struct* %60, %union.large_pool_struct** %lhdr_ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load i32, i32* %pool_id.addr, align 4
  %idxprom39 = sext i32 %61 to i64
  %62 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %small_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %62, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list, i32 0, i64 %idxprom39
  %63 = load %union.small_pool_struct*, %union.small_pool_struct** %arrayidx40, align 8
  store %union.small_pool_struct* %63, %union.small_pool_struct** %shdr_ptr, align 8
  %64 = load i32, i32* %pool_id.addr, align 4
  %idxprom41 = sext i32 %64 to i64
  %65 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %small_list42 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %65, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list42, i32 0, i64 %idxprom41
  store %union.small_pool_struct* null, %union.small_pool_struct** %arrayidx43, align 8
  br label %while.cond.44

while.cond.44:                                    ; preds = %while.body.46, %while.end
  %66 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8
  %cmp45 = icmp ne %union.small_pool_struct* %66, null
  br i1 %cmp45, label %while.body.46, label %while.end.57

while.body.46:                                    ; preds = %while.cond.44
  %67 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8
  %hdr47 = bitcast %union.small_pool_struct* %67 to %struct.anon*
  %next48 = getelementptr inbounds %struct.anon, %struct.anon* %hdr47, i32 0, i32 0
  %68 = load %union.small_pool_struct*, %union.small_pool_struct** %next48, align 8
  store %union.small_pool_struct* %68, %union.small_pool_struct** %next_shdr_ptr, align 8
  %69 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8
  %hdr49 = bitcast %union.small_pool_struct* %69 to %struct.anon*
  %bytes_used50 = getelementptr inbounds %struct.anon, %struct.anon* %hdr49, i32 0, i32 1
  %70 = load i64, i64* %bytes_used50, align 8
  %71 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8
  %hdr51 = bitcast %union.small_pool_struct* %71 to %struct.anon*
  %bytes_left52 = getelementptr inbounds %struct.anon, %struct.anon* %hdr51, i32 0, i32 2
  %72 = load i64, i64* %bytes_left52, align 8
  %add53 = add i64 %70, %72
  %add54 = add i64 %add53, 24
  store i64 %add54, i64* %space_freed, align 8
  %73 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %74 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8
  %75 = bitcast %union.small_pool_struct* %74 to i8*
  %76 = load i64, i64* %space_freed, align 8
  call void @jpeg_free_small(%struct.jpeg_common_struct* %73, i8* %75, i64 %76)
  %77 = load i64, i64* %space_freed, align 8
  %78 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8
  %total_space_allocated55 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %78, i32 0, i32 5
  %79 = load i64, i64* %total_space_allocated55, align 8
  %sub56 = sub i64 %79, %77
  store i64 %sub56, i64* %total_space_allocated55, align 8
  %80 = load %union.small_pool_struct*, %union.small_pool_struct** %next_shdr_ptr, align 8
  store %union.small_pool_struct* %80, %union.small_pool_struct** %shdr_ptr, align 8
  br label %while.cond.44

while.end.57:                                     ; preds = %while.cond.44
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @self_destruct(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool = alloca i32, align 4
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 1, i32* %pool, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pool, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %2 = load i32, i32* %pool, align 4
  call void @free_pool(%struct.jpeg_common_struct* %1, i32 %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %pool, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %pool, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %5, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %7 = bitcast %struct.jpeg_memory_mgr* %6 to i8*
  call void @jpeg_free_small(%struct.jpeg_common_struct* %4, i8* %7, i64 160)
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %8, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem1, align 8
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void @jpeg_mem_term(%struct.jpeg_common_struct* %9)
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @out_of_memory(%struct.jpeg_common_struct* %cinfo, i32 %which) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %which.addr = alloca i32, align 4
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store i32 %which, i32* %which.addr, align 4
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 5
  store i32 53, i32* %msg_code, align 4
  %2 = load i32, i32* %which.addr, align 4
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %2, i32* %arrayidx, align 4
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 0
  %error_exit3 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %7 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit3, align 8
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  call void %7(%struct.jpeg_common_struct* %8)
  ret void
}

declare i8* @jpeg_get_large(%struct.jpeg_common_struct*, i64) #1

declare i64 @jpeg_mem_available(%struct.jpeg_common_struct*, i64, i64, i64) #1

declare void @jpeg_open_backing_store(%struct.jpeg_common_struct*, %struct.backing_store_struct*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @do_sarray_io(%struct.jpeg_common_struct* %cinfo, %struct.jvirt_sarray_control* %ptr, i32 %writing) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %ptr.addr = alloca %struct.jvirt_sarray_control*, align 8
  %writing.addr = alloca i32, align 4
  %bytesperrow = alloca i64, align 8
  %file_offset = alloca i64, align 8
  %byte_count = alloca i64, align 8
  %rows = alloca i64, align 8
  %thisrow = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store %struct.jvirt_sarray_control* %ptr, %struct.jvirt_sarray_control** %ptr.addr, align 8
  store i32 %writing, i32* %writing.addr, align 4
  %0 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %0, i32 0, i32 2
  %1 = load i32, i32* %samplesperrow, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 1
  store i64 %mul, i64* %bytesperrow, align 8
  %2 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %2, i32 0, i32 6
  %3 = load i32, i32* %cur_start_row, align 4
  %conv1 = zext i32 %3 to i64
  %4 = load i64, i64* %bytesperrow, align 8
  %mul2 = mul nsw i64 %conv1, %4
  store i64 %mul2, i64* %file_offset, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %6, i32 0, i32 4
  %7 = load i32, i32* %rows_in_mem, align 4
  %conv3 = zext i32 %7 to i64
  %cmp = icmp slt i64 %5, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rowsperchunk = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %8, i32 0, i32 5
  %9 = load i32, i32* %rowsperchunk, align 4
  %conv5 = zext i32 %9 to i64
  %10 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rows_in_mem6 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %10, i32 0, i32 4
  %11 = load i32, i32* %rows_in_mem6, align 4
  %conv7 = zext i32 %11 to i64
  %12 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %conv7, %12
  %cmp8 = icmp slt i64 %conv5, %sub
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rowsperchunk10 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %13, i32 0, i32 5
  %14 = load i32, i32* %rowsperchunk10, align 4
  %conv11 = zext i32 %14 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rows_in_mem12 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %15, i32 0, i32 4
  %16 = load i32, i32* %rows_in_mem12, align 4
  %conv13 = zext i32 %16 to i64
  %17 = load i64, i64* %i, align 8
  %sub14 = sub nsw i64 %conv13, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv11, %cond.true ], [ %sub14, %cond.false ]
  store i64 %cond, i64* %rows, align 8
  %18 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %cur_start_row15 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %18, i32 0, i32 6
  %19 = load i32, i32* %cur_start_row15, align 4
  %conv16 = zext i32 %19 to i64
  %20 = load i64, i64* %i, align 8
  %add = add nsw i64 %conv16, %20
  store i64 %add, i64* %thisrow, align 8
  %21 = load i64, i64* %rows, align 8
  %22 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %22, i32 0, i32 7
  %23 = load i32, i32* %first_undef_row, align 4
  %conv17 = zext i32 %23 to i64
  %24 = load i64, i64* %thisrow, align 8
  %sub18 = sub nsw i64 %conv17, %24
  %cmp19 = icmp slt i64 %21, %sub18
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  %25 = load i64, i64* %rows, align 8
  br label %cond.end.26

cond.false.22:                                    ; preds = %cond.end
  %26 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %first_undef_row23 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %26, i32 0, i32 7
  %27 = load i32, i32* %first_undef_row23, align 4
  %conv24 = zext i32 %27 to i64
  %28 = load i64, i64* %thisrow, align 8
  %sub25 = sub nsw i64 %conv24, %28
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.22, %cond.true.21
  %cond27 = phi i64 [ %25, %cond.true.21 ], [ %sub25, %cond.false.22 ]
  store i64 %cond27, i64* %rows, align 8
  %29 = load i64, i64* %rows, align 8
  %30 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %30, i32 0, i32 1
  %31 = load i32, i32* %rows_in_array, align 4
  %conv28 = zext i32 %31 to i64
  %32 = load i64, i64* %thisrow, align 8
  %sub29 = sub nsw i64 %conv28, %32
  %cmp30 = icmp slt i64 %29, %sub29
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.26
  %33 = load i64, i64* %rows, align 8
  br label %cond.end.37

cond.false.33:                                    ; preds = %cond.end.26
  %34 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rows_in_array34 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %34, i32 0, i32 1
  %35 = load i32, i32* %rows_in_array34, align 4
  %conv35 = zext i32 %35 to i64
  %36 = load i64, i64* %thisrow, align 8
  %sub36 = sub nsw i64 %conv35, %36
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.32
  %cond38 = phi i64 [ %33, %cond.true.32 ], [ %sub36, %cond.false.33 ]
  store i64 %cond38, i64* %rows, align 8
  %37 = load i64, i64* %rows, align 8
  %cmp39 = icmp sle i64 %37, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.37
  br label %for.end

if.end:                                           ; preds = %cond.end.37
  %38 = load i64, i64* %rows, align 8
  %39 = load i64, i64* %bytesperrow, align 8
  %mul41 = mul nsw i64 %38, %39
  store i64 %mul41, i64* %byte_count, align 8
  %40 = load i32, i32* %writing.addr, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end
  %41 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %41, i32 0, i32 12
  %write_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info, i32 0, i32 1
  %42 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %write_backing_store, align 8
  %43 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %44 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %b_s_info43 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %44, i32 0, i32 12
  %45 = load i64, i64* %i, align 8
  %46 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %46, i32 0, i32 0
  %47 = load i8**, i8*** %mem_buffer, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %47, i64 %45
  %48 = load i8*, i8** %arrayidx, align 8
  %49 = load i64, i64* %file_offset, align 8
  %50 = load i64, i64* %byte_count, align 8
  call void %42(%struct.jpeg_common_struct* %43, %struct.backing_store_struct* %b_s_info43, i8* %48, i64 %49, i64 %50)
  br label %if.end.48

if.else:                                          ; preds = %if.end
  %51 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %b_s_info44 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %51, i32 0, i32 12
  %read_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info44, i32 0, i32 0
  %52 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %read_backing_store, align 8
  %53 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %54 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %b_s_info45 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %54, i32 0, i32 12
  %55 = load i64, i64* %i, align 8
  %56 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %mem_buffer46 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %56, i32 0, i32 0
  %57 = load i8**, i8*** %mem_buffer46, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %57, i64 %55
  %58 = load i8*, i8** %arrayidx47, align 8
  %59 = load i64, i64* %file_offset, align 8
  %60 = load i64, i64* %byte_count, align 8
  call void %52(%struct.jpeg_common_struct* %53, %struct.backing_store_struct* %b_s_info45, i8* %58, i64 %59, i64 %60)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.42
  %61 = load i64, i64* %byte_count, align 8
  %62 = load i64, i64* %file_offset, align 8
  %add49 = add nsw i64 %62, %61
  store i64 %add49, i64* %file_offset, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %63 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8
  %rowsperchunk50 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %63, i32 0, i32 5
  %64 = load i32, i32* %rowsperchunk50, align 4
  %conv51 = zext i32 %64 to i64
  %65 = load i64, i64* %i, align 8
  %add52 = add nsw i64 %65, %conv51
  store i64 %add52, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @jzero_far(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @do_barray_io(%struct.jpeg_common_struct* %cinfo, %struct.jvirt_barray_control* %ptr, i32 %writing) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %ptr.addr = alloca %struct.jvirt_barray_control*, align 8
  %writing.addr = alloca i32, align 4
  %bytesperrow = alloca i64, align 8
  %file_offset = alloca i64, align 8
  %byte_count = alloca i64, align 8
  %rows = alloca i64, align 8
  %thisrow = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8
  store %struct.jvirt_barray_control* %ptr, %struct.jvirt_barray_control** %ptr.addr, align 8
  store i32 %writing, i32* %writing.addr, align 4
  %0 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %0, i32 0, i32 2
  %1 = load i32, i32* %blocksperrow, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 %conv, 128
  store i64 %mul, i64* %bytesperrow, align 8
  %2 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %2, i32 0, i32 6
  %3 = load i32, i32* %cur_start_row, align 4
  %conv1 = zext i32 %3 to i64
  %4 = load i64, i64* %bytesperrow, align 8
  %mul2 = mul nsw i64 %conv1, %4
  store i64 %mul2, i64* %file_offset, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rows_in_mem = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %6, i32 0, i32 4
  %7 = load i32, i32* %rows_in_mem, align 4
  %conv3 = zext i32 %7 to i64
  %cmp = icmp slt i64 %5, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rowsperchunk = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %8, i32 0, i32 5
  %9 = load i32, i32* %rowsperchunk, align 4
  %conv5 = zext i32 %9 to i64
  %10 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rows_in_mem6 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %10, i32 0, i32 4
  %11 = load i32, i32* %rows_in_mem6, align 4
  %conv7 = zext i32 %11 to i64
  %12 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %conv7, %12
  %cmp8 = icmp slt i64 %conv5, %sub
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rowsperchunk10 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %13, i32 0, i32 5
  %14 = load i32, i32* %rowsperchunk10, align 4
  %conv11 = zext i32 %14 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rows_in_mem12 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %15, i32 0, i32 4
  %16 = load i32, i32* %rows_in_mem12, align 4
  %conv13 = zext i32 %16 to i64
  %17 = load i64, i64* %i, align 8
  %sub14 = sub nsw i64 %conv13, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv11, %cond.true ], [ %sub14, %cond.false ]
  store i64 %cond, i64* %rows, align 8
  %18 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %cur_start_row15 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %18, i32 0, i32 6
  %19 = load i32, i32* %cur_start_row15, align 4
  %conv16 = zext i32 %19 to i64
  %20 = load i64, i64* %i, align 8
  %add = add nsw i64 %conv16, %20
  store i64 %add, i64* %thisrow, align 8
  %21 = load i64, i64* %rows, align 8
  %22 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %first_undef_row = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %22, i32 0, i32 7
  %23 = load i32, i32* %first_undef_row, align 4
  %conv17 = zext i32 %23 to i64
  %24 = load i64, i64* %thisrow, align 8
  %sub18 = sub nsw i64 %conv17, %24
  %cmp19 = icmp slt i64 %21, %sub18
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  %25 = load i64, i64* %rows, align 8
  br label %cond.end.26

cond.false.22:                                    ; preds = %cond.end
  %26 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %first_undef_row23 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %26, i32 0, i32 7
  %27 = load i32, i32* %first_undef_row23, align 4
  %conv24 = zext i32 %27 to i64
  %28 = load i64, i64* %thisrow, align 8
  %sub25 = sub nsw i64 %conv24, %28
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.22, %cond.true.21
  %cond27 = phi i64 [ %25, %cond.true.21 ], [ %sub25, %cond.false.22 ]
  store i64 %cond27, i64* %rows, align 8
  %29 = load i64, i64* %rows, align 8
  %30 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %30, i32 0, i32 1
  %31 = load i32, i32* %rows_in_array, align 4
  %conv28 = zext i32 %31 to i64
  %32 = load i64, i64* %thisrow, align 8
  %sub29 = sub nsw i64 %conv28, %32
  %cmp30 = icmp slt i64 %29, %sub29
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.26
  %33 = load i64, i64* %rows, align 8
  br label %cond.end.37

cond.false.33:                                    ; preds = %cond.end.26
  %34 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rows_in_array34 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %34, i32 0, i32 1
  %35 = load i32, i32* %rows_in_array34, align 4
  %conv35 = zext i32 %35 to i64
  %36 = load i64, i64* %thisrow, align 8
  %sub36 = sub nsw i64 %conv35, %36
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.32
  %cond38 = phi i64 [ %33, %cond.true.32 ], [ %sub36, %cond.false.33 ]
  store i64 %cond38, i64* %rows, align 8
  %37 = load i64, i64* %rows, align 8
  %cmp39 = icmp sle i64 %37, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.37
  br label %for.end

if.end:                                           ; preds = %cond.end.37
  %38 = load i64, i64* %rows, align 8
  %39 = load i64, i64* %bytesperrow, align 8
  %mul41 = mul nsw i64 %38, %39
  store i64 %mul41, i64* %byte_count, align 8
  %40 = load i32, i32* %writing.addr, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end
  %41 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %b_s_info = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %41, i32 0, i32 12
  %write_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info, i32 0, i32 1
  %42 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %write_backing_store, align 8
  %43 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %44 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %b_s_info43 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %44, i32 0, i32 12
  %45 = load i64, i64* %i, align 8
  %46 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %mem_buffer = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %46, i32 0, i32 0
  %47 = load [64 x i16]**, [64 x i16]*** %mem_buffer, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %47, i64 %45
  %48 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  %49 = bitcast [64 x i16]* %48 to i8*
  %50 = load i64, i64* %file_offset, align 8
  %51 = load i64, i64* %byte_count, align 8
  call void %42(%struct.jpeg_common_struct* %43, %struct.backing_store_struct* %b_s_info43, i8* %49, i64 %50, i64 %51)
  br label %if.end.48

if.else:                                          ; preds = %if.end
  %52 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %b_s_info44 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %52, i32 0, i32 12
  %read_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info44, i32 0, i32 0
  %53 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %read_backing_store, align 8
  %54 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8
  %55 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %b_s_info45 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %55, i32 0, i32 12
  %56 = load i64, i64* %i, align 8
  %57 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %mem_buffer46 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %57, i32 0, i32 0
  %58 = load [64 x i16]**, [64 x i16]*** %mem_buffer46, align 8
  %arrayidx47 = getelementptr inbounds [64 x i16]*, [64 x i16]** %58, i64 %56
  %59 = load [64 x i16]*, [64 x i16]** %arrayidx47, align 8
  %60 = bitcast [64 x i16]* %59 to i8*
  %61 = load i64, i64* %file_offset, align 8
  %62 = load i64, i64* %byte_count, align 8
  call void %53(%struct.jpeg_common_struct* %54, %struct.backing_store_struct* %b_s_info45, i8* %60, i64 %61, i64 %62)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.42
  %63 = load i64, i64* %byte_count, align 8
  %64 = load i64, i64* %file_offset, align 8
  %add49 = add nsw i64 %64, %63
  store i64 %add49, i64* %file_offset, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %65 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8
  %rowsperchunk50 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %65, i32 0, i32 5
  %66 = load i32, i32* %rowsperchunk50, align 4
  %conv51 = zext i32 %66 to i64
  %67 = load i64, i64* %i, align 8
  %add52 = add nsw i64 %67, %conv51
  store i64 %add52, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare void @jpeg_free_large(%struct.jpeg_common_struct*, i8*, i64) #1

declare void @jpeg_free_small(%struct.jpeg_common_struct*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
