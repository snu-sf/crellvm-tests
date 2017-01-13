; ModuleID = './MultiSource.Benchmarks.MiBench/111.consumer-jpeg.jchuff.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }
%struct.huff_entropy_encoder = type { %struct.jpeg_entropy_encoder, %struct.savable_state, i32, i32, [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*], [4 x i64*], [4 x i64*] }
%struct.savable_state = type { i64, i32, [4 x i32] }
%struct.working_state = type { i8*, i64, %struct.savable_state, %struct.jpeg_compress_struct* }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %cinfo, %struct.JHUFF_TBL* %htbl, %struct.c_derived_tbl** %pdtbl) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %htbl.addr = alloca %struct.JHUFF_TBL*, align 8
  %pdtbl.addr = alloca %struct.c_derived_tbl**, align 8
  %dtbl = alloca %struct.c_derived_tbl*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %lastp = alloca i32, align 4
  %si = alloca i32, align 4
  %huffsize = alloca [257 x i8], align 16
  %huffcode = alloca [257 x i32], align 16
  %code = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.JHUFF_TBL* %htbl, %struct.JHUFF_TBL** %htbl.addr, align 8
  store %struct.c_derived_tbl** %pdtbl, %struct.c_derived_tbl*** %pdtbl.addr, align 8
  %0 = load %struct.c_derived_tbl**, %struct.c_derived_tbl*** %pdtbl.addr, align 8
  %1 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %0, align 8
  %cmp = icmp eq %struct.c_derived_tbl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 1280)
  %7 = bitcast i8* %call to %struct.c_derived_tbl*
  %8 = load %struct.c_derived_tbl**, %struct.c_derived_tbl*** %pdtbl.addr, align 8
  store %struct.c_derived_tbl* %7, %struct.c_derived_tbl** %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.c_derived_tbl**, %struct.c_derived_tbl*** %pdtbl.addr, align 8
  %10 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %9, align 8
  store %struct.c_derived_tbl* %10, %struct.c_derived_tbl** %dtbl, align 8
  store i32 0, i32* %p, align 4
  store i32 1, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.end
  %11 = load i32, i32* %l, align 4
  %cmp1 = icmp sle i32 %11, 16
  br i1 %cmp1, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %l, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %14, i32 0, i32 0
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %cmp3 = icmp sle i32 %12, %conv
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %16 = load i32, i32* %l, align 4
  %conv6 = trunc i32 %16 to i8
  %17 = load i32, i32* %p, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %p, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom7
  store i8 %conv6, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %18 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %18, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %19 = load i32, i32* %l, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, i32* %l, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %20 = load i32, i32* %p, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1
  %21 = load i32, i32* %p, align 4
  store i32 %21, i32* %lastp, align 4
  store i32 0, i32* %code, align 4
  %arrayidx15 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 0
  %22 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %22 to i32
  store i32 %conv16, i32* %si, align 4
  store i32 0, i32* %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end.12
  %23 = load i32, i32* %p, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom17
  %24 = load i8, i8* %arrayidx18, align 1
  %tobool = icmp ne i8 %24, 0
  br i1 %tobool, label %while.body, label %while.end.31

while.body:                                       ; preds = %while.cond
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.25, %while.body
  %25 = load i32, i32* %p, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom20
  %26 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %26 to i32
  %27 = load i32, i32* %si, align 4
  %cmp23 = icmp eq i32 %conv22, %27
  br i1 %cmp23, label %while.body.25, label %while.end

while.body.25:                                    ; preds = %while.cond.19
  %28 = load i32, i32* %code, align 4
  %29 = load i32, i32* %p, align 4
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, i32* %p, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom27
  store i32 %28, i32* %arrayidx28, align 4
  %30 = load i32, i32* %code, align 4
  %inc29 = add i32 %30, 1
  store i32 %inc29, i32* %code, align 4
  br label %while.cond.19

while.end:                                        ; preds = %while.cond.19
  %31 = load i32, i32* %code, align 4
  %shl = shl i32 %31, 1
  store i32 %shl, i32* %code, align 4
  %32 = load i32, i32* %si, align 4
  %inc30 = add nsw i32 %32, 1
  store i32 %inc30, i32* %si, align 4
  br label %while.cond

while.end.31:                                     ; preds = %while.cond
  %33 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %33, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 0, i64 256, i32 1, i1 false)
  store i32 0, i32* %p, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.50, %while.end.31
  %34 = load i32, i32* %p, align 4
  %35 = load i32, i32* %lastp, align 4
  %cmp33 = icmp slt i32 %34, %35
  br i1 %cmp33, label %for.body.35, label %for.end.52

for.body.35:                                      ; preds = %for.cond.32
  %36 = load i32, i32* %p, align 4
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom36
  %37 = load i32, i32* %arrayidx37, align 4
  %38 = load i32, i32* %p, align 4
  %idxprom38 = sext i32 %38 to i64
  %39 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %39, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom38
  %40 = load i8, i8* %arrayidx39, align 1
  %idxprom40 = zext i8 %40 to i64
  %41 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %41, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom40
  store i32 %37, i32* %arrayidx41, align 4
  %42 = load i32, i32* %p, align 4
  %idxprom42 = sext i32 %42 to i64
  %arrayidx43 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom42
  %43 = load i8, i8* %arrayidx43, align 1
  %44 = load i32, i32* %p, align 4
  %idxprom44 = sext i32 %44 to i64
  %45 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %huffval45 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %45, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval45, i32 0, i64 %idxprom44
  %46 = load i8, i8* %arrayidx46, align 1
  %idxprom47 = zext i8 %46 to i64
  %47 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8
  %ehufsi48 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %47, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi48, i32 0, i64 %idxprom47
  store i8 %43, i8* %arrayidx49, align 1
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.35
  %48 = load i32, i32* %p, align 4
  %inc51 = add nsw i32 %48, 1
  store i32 %inc51, i32* %p, align 4
  br label %for.cond.32

for.end.52:                                       ; preds = %for.cond.32
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %cinfo, %struct.JHUFF_TBL* %htbl, i64* %freq) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %htbl.addr = alloca %struct.JHUFF_TBL*, align 8
  %freq.addr = alloca i64*, align 8
  %bits = alloca [33 x i8], align 16
  %codesize = alloca [257 x i32], align 16
  %others = alloca [257 x i32], align 16
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store %struct.JHUFF_TBL* %htbl, %struct.JHUFF_TBL** %htbl.addr, align 8
  store i64* %freq, i64** %freq.addr, align 8
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 0, i64 33, i32 1, i1 false)
  %arraydecay1 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i32 0
  %0 = bitcast i32* %arraydecay1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1028, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 257
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i64*, i64** %freq.addr, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %4, i64 256
  store i64 1, i64* %arrayidx2, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %while.end.71, %for.end
  store i32 -1, i32* %c1, align 4
  store i64 1000000000, i64* %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %for.cond.3
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp sle i32 %5, 256
  br i1 %cmp5, label %for.body.6, label %for.end.16

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load i64*, i64** %freq.addr, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %7, i64 %idxprom7
  %8 = load i64, i64* %arrayidx8, align 8
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.6
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load i64*, i64** %freq.addr, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %10, i64 %idxprom9
  %11 = load i64, i64* %arrayidx10, align 8
  %12 = load i64, i64* %v, align 8
  %cmp11 = icmp sle i64 %11, %12
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i64*, i64** %freq.addr, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %14, i64 %idxprom12
  %15 = load i64, i64* %arrayidx13, align 8
  store i64 %15, i64* %v, align 8
  %16 = load i32, i32* %i, align 4
  store i32 %16, i32* %c1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  store i32 -1, i32* %c2, align 4
  store i64 1000000000, i64* %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.33, %for.end.16
  %18 = load i32, i32* %i, align 4
  %cmp18 = icmp sle i32 %18, 256
  br i1 %cmp18, label %for.body.19, label %for.end.35

