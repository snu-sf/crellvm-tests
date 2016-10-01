; ModuleID = './MultiSource.Benchmarks.MiBench/126.consumer-jpeg.jdhuff.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], %struct.JHUFF_TBL*, [256 x i32], [256 x i8] }
%struct.bitread_working_state = type { i8*, i64, i32, i64, i32, %struct.jpeg_decompress_struct*, i32* }
%struct.huff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*] }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { [4 x i32] }

@extend_test = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 16
@extend_offset = internal constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %cinfo, %struct.JHUFF_TBL* %htbl, %struct.d_derived_tbl** %pdtbl) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %htbl.addr = alloca %struct.JHUFF_TBL*, align 8
  %pdtbl.addr = alloca %struct.d_derived_tbl**, align 8
  %dtbl = alloca %struct.d_derived_tbl*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %si = alloca i32, align 4
  %lookbits = alloca i32, align 4
  %ctr = alloca i32, align 4
  %huffsize = alloca [257 x i8], align 16
  %huffcode = alloca [257 x i32], align 16
  %code = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store %struct.JHUFF_TBL* %htbl, %struct.JHUFF_TBL** %htbl.addr, align 8
  store %struct.d_derived_tbl** %pdtbl, %struct.d_derived_tbl*** %pdtbl.addr, align 8
  %0 = load %struct.d_derived_tbl**, %struct.d_derived_tbl*** %pdtbl.addr, align 8
  %1 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %0, align 8
  %cmp = icmp eq %struct.d_derived_tbl* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 1640)
  %7 = bitcast i8* %call to %struct.d_derived_tbl*
  %8 = load %struct.d_derived_tbl**, %struct.d_derived_tbl*** %pdtbl.addr, align 8
  store %struct.d_derived_tbl* %7, %struct.d_derived_tbl** %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.d_derived_tbl**, %struct.d_derived_tbl*** %pdtbl.addr, align 8
  %10 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %9, align 8
  store %struct.d_derived_tbl* %10, %struct.d_derived_tbl** %dtbl, align 8
  %11 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %12 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8
  %pub = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %12, i32 0, i32 3
  store %struct.JHUFF_TBL* %11, %struct.JHUFF_TBL** %pub, align 8
  store i32 0, i32* %p, align 4
  store i32 1, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.end
  %13 = load i32, i32* %l, align 4
  %cmp1 = icmp sle i32 %13, 16
  br i1 %cmp1, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %l, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %16, i32 0, i32 0
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %cmp3 = icmp sle i32 %14, %conv
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %18 = load i32, i32* %l, align 4
  %conv6 = trunc i32 %18 to i8
  %19 = load i32, i32* %p, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %p, align 4
  %idxprom7 = sext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom7
  store i8 %conv6, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %20 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %20, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %21 = load i32, i32* %l, align 4
  %inc11 = add nsw i32 %21, 1
  store i32 %inc11, i32* %l, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %22 = load i32, i32* %p, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1
  store i32 0, i32* %code, align 4
  %arrayidx15 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 0
  %23 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %23 to i32
  store i32 %conv16, i32* %si, align 4
  store i32 0, i32* %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end.12
  %24 = load i32, i32* %p, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom17
  %25 = load i8, i8* %arrayidx18, align 1
  %tobool = icmp ne i8 %25, 0
  br i1 %tobool, label %while.body, label %while.end.31

while.body:                                       ; preds = %while.cond
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.25, %while.body
  %26 = load i32, i32* %p, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom20
  %27 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %27 to i32
  %28 = load i32, i32* %si, align 4
  %cmp23 = icmp eq i32 %conv22, %28
  br i1 %cmp23, label %while.body.25, label %while.end

while.body.25:                                    ; preds = %while.cond.19
  %29 = load i32, i32* %code, align 4
  %30 = load i32, i32* %p, align 4
  %inc26 = add nsw i32 %30, 1
  store i32 %inc26, i32* %p, align 4
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom27
  store i32 %29, i32* %arrayidx28, align 4
  %31 = load i32, i32* %code, align 4
  %inc29 = add i32 %31, 1
  store i32 %inc29, i32* %code, align 4
  br label %while.cond.19

while.end:                                        ; preds = %while.cond.19
  %32 = load i32, i32* %code, align 4
  %shl = shl i32 %32, 1
  store i32 %shl, i32* %code, align 4
  %33 = load i32, i32* %si, align 4
  %inc30 = add nsw i32 %33, 1
  store i32 %inc30, i32* %si, align 4
  br label %while.cond

while.end.31:                                     ; preds = %while.cond
  store i32 0, i32* %p, align 4
  store i32 1, i32* %l, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.61, %while.end.31
  %34 = load i32, i32* %l, align 4
  %cmp33 = icmp sle i32 %34, 16
  br i1 %cmp33, label %for.body.35, label %for.end.63

for.body.35:                                      ; preds = %for.cond.32
  %35 = load i32, i32* %l, align 4
  %idxprom36 = sext i32 %35 to i64
  %36 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %bits37 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %36, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [17 x i8], [17 x i8]* %bits37, i32 0, i64 %idxprom36
  %37 = load i8, i8* %arrayidx38, align 1
  %tobool39 = icmp ne i8 %37, 0
  br i1 %tobool39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %for.body.35
  %38 = load i32, i32* %p, align 4
  %39 = load i32, i32* %l, align 4
  %idxprom41 = sext i32 %39 to i64
  %40 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8
  %valptr = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %40, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [17 x i32], [17 x i32]* %valptr, i32 0, i64 %idxprom41
  store i32 %38, i32* %arrayidx42, align 4
  %41 = load i32, i32* %p, align 4
  %idxprom43 = sext i32 %41 to i64
  %arrayidx44 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom43
  %42 = load i32, i32* %arrayidx44, align 4
  %conv45 = zext i32 %42 to i64
  %43 = load i32, i32* %l, align 4
  %idxprom46 = sext i32 %43 to i64
  %44 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8
  %mincode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %44, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [17 x i64], [17 x i64]* %mincode, i32 0, i64 %idxprom46
  store i64 %conv45, i64* %arrayidx47, align 8
  %45 = load i32, i32* %l, align 4
  %idxprom48 = sext i32 %45 to i64
  %46 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %bits49 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %46, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [17 x i8], [17 x i8]* %bits49, i32 0, i64 %idxprom48
  %47 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %47 to i32
  %48 = load i32, i32* %p, align 4
  %add = add nsw i32 %48, %conv51
  store i32 %add, i32* %p, align 4
  %49 = load i32, i32* %p, align 4
  %sub = sub nsw i32 %49, 1
  %idxprom52 = sext i32 %sub to i64
  %arrayidx53 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom52
  %50 = load i32, i32* %arrayidx53, align 4
  %conv54 = zext i32 %50 to i64
  %51 = load i32, i32* %l, align 4
  %idxprom55 = sext i32 %51 to i64
  %52 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8
  %maxcode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %52, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode, i32 0, i64 %idxprom55
  store i64 %conv54, i64* %arrayidx56, align 8
  br label %if.end.60

if.else:                                          ; preds = %for.body.35
  %53 = load i32, i32* %l, align 4
  %idxprom57 = sext i32 %53 to i64
  %54 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8
  %maxcode58 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %54, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode58, i32 0, i64 %idxprom57
  store i64 -1, i64* %arrayidx59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.40
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %55 = load i32, i32* %l, align 4
  %inc62 = add nsw i32 %55, 1
  store i32 %inc62, i32* %l, align 4
  br label %for.cond.32