for.body.19:                                      ; preds = %for.cond.17
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load i64*, i64** %freq.addr, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %20, i64 %idxprom20
  %21 = load i64, i64* %arrayidx21, align 8
  %tobool22 = icmp ne i64 %21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.32

land.lhs.true.23:                                 ; preds = %for.body.19
  %22 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i64*, i64** %freq.addr, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %23, i64 %idxprom24
  %24 = load i64, i64* %arrayidx25, align 8
  %25 = load i64, i64* %v, align 8
  %cmp26 = icmp sle i64 %24, %25
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.32

land.lhs.true.27:                                 ; preds = %land.lhs.true.23
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %c1, align 4
  %cmp28 = icmp ne i32 %26, %27
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %land.lhs.true.27
  %28 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load i64*, i64** %freq.addr, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %29, i64 %idxprom30
  %30 = load i64, i64* %arrayidx31, align 8
  store i64 %30, i64* %v, align 8
  %31 = load i32, i32* %i, align 4
  store i32 %31, i32* %c2, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %land.lhs.true.27, %land.lhs.true.23, %for.body.19
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %32 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.17

for.end.35:                                       ; preds = %for.cond.17
  %33 = load i32, i32* %c2, align 4
  %cmp36 = icmp slt i32 %33, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end.35
  br label %for.end.72

if.end.38:                                        ; preds = %for.end.35
  %34 = load i32, i32* %c2, align 4
  %idxprom39 = sext i32 %34 to i64
  %35 = load i64*, i64** %freq.addr, align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %35, i64 %idxprom39
  %36 = load i64, i64* %arrayidx40, align 8
  %37 = load i32, i32* %c1, align 4
  %idxprom41 = sext i32 %37 to i64
  %38 = load i64*, i64** %freq.addr, align 8
  %arrayidx42 = getelementptr inbounds i64, i64* %38, i64 %idxprom41
  %39 = load i64, i64* %arrayidx42, align 8
  %add = add nsw i64 %39, %36
  store i64 %add, i64* %arrayidx42, align 8
  %40 = load i32, i32* %c2, align 4
  %idxprom43 = sext i32 %40 to i64
  %41 = load i64*, i64** %freq.addr, align 8
  %arrayidx44 = getelementptr inbounds i64, i64* %41, i64 %idxprom43
  store i64 0, i64* %arrayidx44, align 8
  %42 = load i32, i32* %c1, align 4
  %idxprom45 = sext i32 %42 to i64
  %arrayidx46 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom45
  %43 = load i32, i32* %arrayidx46, align 4
  %inc47 = add nsw i32 %43, 1
  store i32 %inc47, i32* %arrayidx46, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.38
  %44 = load i32, i32* %c1, align 4
  %idxprom48 = sext i32 %44 to i64
  %arrayidx49 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom48
  %45 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp sge i32 %45, 0
  br i1 %cmp50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i32, i32* %c1, align 4
  %idxprom51 = sext i32 %46 to i64
  %arrayidx52 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom51
  %47 = load i32, i32* %arrayidx52, align 4
  store i32 %47, i32* %c1, align 4
  %48 = load i32, i32* %c1, align 4
  %idxprom53 = sext i32 %48 to i64
  %arrayidx54 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom53
  %49 = load i32, i32* %arrayidx54, align 4
  %inc55 = add nsw i32 %49, 1
  store i32 %inc55, i32* %arrayidx54, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = load i32, i32* %c2, align 4
  %51 = load i32, i32* %c1, align 4
  %idxprom56 = sext i32 %51 to i64
  %arrayidx57 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom56
  store i32 %50, i32* %arrayidx57, align 4
  %52 = load i32, i32* %c2, align 4
  %idxprom58 = sext i32 %52 to i64
  %arrayidx59 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom58
  %53 = load i32, i32* %arrayidx59, align 4
  %inc60 = add nsw i32 %53, 1
  store i32 %inc60, i32* %arrayidx59, align 4
  br label %while.cond.61

while.cond.61:                                    ; preds = %while.body.65, %while.end
  %54 = load i32, i32* %c2, align 4
  %idxprom62 = sext i32 %54 to i64
  %arrayidx63 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom62
  %55 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp sge i32 %55, 0
  br i1 %cmp64, label %while.body.65, label %while.end.71

while.body.65:                                    ; preds = %while.cond.61
  %56 = load i32, i32* %c2, align 4
  %idxprom66 = sext i32 %56 to i64
  %arrayidx67 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom66
  %57 = load i32, i32* %arrayidx67, align 4
  store i32 %57, i32* %c2, align 4
  %58 = load i32, i32* %c2, align 4
  %idxprom68 = sext i32 %58 to i64
  %arrayidx69 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom68
  %59 = load i32, i32* %arrayidx69, align 4
  %inc70 = add nsw i32 %59, 1
  store i32 %inc70, i32* %arrayidx69, align 4
  br label %while.cond.61

while.end.71:                                     ; preds = %while.cond.61
  br label %for.cond.3

for.end.72:                                       ; preds = %if.then.37
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.92, %for.end.72
  %60 = load i32, i32* %i, align 4
  %cmp74 = icmp sle i32 %60, 256
  br i1 %cmp74, label %for.body.75, label %for.end.94

for.body.75:                                      ; preds = %for.cond.73
  %61 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %61 to i64
  %arrayidx77 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom76
  %62 = load i32, i32* %arrayidx77, align 4
  %tobool78 = icmp ne i32 %62, 0
  br i1 %tobool78, label %if.then.79, label %if.end.91

if.then.79:                                       ; preds = %for.body.75
  %63 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %63 to i64
  %arrayidx81 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom80
  %64 = load i32, i32* %arrayidx81, align 4
  %cmp82 = icmp sgt i32 %64, 32
  br i1 %cmp82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.then.79
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i32 0, i32 5
  store i32 38, i32* %msg_code, align 4
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err84, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 0
  %69 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %71 = bitcast %struct.jpeg_compress_struct* %70 to %struct.jpeg_common_struct*
  call void %69(%struct.jpeg_common_struct* %71)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.then.79
  %72 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %72 to i64
  %arrayidx87 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom86
  %73 = load i32, i32* %arrayidx87, align 4
  %idxprom88 = sext i32 %73 to i64
  %arrayidx89 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom88
  %74 = load i8, i8* %arrayidx89, align 1
  %inc90 = add i8 %74, 1
  store i8 %inc90, i8* %arrayidx89, align 1
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.85, %for.body.75
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %75 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %75, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.73

for.end.94:                                       ; preds = %for.cond.73
  store i32 32, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.131, %for.end.94
  %76 = load i32, i32* %i, align 4
  %cmp96 = icmp sgt i32 %76, 16
  br i1 %cmp96, label %for.body.97, label %for.end.133

for.body.97:                                      ; preds = %for.cond.95
  br label %while.cond.98

while.cond.98:                                    ; preds = %while.end.111, %for.body.97
  %77 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %77 to i64
  %arrayidx100 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom99
  %78 = load i8, i8* %arrayidx100, align 1
  %conv = zext i8 %78 to i32
  %cmp101 = icmp sgt i32 %conv, 0
  br i1 %cmp101, label %while.body.103, label %while.end.130

while.body.103:                                   ; preds = %while.cond.98
  %79 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %79, 2
  store i32 %sub, i32* %j, align 4
  br label %while.cond.104

while.cond.104:                                   ; preds = %while.body.110, %while.body.103
  %80 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %80 to i64
  %arrayidx106 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom105
  %81 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %81 to i32
  %cmp108 = icmp eq i32 %conv107, 0
  br i1 %cmp108, label %while.body.110, label %while.end.111

while.body.110:                                   ; preds = %while.cond.104
  %82 = load i32, i32* %j, align 4
  %dec = add nsw i32 %82, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond.104

while.end.111:                                    ; preds = %while.cond.104
  %83 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %83 to i64
  %arrayidx113 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom112
  %84 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %84 to i32
  %sub115 = sub nsw i32 %conv114, 2
  %conv116 = trunc i32 %sub115 to i8
  store i8 %conv116, i8* %arrayidx113, align 1
  %85 = load i32, i32* %i, align 4
  %sub117 = sub nsw i32 %85, 1
  %idxprom118 = sext i32 %sub117 to i64
  %arrayidx119 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom118
  %86 = load i8, i8* %arrayidx119, align 1
  %inc120 = add i8 %86, 1
  store i8 %inc120, i8* %arrayidx119, align 1
  %87 = load i32, i32* %j, align 4
  %add121 = add nsw i32 %87, 1
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom122
  %88 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %88 to i32
  %add125 = add nsw i32 %conv124, 2
  %conv126 = trunc i32 %add125 to i8
  store i8 %conv126, i8* %arrayidx123, align 1
  %89 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %89 to i64
  %arrayidx128 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom127
  %90 = load i8, i8* %arrayidx128, align 1
  %dec129 = add i8 %90, -1
  store i8 %dec129, i8* %arrayidx128, align 1
  br label %while.cond.98

while.end.130:                                    ; preds = %while.cond.98
  br label %for.inc.131

for.inc.131:                                      ; preds = %while.end.130
  %91 = load i32, i32* %i, align 4
  %dec132 = add nsw i32 %91, -1
  store i32 %dec132, i32* %i, align 4
  br label %for.cond.95

for.end.133:                                      ; preds = %for.cond.95
  br label %while.cond.134

while.cond.134:                                   ; preds = %while.body.140, %for.end.133
  %92 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %92 to i64
  %arrayidx136 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom135
  %93 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %93 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br i1 %cmp138, label %while.body.140, label %while.end.142

while.body.140:                                   ; preds = %while.cond.134
  %94 = load i32, i32* %i, align 4
  %dec141 = add nsw i32 %94, -1
  store i32 %dec141, i32* %i, align 4
  br label %while.cond.134

while.end.142:                                    ; preds = %while.cond.134
  %95 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %95 to i64
  %arrayidx144 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom143
  %96 = load i8, i8* %arrayidx144, align 1
  %dec145 = add i8 %96, -1
  store i8 %dec145, i8* %arrayidx144, align 1
  %97 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %bits146 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %97, i32 0, i32 0
  %arraydecay147 = getelementptr inbounds [17 x i8], [17 x i8]* %bits146, i32 0, i32 0
  %arraydecay148 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay147, i8* %arraydecay148, i64 17, i32 1, i1 false)
  store i32 0, i32* %p, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.170, %while.end.142
  %98 = load i32, i32* %i, align 4
  %cmp150 = icmp sle i32 %98, 32
  br i1 %cmp150, label %for.body.152, label %for.end.172

for.body.152:                                     ; preds = %for.cond.149
  store i32 0, i32* %j, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.167, %for.body.152
  %99 = load i32, i32* %j, align 4
  %cmp154 = icmp sle i32 %99, 255
  br i1 %cmp154, label %for.body.156, label %for.end.169

for.body.156:                                     ; preds = %for.cond.153
  %100 = load i32, i32* %j, align 4
  %idxprom157 = sext i32 %100 to i64
  %arrayidx158 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom157
  %101 = load i32, i32* %arrayidx158, align 4
  %102 = load i32, i32* %i, align 4
  %cmp159 = icmp eq i32 %101, %102
  br i1 %cmp159, label %if.then.161, label %if.end.166

if.then.161:                                      ; preds = %for.body.156
  %103 = load i32, i32* %j, align 4
  %conv162 = trunc i32 %103 to i8
  %104 = load i32, i32* %p, align 4
  %idxprom163 = sext i32 %104 to i64
  %105 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %105, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom163
  store i8 %conv162, i8* %arrayidx164, align 1
  %106 = load i32, i32* %p, align 4
  %inc165 = add nsw i32 %106, 1
  store i32 %inc165, i32* %p, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.161, %for.body.156
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %107 = load i32, i32* %j, align 4
  %inc168 = add nsw i32 %107, 1
  store i32 %inc168, i32* %j, align 4
  br label %for.cond.153

for.end.169:                                      ; preds = %for.cond.153
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.end.169
  %108 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %108, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond.149

for.end.172:                                      ; preds = %for.cond.149
  %109 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %109, i32 0, i32 2
  store i32 0, i32* %sent_table, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @jinit_huff_encoder(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_compress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 192)
  %5 = bitcast i8* %call to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %5, %struct.huff_entropy_encoder** %entropy, align 8
  %6 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %7 = bitcast %struct.huff_entropy_encoder* %6 to %struct.jpeg_entropy_encoder*
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 59
  store %struct.jpeg_entropy_encoder* %7, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %pub = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_huff, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %10, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %12, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom
  store %struct.c_derived_tbl* null, %struct.c_derived_tbl** %arrayidx, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %13 to i64
  %14 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %14, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom2
  store %struct.c_derived_tbl* null, %struct.c_derived_tbl** %arrayidx3, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %16, i32 0, i32 7
  %arrayidx5 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom4
  store i64* null, i64** %arrayidx5, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %18, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom6
  store i64* null, i64** %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_huff(%struct.jpeg_compress_struct* %cinfo, i32 %gather_statistics) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %gather_statistics.addr = alloca i32, align 4
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %ci = alloca i32, align 4
  %dctbl = alloca i32, align 4
  %actbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store i32 %gather_statistics, i32* %gather_statistics.addr, align 4
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %2, %struct.huff_entropy_encoder** %entropy, align 8
  %3 = load i32, i32* %gather_statistics.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %pub = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %4, i32 0, i32 0
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_gather, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8
  %5 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %pub2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %5, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub2, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @finish_pass_gather, void (%struct.jpeg_compress_struct*)** %finish_pass, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %pub3 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %6, i32 0, i32 0
  %encode_mcu4 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub3, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_huff, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu4, align 8
  %7 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %pub5 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %7, i32 0, i32 0
  %finish_pass6 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub5, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @finish_pass_huff, void (%struct.jpeg_compress_struct*)** %finish_pass6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %ci, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 41
  %10 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %13, %struct.jpeg_component_info** %compptr, align 8
  %14 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %14, i32 0, i32 5
  %15 = load i32, i32* %dc_tbl_no, align 4
  store i32 %15, i32* %dctbl, align 4
  %16 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %16, i32 0, i32 6
  %17 = load i32, i32* %ac_tbl_no, align 4
  store i32 %17, i32* %actbl, align 4
  %18 = load i32, i32* %dctbl, align 4
  %cmp7 = icmp slt i32 %18, 0
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %19 = load i32, i32* %dctbl, align 4
  %cmp8 = icmp sge i32 %19, 4
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %20 = load i32, i32* %dctbl, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 16
  %arrayidx11 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom10
  %22 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx11, align 8
  %cmp12 = icmp eq %struct.JHUFF_TBL* %22, null
  br i1 %cmp12, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %lor.lhs.false.9
  %23 = load i32, i32* %gather_statistics.addr, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %if.end.18, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true, %lor.lhs.false, %for.body
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4
  %26 = load i32, i32* %dctbl, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %26, i32* %arrayidx16, align 4
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %33 = bitcast %struct.jpeg_compress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* %33)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %land.lhs.true, %lor.lhs.false.9
  %34 = load i32, i32* %actbl, align 4
  %cmp19 = icmp slt i32 %34, 0
  br i1 %cmp19, label %if.then.28, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.18
  %35 = load i32, i32* %actbl, align 4
  %cmp21 = icmp sge i32 %35, 4
  br i1 %cmp21, label %if.then.28, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.20
  %36 = load i32, i32* %actbl, align 4
  %idxprom23 = sext i32 %36 to i64
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 17
  %arrayidx24 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom23
  %38 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx24, align 8
  %cmp25 = icmp eq %struct.JHUFF_TBL* %38, null
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.37