for.end.63:                                       ; preds = %for.cond.32
  %56 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8
  %maxcode64 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %56, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode64, i32 0, i64 17
  store i64 1048575, i64* %arrayidx65, align 8
  %57 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %57, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i32 0
  %58 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %58, i8 0, i64 1024, i32 1, i1 false)
  store i32 0, i32* %p, align 4
  store i32 1, i32* %l, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.102, %for.end.63
  %59 = load i32, i32* %l, align 4
  %cmp67 = icmp sle i32 %59, 8
  br i1 %cmp67, label %for.body.69, label %for.end.104

for.body.69:                                      ; preds = %for.cond.66
  store i32 1, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.98, %for.body.69
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %l, align 4
  %idxprom71 = sext i32 %61 to i64
  %62 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %bits72 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %62, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [17 x i8], [17 x i8]* %bits72, i32 0, i64 %idxprom71
  %63 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %63 to i32
  %cmp75 = icmp sle i32 %60, %conv74
  br i1 %cmp75, label %for.body.77, label %for.end.101

for.body.77:                                      ; preds = %for.cond.70
  %64 = load i32, i32* %p, align 4
  %idxprom78 = sext i32 %64 to i64
  %arrayidx79 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom78
  %65 = load i32, i32* %arrayidx79, align 4
  %66 = load i32, i32* %l, align 4
  %sub80 = sub nsw i32 8, %66
  %shl81 = shl i32 %65, %sub80
  store i32 %shl81, i32* %lookbits, align 4
  %67 = load i32, i32* %l, align 4
  %sub82 = sub nsw i32 8, %67
  %shl83 = shl i32 1, %sub82
  store i32 %shl83, i32* %ctr, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.96, %for.body.77
  %68 = load i32, i32* %ctr, align 4
  %cmp85 = icmp sgt i32 %68, 0
  br i1 %cmp85, label %for.body.87, label %for.end.97

for.body.87:                                      ; preds = %for.cond.84
  %69 = load i32, i32* %l, align 4
  %70 = load i32, i32* %lookbits, align 4
  %idxprom88 = sext i32 %70 to i64
  %71 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8
  %look_nbits89 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %71, i32 0, i32 4
  %arrayidx90 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits89, i32 0, i64 %idxprom88
  store i32 %69, i32* %arrayidx90, align 4
  %72 = load i32, i32* %p, align 4
  %idxprom91 = sext i32 %72 to i64
  %73 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %73, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom91
  %74 = load i8, i8* %arrayidx92, align 1
  %75 = load i32, i32* %lookbits, align 4
  %idxprom93 = sext i32 %75 to i64
  %76 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %76, i32 0, i32 5
  %arrayidx94 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom93
  store i8 %74, i8* %arrayidx94, align 1
  %77 = load i32, i32* %lookbits, align 4
  %inc95 = add nsw i32 %77, 1
  store i32 %inc95, i32* %lookbits, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.87
  %78 = load i32, i32* %ctr, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %ctr, align 4
  br label %for.cond.84

for.end.97:                                       ; preds = %for.cond.84
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %79 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %79, 1
  store i32 %inc99, i32* %i, align 4
  %80 = load i32, i32* %p, align 4
  %inc100 = add nsw i32 %80, 1
  store i32 %inc100, i32* %p, align 4
  br label %for.cond.70

for.end.101:                                      ; preds = %for.cond.70
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.101
  %81 = load i32, i32* %l, align 4
  %inc103 = add nsw i32 %81, 1
  store i32 %inc103, i32* %l, align 4
  br label %for.cond.66

for.end.104:                                      ; preds = %for.cond.66
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %state, i64 %get_buffer, i32 %bits_left, i32 %nbits) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.bitread_working_state*, align 8
  %get_buffer.addr = alloca i64, align 8
  %bits_left.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %c = alloca i32, align 4
  store %struct.bitread_working_state* %state, %struct.bitread_working_state** %state.addr, align 8
  store i64 %get_buffer, i64* %get_buffer.addr, align 8
  store i32 %bits_left, i32* %bits_left.addr, align 4
  store i32 %nbits, i32* %nbits.addr, align 4
  %0 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %next_input_byte1 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %0, i32 0, i32 0
  %1 = load i8*, i8** %next_input_byte1, align 8
  store i8* %1, i8** %next_input_byte, align 8
  %2 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %2, i32 0, i32 1
  %3 = load i64, i64* %bytes_in_buffer2, align 8
  store i64 %3, i64* %bytes_in_buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.59, %entry
  %4 = load i32, i32* %bits_left.addr, align 4
  %cmp = icmp slt i32 %4, 25
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %unread_marker = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %5, i32 0, i32 2
  %6 = load i32, i32* %unread_marker, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %no_more_data