land.lhs.true.26:                                 ; preds = %lor.lhs.false.22
  %39 = load i32, i32* %gather_statistics.addr, align 4
  %tobool27 = icmp ne i32 %39, 0
  br i1 %tobool27, label %if.end.37, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.26, %lor.lhs.false.20, %if.end.18
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8
  %msg_code30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 5
  store i32 49, i32* %msg_code30, align 4
  %42 = load i32, i32* %actbl, align 4
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8
  %msg_parm32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 6
  %i33 = bitcast %union.anon* %msg_parm32 to [8 x i32]*
  %arrayidx34 = getelementptr inbounds [8 x i32], [8 x i32]* %i33, i32 0, i64 0
  store i32 %42, i32* %arrayidx34, align 4
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8
  %error_exit36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 0
  %47 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit36, align 8
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %49 = bitcast %struct.jpeg_compress_struct* %48 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* %49)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.28, %land.lhs.true.26, %lor.lhs.false.22
  %50 = load i32, i32* %gather_statistics.addr, align 4
  %tobool38 = icmp ne i32 %50, 0
  br i1 %tobool38, label %if.then.39, label %if.else.65

if.then.39:                                       ; preds = %if.end.37
  %51 = load i32, i32* %dctbl, align 4
  %idxprom40 = sext i32 %51 to i64
  %52 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %52, i32 0, i32 6
  %arrayidx41 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom40
  %53 = load i64*, i64** %arrayidx41, align 8
  %cmp42 = icmp eq i64* %53, null
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.then.39
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 1
  %55 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %55, i32 0, i32 0
  %56 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %58 = bitcast %struct.jpeg_compress_struct* %57 to %struct.jpeg_common_struct*
  %call = call i8* %56(%struct.jpeg_common_struct* %58, i32 1, i64 2056)
  %59 = bitcast i8* %call to i64*
  %60 = load i32, i32* %dctbl, align 4
  %idxprom44 = sext i32 %60 to i64
  %61 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %dc_count_ptrs45 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %61, i32 0, i32 6
  %arrayidx46 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs45, i32 0, i64 %idxprom44
  store i64* %59, i64** %arrayidx46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.then.39
  %62 = load i32, i32* %dctbl, align 4
  %idxprom48 = sext i32 %62 to i64
  %63 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %dc_count_ptrs49 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %63, i32 0, i32 6
  %arrayidx50 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs49, i32 0, i64 %idxprom48
  %64 = load i64*, i64** %arrayidx50, align 8
  %65 = bitcast i64* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 2056, i32 1, i1 false)
  %66 = load i32, i32* %actbl, align 4
  %idxprom51 = sext i32 %66 to i64
  %67 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %67, i32 0, i32 7
  %arrayidx52 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom51
  %68 = load i64*, i64** %arrayidx52, align 8
  %cmp53 = icmp eq i64* %68, null
  br i1 %cmp53, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %if.end.47
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %mem55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %69, i32 0, i32 1
  %70 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem55, align 8
  %alloc_small56 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %70, i32 0, i32 0
  %71 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small56, align 8
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %73 = bitcast %struct.jpeg_compress_struct* %72 to %struct.jpeg_common_struct*
  %call57 = call i8* %71(%struct.jpeg_common_struct* %73, i32 1, i64 2056)
  %74 = bitcast i8* %call57 to i64*
  %75 = load i32, i32* %actbl, align 4
  %idxprom58 = sext i32 %75 to i64
  %76 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %ac_count_ptrs59 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %76, i32 0, i32 7
  %arrayidx60 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs59, i32 0, i64 %idxprom58
  store i64* %74, i64** %arrayidx60, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.54, %if.end.47
  %77 = load i32, i32* %actbl, align 4
  %idxprom62 = sext i32 %77 to i64
  %78 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %ac_count_ptrs63 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %78, i32 0, i32 7
  %arrayidx64 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs63, i32 0, i64 %idxprom62
  %79 = load i64*, i64** %arrayidx64, align 8
  %80 = bitcast i64* %79 to i8*
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 2056, i32 1, i1 false)
  br label %if.end.76