if.end:                                           ; preds = %while.body
  %7 = load i64, i64* %bytes_in_buffer, align 8
  %cmp4 = icmp eq i64 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %8, i32 0, i32 5
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 5
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 3
  %11 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8
  %12 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %12, i32 0, i32 5
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo6, align 8
  %call = call i32 %11(%struct.jpeg_decompress_struct* %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  %14 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo9 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %14, i32 0, i32 5
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo9, align 8
  %src10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 5
  %16 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src10, align 8
  %next_input_byte11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %16, i32 0, i32 0
  %17 = load i8*, i8** %next_input_byte11, align 8
  store i8* %17, i8** %next_input_byte, align 8
  %18 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo12 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %18, i32 0, i32 5
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo12, align 8
  %src13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 5
  %20 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src13, align 8
  %bytes_in_buffer14 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %20, i32 0, i32 1
  %21 = load i64, i64* %bytes_in_buffer14, align 8
  store i64 %21, i64* %bytes_in_buffer, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.8, %if.end
  %22 = load i64, i64* %bytes_in_buffer, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8
  %23 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8
  %24 = load i8, i8* %23, align 1
  %conv = zext i8 %24 to i32
  store i32 %conv, i32* %c, align 4
  %25 = load i32, i32* %c, align 4
  %cmp16 = icmp eq i32 %25, 255
  br i1 %cmp16, label %if.then.18, label %if.end.59

if.then.18:                                       ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.18
  %26 = load i64, i64* %bytes_in_buffer, align 8
  %cmp19 = icmp eq i64 %26, 0
  br i1 %cmp19, label %if.then.21, label %if.end.36

if.then.21:                                       ; preds = %do.body
  %27 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo22 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %27, i32 0, i32 5
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo22, align 8
  %src23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 5
  %29 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src23, align 8
  %fill_input_buffer24 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %29, i32 0, i32 3
  %30 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer24, align 8
  %31 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo25 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %31, i32 0, i32 5
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo25, align 8
  %call26 = call i32 %30(%struct.jpeg_decompress_struct* %32)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.21
  %33 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo30 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %33, i32 0, i32 5
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo30, align 8
  %src31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 5
  %35 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src31, align 8
  %next_input_byte32 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %35, i32 0, i32 0
  %36 = load i8*, i8** %next_input_byte32, align 8
  store i8* %36, i8** %next_input_byte, align 8
  %37 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo33 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %37, i32 0, i32 5
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo33, align 8
  %src34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 5
  %39 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src34, align 8
  %bytes_in_buffer35 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %39, i32 0, i32 1
  %40 = load i64, i64* %bytes_in_buffer35, align 8
  store i64 %40, i64* %bytes_in_buffer, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.29, %do.body
  %41 = load i64, i64* %bytes_in_buffer, align 8
  %dec37 = add i64 %41, -1
  store i64 %dec37, i64* %bytes_in_buffer, align 8
  %42 = load i8*, i8** %next_input_byte, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr38, i8** %next_input_byte, align 8
  %43 = load i8, i8* %42, align 1
  %conv39 = zext i8 %43 to i32
  store i32 %conv39, i32* %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.36
  %44 = load i32, i32* %c, align 4
  %cmp40 = icmp eq i32 %44, 255
  br i1 %cmp40, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %45 = load i32, i32* %c, align 4
  %cmp42 = icmp eq i32 %45, 0
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %do.end
  store i32 255, i32* %c, align 4
  br label %if.end.58

if.else:                                          ; preds = %do.end
  %46 = load i32, i32* %c, align 4
  %47 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %unread_marker45 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %47, i32 0, i32 2
  store i32 %46, i32* %unread_marker45, align 4
  br label %no_more_data

no_more_data:                                     ; preds = %if.else, %if.then
  %48 = load i32, i32* %bits_left.addr, align 4
  %49 = load i32, i32* %nbits.addr, align 4
  %cmp46 = icmp sge i32 %48, %49
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %no_more_data
  br label %while.end

if.end.49:                                        ; preds = %no_more_data
  %50 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %50, i32 0, i32 6
  %51 = load i32*, i32** %printed_eod_ptr, align 8
  %52 = load i32, i32* %51, align 4
  %tobool50 = icmp ne i32 %52, 0
  br i1 %tobool50, label %if.end.57, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %53 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo52 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %53, i32 0, i32 5
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo52, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 5
  store i32 113, i32* %msg_code, align 4
  %56 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo53 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %56, i32 0, i32 5
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo53, align 8
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err54, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 1
  %59 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %60 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo55 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %60, i32 0, i32 5
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo55, align 8
  %62 = bitcast %struct.jpeg_decompress_struct* %61 to %struct.jpeg_common_struct*
  call void %59(%struct.jpeg_common_struct* %62, i32 -1)
  %63 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %printed_eod_ptr56 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %63, i32 0, i32 6
  %64 = load i32*, i32** %printed_eod_ptr56, align 8
  store i32 1, i32* %64, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.51, %if.end.49
  store i32 0, i32* %c, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.44
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.15
  %65 = load i64, i64* %get_buffer.addr, align 8
  %shl = shl i64 %65, 8
  %66 = load i32, i32* %c, align 4
  %conv60 = sext i32 %66 to i64
  %or = or i64 %shl, %conv60
  store i64 %or, i64* %get_buffer.addr, align 8
  %67 = load i32, i32* %bits_left.addr, align 4
  %add = add nsw i32 %67, 8
  store i32 %add, i32* %bits_left.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.48, %while.cond
  %68 = load i8*, i8** %next_input_byte, align 8
  %69 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %next_input_byte61 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %69, i32 0, i32 0
  store i8* %68, i8** %next_input_byte61, align 8
  %70 = load i64, i64* %bytes_in_buffer, align 8
  %71 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %bytes_in_buffer62 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %71, i32 0, i32 1
  store i64 %70, i64* %bytes_in_buffer62, align 8
  %72 = load i64, i64* %get_buffer.addr, align 8
  %73 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %73, i32 0, i32 3
  store i64 %72, i64* %get_buffer63, align 8
  %74 = load i32, i32* %bits_left.addr, align 4
  %75 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %75, i32 0, i32 4
  store i32 %74, i32* %bits_left64, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.28, %if.then.7
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define i32 @jpeg_huff_decode(%struct.bitread_working_state* %state, i64 %get_buffer, i32 %bits_left, %struct.d_derived_tbl* %htbl, i32 %min_bits) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.bitread_working_state*, align 8
  %get_buffer.addr = alloca i64, align 8
  %bits_left.addr = alloca i32, align 4
  %htbl.addr = alloca %struct.d_derived_tbl*, align 8
  %min_bits.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %code = alloca i64, align 8
  store %struct.bitread_working_state* %state, %struct.bitread_working_state** %state.addr, align 8
  store i64 %get_buffer, i64* %get_buffer.addr, align 8
  store i32 %bits_left, i32* %bits_left.addr, align 4
  store %struct.d_derived_tbl* %htbl, %struct.d_derived_tbl** %htbl.addr, align 8
  store i32 %min_bits, i32* %min_bits.addr, align 4
  %0 = load i32, i32* %min_bits.addr, align 4
  store i32 %0, i32* %l, align 4
  %1 = load i32, i32* %bits_left.addr, align 4
  %2 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %4 = load i64, i64* %get_buffer.addr, align 8
  %5 = load i32, i32* %bits_left.addr, align 4
  %6 = load i32, i32* %l, align 4
  %call = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %3, i64 %4, i32 %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %get_buffer2 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %7, i32 0, i32 3
  %8 = load i64, i64* %get_buffer2, align 8
  store i64 %8, i64* %get_buffer.addr, align 8
  %9 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %bits_left3 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %9, i32 0, i32 4
  %10 = load i32, i32* %bits_left3, align 4
  store i32 %10, i32* %bits_left.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %11 = load i64, i64* %get_buffer.addr, align 8
  %12 = load i32, i32* %l, align 4
  %13 = load i32, i32* %bits_left.addr, align 4
  %sub = sub nsw i32 %13, %12
  store i32 %sub, i32* %bits_left.addr, align 4
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %11, %sh_prom
  %conv = trunc i64 %shr to i32
  %14 = load i32, i32* %l, align 4
  %shl = shl i32 1, %14
  %sub5 = sub nsw i32 %shl, 1
  %and = and i32 %conv, %sub5
  %conv6 = sext i32 %and to i64
  store i64 %conv6, i64* %code, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end.4
  %15 = load i64, i64* %code, align 8
  %16 = load i32, i32* %l, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8
  %maxcode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %17, i32 0, i32 1
  %arrayidx = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode, i32 0, i64 %idxprom
  %18 = load i64, i64* %arrayidx, align 8
  %cmp7 = icmp sgt i64 %15, %18
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i64, i64* %code, align 8
  %shl9 = shl i64 %19, 1
  store i64 %shl9, i64* %code, align 8
  %20 = load i32, i32* %bits_left.addr, align 4
  %cmp10 = icmp slt i32 %20, 1
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %while.body
  %21 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %22 = load i64, i64* %get_buffer.addr, align 8
  %23 = load i32, i32* %bits_left.addr, align 4
  %call13 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %21, i64 %22, i32 %23, i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  %24 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %get_buffer17 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %24, i32 0, i32 3
  %25 = load i64, i64* %get_buffer17, align 8
  store i64 %25, i64* %get_buffer.addr, align 8
  %26 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %bits_left18 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %26, i32 0, i32 4
  %27 = load i32, i32* %bits_left18, align 4
  store i32 %27, i32* %bits_left.addr, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %while.body
  %28 = load i64, i64* %get_buffer.addr, align 8
  %29 = load i32, i32* %bits_left.addr, align 4
  %sub20 = sub nsw i32 %29, 1
  store i32 %sub20, i32* %bits_left.addr, align 4
  %sh_prom21 = zext i32 %sub20 to i64
  %shr22 = ashr i64 %28, %sh_prom21
  %conv23 = trunc i64 %shr22 to i32
  %and24 = and i32 %conv23, 1
  %conv25 = sext i32 %and24 to i64
  %30 = load i64, i64* %code, align 8
  %or = or i64 %30, %conv25
  store i64 %or, i64* %code, align 8
  %31 = load i32, i32* %l, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %l, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %32 = load i64, i64* %get_buffer.addr, align 8
  %33 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %get_buffer26 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %33, i32 0, i32 3
  store i64 %32, i64* %get_buffer26, align 8
  %34 = load i32, i32* %bits_left.addr, align 4
  %35 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %bits_left27 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %35, i32 0, i32 4
  store i32 %34, i32* %bits_left27, align 4
  %36 = load i32, i32* %l, align 4
  %cmp28 = icmp sgt i32 %36, 16
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %while.end
  %37 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %37, i32 0, i32 5
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 5
  store i32 114, i32* %msg_code, align 4
  %40 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo31 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %40, i32 0, i32 5
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo31, align 8
  %err32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err32, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 1
  %43 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %44 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8
  %cinfo33 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %44, i32 0, i32 5
  %45 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo33, align 8
  %46 = bitcast %struct.jpeg_decompress_struct* %45 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* %46, i32 -1)
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %while.end
  %47 = load i32, i32* %l, align 4
  %idxprom35 = sext i32 %47 to i64
  %48 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8
  %valptr = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %48, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [17 x i32], [17 x i32]* %valptr, i32 0, i64 %idxprom35
  %49 = load i32, i32* %arrayidx36, align 4
  %50 = load i64, i64* %code, align 8
  %51 = load i32, i32* %l, align 4
  %idxprom37 = sext i32 %51 to i64
  %52 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8
  %mincode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %52, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [17 x i64], [17 x i64]* %mincode, i32 0, i64 %idxprom37
  %53 = load i64, i64* %arrayidx38, align 8
  %sub39 = sub nsw i64 %50, %53
  %conv40 = trunc i64 %sub39 to i32
  %add = add nsw i32 %49, %conv40
  %idxprom41 = sext i32 %add to i64
  %54 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8
  %pub = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %54, i32 0, i32 3
  %55 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %pub, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %55, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom41
  %56 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %56 to i32
  store i32 %conv43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.30, %if.then.15, %if.then.1
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define void @jinit_huff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %1, i32 0, i32 0
  %2 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %4 = bitcast %struct.jpeg_decompress_struct* %3 to %struct.jpeg_common_struct*
  %call = call i8* %2(%struct.jpeg_common_struct* %4, i32 1, i64 120)
  %5 = bitcast i8* %call to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %5, %struct.huff_entropy_decoder** %entropy, align 8
  %6 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %7 = bitcast %struct.huff_entropy_decoder* %6 to %struct.jpeg_entropy_decoder*
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 79
  store %struct.jpeg_entropy_decoder* %7, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %9 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %pub = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %9, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*)* @start_pass_huff_decoder, void (%struct.jpeg_decompress_struct*)** %start_pass, align 8
  %10 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %pub2 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %10, i32 0, i32 0
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub2, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %11, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %13, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom
  store %struct.d_derived_tbl* null, %struct.d_derived_tbl** %arrayidx, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %14 to i64
  %15 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %15, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom3
  store %struct.d_derived_tbl* null, %struct.d_derived_tbl** %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_huff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  %dctbl = alloca i32, align 4
  %actbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 79
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_decoder* %1 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %2, %struct.huff_entropy_decoder** %entropy, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 68
  %4 = load i32, i32* %Ss, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 69
  %6 = load i32, i32* %Se, align 4
  %cmp2 = icmp ne i32 %6, 63
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 70
  %8 = load i32, i32* %Ah, align 4
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 71
  %10 = load i32, i32* %Al, align 4
  %cmp6 = icmp ne i32 %10, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 118, i32* %msg_code, align 4
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 1
  %15 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %17 = bitcast %struct.jpeg_decompress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.5
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %ci, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 62
  %20 = load i32, i32* %comps_in_scan, align 4
  %cmp8 = icmp slt i32 %18, %20
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8
  store %struct.jpeg_component_info* %23, %struct.jpeg_component_info** %compptr, align 8
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 5
  %25 = load i32, i32* %dc_tbl_no, align 4
  store i32 %25, i32* %dctbl, align 4
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 6
  %27 = load i32, i32* %ac_tbl_no, align 4
  store i32 %27, i32* %actbl, align 4
  %28 = load i32, i32* %dctbl, align 4
  %cmp9 = icmp slt i32 %28, 0
  br i1 %cmp9, label %if.then.16, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %for.body
  %29 = load i32, i32* %dctbl, align 4
  %cmp11 = icmp sge i32 %29, 4
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %30 = load i32, i32* %dctbl, align 4
  %idxprom13 = sext i32 %30 to i64
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 40
  %arrayidx14 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom13
  %32 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx14, align 8
  %cmp15 = icmp eq %struct.JHUFF_TBL* %32, null
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %for.body
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8
  %msg_code18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 49, i32* %msg_code18, align 4
  %35 = load i32, i32* %dctbl, align 4
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %35, i32* %arrayidx20, align 4
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err21, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %40 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %42 = bitcast %struct.jpeg_decompress_struct* %41 to %struct.jpeg_common_struct*
  call void %40(%struct.jpeg_common_struct* %42)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.16, %lor.lhs.false.12
  %43 = load i32, i32* %actbl, align 4
  %cmp23 = icmp slt i32 %43, 0
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.22
  %44 = load i32, i32* %actbl, align 4
  %cmp25 = icmp sge i32 %44, 4
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.24
  %45 = load i32, i32* %actbl, align 4
  %idxprom27 = sext i32 %45 to i64
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 41
  %arrayidx28 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom27
  %47 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx28, align 8
  %cmp29 = icmp eq %struct.JHUFF_TBL* %47, null
  br i1 %cmp29, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false.24, %if.end.22
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 5
  store i32 49, i32* %msg_code32, align 4
  %50 = load i32, i32* %actbl, align 4
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8
  %msg_parm34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i32 0, i32 6
  %i35 = bitcast %union.anon* %msg_parm34 to [8 x i32]*
  %arrayidx36 = getelementptr inbounds [8 x i32], [8 x i32]* %i35, i32 0, i64 0
  store i32 %50, i32* %arrayidx36, align 4
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8
  %error_exit38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 0
  %55 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit38, align 8
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %57 = bitcast %struct.jpeg_decompress_struct* %56 to %struct.jpeg_common_struct*
  call void %55(%struct.jpeg_common_struct* %57)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.30, %lor.lhs.false.26
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %59 = load i32, i32* %dctbl, align 4
  %idxprom40 = sext i32 %59 to i64
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %dc_huff_tbl_ptrs41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 40
  %arrayidx42 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs41, i32 0, i64 %idxprom40
  %61 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx42, align 8
  %62 = load i32, i32* %dctbl, align 4
  %idxprom43 = sext i32 %62 to i64
  %63 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %63, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom43
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %58, %struct.JHUFF_TBL* %61, %struct.d_derived_tbl** %arrayidx44)
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %65 = load i32, i32* %actbl, align 4
  %idxprom45 = sext i32 %65 to i64
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %ac_huff_tbl_ptrs46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 41
  %arrayidx47 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs46, i32 0, i64 %idxprom45
  %67 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx47, align 8
  %68 = load i32, i32* %actbl, align 4
  %idxprom48 = sext i32 %68 to i64
  %69 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %69, i32 0, i32 5
  %arrayidx49 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom48
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %64, %struct.JHUFF_TBL* %67, %struct.d_derived_tbl** %arrayidx49)
  %70 = load i32, i32* %ci, align 4
  %idxprom50 = sext i32 %70 to i64
  %71 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %71, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom50
  store i32 0, i32* %arrayidx51, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %72 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %73, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  store i32 0, i32* %bits_left, align 4
  %74 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate52 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %74, i32 0, i32 1
  %get_buffer = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate52, i32 0, i32 0
  store i64 0, i64* %get_buffer, align 8
  %75 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate53 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %75, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate53, i32 0, i32 2
  store i32 0, i32* %printed_eod, align 4
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 49
  %77 = load i32, i32* %restart_interval, align 4
  %78 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %78, i32 0, i32 3
  store i32 %77, i32* %restarts_to_go, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %state = alloca %struct.savable_state, align 4
  %dctbl = alloca %struct.d_derived_tbl*, align 8
  %actbl = alloca %struct.d_derived_tbl*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  %nb97 = alloca i32, align 4
  %look98 = alloca i32, align 4
  %nb188 = alloca i32, align 4
  %look189 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 79
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_decoder* %1 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %2, %struct.huff_entropy_decoder** %entropy, align 8
  %3 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %3, i32 0, i32 49
  %4 = load i32, i32* %restart_interval, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %5 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %5, i32 0, i32 3
  %6 = load i32, i32* %restarts_to_go, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %7)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cinfo7 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %8, %struct.jpeg_decompress_struct** %cinfo7, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 5
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i32 0, i32 0
  %11 = load i8*, i8** %next_input_byte, align 8
  %next_input_byte8 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %11, i8** %next_input_byte8, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 5
  %13 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src9, align 8
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %13, i32 0, i32 1
  %14 = load i64, i64* %bytes_in_buffer, align 8
  %bytes_in_buffer10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %14, i64* %bytes_in_buffer10, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 72
  %16 = load i32, i32* %unread_marker, align 4
  %unread_marker11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %16, i32* %unread_marker11, align 4
  %17 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %17, i32 0, i32 1
  %get_buffer12 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %18 = load i64, i64* %get_buffer12, align 8
  store i64 %18, i64* %get_buffer, align 8
  %19 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate13 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %19, i32 0, i32 1
  %bits_left14 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate13, i32 0, i32 1
  %20 = load i32, i32* %bits_left14, align 4
  store i32 %20, i32* %bits_left, align 4
  %21 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate15 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %21, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate15, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8
  %22 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %22, i32 0, i32 2
  %23 = bitcast %struct.savable_state* %state to i8*
  %24 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 4, i1 false)
  store i32 0, i32* %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.256, %if.end.6
  %25 = load i32, i32* %blkn, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 66
  %27 = load i32, i32* %blocks_in_MCU, align 4
  %cmp16 = icmp slt i32 %25, %27
  br i1 %cmp16, label %for.body, label %for.end.258

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %blkn, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %29, i64 %idxprom
  %30 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8
  store [64 x i16]* %30, [64 x i16]** %block, align 8
  %31 = load i32, i32* %blkn, align 4
  %idxprom17 = sext i32 %31 to i64
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 67
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom17
  %33 = load i32, i32* %arrayidx18, align 4
  store i32 %33, i32* %ci, align 4
  %34 = load i32, i32* %ci, align 4
  %idxprom19 = sext i32 %34 to i64
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 63
  %arrayidx20 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom19
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx20, align 8
  store %struct.jpeg_component_info* %36, %struct.jpeg_component_info** %compptr, align 8
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 5
  %38 = load i32, i32* %dc_tbl_no, align 4
  %idxprom21 = sext i32 %38 to i64
  %39 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %39, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom21
  %40 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx22, align 8
  store %struct.d_derived_tbl* %40, %struct.d_derived_tbl** %dctbl, align 8
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 6
  %42 = load i32, i32* %ac_tbl_no, align 4
  %idxprom23 = sext i32 %42 to i64
  %43 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %43, i32 0, i32 5
  %arrayidx24 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom23
  %44 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx24, align 8
  store %struct.d_derived_tbl* %44, %struct.d_derived_tbl** %actbl, align 8
  %45 = load i32, i32* %bits_left, align 4
  %cmp25 = icmp slt i32 %45, 8
  br i1 %cmp25, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %for.body
  %46 = load i64, i64* %get_buffer, align 8
  %47 = load i32, i32* %bits_left, align 4
  %call27 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %46, i32 %47, i32 0)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.26
  %get_buffer31 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %48 = load i64, i64* %get_buffer31, align 8
  store i64 %48, i64* %get_buffer, align 8
  %bits_left32 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %49 = load i32, i32* %bits_left32, align 4
  store i32 %49, i32* %bits_left, align 4
  %50 = load i32, i32* %bits_left, align 4
  %cmp33 = icmp slt i32 %50, 8
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  store i32 1, i32* %nb, align 4
  br label %label1