if.else.65:                                       ; preds = %if.end.37
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %82 = load i32, i32* %dctbl, align 4
  %idxprom66 = sext i32 %82 to i64
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 16
  %arrayidx68 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs67, i32 0, i64 %idxprom66
  %84 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx68, align 8
  %85 = load i32, i32* %dctbl, align 4
  %idxprom69 = sext i32 %85 to i64
  %86 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %86, i32 0, i32 4
  %arrayidx70 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom69
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %81, %struct.JHUFF_TBL* %84, %struct.c_derived_tbl** %arrayidx70)
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %88 = load i32, i32* %actbl, align 4
  %idxprom71 = sext i32 %88 to i64
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 17
  %arrayidx73 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs72, i32 0, i64 %idxprom71
  %90 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx73, align 8
  %91 = load i32, i32* %actbl, align 4
  %idxprom74 = sext i32 %91 to i64
  %92 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %92, i32 0, i32 5
  %arrayidx75 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom74
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %87, %struct.JHUFF_TBL* %90, %struct.c_derived_tbl** %arrayidx75)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.65, %if.end.61
  %93 = load i32, i32* %ci, align 4
  %idxprom77 = sext i32 %93 to i64
  %94 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %94, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 2
  %arrayidx78 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom77
  store i32 0, i32* %arrayidx78, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %95 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %96 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved79 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %96, i32 0, i32 1
  %put_buffer = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved79, i32 0, i32 0
  store i64 0, i64* %put_buffer, align 8
  %97 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved80 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %97, i32 0, i32 1
  %put_bits = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved80, i32 0, i32 1
  store i32 0, i32* %put_bits, align 4
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 29
  %99 = load i32, i32* %restart_interval, align 4
  %100 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %100, i32 0, i32 2
  store i32 %99, i32* %restarts_to_go, align 4
  %101 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %101, i32 0, i32 3
  store i32 0, i32* %next_restart_num, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_gather(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %2, %struct.huff_entropy_encoder** %entropy, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 29
  %4 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %5, i32 0, i32 2
  %6 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %7 = load i32, i32* %ci, align 4
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 41
  %9 = load i32, i32* %comps_in_scan, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %11, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 29
  %14 = load i32, i32* %restart_interval4, align 4
  %15 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %restarts_to_go5 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %15, i32 0, i32 2
  store i32 %14, i32* %restarts_to_go5, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %16 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %restarts_to_go6 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %16, i32 0, i32 2
  %17 = load i32, i32* %restarts_to_go6, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %restarts_to_go6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  store i32 0, i32* %blkn, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.34, %if.end.7
  %18 = load i32, i32* %blkn, align 4
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 45
  %20 = load i32, i32* %blocks_in_MCU, align 4
  %cmp9 = icmp slt i32 %18, %20
  br i1 %cmp9, label %for.body.10, label %for.end.36

for.body.10:                                      ; preds = %for.cond.8
  %21 = load i32, i32* %blkn, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 46
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom11
  %23 = load i32, i32* %arrayidx12, align 4
  store i32 %23, i32* %ci, align 4
  %24 = load i32, i32* %ci, align 4
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 42
  %arrayidx14 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom13
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx14, align 8
  store %struct.jpeg_component_info* %26, %struct.jpeg_component_info** %compptr, align 8
  %27 = load i32, i32* %blkn, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx16 = getelementptr inbounds [64 x i16]*, [64 x i16]** %28, i64 %idxprom15
  %29 = load [64 x i16]*, [64 x i16]** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds [64 x i16], [64 x i16]* %29, i64 0
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx17, i32 0, i32 0
  %30 = load i32, i32* %ci, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved19 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %31, i32 0, i32 1
  %last_dc_val20 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved19, i32 0, i32 2
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val20, i32 0, i64 %idxprom18
  %32 = load i32, i32* %arrayidx21, align 4
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 5
  %34 = load i32, i32* %dc_tbl_no, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %35, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom22
  %36 = load i64*, i64** %arrayidx23, align 8
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 6
  %38 = load i32, i32* %ac_tbl_no, align 4
  %idxprom24 = sext i32 %38 to i64
  %39 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %39, i32 0, i32 7
  %arrayidx25 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom24
  %40 = load i64*, i64** %arrayidx25, align 8
  call void @htest_one_block(i16* %arraydecay, i32 %32, i64* %36, i64* %40)
  %41 = load i32, i32* %blkn, align 4
  %idxprom26 = sext i32 %41 to i64
  %42 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx27 = getelementptr inbounds [64 x i16]*, [64 x i16]** %42, i64 %idxprom26
  %43 = load [64 x i16]*, [64 x i16]** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %43, i64 0
  %arrayidx29 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx28, i32 0, i64 0
  %44 = load i16, i16* %arrayidx29, align 2
  %conv = sext i16 %44 to i32
  %45 = load i32, i32* %ci, align 4
  %idxprom30 = sext i32 %45 to i64
  %46 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved31 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %46, i32 0, i32 1
  %last_dc_val32 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved31, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val32, i32 0, i64 %idxprom30
  store i32 %conv, i32* %arrayidx33, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.10
  %47 = load i32, i32* %blkn, align 4
  %inc35 = add nsw i32 %47, 1
  store i32 %inc35, i32* %blkn, align 4
  br label %for.cond.8

for.end.36:                                       ; preds = %for.cond.8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_gather(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %ci = alloca i32, align 4
  %dctbl = alloca i32, align 4
  %actbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %htblptr = alloca %struct.JHUFF_TBL**, align 8
  %did_dc = alloca [4 x i32], align 16
  %did_ac = alloca [4 x i32], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %2, %struct.huff_entropy_encoder** %entropy, align 8
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %did_dc, i32 0, i32 0
  %3 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 1, i1 false)
  %arraydecay2 = getelementptr inbounds [4 x i32], [4 x i32]* %did_ac, i32 0, i32 0
  %4 = bitcast i32* %arraydecay2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 1, i1 false)
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %ci, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 41
  %7 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %10, %struct.jpeg_component_info** %compptr, align 8
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %11, i32 0, i32 5
  %12 = load i32, i32* %dc_tbl_no, align 4
  store i32 %12, i32* %dctbl, align 4
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i32 0, i32 6
  %14 = load i32, i32* %ac_tbl_no, align 4
  store i32 %14, i32* %actbl, align 4
  %15 = load i32, i32* %dctbl, align 4
  %idxprom3 = sext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %did_dc, i32 0, i64 %idxprom3
  %16 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end.13, label %if.then

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %dctbl, align 4
  %idxprom5 = sext i32 %17 to i64
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 16
  %arrayidx6 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom5
  store %struct.JHUFF_TBL** %arrayidx6, %struct.JHUFF_TBL*** %htblptr, align 8
  %19 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  %20 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %19, align 8
  %cmp7 = icmp eq %struct.JHUFF_TBL* %20, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %22 = bitcast %struct.jpeg_compress_struct* %21 to %struct.jpeg_common_struct*
  %call = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %22)
  %23 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  store %struct.JHUFF_TBL* %call, %struct.JHUFF_TBL** %23, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %25 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  %26 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %25, align 8
  %27 = load i32, i32* %dctbl, align 4
  %idxprom9 = sext i32 %27 to i64
  %28 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %28, i32 0, i32 6
  %arrayidx10 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom9
  %29 = load i64*, i64** %arrayidx10, align 8
  call void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %24, %struct.JHUFF_TBL* %26, i64* %29)
  %30 = load i32, i32* %dctbl, align 4
  %idxprom11 = sext i32 %30 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %did_dc, i32 0, i64 %idxprom11
  store i32 1, i32* %arrayidx12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  %31 = load i32, i32* %actbl, align 4
  %idxprom14 = sext i32 %31 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %did_ac, i32 0, i64 %idxprom14
  %32 = load i32, i32* %arrayidx15, align 4
  %tobool16 = icmp ne i32 %32, 0
  br i1 %tobool16, label %if.end.28, label %if.then.17