if.end.35:                                        ; preds = %if.end.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %for.body
  %51 = load i64, i64* %get_buffer, align 8
  %52 = load i32, i32* %bits_left, align 4
  %sub = sub nsw i32 %52, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %51, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %look, align 4
  %53 = load i32, i32* %look, align 4
  %idxprom37 = sext i32 %53 to i64
  %54 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dctbl, align 8
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %54, i32 0, i32 4
  %arrayidx38 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom37
  %55 = load i32, i32* %arrayidx38, align 4
  store i32 %55, i32* %nb, align 4
  %cmp39 = icmp ne i32 %55, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end.36
  %56 = load i32, i32* %nb, align 4
  %57 = load i32, i32* %bits_left, align 4
  %sub42 = sub nsw i32 %57, %56
  store i32 %sub42, i32* %bits_left, align 4
  %58 = load i32, i32* %look, align 4
  %idxprom43 = sext i32 %58 to i64
  %59 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dctbl, align 8
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %59, i32 0, i32 5
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom43
  %60 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %60 to i32
  store i32 %conv45, i32* %s, align 4
  br label %if.end.53

if.else:                                          ; preds = %if.end.36
  store i32 9, i32* %nb, align 4
  br label %label1

label1:                                           ; preds = %if.else, %if.then.34
  %61 = load i64, i64* %get_buffer, align 8
  %62 = load i32, i32* %bits_left, align 4
  %63 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dctbl, align 8
  %64 = load i32, i32* %nb, align 4
  %call46 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %61, i32 %62, %struct.d_derived_tbl* %63, i32 %64)
  store i32 %call46, i32* %s, align 4
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %label1
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %label1
  %get_buffer51 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %65 = load i64, i64* %get_buffer51, align 8
  store i64 %65, i64* %get_buffer, align 8
  %bits_left52 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %66 = load i32, i32* %bits_left52, align 4
  store i32 %66, i32* %bits_left, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.50, %if.then.41
  %67 = load i32, i32* %s, align 4
  %tobool54 = icmp ne i32 %67, 0
  br i1 %tobool54, label %if.then.55, label %if.end.78

if.then.55:                                       ; preds = %if.end.53
  %68 = load i32, i32* %bits_left, align 4
  %69 = load i32, i32* %s, align 4
  %cmp56 = icmp slt i32 %68, %69
  br i1 %cmp56, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.then.55
  %70 = load i64, i64* %get_buffer, align 8
  %71 = load i32, i32* %bits_left, align 4
  %72 = load i32, i32* %s, align 4
  %call59 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %70, i32 %71, i32 %72)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.then.58
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.58
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %73 = load i64, i64* %get_buffer63, align 8
  store i64 %73, i64* %get_buffer, align 8
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %74 = load i32, i32* %bits_left64, align 4
  store i32 %74, i32* %bits_left, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.62, %if.then.55
  %75 = load i64, i64* %get_buffer, align 8
  %76 = load i32, i32* %s, align 4
  %77 = load i32, i32* %bits_left, align 4
  %sub66 = sub nsw i32 %77, %76
  store i32 %sub66, i32* %bits_left, align 4
  %sh_prom67 = zext i32 %sub66 to i64
  %shr68 = ashr i64 %75, %sh_prom67
  %conv69 = trunc i64 %shr68 to i32
  %78 = load i32, i32* %s, align 4
  %shl = shl i32 1, %78
  %sub70 = sub nsw i32 %shl, 1
  %and71 = and i32 %conv69, %sub70
  store i32 %and71, i32* %r, align 4
  %79 = load i32, i32* %r, align 4
  %80 = load i32, i32* %s, align 4
  %idxprom72 = sext i32 %80 to i64
  %arrayidx73 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_test, i32 0, i64 %idxprom72
  %81 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp slt i32 %79, %81
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.65
  %82 = load i32, i32* %r, align 4
  %83 = load i32, i32* %s, align 4
  %idxprom76 = sext i32 %83 to i64
  %arrayidx77 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_offset, i32 0, i64 %idxprom76
  %84 = load i32, i32* %arrayidx77, align 4
  %add = add nsw i32 %82, %84
  br label %cond.end