if.then.17:                                       ; preds = %if.end.13
  %33 = load i32, i32* %actbl, align 4
  %idxprom18 = sext i32 %33 to i64
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 17
  %arrayidx19 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom18
  store %struct.JHUFF_TBL** %arrayidx19, %struct.JHUFF_TBL*** %htblptr, align 8
  %35 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  %36 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %35, align 8
  %cmp20 = icmp eq %struct.JHUFF_TBL* %36, null
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.17
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %38 = bitcast %struct.jpeg_compress_struct* %37 to %struct.jpeg_common_struct*
  %call22 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %38)
  %39 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  store %struct.JHUFF_TBL* %call22, %struct.JHUFF_TBL** %39, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.17
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %41 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8
  %42 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %41, align 8
  %43 = load i32, i32* %actbl, align 4
  %idxprom24 = sext i32 %43 to i64
  %44 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %44, i32 0, i32 7
  %arrayidx25 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom24
  %45 = load i64*, i64** %arrayidx25, align 8
  call void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %40, %struct.JHUFF_TBL* %42, i64* %45)
  %46 = load i32, i32* %actbl, align 4
  %idxprom26 = sext i32 %46 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %did_ac, i32 0, i64 %idxprom26
  store i32 1, i32* %arrayidx27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.23, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %47 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_mcu_huff(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %state = alloca %struct.working_state, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %2, %struct.huff_entropy_encoder** %entropy, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 5
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 0
  %5 = load i8*, i8** %next_output_byte, align 8
  %next_output_byte2 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  store i8* %5, i8** %next_output_byte2, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 5
  %7 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %7, i32 0, i32 1
  %8 = load i64, i64* %free_in_buffer, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  store i64 %8, i64* %free_in_buffer4, align 8
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 1
  %10 = bitcast %struct.savable_state* %cur to i8*
  %11 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 3
  store %struct.jpeg_compress_struct* %12, %struct.jpeg_compress_struct** %cinfo5, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 29
  %14 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %15 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %15, i32 0, i32 2
  %16 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.then
  %17 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %17, i32 0, i32 3
  %18 = load i32, i32* %next_restart_num, align 4
  %call = call i32 @emit_restart(%struct.working_state* %state, i32 %18)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  store i32 0, i32* %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %19 = load i32, i32* %blkn, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 45
  %21 = load i32, i32* %blocks_in_MCU, align 4
  %cmp11 = icmp slt i32 %19, %21
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %blkn, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 46
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  store i32 %24, i32* %ci, align 4
  %25 = load i32, i32* %ci, align 4
  %idxprom12 = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 42
  %arrayidx13 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom12
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx13, align 8
  store %struct.jpeg_component_info* %27, %struct.jpeg_component_info** %compptr, align 8
  %28 = load i32, i32* %blkn, align 4
  %idxprom14 = sext i32 %28 to i64
  %29 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx15 = getelementptr inbounds [64 x i16]*, [64 x i16]** %29, i64 %idxprom14
  %30 = load [64 x i16]*, [64 x i16]** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds [64 x i16], [64 x i16]* %30, i64 0
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx16, i32 0, i32 0
  %31 = load i32, i32* %ci, align 4
  %idxprom17 = sext i32 %31 to i64
  %cur18 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur18, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom17
  %32 = load i32, i32* %arrayidx19, align 4
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i32 0, i32 5
  %34 = load i32, i32* %dc_tbl_no, align 4
  %idxprom20 = sext i32 %34 to i64
  %35 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %35, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom20
  %36 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx21, align 8
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 6
  %38 = load i32, i32* %ac_tbl_no, align 4
  %idxprom22 = sext i32 %38 to i64
  %39 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %39, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom22
  %40 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx23, align 8
  %call24 = call i32 @encode_one_block(%struct.working_state* %state, i16* %arraydecay, i32 %32, %struct.c_derived_tbl* %36, %struct.c_derived_tbl* %40)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %for.body
  %41 = load i32, i32* %blkn, align 4
  %idxprom28 = sext i32 %41 to i64
  %42 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx29 = getelementptr inbounds [64 x i16]*, [64 x i16]** %42, i64 %idxprom28
  %43 = load [64 x i16]*, [64 x i16]** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds [64 x i16], [64 x i16]* %43, i64 0
  %arrayidx31 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx30, i32 0, i64 0
  %44 = load i16, i16* %arrayidx31, align 2
  %conv = sext i16 %44 to i32
  %45 = load i32, i32* %ci, align 4
  %idxprom32 = sext i32 %45 to i64
  %cur33 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %last_dc_val34 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur33, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val34, i32 0, i64 %idxprom32
  store i32 %conv, i32* %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %46 = load i32, i32* %blkn, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %blkn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %next_output_byte36 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  %47 = load i8*, i8** %next_output_byte36, align 8
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 5
  %49 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest37, align 8
  %next_output_byte38 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %49, i32 0, i32 0
  store i8* %47, i8** %next_output_byte38, align 8
  %free_in_buffer39 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  %50 = load i64, i64* %free_in_buffer39, align 8
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 5
  %52 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest40, align 8
  %free_in_buffer41 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %52, i32 0, i32 1
  store i64 %50, i64* %free_in_buffer41, align 8
  %53 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved42 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %53, i32 0, i32 1
  %cur43 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %54 = bitcast %struct.savable_state* %saved42 to i8*
  %55 = bitcast %struct.savable_state* %cur43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 29
  %57 = load i32, i32* %restart_interval44, align 4
  %tobool45 = icmp ne i32 %57, 0
  br i1 %tobool45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %for.end
  %58 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %restarts_to_go47 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %58, i32 0, i32 2
  %59 = load i32, i32* %restarts_to_go47, align 4
  %cmp48 = icmp eq i32 %59, 0
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.then.46
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %restart_interval51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 29
  %61 = load i32, i32* %restart_interval51, align 4
  %62 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %restarts_to_go52 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %62, i32 0, i32 2
  store i32 %61, i32* %restarts_to_go52, align 4
  %63 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %next_restart_num53 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %63, i32 0, i32 3
  %64 = load i32, i32* %next_restart_num53, align 4
  %inc54 = add nsw i32 %64, 1
  store i32 %inc54, i32* %next_restart_num53, align 4
  %65 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %next_restart_num55 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %65, i32 0, i32 3
  %66 = load i32, i32* %next_restart_num55, align 4
  %and = and i32 %66, 7
  store i32 %and, i32* %next_restart_num55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.then.46
  %67 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %restarts_to_go57 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %67, i32 0, i32 2
  %68 = load i32, i32* %restarts_to_go57, align 4
  %dec = add i32 %68, -1
  store i32 %dec, i32* %restarts_to_go57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.56, %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.26, %if.then.8
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_huff(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %state = alloca %struct.working_state, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 59
  %1 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_encoder* %1 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %2, %struct.huff_entropy_encoder** %entropy, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 5
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 0
  %5 = load i8*, i8** %next_output_byte, align 8
  %next_output_byte2 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  store i8* %5, i8** %next_output_byte2, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 5
  %7 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %7, i32 0, i32 1
  %8 = load i64, i64* %free_in_buffer, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  store i64 %8, i64* %free_in_buffer4, align 8
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 1
  %10 = bitcast %struct.savable_state* %cur to i8*
  %11 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 3
  store %struct.jpeg_compress_struct* %12, %struct.jpeg_compress_struct** %cinfo5, align 8
  %call = call i32 @flush_bits(%struct.working_state* %state)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 22, i32* %msg_code, align 4
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %next_output_byte7 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  %20 = load i8*, i8** %next_output_byte7, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 5
  %22 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest8, align 8
  %next_output_byte9 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %22, i32 0, i32 0
  store i8* %20, i8** %next_output_byte9, align 8
  %free_in_buffer10 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  %23 = load i64, i64* %free_in_buffer10, align 8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8
  %dest11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 5
  %25 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest11, align 8
  %free_in_buffer12 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %25, i32 0, i32 1
  store i64 %23, i64* %free_in_buffer12, align 8
  %26 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8
  %saved13 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %26, i32 0, i32 1
  %cur14 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %27 = bitcast %struct.savable_state* %saved13 to i8*
  %28 = bitcast %struct.savable_state* %cur14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @htest_one_block(i16* %block, i32 %last_dc_val, i64* %dc_counts, i64* %ac_counts) #0 {
entry:
  %block.addr = alloca i16*, align 8
  %last_dc_val.addr = alloca i32, align 4
  %dc_counts.addr = alloca i64*, align 8
  %ac_counts.addr = alloca i64*, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store i16* %block, i16** %block.addr, align 8
  store i32 %last_dc_val, i32* %last_dc_val.addr, align 4
  store i64* %dc_counts, i64** %dc_counts.addr, align 8
  store i64* %ac_counts, i64** %ac_counts.addr, align 8
  %0 = load i16*, i16** %block.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %2 = load i32, i32* %last_dc_val.addr, align 4
  %sub = sub nsw i32 %conv, %2
  store i32 %sub, i32* %temp, align 4
  %3 = load i32, i32* %temp, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %temp, align 4
  %sub2 = sub nsw i32 0, %4
  store i32 %sub2, i32* %temp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, i32* %temp, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %nbits, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nbits, align 4
  %7 = load i32, i32* %temp, align 4
  %shr = ashr i32 %7, 1
  store i32 %shr, i32* %temp, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %nbits, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i64*, i64** %dc_counts.addr, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %9, i64 %idxprom
  %10 = load i64, i64* %arrayidx3, align 8
  %inc4 = add nsw i64 %10, 1
  store i64 %inc4, i64* %arrayidx3, align 8
  store i32 0, i32* %r, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %11 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %11, 64
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load i16*, i16** %block.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %14, i64 %idxprom9
  %15 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %15 to i32
  store i32 %conv11, i32* %temp, align 4
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  %16 = load i32, i32* %r, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %r, align 4
  br label %if.end.38

if.else:                                          ; preds = %for.body
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.19, %if.else
  %17 = load i32, i32* %r, align 4
  %cmp17 = icmp sgt i32 %17, 15
  br i1 %cmp17, label %while.body.19, label %while.end.23

while.body.19:                                    ; preds = %while.cond.16
  %18 = load i64*, i64** %ac_counts.addr, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %18, i64 240
  %19 = load i64, i64* %arrayidx20, align 8
  %inc21 = add nsw i64 %19, 1
  store i64 %inc21, i64* %arrayidx20, align 8
  %20 = load i32, i32* %r, align 4
  %sub22 = sub nsw i32 %20, 16
  store i32 %sub22, i32* %r, align 4
  br label %while.cond.16

while.end.23:                                     ; preds = %while.cond.16
  %21 = load i32, i32* %temp, align 4
  %cmp24 = icmp slt i32 %21, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %while.end.23
  %22 = load i32, i32* %temp, align 4
  %sub27 = sub nsw i32 0, %22
  store i32 %sub27, i32* %temp, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %while.end.23
  store i32 1, i32* %nbits, align 4
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.32, %if.end.28
  %23 = load i32, i32* %temp, align 4
  %shr30 = ashr i32 %23, 1
  store i32 %shr30, i32* %temp, align 4
  %tobool31 = icmp ne i32 %shr30, 0
  br i1 %tobool31, label %while.body.32, label %while.end.34

while.body.32:                                    ; preds = %while.cond.29
  %24 = load i32, i32* %nbits, align 4
  %inc33 = add nsw i32 %24, 1
  store i32 %inc33, i32* %nbits, align 4
  br label %while.cond.29

while.end.34:                                     ; preds = %while.cond.29
  %25 = load i32, i32* %r, align 4
  %shl = shl i32 %25, 4
  %26 = load i32, i32* %nbits, align 4
  %add = add nsw i32 %shl, %26
  %idxprom35 = sext i32 %add to i64
  %27 = load i64*, i64** %ac_counts.addr, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %27, i64 %idxprom35
  %28 = load i64, i64* %arrayidx36, align 8
  %inc37 = add nsw i64 %28, 1
  store i64 %inc37, i64* %arrayidx36, align 8
  store i32 0, i32* %r, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %while.end.34, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %29 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %29, 1
  store i32 %inc39, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %r, align 4
  %cmp40 = icmp sgt i32 %30, 0
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %for.end
  %31 = load i64*, i64** %ac_counts.addr, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %31, i64 0
  %32 = load i64, i64* %arrayidx43, align 8
  %inc44 = add nsw i64 %32, 1
  store i64 %inc44, i64* %arrayidx43, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %for.end
  ret void
}

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @emit_restart(%struct.working_state* %state, i32 %restart_num) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %restart_num.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8
  store i32 %restart_num, i32* %restart_num.addr, align 4
  %0 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %call = call i32 @flush_bits(%struct.working_state* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %next_output_byte = getelementptr inbounds %struct.working_state, %struct.working_state* %1, i32 0, i32 0
  %2 = load i8*, i8** %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8
  store i8 -1, i8* %2, align 1
  %3 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %free_in_buffer = getelementptr inbounds %struct.working_state, %struct.working_state* %3, i32 0, i32 1
  %4 = load i64, i64* %free_in_buffer, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %free_in_buffer, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %5 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %call2 = call i32 @dump_buffer(%struct.working_state* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %6 = load i32, i32* %restart_num.addr, align 4
  %add = add nsw i32 208, %6
  %conv = trunc i32 %add to i8
  %7 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %next_output_byte7 = getelementptr inbounds %struct.working_state, %struct.working_state* %7, i32 0, i32 0
  %8 = load i8*, i8** %next_output_byte7, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr8, i8** %next_output_byte7, align 8
  store i8 %conv, i8* %8, align 1
  %9 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %free_in_buffer9 = getelementptr inbounds %struct.working_state, %struct.working_state* %9, i32 0, i32 1
  %10 = load i64, i64* %free_in_buffer9, align 8
  %dec10 = add i64 %10, -1
  store i64 %dec10, i64* %free_in_buffer9, align 8
  %cmp11 = icmp eq i64 %dec10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.6
  %11 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %call14 = call i32 @dump_buffer(%struct.working_state* %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.6
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %12 = load i32, i32* %ci, align 4
  %13 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %13, i32 0, i32 3
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 41
  %15 = load i32, i32* %comps_in_scan, align 4
  %cmp19 = icmp slt i32 %12, %15
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %17, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.then.4, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_one_block(%struct.working_state* %state, i16* %block, i32 %last_dc_val, %struct.c_derived_tbl* %dctbl, %struct.c_derived_tbl* %actbl) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %block.addr = alloca i16*, align 8
  %last_dc_val.addr = alloca i32, align 4
  %dctbl.addr = alloca %struct.c_derived_tbl*, align 8
  %actbl.addr = alloca %struct.c_derived_tbl*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8
  store i16* %block, i16** %block.addr, align 8
  store i32 %last_dc_val, i32* %last_dc_val.addr, align 4
  store %struct.c_derived_tbl* %dctbl, %struct.c_derived_tbl** %dctbl.addr, align 8
  store %struct.c_derived_tbl* %actbl, %struct.c_derived_tbl** %actbl.addr, align 8
  %0 = load i16*, i16** %block.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %2 = load i32, i32* %last_dc_val.addr, align 4
  %sub = sub nsw i32 %conv, %2
  store i32 %sub, i32* %temp2, align 4
  store i32 %sub, i32* %temp, align 4
  %3 = load i32, i32* %temp, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %temp, align 4
  %sub2 = sub nsw i32 0, %4
  store i32 %sub2, i32* %temp, align 4
  %5 = load i32, i32* %temp2, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %temp2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* %temp, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %nbits, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %nbits, align 4
  %8 = load i32, i32* %temp, align 4
  %shr = ashr i32 %8, 1
  store i32 %shr, i32* %temp, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %10 = load i32, i32* %nbits, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dctbl.addr, align 8
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx3, align 4
  %13 = load i32, i32* %nbits, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dctbl.addr, align 8
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %14, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i64 %idxprom4
  %15 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %15 to i32
  %call = call i32 @emit_bits(%struct.working_state* %9, i32 %12, i32 %conv6)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %while.end
  %16 = load i32, i32* %nbits, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.9
  %17 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %18 = load i32, i32* %temp2, align 4
  %19 = load i32, i32* %nbits, align 4
  %call12 = call i32 @emit_bits(%struct.working_state* %17, i32 %18, i32 %19)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.11
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.9
  store i32 0, i32* %r, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %20 = load i32, i32* %k, align 4
  %cmp17 = icmp slt i32 %20, 64
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom19
  %22 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load i16*, i16** %block.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %23, i64 %idxprom21
  %24 = load i16, i16* %arrayidx22, align 2
  %conv23 = sext i16 %24 to i32
  store i32 %conv23, i32* %temp, align 4
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %for.body
  %25 = load i32, i32* %r, align 4
  %inc27 = add nsw i32 %25, 1
  store i32 %inc27, i32* %r, align 4
  br label %if.end.70

if.else:                                          ; preds = %for.body
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end.40, %if.else
  %26 = load i32, i32* %r, align 4
  %cmp29 = icmp sgt i32 %26, 15
  br i1 %cmp29, label %while.body.31, label %while.end.42

while.body.31:                                    ; preds = %while.cond.28
  %27 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %28 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8
  %ehufco32 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %28, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco32, i32 0, i64 240
  %29 = load i32, i32* %arrayidx33, align 4
  %30 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8
  %ehufsi34 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %30, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi34, i32 0, i64 240
  %31 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %31 to i32
  %call37 = call i32 @emit_bits(%struct.working_state* %27, i32 %29, i32 %conv36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %while.body.31
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %while.body.31
  %32 = load i32, i32* %r, align 4
  %sub41 = sub nsw i32 %32, 16
  store i32 %sub41, i32* %r, align 4
  br label %while.cond.28

while.end.42:                                     ; preds = %while.cond.28
  %33 = load i32, i32* %temp, align 4
  store i32 %33, i32* %temp2, align 4
  %34 = load i32, i32* %temp, align 4
  %cmp43 = icmp slt i32 %34, 0
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %while.end.42
  %35 = load i32, i32* %temp, align 4
  %sub46 = sub nsw i32 0, %35
  store i32 %sub46, i32* %temp, align 4
  %36 = load i32, i32* %temp2, align 4
  %dec47 = add nsw i32 %36, -1
  store i32 %dec47, i32* %temp2, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %while.end.42
  store i32 1, i32* %nbits, align 4
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.52, %if.end.48
  %37 = load i32, i32* %temp, align 4
  %shr50 = ashr i32 %37, 1
  store i32 %shr50, i32* %temp, align 4
  %tobool51 = icmp ne i32 %shr50, 0
  br i1 %tobool51, label %while.body.52, label %while.end.54

while.body.52:                                    ; preds = %while.cond.49
  %38 = load i32, i32* %nbits, align 4
  %inc53 = add nsw i32 %38, 1
  store i32 %inc53, i32* %nbits, align 4
  br label %while.cond.49

while.end.54:                                     ; preds = %while.cond.49
  %39 = load i32, i32* %r, align 4
  %shl = shl i32 %39, 4
  %40 = load i32, i32* %nbits, align 4
  %add = add nsw i32 %shl, %40
  store i32 %add, i32* %i, align 4
  %41 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %42 to i64
  %43 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8
  %ehufco56 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %43, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco56, i32 0, i64 %idxprom55
  %44 = load i32, i32* %arrayidx57, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %45 to i64
  %46 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8
  %ehufsi59 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %46, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi59, i32 0, i64 %idxprom58
  %47 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %47 to i32
  %call62 = call i32 @emit_bits(%struct.working_state* %41, i32 %44, i32 %conv61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %while.end.54
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %while.end.54
  %48 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %49 = load i32, i32* %temp2, align 4
  %50 = load i32, i32* %nbits, align 4
  %call66 = call i32 @emit_bits(%struct.working_state* %48, i32 %49, i32 %50)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.65
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.65
  store i32 0, i32* %r, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %51 = load i32, i32* %k, align 4
  %inc71 = add nsw i32 %51, 1
  store i32 %inc71, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %r, align 4
  %cmp72 = icmp sgt i32 %52, 0
  br i1 %cmp72, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %for.end
  %53 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %54 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8
  %ehufco75 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %54, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco75, i32 0, i64 0
  %55 = load i32, i32* %arrayidx76, align 4
  %56 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8
  %ehufsi77 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %56, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi77, i32 0, i64 0
  %57 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %57 to i32
  %call80 = call i32 @emit_bits(%struct.working_state* %53, i32 %55, i32 %conv79)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %if.then.74
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.then.74
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.then.82, %if.then.68, %if.then.64, %if.then.39, %if.then.14, %if.then.8
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @flush_bits(%struct.working_state* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8
  %0 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %call = call i32 @emit_bits(%struct.working_state* %0, i32 127, i32 7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %1, i32 0, i32 2
  %put_buffer = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur, i32 0, i32 0
  store i64 0, i64* %put_buffer, align 8
  %2 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cur1 = getelementptr inbounds %struct.working_state, %struct.working_state* %2, i32 0, i32 2
  %put_bits = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur1, i32 0, i32 1
  store i32 0, i32* %put_bits, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @dump_buffer(%struct.working_state* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8
  %0 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %0, i32 0, i32 3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 5
  %2 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8
  store %struct.jpeg_destination_mgr* %2, %struct.jpeg_destination_mgr** %dest, align 8
  %3 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %3, i32 0, i32 3
  %4 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8
  %5 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cinfo2 = getelementptr inbounds %struct.working_state, %struct.working_state* %5, i32 0, i32 3
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo2, align 8
  %call = call i32 %4(%struct.jpeg_compress_struct* %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %7, i32 0, i32 0
  %8 = load i8*, i8** %next_output_byte, align 8
  %9 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %next_output_byte3 = getelementptr inbounds %struct.working_state, %struct.working_state* %9, i32 0, i32 0
  store i8* %8, i8** %next_output_byte3, align 8
  %10 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %10, i32 0, i32 1
  %11 = load i64, i64* %free_in_buffer, align 8
  %12 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, %struct.working_state* %12, i32 0, i32 1
  store i64 %11, i64* %free_in_buffer4, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @emit_bits(%struct.working_state* %state, i32 %code, i32 %size) #3 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %code.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, i64* %put_buffer, align 8
  %1 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %1, i32 0, i32 2
  %put_bits1 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur, i32 0, i32 1
  %2 = load i32, i32* %put_bits1, align 4
  store i32 %2, i32* %put_bits, align 4
  %3 = load i32, i32* %size.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %4, i32 0, i32 3
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 5
  store i32 39, i32* %msg_code, align 4
  %7 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.working_state, %struct.working_state* %7, i32 0, i32 3
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %11 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.working_state, %struct.working_state* %11, i32 0, i32 3
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo5, align 8
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  call void %10(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %size.addr, align 4
  %sh_prom = zext i32 %14 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %15 = load i64, i64* %put_buffer, align 8
  %and = and i64 %15, %sub
  store i64 %and, i64* %put_buffer, align 8
  %16 = load i32, i32* %size.addr, align 4
  %17 = load i32, i32* %put_bits, align 4
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %put_bits, align 4
  %18 = load i32, i32* %put_bits, align 4
  %sub6 = sub nsw i32 24, %18
  %19 = load i64, i64* %put_buffer, align 8
  %sh_prom7 = zext i32 %sub6 to i64
  %shl8 = shl i64 %19, %sh_prom7
  store i64 %shl8, i64* %put_buffer, align 8
  %20 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cur9 = getelementptr inbounds %struct.working_state, %struct.working_state* %20, i32 0, i32 2
  %put_buffer10 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur9, i32 0, i32 0
  %21 = load i64, i64* %put_buffer10, align 8
  %22 = load i64, i64* %put_buffer, align 8
  %or = or i64 %22, %21
  store i64 %or, i64* %put_buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.end
  %23 = load i32, i32* %put_bits, align 4
  %cmp11 = icmp sge i32 %23, 8
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i64, i64* %put_buffer, align 8
  %shr = ashr i64 %24, 16
  %and13 = and i64 %shr, 255
  %conv14 = trunc i64 %and13 to i32
  store i32 %conv14, i32* %c, align 4
  %25 = load i32, i32* %c, align 4
  %conv15 = trunc i32 %25 to i8
  %26 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %next_output_byte = getelementptr inbounds %struct.working_state, %struct.working_state* %26, i32 0, i32 0
  %27 = load i8*, i8** %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8
  store i8 %conv15, i8* %27, align 1
  %28 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %free_in_buffer = getelementptr inbounds %struct.working_state, %struct.working_state* %28, i32 0, i32 1
  %29 = load i64, i64* %free_in_buffer, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %free_in_buffer, align 8
  %cmp16 = icmp eq i64 %dec, 0
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %while.body
  %30 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %call = call i32 @dump_buffer(%struct.working_state* %30)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %while.body
  %31 = load i32, i32* %c, align 4
  %cmp22 = icmp eq i32 %31, 255
  br i1 %cmp22, label %if.then.24, label %if.end.37

if.then.24:                                       ; preds = %if.end.21
  %32 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %next_output_byte25 = getelementptr inbounds %struct.working_state, %struct.working_state* %32, i32 0, i32 0
  %33 = load i8*, i8** %next_output_byte25, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr26, i8** %next_output_byte25, align 8
  store i8 0, i8* %33, align 1
  %34 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %free_in_buffer27 = getelementptr inbounds %struct.working_state, %struct.working_state* %34, i32 0, i32 1
  %35 = load i64, i64* %free_in_buffer27, align 8
  %dec28 = add i64 %35, -1
  store i64 %dec28, i64* %free_in_buffer27, align 8
  %cmp29 = icmp eq i64 %dec28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.then.24
  %36 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %call32 = call i32 @dump_buffer(%struct.working_state* %36)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.21
  %37 = load i64, i64* %put_buffer, align 8
  %shl38 = shl i64 %37, 8
  store i64 %shl38, i64* %put_buffer, align 8
  %38 = load i32, i32* %put_bits, align 4
  %sub39 = sub nsw i32 %38, 8
  store i32 %sub39, i32* %put_bits, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i64, i64* %put_buffer, align 8
  %40 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cur40 = getelementptr inbounds %struct.working_state, %struct.working_state* %40, i32 0, i32 2
  %put_buffer41 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur40, i32 0, i32 0
  store i64 %39, i64* %put_buffer41, align 8
  %41 = load i32, i32* %put_bits, align 4
  %42 = load %struct.working_state*, %struct.working_state** %state.addr, align 8
  %cur42 = getelementptr inbounds %struct.working_state, %struct.working_state* %42, i32 0, i32 2
  %put_bits43 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur42, i32 0, i32 1
  store i32 %41, i32* %put_bits43, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.34, %if.then.19
  %43 = load i32, i32* %retval
  ret i32 %43
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