cond.false:                                       ; preds = %if.end.65
  %85 = load i32, i32* %r, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %85, %cond.false ]
  store i32 %cond, i32* %s, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %cond.end, %if.end.53
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %86, i32 0, i32 12
  %87 = load i32, i32* %component_needed, align 4
  %tobool79 = icmp ne i32 %87, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.78
  br label %skip_ACs

if.end.81:                                        ; preds = %if.end.78
  %88 = load i32, i32* %ci, align 4
  %idxprom82 = sext i32 %88 to i64
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom82
  %89 = load i32, i32* %arrayidx83, align 4
  %90 = load i32, i32* %s, align 4
  %add84 = add nsw i32 %90, %89
  store i32 %add84, i32* %s, align 4
  %91 = load i32, i32* %s, align 4
  %92 = load i32, i32* %ci, align 4
  %idxprom85 = sext i32 %92 to i64
  %last_dc_val86 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val86, i32 0, i64 %idxprom85
  store i32 %91, i32* %arrayidx87, align 4
  %93 = load i32, i32* %s, align 4
  %conv88 = trunc i32 %93 to i16
  %94 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx89 = getelementptr inbounds [64 x i16], [64 x i16]* %94, i32 0, i64 0
  store i16 %conv88, i16* %arrayidx89, align 2
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 9
  %96 = load i32, i32* %DCT_scaled_size, align 4
  %cmp90 = icmp sgt i32 %96, 1
  br i1 %cmp90, label %if.then.92, label %if.else.183

if.then.92:                                       ; preds = %if.end.81
  store i32 1, i32* %k, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc, %if.then.92
  %97 = load i32, i32* %k, align 4
  %cmp94 = icmp slt i32 %97, 64
  br i1 %cmp94, label %for.body.96, label %for.end

for.body.96:                                      ; preds = %for.cond.93
  %98 = load i32, i32* %bits_left, align 4
  %cmp99 = icmp slt i32 %98, 8
  br i1 %cmp99, label %if.then.101, label %if.end.112

if.then.101:                                      ; preds = %for.body.96
  %99 = load i64, i64* %get_buffer, align 8
  %100 = load i32, i32* %bits_left, align 4
  %call102 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %99, i32 %100, i32 0)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %if.then.101
  store i32 0, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.then.101
  %get_buffer106 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %101 = load i64, i64* %get_buffer106, align 8
  store i64 %101, i64* %get_buffer, align 8
  %bits_left107 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %102 = load i32, i32* %bits_left107, align 4
  store i32 %102, i32* %bits_left, align 4
  %103 = load i32, i32* %bits_left, align 4
  %cmp108 = icmp slt i32 %103, 8
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.105
  store i32 1, i32* %nb97, align 4
  br label %label2

if.end.111:                                       ; preds = %if.end.105
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %for.body.96
  %104 = load i64, i64* %get_buffer, align 8
  %105 = load i32, i32* %bits_left, align 4
  %sub113 = sub nsw i32 %105, 8
  %sh_prom114 = zext i32 %sub113 to i64
  %shr115 = ashr i64 %104, %sh_prom114
  %conv116 = trunc i64 %shr115 to i32
  %and117 = and i32 %conv116, 255
  store i32 %and117, i32* %look98, align 4
  %106 = load i32, i32* %look98, align 4
  %idxprom118 = sext i32 %106 to i64
  %107 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8
  %look_nbits119 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %107, i32 0, i32 4
  %arrayidx120 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits119, i32 0, i64 %idxprom118
  %108 = load i32, i32* %arrayidx120, align 4
  store i32 %108, i32* %nb97, align 4
  %cmp121 = icmp ne i32 %108, 0
  br i1 %cmp121, label %if.then.123, label %if.else.129

if.then.123:                                      ; preds = %if.end.112
  %109 = load i32, i32* %nb97, align 4
  %110 = load i32, i32* %bits_left, align 4
  %sub124 = sub nsw i32 %110, %109
  store i32 %sub124, i32* %bits_left, align 4
  %111 = load i32, i32* %look98, align 4
  %idxprom125 = sext i32 %111 to i64
  %112 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8
  %look_sym126 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %112, i32 0, i32 5
  %arrayidx127 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym126, i32 0, i64 %idxprom125
  %113 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %113 to i32
  store i32 %conv128, i32* %s, align 4
  br label %if.end.137

if.else.129:                                      ; preds = %if.end.112
  store i32 9, i32* %nb97, align 4
  br label %label2

label2:                                           ; preds = %if.else.129, %if.then.110
  %114 = load i64, i64* %get_buffer, align 8
  %115 = load i32, i32* %bits_left, align 4
  %116 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8
  %117 = load i32, i32* %nb97, align 4
  %call130 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %114, i32 %115, %struct.d_derived_tbl* %116, i32 %117)
  store i32 %call130, i32* %s, align 4
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %label2
  store i32 0, i32* %retval
  br label %return

if.end.134:                                       ; preds = %label2
  %get_buffer135 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %118 = load i64, i64* %get_buffer135, align 8
  store i64 %118, i64* %get_buffer, align 8
  %bits_left136 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %119 = load i32, i32* %bits_left136, align 4
  store i32 %119, i32* %bits_left, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.134, %if.then.123
  %120 = load i32, i32* %s, align 4
  %shr138 = ashr i32 %120, 4
  store i32 %shr138, i32* %r, align 4
  %121 = load i32, i32* %s, align 4
  %and139 = and i32 %121, 15
  store i32 %and139, i32* %s, align 4
  %122 = load i32, i32* %s, align 4
  %tobool140 = icmp ne i32 %122, 0
  br i1 %tobool140, label %if.then.141, label %if.else.176

if.then.141:                                      ; preds = %if.end.137
  %123 = load i32, i32* %r, align 4
  %124 = load i32, i32* %k, align 4
  %add142 = add nsw i32 %124, %123
  store i32 %add142, i32* %k, align 4
  %125 = load i32, i32* %bits_left, align 4
  %126 = load i32, i32* %s, align 4
  %cmp143 = icmp slt i32 %125, %126
  br i1 %cmp143, label %if.then.145, label %if.end.152

if.then.145:                                      ; preds = %if.then.141
  %127 = load i64, i64* %get_buffer, align 8
  %128 = load i32, i32* %bits_left, align 4
  %129 = load i32, i32* %s, align 4
  %call146 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %127, i32 %128, i32 %129)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.end.149, label %if.then.148

if.then.148:                                      ; preds = %if.then.145
  store i32 0, i32* %retval
  br label %return

if.end.149:                                       ; preds = %if.then.145
  %get_buffer150 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %130 = load i64, i64* %get_buffer150, align 8
  store i64 %130, i64* %get_buffer, align 8
  %bits_left151 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %131 = load i32, i32* %bits_left151, align 4
  store i32 %131, i32* %bits_left, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.149, %if.then.141
  %132 = load i64, i64* %get_buffer, align 8
  %133 = load i32, i32* %s, align 4
  %134 = load i32, i32* %bits_left, align 4
  %sub153 = sub nsw i32 %134, %133
  store i32 %sub153, i32* %bits_left, align 4
  %sh_prom154 = zext i32 %sub153 to i64
  %shr155 = ashr i64 %132, %sh_prom154
  %conv156 = trunc i64 %shr155 to i32
  %135 = load i32, i32* %s, align 4
  %shl157 = shl i32 1, %135
  %sub158 = sub nsw i32 %shl157, 1
  %and159 = and i32 %conv156, %sub158
  store i32 %and159, i32* %r, align 4
  %136 = load i32, i32* %r, align 4
  %137 = load i32, i32* %s, align 4
  %idxprom160 = sext i32 %137 to i64
  %arrayidx161 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_test, i32 0, i64 %idxprom160
  %138 = load i32, i32* %arrayidx161, align 4
  %cmp162 = icmp slt i32 %136, %138
  br i1 %cmp162, label %cond.true.164, label %cond.false.168

cond.true.164:                                    ; preds = %if.end.152
  %139 = load i32, i32* %r, align 4
  %140 = load i32, i32* %s, align 4
  %idxprom165 = sext i32 %140 to i64
  %arrayidx166 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_offset, i32 0, i64 %idxprom165
  %141 = load i32, i32* %arrayidx166, align 4
  %add167 = add nsw i32 %139, %141
  br label %cond.end.169

cond.false.168:                                   ; preds = %if.end.152
  %142 = load i32, i32* %r, align 4
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.168, %cond.true.164
  %cond170 = phi i32 [ %add167, %cond.true.164 ], [ %142, %cond.false.168 ]
  store i32 %cond170, i32* %s, align 4
  %143 = load i32, i32* %s, align 4
  %conv171 = trunc i32 %143 to i16
  %144 = load i32, i32* %k, align 4
  %idxprom172 = sext i32 %144 to i64
  %arrayidx173 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom172
  %145 = load i32, i32* %arrayidx173, align 4
  %idxprom174 = sext i32 %145 to i64
  %146 = load [64 x i16]*, [64 x i16]** %block, align 8
  %arrayidx175 = getelementptr inbounds [64 x i16], [64 x i16]* %146, i32 0, i64 %idxprom174
  store i16 %conv171, i16* %arrayidx175, align 2
  br label %if.end.182

if.else.176:                                      ; preds = %if.end.137
  %147 = load i32, i32* %r, align 4
  %cmp177 = icmp ne i32 %147, 15
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.else.176
  br label %for.end

if.end.180:                                       ; preds = %if.else.176
  %148 = load i32, i32* %k, align 4
  %add181 = add nsw i32 %148, 15
  store i32 %add181, i32* %k, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.180, %cond.end.169
  br label %for.inc

for.inc:                                          ; preds = %if.end.182
  %149 = load i32, i32* %k, align 4
  %inc = add nsw i32 %149, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.93

for.end:                                          ; preds = %if.then.179, %for.cond.93
  br label %if.end.255

if.else.183:                                      ; preds = %if.end.81
  br label %skip_ACs

skip_ACs:                                         ; preds = %if.else.183, %if.then.80
  store i32 1, i32* %k, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.252, %skip_ACs
  %150 = load i32, i32* %k, align 4
  %cmp185 = icmp slt i32 %150, 64
  br i1 %cmp185, label %for.body.187, label %for.end.254

for.body.187:                                     ; preds = %for.cond.184
  %151 = load i32, i32* %bits_left, align 4
  %cmp190 = icmp slt i32 %151, 8
  br i1 %cmp190, label %if.then.192, label %if.end.203

if.then.192:                                      ; preds = %for.body.187
  %152 = load i64, i64* %get_buffer, align 8
  %153 = load i32, i32* %bits_left, align 4
  %call193 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %152, i32 %153, i32 0)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.end.196, label %if.then.195

if.then.195:                                      ; preds = %if.then.192
  store i32 0, i32* %retval
  br label %return

if.end.196:                                       ; preds = %if.then.192
  %get_buffer197 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %154 = load i64, i64* %get_buffer197, align 8
  store i64 %154, i64* %get_buffer, align 8
  %bits_left198 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %155 = load i32, i32* %bits_left198, align 4
  store i32 %155, i32* %bits_left, align 4
  %156 = load i32, i32* %bits_left, align 4
  %cmp199 = icmp slt i32 %156, 8
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.end.196
  store i32 1, i32* %nb188, align 4
  br label %label3

if.end.202:                                       ; preds = %if.end.196
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %for.body.187
  %157 = load i64, i64* %get_buffer, align 8
  %158 = load i32, i32* %bits_left, align 4
  %sub204 = sub nsw i32 %158, 8
  %sh_prom205 = zext i32 %sub204 to i64
  %shr206 = ashr i64 %157, %sh_prom205
  %conv207 = trunc i64 %shr206 to i32
  %and208 = and i32 %conv207, 255
  store i32 %and208, i32* %look189, align 4
  %159 = load i32, i32* %look189, align 4
  %idxprom209 = sext i32 %159 to i64
  %160 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8
  %look_nbits210 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %160, i32 0, i32 4
  %arrayidx211 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits210, i32 0, i64 %idxprom209
  %161 = load i32, i32* %arrayidx211, align 4
  store i32 %161, i32* %nb188, align 4
  %cmp212 = icmp ne i32 %161, 0
  br i1 %cmp212, label %if.then.214, label %if.else.220

if.then.214:                                      ; preds = %if.end.203
  %162 = load i32, i32* %nb188, align 4
  %163 = load i32, i32* %bits_left, align 4
  %sub215 = sub nsw i32 %163, %162
  store i32 %sub215, i32* %bits_left, align 4
  %164 = load i32, i32* %look189, align 4
  %idxprom216 = sext i32 %164 to i64
  %165 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8
  %look_sym217 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %165, i32 0, i32 5
  %arrayidx218 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym217, i32 0, i64 %idxprom216
  %166 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %166 to i32
  store i32 %conv219, i32* %s, align 4
  br label %if.end.228

if.else.220:                                      ; preds = %if.end.203
  store i32 9, i32* %nb188, align 4
  br label %label3

label3:                                           ; preds = %if.else.220, %if.then.201
  %167 = load i64, i64* %get_buffer, align 8
  %168 = load i32, i32* %bits_left, align 4
  %169 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8
  %170 = load i32, i32* %nb188, align 4
  %call221 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %167, i32 %168, %struct.d_derived_tbl* %169, i32 %170)
  store i32 %call221, i32* %s, align 4
  %cmp222 = icmp slt i32 %call221, 0
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %label3
  store i32 0, i32* %retval
  br label %return

if.end.225:                                       ; preds = %label3
  %get_buffer226 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %171 = load i64, i64* %get_buffer226, align 8
  store i64 %171, i64* %get_buffer, align 8
  %bits_left227 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %172 = load i32, i32* %bits_left227, align 4
  store i32 %172, i32* %bits_left, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.225, %if.then.214
  %173 = load i32, i32* %s, align 4
  %shr229 = ashr i32 %173, 4
  store i32 %shr229, i32* %r, align 4
  %174 = load i32, i32* %s, align 4
  %and230 = and i32 %174, 15
  store i32 %and230, i32* %s, align 4
  %175 = load i32, i32* %s, align 4
  %tobool231 = icmp ne i32 %175, 0
  br i1 %tobool231, label %if.then.232, label %if.else.245

if.then.232:                                      ; preds = %if.end.228
  %176 = load i32, i32* %r, align 4
  %177 = load i32, i32* %k, align 4
  %add233 = add nsw i32 %177, %176
  store i32 %add233, i32* %k, align 4
  %178 = load i32, i32* %bits_left, align 4
  %179 = load i32, i32* %s, align 4
  %cmp234 = icmp slt i32 %178, %179
  br i1 %cmp234, label %if.then.236, label %if.end.243

if.then.236:                                      ; preds = %if.then.232
  %180 = load i64, i64* %get_buffer, align 8
  %181 = load i32, i32* %bits_left, align 4
  %182 = load i32, i32* %s, align 4
  %call237 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %180, i32 %181, i32 %182)
  %tobool238 = icmp ne i32 %call237, 0
  br i1 %tobool238, label %if.end.240, label %if.then.239

if.then.239:                                      ; preds = %if.then.236
  store i32 0, i32* %retval
  br label %return

if.end.240:                                       ; preds = %if.then.236
  %get_buffer241 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %183 = load i64, i64* %get_buffer241, align 8
  store i64 %183, i64* %get_buffer, align 8
  %bits_left242 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %184 = load i32, i32* %bits_left242, align 4
  store i32 %184, i32* %bits_left, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.240, %if.then.232
  %185 = load i32, i32* %s, align 4
  %186 = load i32, i32* %bits_left, align 4
  %sub244 = sub nsw i32 %186, %185
  store i32 %sub244, i32* %bits_left, align 4
  br label %if.end.251

if.else.245:                                      ; preds = %if.end.228
  %187 = load i32, i32* %r, align 4
  %cmp246 = icmp ne i32 %187, 15
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.else.245
  br label %for.end.254

if.end.249:                                       ; preds = %if.else.245
  %188 = load i32, i32* %k, align 4
  %add250 = add nsw i32 %188, 15
  store i32 %add250, i32* %k, align 4
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.249, %if.end.243
  br label %for.inc.252

for.inc.252:                                      ; preds = %if.end.251
  %189 = load i32, i32* %k, align 4
  %inc253 = add nsw i32 %189, 1
  store i32 %inc253, i32* %k, align 4
  br label %for.cond.184

for.end.254:                                      ; preds = %if.then.248, %for.cond.184
  br label %if.end.255

if.end.255:                                       ; preds = %for.end.254, %for.end
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.255
  %190 = load i32, i32* %blkn, align 4
  %inc257 = add nsw i32 %190, 1
  store i32 %inc257, i32* %blkn, align 4
  br label %for.cond

for.end.258:                                      ; preds = %for.cond
  %next_input_byte259 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %191 = load i8*, i8** %next_input_byte259, align 8
  %192 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src260 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %192, i32 0, i32 5
  %193 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src260, align 8
  %next_input_byte261 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %193, i32 0, i32 0
  store i8* %191, i8** %next_input_byte261, align 8
  %bytes_in_buffer262 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %194 = load i64, i64* %bytes_in_buffer262, align 8
  %195 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %src263 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %195, i32 0, i32 5
  %196 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src263, align 8
  %bytes_in_buffer264 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %196, i32 0, i32 1
  store i64 %194, i64* %bytes_in_buffer264, align 8
  %unread_marker265 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %197 = load i32, i32* %unread_marker265, align 4
  %198 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %unread_marker266 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %198, i32 0, i32 72
  store i32 %197, i32* %unread_marker266, align 4
  %199 = load i64, i64* %get_buffer, align 8
  %200 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate267 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %200, i32 0, i32 1
  %get_buffer268 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate267, i32 0, i32 0
  store i64 %199, i64* %get_buffer268, align 8
  %201 = load i32, i32* %bits_left, align 4
  %202 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate269 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %202, i32 0, i32 1
  %bits_left270 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate269, i32 0, i32 1
  store i32 %201, i32* %bits_left270, align 4
  %203 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %saved271 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %203, i32 0, i32 2
  %204 = bitcast %struct.savable_state* %saved271 to i8*
  %205 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %204, i8* %205, i64 16, i32 4, i1 false)
  %206 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %restarts_to_go272 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %206, i32 0, i32 3
  %207 = load i32, i32* %restarts_to_go272, align 4
  %dec = add i32 %207, -1
  store i32 %dec, i32* %restarts_to_go272, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.258, %if.then.239, %if.then.224, %if.then.195, %if.then.148, %if.then.133, %if.then.104, %if.then.61, %if.then.49, %if.then.29, %if.then.4
  %208 = load i32, i32* %retval
  ret i32 %208
}

; Function Attrs: nounwind uwtable
define internal i32 @process_restart(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %0 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i32 0, i32 79
  %1 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8
  %2 = bitcast %struct.jpeg_entropy_decoder* %1 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %2, %struct.huff_entropy_decoder** %entropy, align 8
  %3 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %3, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  %4 = load i32, i32* %bits_left, align 4
  %div = sdiv i32 %4, 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 78
  %6 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %6, i32 0, i32 8
  %7 = load i32, i32* %discarded_bytes, align 4
  %add = add i32 %7, %div
  store i32 %add, i32* %discarded_bytes, align 4
  %8 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate2 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %8, i32 0, i32 1
  %bits_left3 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate2, i32 0, i32 1
  store i32 0, i32* %bits_left3, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 78
  %10 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker4, align 8
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %10, i32 0, i32 2
  %11 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %read_restart_marker, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %call = call i32 %11(%struct.jpeg_decompress_struct* %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %ci, align 4
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 62
  %15 = load i32, i32* %comps_in_scan, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ci, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %17, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 49
  %20 = load i32, i32* %restart_interval, align 4
  %21 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %21, i32 0, i32 3
  store i32 %20, i32* %restarts_to_go, align 4
  %22 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8
  %bitstate5 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %22, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate5, i32 0, i32 2
  store i32 0, i32* %printed_eod, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
