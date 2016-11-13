; ModuleID = './dwt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opj_tcd_tilecomp = type { i32, i32, i32, i32, i32, i32, %struct.opj_tcd_resolution*, i32, i32*, i32, i32 }
%struct.opj_tcd_resolution = type { i32, i32, i32, i32, i32, i32, i32, [3 x %struct.opj_tcd_band] }
%struct.opj_tcd_band = type { i32, i32, i32, i32, i32, %struct.opj_tcd_precinct*, i32, i32, float }
%struct.opj_tcd_precinct = type { i32, i32, i32, i32, i32, i32, %union.anon, i32, %struct.opj_tgt_tree*, %struct.opj_tgt_tree* }
%union.anon = type { %struct.opj_tcd_cblk_enc* }
%struct.opj_tcd_cblk_enc = type { i8*, %struct.opj_tcd_layer*, %struct.opj_tcd_pass*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tcd_layer = type { i32, i32, double, i8* }
%struct.opj_tcd_pass = type { i32, double, i32, i8 }
%struct.opj_tgt_tree = type { i32, i32, i32, %struct.opj_tgt_node*, i32 }
%struct.opj_tgt_node = type { %struct.opj_tgt_node*, i32, i32, i32 }
%struct.dwt_local = type { i32*, i32, i32, i32 }
%struct.opj_tccp = type { i32, i32, i32, i32, i32, i32, i32, [97 x %struct.opj_stepsize], i32, i32, [33 x i32], [33 x i32], i32 }
%struct.opj_stepsize = type { i32, i32 }
%struct.v4dwt_local = type { %union.opj_v4_t*, i32, i32, i32 }
%union.opj_v4_t = type { [4 x float] }

@opj_dwt_norms = internal constant [4 x [10 x double]] [[10 x double] [double 1.000000e+00, double 1.500000e+00, double 2.750000e+00, double 5.375000e+00, double 1.068000e+01, double 2.134000e+01, double 4.267000e+01, double 8.533000e+01, double 1.707000e+02, double 3.413000e+02], [10 x double] [double 1.038000e+00, double 1.592000e+00, double 2.919000e+00, double 5.703000e+00, double 1.133000e+01, double 2.264000e+01, double 4.525000e+01, double 9.048000e+01, double 1.809000e+02, double 0.000000e+00], [10 x double] [double 1.038000e+00, double 1.592000e+00, double 2.919000e+00, double 5.703000e+00, double 1.133000e+01, double 2.264000e+01, double 4.525000e+01, double 9.048000e+01, double 1.809000e+02, double 0.000000e+00], [10 x double] [double 7.186000e-01, double 9.218000e-01, double 1.586000e+00, double 3.043000e+00, double 6.019000e+00, double 1.201000e+01, double 2.400000e+01, double 4.797000e+01, double 9.593000e+01, double 0.000000e+00]], align 16
@opj_dwt_norms_real = internal constant [4 x [10 x double]] [[10 x double] [double 1.000000e+00, double 1.965000e+00, double 4.177000e+00, double 8.403000e+00, double 1.690000e+01, double 3.384000e+01, double 6.769000e+01, double 1.353000e+02, double 2.706000e+02, double 5.409000e+02], [10 x double] [double 2.022000e+00, double 3.989000e+00, double 8.355000e+00, double 1.704000e+01, double 3.427000e+01, double 6.863000e+01, double 1.373000e+02, double 2.746000e+02, double 5.490000e+02, double 0.000000e+00], [10 x double] [double 2.022000e+00, double 3.989000e+00, double 8.355000e+00, double 1.704000e+01, double 3.427000e+01, double 6.863000e+01, double 1.373000e+02, double 2.746000e+02, double 5.490000e+02, double 0.000000e+00], [10 x double] [double 2.080000e+00, double 3.865000e+00, double 8.307000e+00, double 1.718000e+01, double 3.471000e+01, double 6.959000e+01, double 1.393000e+02, double 2.786000e+02, double 5.572000e+02, double 0.000000e+00]], align 16

; Function Attrs: nounwind uwtable
define i32 @opj_dwt_encode(%struct.opj_tcd_tilecomp* %tilec) #0 {
entry:
  %tilec.addr = alloca %struct.opj_tcd_tilecomp*, align 8
  store %struct.opj_tcd_tilecomp* %tilec, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %0 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %call = call i32 @opj_dwt_encode_procedure(%struct.opj_tcd_tilecomp* %0, void (i32*, i32, i32, i32)* @opj_dwt_encode_1) #6
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_dwt_encode_procedure(%struct.opj_tcd_tilecomp* %tilec, void (i32*, i32, i32, i32)* %p_function) #1 {
entry:
  %retval = alloca i32, align 4
  %tilec.addr = alloca %struct.opj_tcd_tilecomp*, align 8
  %p_function.addr = alloca void (i32*, i32, i32, i32)*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca i32*, align 8
  %aj = alloca i32*, align 8
  %bj = alloca i32*, align 8
  %w = alloca i32, align 4
  %l = alloca i32, align 4
  %rw = alloca i32, align 4
  %rh = alloca i32, align 4
  %l_data_size = alloca i32, align 4
  %l_cur_res = alloca %struct.opj_tcd_resolution*, align 8
  %l_last_res = alloca %struct.opj_tcd_resolution*, align 8
  %cleanup.dest.slot = alloca i32
  %rw1 = alloca i32, align 4
  %rh1 = alloca i32, align 4
  %cas_col = alloca i32, align 4
  %cas_row = alloca i32, align 4
  %dn = alloca i32, align 4
  %sn = alloca i32, align 4
  store %struct.opj_tcd_tilecomp* %tilec, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  store void (i32*, i32, i32, i32)* %p_function, void (i32*, i32, i32, i32)** %p_function.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  store i32* null, i32** %a, align 8, !tbaa !1
  %4 = bitcast i32** %aj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store i32* null, i32** %aj, align 8, !tbaa !1
  %5 = bitcast i32** %bj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store i32* null, i32** %bj, align 8, !tbaa !1
  %6 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %rw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %rh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast %struct.opj_tcd_resolution** %l_cur_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %12 = bitcast %struct.opj_tcd_resolution** %l_last_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  store %struct.opj_tcd_resolution* null, %struct.opj_tcd_resolution** %l_last_res, align 8, !tbaa !1
  %13 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %13, i32 0, i32 2
  %14 = load i32, i32* %x1, align 4, !tbaa !5
  %15 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %15, i32 0, i32 0
  %16 = load i32, i32* %x0, align 4, !tbaa !8
  %sub = sub nsw i32 %14, %16
  store i32 %sub, i32* %w, align 4, !tbaa !9
  %17 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %numresolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %17, i32 0, i32 4
  %18 = load i32, i32* %numresolutions, align 4, !tbaa !10
  %sub1 = sub i32 %18, 1
  store i32 %sub1, i32* %l, align 4, !tbaa !9
  %19 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %19, i32 0, i32 8
  %20 = load i32*, i32** %data, align 8, !tbaa !11
  store i32* %20, i32** %a, align 8, !tbaa !1
  %21 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %21, i32 0, i32 6
  %22 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !12
  %23 = load i32, i32* %l, align 4, !tbaa !9
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %22, i64 %idx.ext
  store %struct.opj_tcd_resolution* %add.ptr, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %24 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %24, i64 -1
  store %struct.opj_tcd_resolution* %add.ptr2, %struct.opj_tcd_resolution** %l_last_res, align 8, !tbaa !1
  %25 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %x13 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %25, i32 0, i32 2
  %26 = load i32, i32* %x13, align 4, !tbaa !13
  %27 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %x04 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %27, i32 0, i32 0
  %28 = load i32, i32* %x04, align 4, !tbaa !15
  %sub5 = sub nsw i32 %26, %28
  store i32 %sub5, i32* %rw, align 4, !tbaa !9
  %29 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %29, i32 0, i32 3
  %30 = load i32, i32* %y1, align 4, !tbaa !16
  %31 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %31, i32 0, i32 1
  %32 = load i32, i32* %y0, align 4, !tbaa !17
  %sub6 = sub nsw i32 %30, %32
  store i32 %sub6, i32* %rh, align 4, !tbaa !9
  %33 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %resolutions7 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %33, i32 0, i32 6
  %34 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions7, align 8, !tbaa !12
  %35 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %numresolutions8 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %35, i32 0, i32 4
  %36 = load i32, i32* %numresolutions8, align 4, !tbaa !10
  %call = call i32 @opj_dwt_max_resolution(%struct.opj_tcd_resolution* %34, i32 %36) #6
  %conv = zext i32 %call to i64
  %mul = mul i64 %conv, 4
  %conv9 = trunc i64 %mul to i32
  store i32 %conv9, i32* %l_data_size, align 4, !tbaa !9
  %37 = load i32, i32* %l_data_size, align 4, !tbaa !9
  %conv10 = sext i32 %37 to i64
  %cmp = icmp uge i64 %conv10, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %38 = load i32, i32* %l_data_size, align 4, !tbaa !9
  %conv12 = sext i32 %38 to i64
  %call13 = call noalias i8* @malloc(i64 %conv12) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call13, %cond.false ]
  %39 = bitcast i8* %cond to i32*
  store i32* %39, i32** %bj, align 8, !tbaa !1
  %40 = load i32*, i32** %bj, align 8, !tbaa !1
  %tobool = icmp ne i32* %40, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %41 = load i32, i32* %l, align 4, !tbaa !9
  store i32 %41, i32* %i, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %for.end.66, %if.end
  %42 = load i32, i32* %i, align 4, !tbaa !9
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %i, align 4, !tbaa !9
  %tobool14 = icmp ne i32 %42, 0
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = bitcast i32* %rw1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = bitcast i32* %rh1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = bitcast i32* %cas_col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = bitcast i32* %cas_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #2
  %47 = bitcast i32* %dn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #2
  %48 = bitcast i32* %sn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  %49 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %x115 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %49, i32 0, i32 2
  %50 = load i32, i32* %x115, align 4, !tbaa !13
  %51 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %x016 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %51, i32 0, i32 0
  %52 = load i32, i32* %x016, align 4, !tbaa !15
  %sub17 = sub nsw i32 %50, %52
  store i32 %sub17, i32* %rw, align 4, !tbaa !9
  %53 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %y118 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %53, i32 0, i32 3
  %54 = load i32, i32* %y118, align 4, !tbaa !16
  %55 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %y019 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %55, i32 0, i32 1
  %56 = load i32, i32* %y019, align 4, !tbaa !17
  %sub20 = sub nsw i32 %54, %56
  store i32 %sub20, i32* %rh, align 4, !tbaa !9
  %57 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_last_res, align 8, !tbaa !1
  %x121 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %57, i32 0, i32 2
  %58 = load i32, i32* %x121, align 4, !tbaa !13
  %59 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_last_res, align 8, !tbaa !1
  %x022 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %59, i32 0, i32 0
  %60 = load i32, i32* %x022, align 4, !tbaa !15
  %sub23 = sub nsw i32 %58, %60
  store i32 %sub23, i32* %rw1, align 4, !tbaa !9
  %61 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_last_res, align 8, !tbaa !1
  %y124 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %61, i32 0, i32 3
  %62 = load i32, i32* %y124, align 4, !tbaa !16
  %63 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_last_res, align 8, !tbaa !1
  %y025 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %63, i32 0, i32 1
  %64 = load i32, i32* %y025, align 4, !tbaa !17
  %sub26 = sub nsw i32 %62, %64
  store i32 %sub26, i32* %rh1, align 4, !tbaa !9
  %65 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %x027 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %65, i32 0, i32 0
  %66 = load i32, i32* %x027, align 4, !tbaa !15
  %and = and i32 %66, 1
  store i32 %and, i32* %cas_row, align 4, !tbaa !9
  %67 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %y028 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %67, i32 0, i32 1
  %68 = load i32, i32* %y028, align 4, !tbaa !17
  %and29 = and i32 %68, 1
  store i32 %and29, i32* %cas_col, align 4, !tbaa !9
  %69 = load i32, i32* %rh1, align 4, !tbaa !9
  store i32 %69, i32* %sn, align 4, !tbaa !9
  %70 = load i32, i32* %rh, align 4, !tbaa !9
  %71 = load i32, i32* %rh1, align 4, !tbaa !9
  %sub30 = sub nsw i32 %70, %71
  store i32 %sub30, i32* %dn, align 4, !tbaa !9
  store i32 0, i32* %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %while.body
  %72 = load i32, i32* %j, align 4, !tbaa !9
  %73 = load i32, i32* %rw, align 4, !tbaa !9
  %cmp31 = icmp slt i32 %72, %73
  br i1 %cmp31, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %74 = load i32*, i32** %a, align 8, !tbaa !1
  %75 = load i32, i32* %j, align 4, !tbaa !9
  %idx.ext33 = sext i32 %75 to i64
  %add.ptr34 = getelementptr inbounds i32, i32* %74, i64 %idx.ext33
  store i32* %add.ptr34, i32** %aj, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !9
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %for.body
  %76 = load i32, i32* %k, align 4, !tbaa !9
  %77 = load i32, i32* %rh, align 4, !tbaa !9
  %cmp36 = icmp slt i32 %76, %77
  br i1 %cmp36, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.35
  %78 = load i32, i32* %k, align 4, !tbaa !9
  %79 = load i32, i32* %w, align 4, !tbaa !9
  %mul39 = mul nsw i32 %78, %79
  %idxprom = sext i32 %mul39 to i64
  %80 = load i32*, i32** %aj, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %80, i64 %idxprom
  %81 = load i32, i32* %arrayidx, align 4, !tbaa !9
  %82 = load i32, i32* %k, align 4, !tbaa !9
  %idxprom40 = sext i32 %82 to i64
  %83 = load i32*, i32** %bj, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i32, i32* %83, i64 %idxprom40
  store i32 %81, i32* %arrayidx41, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body.38
  %84 = load i32, i32* %k, align 4, !tbaa !9
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %k, align 4, !tbaa !9
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  %85 = load void (i32*, i32, i32, i32)*, void (i32*, i32, i32, i32)** %p_function.addr, align 8, !tbaa !1
  %86 = load i32*, i32** %bj, align 8, !tbaa !1
  %87 = load i32, i32* %dn, align 4, !tbaa !9
  %88 = load i32, i32* %sn, align 4, !tbaa !9
  %89 = load i32, i32* %cas_col, align 4, !tbaa !9
  call void %85(i32* %86, i32 %87, i32 %88, i32 %89) #6
  %90 = load i32*, i32** %bj, align 8, !tbaa !1
  %91 = load i32*, i32** %aj, align 8, !tbaa !1
  %92 = load i32, i32* %dn, align 4, !tbaa !9
  %93 = load i32, i32* %sn, align 4, !tbaa !9
  %94 = load i32, i32* %w, align 4, !tbaa !9
  %95 = load i32, i32* %cas_col, align 4, !tbaa !9
  call void @opj_dwt_deinterleave_v(i32* %90, i32* %91, i32 %92, i32 %93, i32 %94, i32 %95) #6
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end
  %96 = load i32, i32* %j, align 4, !tbaa !9
  %inc43 = add nsw i32 %96, 1
  store i32 %inc43, i32* %j, align 4, !tbaa !9
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  %97 = load i32, i32* %rw1, align 4, !tbaa !9
  store i32 %97, i32* %sn, align 4, !tbaa !9
  %98 = load i32, i32* %rw, align 4, !tbaa !9
  %99 = load i32, i32* %rw1, align 4, !tbaa !9
  %sub45 = sub nsw i32 %98, %99
  store i32 %sub45, i32* %dn, align 4, !tbaa !9
  store i32 0, i32* %j, align 4, !tbaa !9
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.64, %for.end.44
  %100 = load i32, i32* %j, align 4, !tbaa !9
  %101 = load i32, i32* %rh, align 4, !tbaa !9
  %cmp47 = icmp slt i32 %100, %101
  br i1 %cmp47, label %for.body.49, label %for.end.66

for.body.49:                                      ; preds = %for.cond.46
  %102 = load i32*, i32** %a, align 8, !tbaa !1
  %103 = load i32, i32* %j, align 4, !tbaa !9
  %104 = load i32, i32* %w, align 4, !tbaa !9
  %mul50 = mul nsw i32 %103, %104
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds i32, i32* %102, i64 %idx.ext51
  store i32* %add.ptr52, i32** %aj, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !9
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.61, %for.body.49
  %105 = load i32, i32* %k, align 4, !tbaa !9
  %106 = load i32, i32* %rw, align 4, !tbaa !9
  %cmp54 = icmp slt i32 %105, %106
  br i1 %cmp54, label %for.body.56, label %for.end.63

for.body.56:                                      ; preds = %for.cond.53
  %107 = load i32, i32* %k, align 4, !tbaa !9
  %idxprom57 = sext i32 %107 to i64
  %108 = load i32*, i32** %aj, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i32, i32* %108, i64 %idxprom57
  %109 = load i32, i32* %arrayidx58, align 4, !tbaa !9
  %110 = load i32, i32* %k, align 4, !tbaa !9
  %idxprom59 = sext i32 %110 to i64
  %111 = load i32*, i32** %bj, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i32, i32* %111, i64 %idxprom59
  store i32 %109, i32* %arrayidx60, align 4, !tbaa !9
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.56
  %112 = load i32, i32* %k, align 4, !tbaa !9
  %inc62 = add nsw i32 %112, 1
  store i32 %inc62, i32* %k, align 4, !tbaa !9
  br label %for.cond.53

for.end.63:                                       ; preds = %for.cond.53
  %113 = load void (i32*, i32, i32, i32)*, void (i32*, i32, i32, i32)** %p_function.addr, align 8, !tbaa !1
  %114 = load i32*, i32** %bj, align 8, !tbaa !1
  %115 = load i32, i32* %dn, align 4, !tbaa !9
  %116 = load i32, i32* %sn, align 4, !tbaa !9
  %117 = load i32, i32* %cas_row, align 4, !tbaa !9
  call void %113(i32* %114, i32 %115, i32 %116, i32 %117) #6
  %118 = load i32*, i32** %bj, align 8, !tbaa !1
  %119 = load i32*, i32** %aj, align 8, !tbaa !1
  %120 = load i32, i32* %dn, align 4, !tbaa !9
  %121 = load i32, i32* %sn, align 4, !tbaa !9
  %122 = load i32, i32* %cas_row, align 4, !tbaa !9
  call void @opj_dwt_deinterleave_h(i32* %118, i32* %119, i32 %120, i32 %121, i32 %122) #6
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end.63
  %123 = load i32, i32* %j, align 4, !tbaa !9
  %inc65 = add nsw i32 %123, 1
  store i32 %inc65, i32* %j, align 4, !tbaa !9
  br label %for.cond.46

for.end.66:                                       ; preds = %for.cond.46
  %124 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_last_res, align 8, !tbaa !1
  store %struct.opj_tcd_resolution* %124, %struct.opj_tcd_resolution** %l_cur_res, align 8, !tbaa !1
  %125 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %l_last_res, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %125, i32 -1
  store %struct.opj_tcd_resolution* %incdec.ptr, %struct.opj_tcd_resolution** %l_last_res, align 8, !tbaa !1
  %126 = bitcast i32* %sn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast i32* %dn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = bitcast i32* %cas_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %cas_col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i32* %rh1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast i32* %rw1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %132 = load i32*, i32** %bj, align 8, !tbaa !1
  %133 = bitcast i32* %132 to i8*
  call void @free(i8* %133) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %134 = bitcast %struct.opj_tcd_resolution** %l_last_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  %135 = bitcast %struct.opj_tcd_resolution** %l_cur_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #2
  %136 = bitcast i32* %l_data_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast i32* %rh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %rw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32** %bj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  %142 = bitcast i32** %aj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast i32** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #2
  %144 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %147 = load i32, i32* %retval
  ret i32 %147
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_encode_1(i32* %a, i32 %dn, i32 %sn, i32 %cas) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %dn.addr = alloca i32, align 4
  %sn.addr = alloca i32, align 4
  %cas.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8, !tbaa !1
  store i32 %dn, i32* %dn.addr, align 4, !tbaa !9
  store i32 %sn, i32* %sn.addr, align 4, !tbaa !9
  store i32 %cas, i32* %cas.addr, align 4, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %cas.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4, !tbaa !9
  %5 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !9
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !9
  br label %cond.end.12

cond.false:                                       ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !9
  %10 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp5 = icmp sge i32 %9, %10
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.false
  %11 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %11, 1
  %mul = mul nsw i32 %sub, 2
  %idxprom = sext i32 %mul to i64
  %12 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx7, align 4, !tbaa !9
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %14 = load i32, i32* %i, align 4, !tbaa !9
  %mul9 = mul nsw i32 %14, 2
  %idxprom10 = sext i32 %mul9 to i64
  %15 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom10
  %16 = load i32, i32* %arrayidx11, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.6
  %cond = phi i32 [ %13, %cond.true.6 ], [ %16, %cond.false.8 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ %8, %cond.true ], [ %cond, %cond.end ]
  %17 = load i32, i32* %i, align 4, !tbaa !9
  %add = add nsw i32 %17, 1
  %cmp14 = icmp slt i32 %add, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end.12
  %18 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx16, align 4, !tbaa !9
  br label %cond.end.32

cond.false.17:                                    ; preds = %cond.end.12
  %20 = load i32, i32* %i, align 4, !tbaa !9
  %add18 = add nsw i32 %20, 1
  %21 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp19 = icmp sge i32 %add18, %21
  br i1 %cmp19, label %cond.true.20, label %cond.false.25

cond.true.20:                                     ; preds = %cond.false.17
  %22 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub21 = sub nsw i32 %22, 1
  %mul22 = mul nsw i32 %sub21, 2
  %idxprom23 = sext i32 %mul22 to i64
  %23 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i32, i32* %23, i64 %idxprom23
  %24 = load i32, i32* %arrayidx24, align 4, !tbaa !9
  br label %cond.end.30

cond.false.25:                                    ; preds = %cond.false.17
  %25 = load i32, i32* %i, align 4, !tbaa !9
  %add26 = add nsw i32 %25, 1
  %mul27 = mul nsw i32 %add26, 2
  %idxprom28 = sext i32 %mul27 to i64
  %26 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %26, i64 %idxprom28
  %27 = load i32, i32* %arrayidx29, align 4, !tbaa !9
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.25, %cond.true.20
  %cond31 = phi i32 [ %24, %cond.true.20 ], [ %27, %cond.false.25 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.15
  %cond33 = phi i32 [ %19, %cond.true.15 ], [ %cond31, %cond.end.30 ]
  %add34 = add nsw i32 %cond13, %cond33
  %shr = ashr i32 %add34, 1
  %28 = load i32, i32* %i, align 4, !tbaa !9
  %mul35 = mul nsw i32 %28, 2
  %add36 = add nsw i32 1, %mul35
  %idxprom37 = sext i32 %add36 to i64
  %29 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i32, i32* %29, i64 %idxprom37
  %30 = load i32, i32* %arrayidx38, align 4, !tbaa !9
  %sub39 = sub nsw i32 %30, %shr
  store i32 %sub39, i32* %arrayidx38, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %cond.end.32
  %31 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.93, %for.end
  %32 = load i32, i32* %i, align 4, !tbaa !9
  %33 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp41 = icmp slt i32 %32, %33
  br i1 %cmp41, label %for.body.42, label %for.end.95

for.body.42:                                      ; preds = %for.cond.40
  %34 = load i32, i32* %i, align 4, !tbaa !9
  %sub43 = sub nsw i32 %34, 1
  %cmp44 = icmp slt i32 %sub43, 0
  br i1 %cmp44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %for.body.42
  %35 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i32, i32* %35, i64 1
  %36 = load i32, i32* %arrayidx46, align 4, !tbaa !9
  br label %cond.end.64

cond.false.47:                                    ; preds = %for.body.42
  %37 = load i32, i32* %i, align 4, !tbaa !9
  %sub48 = sub nsw i32 %37, 1
  %38 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp49 = icmp sge i32 %sub48, %38
  br i1 %cmp49, label %cond.true.50, label %cond.false.56

cond.true.50:                                     ; preds = %cond.false.47
  %39 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub51 = sub nsw i32 %39, 1
  %mul52 = mul nsw i32 %sub51, 2
  %add53 = add nsw i32 1, %mul52
  %idxprom54 = sext i32 %add53 to i64
  %40 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %40, i64 %idxprom54
  %41 = load i32, i32* %arrayidx55, align 4, !tbaa !9
  br label %cond.end.62

cond.false.56:                                    ; preds = %cond.false.47
  %42 = load i32, i32* %i, align 4, !tbaa !9
  %sub57 = sub nsw i32 %42, 1
  %mul58 = mul nsw i32 %sub57, 2
  %add59 = add nsw i32 1, %mul58
  %idxprom60 = sext i32 %add59 to i64
  %43 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i32, i32* %43, i64 %idxprom60
  %44 = load i32, i32* %arrayidx61, align 4, !tbaa !9
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.56, %cond.true.50
  %cond63 = phi i32 [ %41, %cond.true.50 ], [ %44, %cond.false.56 ]
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.end.62, %cond.true.45
  %cond65 = phi i32 [ %36, %cond.true.45 ], [ %cond63, %cond.end.62 ]
  %45 = load i32, i32* %i, align 4, !tbaa !9
  %cmp66 = icmp slt i32 %45, 0
  br i1 %cmp66, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %cond.end.64
  %46 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %46, i64 1
  %47 = load i32, i32* %arrayidx68, align 4, !tbaa !9
  br label %cond.end.84

cond.false.69:                                    ; preds = %cond.end.64
  %48 = load i32, i32* %i, align 4, !tbaa !9
  %49 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp70 = icmp sge i32 %48, %49
  br i1 %cmp70, label %cond.true.71, label %cond.false.77

cond.true.71:                                     ; preds = %cond.false.69
  %50 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub72 = sub nsw i32 %50, 1
  %mul73 = mul nsw i32 %sub72, 2
  %add74 = add nsw i32 1, %mul73
  %idxprom75 = sext i32 %add74 to i64
  %51 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i32, i32* %51, i64 %idxprom75
  %52 = load i32, i32* %arrayidx76, align 4, !tbaa !9
  br label %cond.end.82

cond.false.77:                                    ; preds = %cond.false.69
  %53 = load i32, i32* %i, align 4, !tbaa !9
  %mul78 = mul nsw i32 %53, 2
  %add79 = add nsw i32 1, %mul78
  %idxprom80 = sext i32 %add79 to i64
  %54 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i32, i32* %54, i64 %idxprom80
  %55 = load i32, i32* %arrayidx81, align 4, !tbaa !9
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.77, %cond.true.71
  %cond83 = phi i32 [ %52, %cond.true.71 ], [ %55, %cond.false.77 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.67
  %cond85 = phi i32 [ %47, %cond.true.67 ], [ %cond83, %cond.end.82 ]
  %add86 = add nsw i32 %cond65, %cond85
  %add87 = add nsw i32 %add86, 2
  %shr88 = ashr i32 %add87, 2
  %56 = load i32, i32* %i, align 4, !tbaa !9
  %mul89 = mul nsw i32 %56, 2
  %idxprom90 = sext i32 %mul89 to i64
  %57 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %57, i64 %idxprom90
  %58 = load i32, i32* %arrayidx91, align 4, !tbaa !9
  %add92 = add nsw i32 %58, %shr88
  store i32 %add92, i32* %arrayidx91, align 4, !tbaa !9
  br label %for.inc.93

for.inc.93:                                       ; preds = %cond.end.84
  %59 = load i32, i32* %i, align 4, !tbaa !9
  %inc94 = add nsw i32 %59, 1
  store i32 %inc94, i32* %i, align 4, !tbaa !9
  br label %for.cond.40

for.end.95:                                       ; preds = %for.cond.40
  br label %if.end

if.end:                                           ; preds = %for.end.95, %lor.lhs.false
  br label %if.end.211

if.else:                                          ; preds = %entry
  %60 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %tobool96 = icmp ne i32 %60, 0
  br i1 %tobool96, label %if.else.101, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %61 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp97 = icmp eq i32 %61, 1
  br i1 %cmp97, label %if.then.98, label %if.else.101

if.then.98:                                       ; preds = %land.lhs.true
  %62 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i32, i32* %62, i64 0
  %63 = load i32, i32* %arrayidx99, align 4, !tbaa !9
  %mul100 = mul nsw i32 %63, 2
  store i32 %mul100, i32* %arrayidx99, align 4, !tbaa !9
  br label %if.end.210

if.else.101:                                      ; preds = %land.lhs.true, %if.else
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.154, %if.else.101
  %64 = load i32, i32* %i, align 4, !tbaa !9
  %65 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp103 = icmp slt i32 %64, %65
  br i1 %cmp103, label %for.body.104, label %for.end.156

for.body.104:                                     ; preds = %for.cond.102
  %66 = load i32, i32* %i, align 4, !tbaa !9
  %cmp105 = icmp slt i32 %66, 0
  br i1 %cmp105, label %cond.true.106, label %cond.false.108

cond.true.106:                                    ; preds = %for.body.104
  %67 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i32, i32* %67, i64 1
  %68 = load i32, i32* %arrayidx107, align 4, !tbaa !9
  br label %cond.end.123

cond.false.108:                                   ; preds = %for.body.104
  %69 = load i32, i32* %i, align 4, !tbaa !9
  %70 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp109 = icmp sge i32 %69, %70
  br i1 %cmp109, label %cond.true.110, label %cond.false.116

cond.true.110:                                    ; preds = %cond.false.108
  %71 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub111 = sub nsw i32 %71, 1
  %mul112 = mul nsw i32 %sub111, 2
  %add113 = add nsw i32 1, %mul112
  %idxprom114 = sext i32 %add113 to i64
  %72 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i32, i32* %72, i64 %idxprom114
  %73 = load i32, i32* %arrayidx115, align 4, !tbaa !9
  br label %cond.end.121

cond.false.116:                                   ; preds = %cond.false.108
  %74 = load i32, i32* %i, align 4, !tbaa !9
  %mul117 = mul nsw i32 %74, 2
  %add118 = add nsw i32 1, %mul117
  %idxprom119 = sext i32 %add118 to i64
  %75 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i32, i32* %75, i64 %idxprom119
  %76 = load i32, i32* %arrayidx120, align 4, !tbaa !9
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.116, %cond.true.110
  %cond122 = phi i32 [ %73, %cond.true.110 ], [ %76, %cond.false.116 ]
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.end.121, %cond.true.106
  %cond124 = phi i32 [ %68, %cond.true.106 ], [ %cond122, %cond.end.121 ]
  %77 = load i32, i32* %i, align 4, !tbaa !9
  %sub125 = sub nsw i32 %77, 1
  %cmp126 = icmp slt i32 %sub125, 0
  br i1 %cmp126, label %cond.true.127, label %cond.false.129

cond.true.127:                                    ; preds = %cond.end.123
  %78 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i32, i32* %78, i64 1
  %79 = load i32, i32* %arrayidx128, align 4, !tbaa !9
  br label %cond.end.146

cond.false.129:                                   ; preds = %cond.end.123
  %80 = load i32, i32* %i, align 4, !tbaa !9
  %sub130 = sub nsw i32 %80, 1
  %81 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp131 = icmp sge i32 %sub130, %81
  br i1 %cmp131, label %cond.true.132, label %cond.false.138

cond.true.132:                                    ; preds = %cond.false.129
  %82 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub133 = sub nsw i32 %82, 1
  %mul134 = mul nsw i32 %sub133, 2
  %add135 = add nsw i32 1, %mul134
  %idxprom136 = sext i32 %add135 to i64
  %83 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i32, i32* %83, i64 %idxprom136
  %84 = load i32, i32* %arrayidx137, align 4, !tbaa !9
  br label %cond.end.144

cond.false.138:                                   ; preds = %cond.false.129
  %85 = load i32, i32* %i, align 4, !tbaa !9
  %sub139 = sub nsw i32 %85, 1
  %mul140 = mul nsw i32 %sub139, 2
  %add141 = add nsw i32 1, %mul140
  %idxprom142 = sext i32 %add141 to i64
  %86 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i32, i32* %86, i64 %idxprom142
  %87 = load i32, i32* %arrayidx143, align 4, !tbaa !9
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.138, %cond.true.132
  %cond145 = phi i32 [ %84, %cond.true.132 ], [ %87, %cond.false.138 ]
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.end.144, %cond.true.127
  %cond147 = phi i32 [ %79, %cond.true.127 ], [ %cond145, %cond.end.144 ]
  %add148 = add nsw i32 %cond124, %cond147
  %shr149 = ashr i32 %add148, 1
  %88 = load i32, i32* %i, align 4, !tbaa !9
  %mul150 = mul nsw i32 %88, 2
  %idxprom151 = sext i32 %mul150 to i64
  %89 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i32, i32* %89, i64 %idxprom151
  %90 = load i32, i32* %arrayidx152, align 4, !tbaa !9
  %sub153 = sub nsw i32 %90, %shr149
  store i32 %sub153, i32* %arrayidx152, align 4, !tbaa !9
  br label %for.inc.154

for.inc.154:                                      ; preds = %cond.end.146
  %91 = load i32, i32* %i, align 4, !tbaa !9
  %inc155 = add nsw i32 %91, 1
  store i32 %inc155, i32* %i, align 4, !tbaa !9
  br label %for.cond.102

for.end.156:                                      ; preds = %for.cond.102
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.207, %for.end.156
  %92 = load i32, i32* %i, align 4, !tbaa !9
  %93 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp158 = icmp slt i32 %92, %93
  br i1 %cmp158, label %for.body.159, label %for.end.209

for.body.159:                                     ; preds = %for.cond.157
  %94 = load i32, i32* %i, align 4, !tbaa !9
  %cmp160 = icmp slt i32 %94, 0
  br i1 %cmp160, label %cond.true.161, label %cond.false.163

cond.true.161:                                    ; preds = %for.body.159
  %95 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i32, i32* %95, i64 0
  %96 = load i32, i32* %arrayidx162, align 4, !tbaa !9
  br label %cond.end.176

cond.false.163:                                   ; preds = %for.body.159
  %97 = load i32, i32* %i, align 4, !tbaa !9
  %98 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp164 = icmp sge i32 %97, %98
  br i1 %cmp164, label %cond.true.165, label %cond.false.170

cond.true.165:                                    ; preds = %cond.false.163
  %99 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub166 = sub nsw i32 %99, 1
  %mul167 = mul nsw i32 %sub166, 2
  %idxprom168 = sext i32 %mul167 to i64
  %100 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds i32, i32* %100, i64 %idxprom168
  %101 = load i32, i32* %arrayidx169, align 4, !tbaa !9
  br label %cond.end.174

cond.false.170:                                   ; preds = %cond.false.163
  %102 = load i32, i32* %i, align 4, !tbaa !9
  %mul171 = mul nsw i32 %102, 2
  %idxprom172 = sext i32 %mul171 to i64
  %103 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds i32, i32* %103, i64 %idxprom172
  %104 = load i32, i32* %arrayidx173, align 4, !tbaa !9
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.170, %cond.true.165
  %cond175 = phi i32 [ %101, %cond.true.165 ], [ %104, %cond.false.170 ]
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.end.174, %cond.true.161
  %cond177 = phi i32 [ %96, %cond.true.161 ], [ %cond175, %cond.end.174 ]
  %105 = load i32, i32* %i, align 4, !tbaa !9
  %add178 = add nsw i32 %105, 1
  %cmp179 = icmp slt i32 %add178, 0
  br i1 %cmp179, label %cond.true.180, label %cond.false.182

cond.true.180:                                    ; preds = %cond.end.176
  %106 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i32, i32* %106, i64 0
  %107 = load i32, i32* %arrayidx181, align 4, !tbaa !9
  br label %cond.end.197

cond.false.182:                                   ; preds = %cond.end.176
  %108 = load i32, i32* %i, align 4, !tbaa !9
  %add183 = add nsw i32 %108, 1
  %109 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp184 = icmp sge i32 %add183, %109
  br i1 %cmp184, label %cond.true.185, label %cond.false.190

cond.true.185:                                    ; preds = %cond.false.182
  %110 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub186 = sub nsw i32 %110, 1
  %mul187 = mul nsw i32 %sub186, 2
  %idxprom188 = sext i32 %mul187 to i64
  %111 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i32, i32* %111, i64 %idxprom188
  %112 = load i32, i32* %arrayidx189, align 4, !tbaa !9
  br label %cond.end.195

cond.false.190:                                   ; preds = %cond.false.182
  %113 = load i32, i32* %i, align 4, !tbaa !9
  %add191 = add nsw i32 %113, 1
  %mul192 = mul nsw i32 %add191, 2
  %idxprom193 = sext i32 %mul192 to i64
  %114 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i32, i32* %114, i64 %idxprom193
  %115 = load i32, i32* %arrayidx194, align 4, !tbaa !9
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.190, %cond.true.185
  %cond196 = phi i32 [ %112, %cond.true.185 ], [ %115, %cond.false.190 ]
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.end.195, %cond.true.180
  %cond198 = phi i32 [ %107, %cond.true.180 ], [ %cond196, %cond.end.195 ]
  %add199 = add nsw i32 %cond177, %cond198
  %add200 = add nsw i32 %add199, 2
  %shr201 = ashr i32 %add200, 2
  %116 = load i32, i32* %i, align 4, !tbaa !9
  %mul202 = mul nsw i32 %116, 2
  %add203 = add nsw i32 1, %mul202
  %idxprom204 = sext i32 %add203 to i64
  %117 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i32, i32* %117, i64 %idxprom204
  %118 = load i32, i32* %arrayidx205, align 4, !tbaa !9
  %add206 = add nsw i32 %118, %shr201
  store i32 %add206, i32* %arrayidx205, align 4, !tbaa !9
  br label %for.inc.207

for.inc.207:                                      ; preds = %cond.end.197
  %119 = load i32, i32* %i, align 4, !tbaa !9
  %inc208 = add nsw i32 %119, 1
  store i32 %inc208, i32* %i, align 4, !tbaa !9
  br label %for.cond.157

for.end.209:                                      ; preds = %for.cond.157
  br label %if.end.210

if.end.210:                                       ; preds = %for.end.209, %if.then.98
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end
  %120 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_dwt_decode(%struct.opj_tcd_tilecomp* %tilec, i32 %numres) #0 {
entry:
  %tilec.addr = alloca %struct.opj_tcd_tilecomp*, align 8
  %numres.addr = alloca i32, align 4
  store %struct.opj_tcd_tilecomp* %tilec, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  store i32 %numres, i32* %numres.addr, align 4, !tbaa !9
  %0 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %1 = load i32, i32* %numres.addr, align 4, !tbaa !9
  %call = call i32 @opj_dwt_decode_tile(%struct.opj_tcd_tilecomp* %0, i32 %1, void (%struct.dwt_local*)* @opj_dwt_decode_1) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @opj_dwt_decode_tile(%struct.opj_tcd_tilecomp* %tilec, i32 %numres, void (%struct.dwt_local*)* %dwt_1D) #0 {
entry:
  %retval = alloca i32, align 4
  %tilec.addr = alloca %struct.opj_tcd_tilecomp*, align 8
  %numres.addr = alloca i32, align 4
  %dwt_1D.addr = alloca void (%struct.dwt_local*)*, align 8
  %h = alloca %struct.dwt_local, align 8
  %v = alloca %struct.dwt_local, align 8
  %tr = alloca %struct.opj_tcd_resolution*, align 8
  %rw = alloca i32, align 4
  %rh = alloca i32, align 4
  %w = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tiledp = alloca i32*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.opj_tcd_tilecomp* %tilec, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  store i32 %numres, i32* %numres.addr, align 4, !tbaa !9
  store void (%struct.dwt_local*)* %dwt_1D, void (%struct.dwt_local*)** %dwt_1D.addr, align 8, !tbaa !1
  %0 = bitcast %struct.dwt_local* %h to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.dwt_local* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast %struct.opj_tcd_resolution** %tr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %3, i32 0, i32 6
  %4 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !12
  store %struct.opj_tcd_resolution* %4, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %5 = bitcast i32* %rw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %6, i32 0, i32 2
  %7 = load i32, i32* %x1, align 4, !tbaa !13
  %8 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %8, i32 0, i32 0
  %9 = load i32, i32* %x0, align 4, !tbaa !15
  %sub = sub nsw i32 %7, %9
  store i32 %sub, i32* %rw, align 4, !tbaa !9
  %10 = bitcast i32* %rh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %11, i32 0, i32 3
  %12 = load i32, i32* %y1, align 4, !tbaa !16
  %13 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %13, i32 0, i32 1
  %14 = load i32, i32* %y0, align 4, !tbaa !17
  %sub1 = sub nsw i32 %12, %14
  store i32 %sub1, i32* %rh, align 4, !tbaa !9
  %15 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x12 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %16, i32 0, i32 2
  %17 = load i32, i32* %x12, align 4, !tbaa !5
  %18 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x03 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %18, i32 0, i32 0
  %19 = load i32, i32* %x03, align 4, !tbaa !8
  %sub4 = sub nsw i32 %17, %19
  store i32 %sub4, i32* %w, align 4, !tbaa !9
  %20 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %21 = load i32, i32* %numres.addr, align 4, !tbaa !9
  %call = call i32 @opj_dwt_max_resolution(%struct.opj_tcd_resolution* %20, i32 %21) #6
  %conv = zext i32 %call to i64
  %mul = mul i64 %conv, 4
  %call5 = call noalias i8* @malloc(i64 %mul) #7
  %22 = bitcast i8* %call5 to i32*
  %mem = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %h, i32 0, i32 0
  store i32* %22, i32** %mem, align 8, !tbaa !18
  %mem6 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %h, i32 0, i32 0
  %23 = load i32*, i32** %mem6, align 8, !tbaa !18
  %tobool = icmp ne i32* %23, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %mem7 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %h, i32 0, i32 0
  %24 = load i32*, i32** %mem7, align 8, !tbaa !18
  %mem8 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %v, i32 0, i32 0
  store i32* %24, i32** %mem8, align 8, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %for.end.56, %if.end
  %25 = load i32, i32* %numres.addr, align 4, !tbaa !9
  %dec = add i32 %25, -1
  store i32 %dec, i32* %numres.addr, align 4, !tbaa !9
  %tobool9 = icmp ne i32 %dec, 0
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = bitcast i32** %tiledp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %27, i32 0, i32 8
  %28 = load i32*, i32** %data, align 8, !tbaa !11
  store i32* %28, i32** %tiledp, align 8, !tbaa !1
  %29 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %30, i32 1
  store %struct.opj_tcd_resolution* %incdec.ptr, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %31 = load i32, i32* %rw, align 4, !tbaa !9
  %sn = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %h, i32 0, i32 2
  store i32 %31, i32* %sn, align 4, !tbaa !20
  %32 = load i32, i32* %rh, align 4, !tbaa !9
  %sn10 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %v, i32 0, i32 2
  store i32 %32, i32* %sn10, align 4, !tbaa !20
  %33 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %x111 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %33, i32 0, i32 2
  %34 = load i32, i32* %x111, align 4, !tbaa !13
  %35 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %x012 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %35, i32 0, i32 0
  %36 = load i32, i32* %x012, align 4, !tbaa !15
  %sub13 = sub nsw i32 %34, %36
  store i32 %sub13, i32* %rw, align 4, !tbaa !9
  %37 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %y114 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %37, i32 0, i32 3
  %38 = load i32, i32* %y114, align 4, !tbaa !16
  %39 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %y015 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %39, i32 0, i32 1
  %40 = load i32, i32* %y015, align 4, !tbaa !17
  %sub16 = sub nsw i32 %38, %40
  store i32 %sub16, i32* %rh, align 4, !tbaa !9
  %41 = load i32, i32* %rw, align 4, !tbaa !9
  %sn17 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %h, i32 0, i32 2
  %42 = load i32, i32* %sn17, align 4, !tbaa !20
  %sub18 = sub i32 %41, %42
  %dn = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %h, i32 0, i32 1
  store i32 %sub18, i32* %dn, align 4, !tbaa !21
  %43 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %x019 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %43, i32 0, i32 0
  %44 = load i32, i32* %x019, align 4, !tbaa !15
  %rem = srem i32 %44, 2
  %cas = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %h, i32 0, i32 3
  store i32 %rem, i32* %cas, align 4, !tbaa !22
  store i32 0, i32* %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %45 = load i32, i32* %j, align 4, !tbaa !9
  %46 = load i32, i32* %rh, align 4, !tbaa !9
  %cmp = icmp ult i32 %45, %46
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %j, align 4, !tbaa !9
  %48 = load i32, i32* %w, align 4, !tbaa !9
  %mul21 = mul i32 %47, %48
  %idxprom = zext i32 %mul21 to i64
  %49 = load i32*, i32** %tiledp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %49, i64 %idxprom
  call void @opj_dwt_interleave_h(%struct.dwt_local* %h, i32* %arrayidx) #6
  %50 = load void (%struct.dwt_local*)*, void (%struct.dwt_local*)** %dwt_1D.addr, align 8, !tbaa !1
  call void %50(%struct.dwt_local* %h) #6
  %51 = load i32, i32* %j, align 4, !tbaa !9
  %52 = load i32, i32* %w, align 4, !tbaa !9
  %mul22 = mul i32 %51, %52
  %idxprom23 = zext i32 %mul22 to i64
  %53 = load i32*, i32** %tiledp, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i32, i32* %53, i64 %idxprom23
  %54 = bitcast i32* %arrayidx24 to i8*
  %mem25 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %h, i32 0, i32 0
  %55 = load i32*, i32** %mem25, align 8, !tbaa !18
  %56 = bitcast i32* %55 to i8*
  %57 = load i32, i32* %rw, align 4, !tbaa !9
  %conv26 = zext i32 %57 to i64
  %mul27 = mul i64 %conv26, 4
  %call28 = call i8* @memcpy(i8* %54, i8* %56, i64 %mul27) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %j, align 4, !tbaa !9
  %inc = add i32 %58, 1
  store i32 %inc, i32* %j, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load i32, i32* %rh, align 4, !tbaa !9
  %sn29 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %v, i32 0, i32 2
  %60 = load i32, i32* %sn29, align 4, !tbaa !20
  %sub30 = sub i32 %59, %60
  %dn31 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %v, i32 0, i32 1
  store i32 %sub30, i32* %dn31, align 4, !tbaa !21
  %61 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %tr, align 8, !tbaa !1
  %y032 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %61, i32 0, i32 1
  %62 = load i32, i32* %y032, align 4, !tbaa !17
  %rem33 = srem i32 %62, 2
  %cas34 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %v, i32 0, i32 3
  store i32 %rem33, i32* %cas34, align 4, !tbaa !22
  store i32 0, i32* %j, align 4, !tbaa !9
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.54, %for.end
  %63 = load i32, i32* %j, align 4, !tbaa !9
  %64 = load i32, i32* %rw, align 4, !tbaa !9
  %cmp36 = icmp ult i32 %63, %64
  br i1 %cmp36, label %for.body.38, label %for.end.56

for.body.38:                                      ; preds = %for.cond.35
  %65 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %66 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom39 = zext i32 %66 to i64
  %67 = load i32*, i32** %tiledp, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %67, i64 %idxprom39
  %68 = load i32, i32* %w, align 4, !tbaa !9
  call void @opj_dwt_interleave_v(%struct.dwt_local* %v, i32* %arrayidx40, i32 %68) #6
  %69 = load void (%struct.dwt_local*)*, void (%struct.dwt_local*)** %dwt_1D.addr, align 8, !tbaa !1
  call void %69(%struct.dwt_local* %v) #6
  store i32 0, i32* %k, align 4, !tbaa !9
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.51, %for.body.38
  %70 = load i32, i32* %k, align 4, !tbaa !9
  %71 = load i32, i32* %rh, align 4, !tbaa !9
  %cmp42 = icmp ult i32 %70, %71
  br i1 %cmp42, label %for.body.44, label %for.end.53

for.body.44:                                      ; preds = %for.cond.41
  %72 = load i32, i32* %k, align 4, !tbaa !9
  %idxprom45 = zext i32 %72 to i64
  %mem46 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %v, i32 0, i32 0
  %73 = load i32*, i32** %mem46, align 8, !tbaa !18
  %arrayidx47 = getelementptr inbounds i32, i32* %73, i64 %idxprom45
  %74 = load i32, i32* %arrayidx47, align 4, !tbaa !9
  %75 = load i32, i32* %k, align 4, !tbaa !9
  %76 = load i32, i32* %w, align 4, !tbaa !9
  %mul48 = mul i32 %75, %76
  %77 = load i32, i32* %j, align 4, !tbaa !9
  %add = add i32 %mul48, %77
  %idxprom49 = zext i32 %add to i64
  %78 = load i32*, i32** %tiledp, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i32, i32* %78, i64 %idxprom49
  store i32 %74, i32* %arrayidx50, align 4, !tbaa !9
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.44
  %79 = load i32, i32* %k, align 4, !tbaa !9
  %inc52 = add i32 %79, 1
  store i32 %inc52, i32* %k, align 4, !tbaa !9
  br label %for.cond.41

for.end.53:                                       ; preds = %for.cond.41
  %80 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %81 = load i32, i32* %j, align 4, !tbaa !9
  %inc55 = add i32 %81, 1
  store i32 %inc55, i32* %j, align 4, !tbaa !9
  br label %for.cond.35

for.end.56:                                       ; preds = %for.cond.35
  %82 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32** %tiledp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %mem57 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %h, i32 0, i32 0
  %84 = load i32*, i32** %mem57, align 8, !tbaa !18
  %85 = bitcast i32* %84 to i8*
  call void @free(i8* %85) #7
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %86 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %rh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %rw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast %struct.opj_tcd_resolution** %tr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #2
  %90 = bitcast %struct.dwt_local* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %90) #2
  %91 = bitcast %struct.dwt_local* %h to i8*
  call void @llvm.lifetime.end(i64 24, i8* %91) #2
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_decode_1(%struct.dwt_local* %v) #0 {
entry:
  %v.addr = alloca %struct.dwt_local*, align 8
  store %struct.dwt_local* %v, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %0 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %0, i32 0, i32 0
  %1 = load i32*, i32** %mem, align 8, !tbaa !18
  %2 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %dn = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %2, i32 0, i32 1
  %3 = load i32, i32* %dn, align 4, !tbaa !21
  %4 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %sn = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %4, i32 0, i32 2
  %5 = load i32, i32* %sn, align 4, !tbaa !20
  %6 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %cas = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %6, i32 0, i32 3
  %7 = load i32, i32* %cas, align 4, !tbaa !22
  call void @opj_dwt_decode_1_(i32* %1, i32 %3, i32 %5, i32 %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_dwt_getgain(i32 %orient) #0 {
entry:
  %retval = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !9
  %0 = load i32, i32* %orient.addr, align 4, !tbaa !9
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %orient.addr, align 4, !tbaa !9
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %orient.addr, align 4, !tbaa !9
  %cmp2 = icmp eq i32 %2, 2
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define double @opj_dwt_getnorm(i32 %level, i32 %orient) #0 {
entry:
  %level.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4, !tbaa !9
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !9
  %0 = load i32, i32* %level.addr, align 4, !tbaa !9
  %idxprom = zext i32 %0 to i64
  %1 = load i32, i32* %orient.addr, align 4, !tbaa !9
  %idxprom1 = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x [10 x double]], [4 x [10 x double]]* @opj_dwt_norms, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx, i32 0, i64 %idxprom
  %2 = load double, double* %arrayidx2, align 8, !tbaa !23
  ret double %2
}

; Function Attrs: nounwind uwtable
define i32 @opj_dwt_encode_real(%struct.opj_tcd_tilecomp* %tilec) #0 {
entry:
  %tilec.addr = alloca %struct.opj_tcd_tilecomp*, align 8
  store %struct.opj_tcd_tilecomp* %tilec, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %0 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %call = call i32 @opj_dwt_encode_procedure(%struct.opj_tcd_tilecomp* %0, void (i32*, i32, i32, i32)* @opj_dwt_encode_1_real) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_encode_1_real(i32* %a, i32 %dn, i32 %sn, i32 %cas) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %dn.addr = alloca i32, align 4
  %sn.addr = alloca i32, align 4
  %cas.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8, !tbaa !1
  store i32 %dn, i32* %dn.addr, align 4, !tbaa !9
  store i32 %sn, i32* %sn.addr, align 4, !tbaa !9
  store i32 %cas, i32* %cas.addr, align 4, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %cas.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4, !tbaa !9
  %5 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !9
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !9
  br label %cond.end.12

cond.false:                                       ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !9
  %10 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp5 = icmp sge i32 %9, %10
  br i1 %cmp5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.false
  %11 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %11, 1
  %mul = mul nsw i32 %sub, 2
  %idxprom = sext i32 %mul to i64
  %12 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx7, align 4, !tbaa !9
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %14 = load i32, i32* %i, align 4, !tbaa !9
  %mul9 = mul nsw i32 %14, 2
  %idxprom10 = sext i32 %mul9 to i64
  %15 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom10
  %16 = load i32, i32* %arrayidx11, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.6
  %cond = phi i32 [ %13, %cond.true.6 ], [ %16, %cond.false.8 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ %8, %cond.true ], [ %cond, %cond.end ]
  %17 = load i32, i32* %i, align 4, !tbaa !9
  %add = add nsw i32 %17, 1
  %cmp14 = icmp slt i32 %add, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end.12
  %18 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx16, align 4, !tbaa !9
  br label %cond.end.32

cond.false.17:                                    ; preds = %cond.end.12
  %20 = load i32, i32* %i, align 4, !tbaa !9
  %add18 = add nsw i32 %20, 1
  %21 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp19 = icmp sge i32 %add18, %21
  br i1 %cmp19, label %cond.true.20, label %cond.false.25

cond.true.20:                                     ; preds = %cond.false.17
  %22 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub21 = sub nsw i32 %22, 1
  %mul22 = mul nsw i32 %sub21, 2
  %idxprom23 = sext i32 %mul22 to i64
  %23 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i32, i32* %23, i64 %idxprom23
  %24 = load i32, i32* %arrayidx24, align 4, !tbaa !9
  br label %cond.end.30

cond.false.25:                                    ; preds = %cond.false.17
  %25 = load i32, i32* %i, align 4, !tbaa !9
  %add26 = add nsw i32 %25, 1
  %mul27 = mul nsw i32 %add26, 2
  %idxprom28 = sext i32 %mul27 to i64
  %26 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i32, i32* %26, i64 %idxprom28
  %27 = load i32, i32* %arrayidx29, align 4, !tbaa !9
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.25, %cond.true.20
  %cond31 = phi i32 [ %24, %cond.true.20 ], [ %27, %cond.false.25 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.15
  %cond33 = phi i32 [ %19, %cond.true.15 ], [ %cond31, %cond.end.30 ]
  %add34 = add nsw i32 %cond13, %cond33
  %call = call i32 @opj_int_fix_mul(i32 %add34, i32 12993) #6
  %28 = load i32, i32* %i, align 4, !tbaa !9
  %mul35 = mul nsw i32 %28, 2
  %add36 = add nsw i32 1, %mul35
  %idxprom37 = sext i32 %add36 to i64
  %29 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i32, i32* %29, i64 %idxprom37
  %30 = load i32, i32* %arrayidx38, align 4, !tbaa !9
  %sub39 = sub nsw i32 %30, %call
  store i32 %sub39, i32* %arrayidx38, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %cond.end.32
  %31 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.92, %for.end
  %32 = load i32, i32* %i, align 4, !tbaa !9
  %33 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp41 = icmp slt i32 %32, %33
  br i1 %cmp41, label %for.body.42, label %for.end.94

for.body.42:                                      ; preds = %for.cond.40
  %34 = load i32, i32* %i, align 4, !tbaa !9
  %sub43 = sub nsw i32 %34, 1
  %cmp44 = icmp slt i32 %sub43, 0
  br i1 %cmp44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %for.body.42
  %35 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i32, i32* %35, i64 1
  %36 = load i32, i32* %arrayidx46, align 4, !tbaa !9
  br label %cond.end.64

cond.false.47:                                    ; preds = %for.body.42
  %37 = load i32, i32* %i, align 4, !tbaa !9
  %sub48 = sub nsw i32 %37, 1
  %38 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp49 = icmp sge i32 %sub48, %38
  br i1 %cmp49, label %cond.true.50, label %cond.false.56

cond.true.50:                                     ; preds = %cond.false.47
  %39 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub51 = sub nsw i32 %39, 1
  %mul52 = mul nsw i32 %sub51, 2
  %add53 = add nsw i32 1, %mul52
  %idxprom54 = sext i32 %add53 to i64
  %40 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i32, i32* %40, i64 %idxprom54
  %41 = load i32, i32* %arrayidx55, align 4, !tbaa !9
  br label %cond.end.62

cond.false.56:                                    ; preds = %cond.false.47
  %42 = load i32, i32* %i, align 4, !tbaa !9
  %sub57 = sub nsw i32 %42, 1
  %mul58 = mul nsw i32 %sub57, 2
  %add59 = add nsw i32 1, %mul58
  %idxprom60 = sext i32 %add59 to i64
  %43 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i32, i32* %43, i64 %idxprom60
  %44 = load i32, i32* %arrayidx61, align 4, !tbaa !9
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.56, %cond.true.50
  %cond63 = phi i32 [ %41, %cond.true.50 ], [ %44, %cond.false.56 ]
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.end.62, %cond.true.45
  %cond65 = phi i32 [ %36, %cond.true.45 ], [ %cond63, %cond.end.62 ]
  %45 = load i32, i32* %i, align 4, !tbaa !9
  %cmp66 = icmp slt i32 %45, 0
  br i1 %cmp66, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %cond.end.64
  %46 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %46, i64 1
  %47 = load i32, i32* %arrayidx68, align 4, !tbaa !9
  br label %cond.end.84

cond.false.69:                                    ; preds = %cond.end.64
  %48 = load i32, i32* %i, align 4, !tbaa !9
  %49 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp70 = icmp sge i32 %48, %49
  br i1 %cmp70, label %cond.true.71, label %cond.false.77

cond.true.71:                                     ; preds = %cond.false.69
  %50 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub72 = sub nsw i32 %50, 1
  %mul73 = mul nsw i32 %sub72, 2
  %add74 = add nsw i32 1, %mul73
  %idxprom75 = sext i32 %add74 to i64
  %51 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i32, i32* %51, i64 %idxprom75
  %52 = load i32, i32* %arrayidx76, align 4, !tbaa !9
  br label %cond.end.82

cond.false.77:                                    ; preds = %cond.false.69
  %53 = load i32, i32* %i, align 4, !tbaa !9
  %mul78 = mul nsw i32 %53, 2
  %add79 = add nsw i32 1, %mul78
  %idxprom80 = sext i32 %add79 to i64
  %54 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i32, i32* %54, i64 %idxprom80
  %55 = load i32, i32* %arrayidx81, align 4, !tbaa !9
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.77, %cond.true.71
  %cond83 = phi i32 [ %52, %cond.true.71 ], [ %55, %cond.false.77 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.67
  %cond85 = phi i32 [ %47, %cond.true.67 ], [ %cond83, %cond.end.82 ]
  %add86 = add nsw i32 %cond65, %cond85
  %call87 = call i32 @opj_int_fix_mul(i32 %add86, i32 434) #6
  %56 = load i32, i32* %i, align 4, !tbaa !9
  %mul88 = mul nsw i32 %56, 2
  %idxprom89 = sext i32 %mul88 to i64
  %57 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i32, i32* %57, i64 %idxprom89
  %58 = load i32, i32* %arrayidx90, align 4, !tbaa !9
  %sub91 = sub nsw i32 %58, %call87
  store i32 %sub91, i32* %arrayidx90, align 4, !tbaa !9
  br label %for.inc.92

for.inc.92:                                       ; preds = %cond.end.84
  %59 = load i32, i32* %i, align 4, !tbaa !9
  %inc93 = add nsw i32 %59, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !9
  br label %for.cond.40

for.end.94:                                       ; preds = %for.cond.40
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.144, %for.end.94
  %60 = load i32, i32* %i, align 4, !tbaa !9
  %61 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp96 = icmp slt i32 %60, %61
  br i1 %cmp96, label %for.body.97, label %for.end.146

for.body.97:                                      ; preds = %for.cond.95
  %62 = load i32, i32* %i, align 4, !tbaa !9
  %cmp98 = icmp slt i32 %62, 0
  br i1 %cmp98, label %cond.true.99, label %cond.false.101

cond.true.99:                                     ; preds = %for.body.97
  %63 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx100, align 4, !tbaa !9
  br label %cond.end.114

cond.false.101:                                   ; preds = %for.body.97
  %65 = load i32, i32* %i, align 4, !tbaa !9
  %66 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp102 = icmp sge i32 %65, %66
  br i1 %cmp102, label %cond.true.103, label %cond.false.108

cond.true.103:                                    ; preds = %cond.false.101
  %67 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub104 = sub nsw i32 %67, 1
  %mul105 = mul nsw i32 %sub104, 2
  %idxprom106 = sext i32 %mul105 to i64
  %68 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i32, i32* %68, i64 %idxprom106
  %69 = load i32, i32* %arrayidx107, align 4, !tbaa !9
  br label %cond.end.112

cond.false.108:                                   ; preds = %cond.false.101
  %70 = load i32, i32* %i, align 4, !tbaa !9
  %mul109 = mul nsw i32 %70, 2
  %idxprom110 = sext i32 %mul109 to i64
  %71 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i32, i32* %71, i64 %idxprom110
  %72 = load i32, i32* %arrayidx111, align 4, !tbaa !9
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.108, %cond.true.103
  %cond113 = phi i32 [ %69, %cond.true.103 ], [ %72, %cond.false.108 ]
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.end.112, %cond.true.99
  %cond115 = phi i32 [ %64, %cond.true.99 ], [ %cond113, %cond.end.112 ]
  %73 = load i32, i32* %i, align 4, !tbaa !9
  %add116 = add nsw i32 %73, 1
  %cmp117 = icmp slt i32 %add116, 0
  br i1 %cmp117, label %cond.true.118, label %cond.false.120

cond.true.118:                                    ; preds = %cond.end.114
  %74 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds i32, i32* %74, i64 0
  %75 = load i32, i32* %arrayidx119, align 4, !tbaa !9
  br label %cond.end.135

cond.false.120:                                   ; preds = %cond.end.114
  %76 = load i32, i32* %i, align 4, !tbaa !9
  %add121 = add nsw i32 %76, 1
  %77 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp122 = icmp sge i32 %add121, %77
  br i1 %cmp122, label %cond.true.123, label %cond.false.128

cond.true.123:                                    ; preds = %cond.false.120
  %78 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub124 = sub nsw i32 %78, 1
  %mul125 = mul nsw i32 %sub124, 2
  %idxprom126 = sext i32 %mul125 to i64
  %79 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i32, i32* %79, i64 %idxprom126
  %80 = load i32, i32* %arrayidx127, align 4, !tbaa !9
  br label %cond.end.133

cond.false.128:                                   ; preds = %cond.false.120
  %81 = load i32, i32* %i, align 4, !tbaa !9
  %add129 = add nsw i32 %81, 1
  %mul130 = mul nsw i32 %add129, 2
  %idxprom131 = sext i32 %mul130 to i64
  %82 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i32, i32* %82, i64 %idxprom131
  %83 = load i32, i32* %arrayidx132, align 4, !tbaa !9
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.128, %cond.true.123
  %cond134 = phi i32 [ %80, %cond.true.123 ], [ %83, %cond.false.128 ]
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end.133, %cond.true.118
  %cond136 = phi i32 [ %75, %cond.true.118 ], [ %cond134, %cond.end.133 ]
  %add137 = add nsw i32 %cond115, %cond136
  %call138 = call i32 @opj_int_fix_mul(i32 %add137, i32 7233) #6
  %84 = load i32, i32* %i, align 4, !tbaa !9
  %mul139 = mul nsw i32 %84, 2
  %add140 = add nsw i32 1, %mul139
  %idxprom141 = sext i32 %add140 to i64
  %85 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds i32, i32* %85, i64 %idxprom141
  %86 = load i32, i32* %arrayidx142, align 4, !tbaa !9
  %add143 = add nsw i32 %86, %call138
  store i32 %add143, i32* %arrayidx142, align 4, !tbaa !9
  br label %for.inc.144

for.inc.144:                                      ; preds = %cond.end.135
  %87 = load i32, i32* %i, align 4, !tbaa !9
  %inc145 = add nsw i32 %87, 1
  store i32 %inc145, i32* %i, align 4, !tbaa !9
  br label %for.cond.95

for.end.146:                                      ; preds = %for.cond.95
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.199, %for.end.146
  %88 = load i32, i32* %i, align 4, !tbaa !9
  %89 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp148 = icmp slt i32 %88, %89
  br i1 %cmp148, label %for.body.149, label %for.end.201

for.body.149:                                     ; preds = %for.cond.147
  %90 = load i32, i32* %i, align 4, !tbaa !9
  %sub150 = sub nsw i32 %90, 1
  %cmp151 = icmp slt i32 %sub150, 0
  br i1 %cmp151, label %cond.true.152, label %cond.false.154

cond.true.152:                                    ; preds = %for.body.149
  %91 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i32, i32* %91, i64 1
  %92 = load i32, i32* %arrayidx153, align 4, !tbaa !9
  br label %cond.end.171

cond.false.154:                                   ; preds = %for.body.149
  %93 = load i32, i32* %i, align 4, !tbaa !9
  %sub155 = sub nsw i32 %93, 1
  %94 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp156 = icmp sge i32 %sub155, %94
  br i1 %cmp156, label %cond.true.157, label %cond.false.163

cond.true.157:                                    ; preds = %cond.false.154
  %95 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub158 = sub nsw i32 %95, 1
  %mul159 = mul nsw i32 %sub158, 2
  %add160 = add nsw i32 1, %mul159
  %idxprom161 = sext i32 %add160 to i64
  %96 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i32, i32* %96, i64 %idxprom161
  %97 = load i32, i32* %arrayidx162, align 4, !tbaa !9
  br label %cond.end.169

cond.false.163:                                   ; preds = %cond.false.154
  %98 = load i32, i32* %i, align 4, !tbaa !9
  %sub164 = sub nsw i32 %98, 1
  %mul165 = mul nsw i32 %sub164, 2
  %add166 = add nsw i32 1, %mul165
  %idxprom167 = sext i32 %add166 to i64
  %99 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i32, i32* %99, i64 %idxprom167
  %100 = load i32, i32* %arrayidx168, align 4, !tbaa !9
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.163, %cond.true.157
  %cond170 = phi i32 [ %97, %cond.true.157 ], [ %100, %cond.false.163 ]
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.end.169, %cond.true.152
  %cond172 = phi i32 [ %92, %cond.true.152 ], [ %cond170, %cond.end.169 ]
  %101 = load i32, i32* %i, align 4, !tbaa !9
  %cmp173 = icmp slt i32 %101, 0
  br i1 %cmp173, label %cond.true.174, label %cond.false.176

cond.true.174:                                    ; preds = %cond.end.171
  %102 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i32, i32* %102, i64 1
  %103 = load i32, i32* %arrayidx175, align 4, !tbaa !9
  br label %cond.end.191

cond.false.176:                                   ; preds = %cond.end.171
  %104 = load i32, i32* %i, align 4, !tbaa !9
  %105 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp177 = icmp sge i32 %104, %105
  br i1 %cmp177, label %cond.true.178, label %cond.false.184

cond.true.178:                                    ; preds = %cond.false.176
  %106 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub179 = sub nsw i32 %106, 1
  %mul180 = mul nsw i32 %sub179, 2
  %add181 = add nsw i32 1, %mul180
  %idxprom182 = sext i32 %add181 to i64
  %107 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i32, i32* %107, i64 %idxprom182
  %108 = load i32, i32* %arrayidx183, align 4, !tbaa !9
  br label %cond.end.189

cond.false.184:                                   ; preds = %cond.false.176
  %109 = load i32, i32* %i, align 4, !tbaa !9
  %mul185 = mul nsw i32 %109, 2
  %add186 = add nsw i32 1, %mul185
  %idxprom187 = sext i32 %add186 to i64
  %110 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i32, i32* %110, i64 %idxprom187
  %111 = load i32, i32* %arrayidx188, align 4, !tbaa !9
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.184, %cond.true.178
  %cond190 = phi i32 [ %108, %cond.true.178 ], [ %111, %cond.false.184 ]
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.end.189, %cond.true.174
  %cond192 = phi i32 [ %103, %cond.true.174 ], [ %cond190, %cond.end.189 ]
  %add193 = add nsw i32 %cond172, %cond192
  %call194 = call i32 @opj_int_fix_mul(i32 %add193, i32 3633) #6
  %112 = load i32, i32* %i, align 4, !tbaa !9
  %mul195 = mul nsw i32 %112, 2
  %idxprom196 = sext i32 %mul195 to i64
  %113 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i32, i32* %113, i64 %idxprom196
  %114 = load i32, i32* %arrayidx197, align 4, !tbaa !9
  %add198 = add nsw i32 %114, %call194
  store i32 %add198, i32* %arrayidx197, align 4, !tbaa !9
  br label %for.inc.199

for.inc.199:                                      ; preds = %cond.end.191
  %115 = load i32, i32* %i, align 4, !tbaa !9
  %inc200 = add nsw i32 %115, 1
  store i32 %inc200, i32* %i, align 4, !tbaa !9
  br label %for.cond.147

for.end.201:                                      ; preds = %for.cond.147
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.214, %for.end.201
  %116 = load i32, i32* %i, align 4, !tbaa !9
  %117 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp203 = icmp slt i32 %116, %117
  br i1 %cmp203, label %for.body.204, label %for.end.216

for.body.204:                                     ; preds = %for.cond.202
  %118 = load i32, i32* %i, align 4, !tbaa !9
  %mul205 = mul nsw i32 %118, 2
  %add206 = add nsw i32 1, %mul205
  %idxprom207 = sext i32 %add206 to i64
  %119 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i32, i32* %119, i64 %idxprom207
  %120 = load i32, i32* %arrayidx208, align 4, !tbaa !9
  %call209 = call i32 @opj_int_fix_mul(i32 %120, i32 5038) #6
  %121 = load i32, i32* %i, align 4, !tbaa !9
  %mul210 = mul nsw i32 %121, 2
  %add211 = add nsw i32 1, %mul210
  %idxprom212 = sext i32 %add211 to i64
  %122 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i32, i32* %122, i64 %idxprom212
  store i32 %call209, i32* %arrayidx213, align 4, !tbaa !9
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.204
  %123 = load i32, i32* %i, align 4, !tbaa !9
  %inc215 = add nsw i32 %123, 1
  store i32 %inc215, i32* %i, align 4, !tbaa !9
  br label %for.cond.202

for.end.216:                                      ; preds = %for.cond.202
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.227, %for.end.216
  %124 = load i32, i32* %i, align 4, !tbaa !9
  %125 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp218 = icmp slt i32 %124, %125
  br i1 %cmp218, label %for.body.219, label %for.end.229

for.body.219:                                     ; preds = %for.cond.217
  %126 = load i32, i32* %i, align 4, !tbaa !9
  %mul220 = mul nsw i32 %126, 2
  %idxprom221 = sext i32 %mul220 to i64
  %127 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i32, i32* %127, i64 %idxprom221
  %128 = load i32, i32* %arrayidx222, align 4, !tbaa !9
  %call223 = call i32 @opj_int_fix_mul(i32 %128, i32 6659) #6
  %129 = load i32, i32* %i, align 4, !tbaa !9
  %mul224 = mul nsw i32 %129, 2
  %idxprom225 = sext i32 %mul224 to i64
  %130 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i32, i32* %130, i64 %idxprom225
  store i32 %call223, i32* %arrayidx226, align 4, !tbaa !9
  br label %for.inc.227

for.inc.227:                                      ; preds = %for.body.219
  %131 = load i32, i32* %i, align 4, !tbaa !9
  %inc228 = add nsw i32 %131, 1
  store i32 %inc228, i32* %i, align 4, !tbaa !9
  br label %for.cond.217

for.end.229:                                      ; preds = %for.cond.217
  br label %if.end

if.end:                                           ; preds = %for.end.229, %lor.lhs.false
  br label %if.end.477

if.else:                                          ; preds = %entry
  %132 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp230 = icmp sgt i32 %132, 0
  br i1 %cmp230, label %if.then.233, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %if.else
  %133 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp232 = icmp sgt i32 %133, 1
  br i1 %cmp232, label %if.then.233, label %if.end.476

if.then.233:                                      ; preds = %lor.lhs.false.231, %if.else
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.286, %if.then.233
  %134 = load i32, i32* %i, align 4, !tbaa !9
  %135 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp235 = icmp slt i32 %134, %135
  br i1 %cmp235, label %for.body.236, label %for.end.288

for.body.236:                                     ; preds = %for.cond.234
  %136 = load i32, i32* %i, align 4, !tbaa !9
  %cmp237 = icmp slt i32 %136, 0
  br i1 %cmp237, label %cond.true.238, label %cond.false.240

cond.true.238:                                    ; preds = %for.body.236
  %137 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i32, i32* %137, i64 1
  %138 = load i32, i32* %arrayidx239, align 4, !tbaa !9
  br label %cond.end.255

cond.false.240:                                   ; preds = %for.body.236
  %139 = load i32, i32* %i, align 4, !tbaa !9
  %140 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp241 = icmp sge i32 %139, %140
  br i1 %cmp241, label %cond.true.242, label %cond.false.248

cond.true.242:                                    ; preds = %cond.false.240
  %141 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub243 = sub nsw i32 %141, 1
  %mul244 = mul nsw i32 %sub243, 2
  %add245 = add nsw i32 1, %mul244
  %idxprom246 = sext i32 %add245 to i64
  %142 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds i32, i32* %142, i64 %idxprom246
  %143 = load i32, i32* %arrayidx247, align 4, !tbaa !9
  br label %cond.end.253

cond.false.248:                                   ; preds = %cond.false.240
  %144 = load i32, i32* %i, align 4, !tbaa !9
  %mul249 = mul nsw i32 %144, 2
  %add250 = add nsw i32 1, %mul249
  %idxprom251 = sext i32 %add250 to i64
  %145 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i32, i32* %145, i64 %idxprom251
  %146 = load i32, i32* %arrayidx252, align 4, !tbaa !9
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.248, %cond.true.242
  %cond254 = phi i32 [ %143, %cond.true.242 ], [ %146, %cond.false.248 ]
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.end.253, %cond.true.238
  %cond256 = phi i32 [ %138, %cond.true.238 ], [ %cond254, %cond.end.253 ]
  %147 = load i32, i32* %i, align 4, !tbaa !9
  %sub257 = sub nsw i32 %147, 1
  %cmp258 = icmp slt i32 %sub257, 0
  br i1 %cmp258, label %cond.true.259, label %cond.false.261

cond.true.259:                                    ; preds = %cond.end.255
  %148 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx260 = getelementptr inbounds i32, i32* %148, i64 1
  %149 = load i32, i32* %arrayidx260, align 4, !tbaa !9
  br label %cond.end.278

cond.false.261:                                   ; preds = %cond.end.255
  %150 = load i32, i32* %i, align 4, !tbaa !9
  %sub262 = sub nsw i32 %150, 1
  %151 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp263 = icmp sge i32 %sub262, %151
  br i1 %cmp263, label %cond.true.264, label %cond.false.270

cond.true.264:                                    ; preds = %cond.false.261
  %152 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub265 = sub nsw i32 %152, 1
  %mul266 = mul nsw i32 %sub265, 2
  %add267 = add nsw i32 1, %mul266
  %idxprom268 = sext i32 %add267 to i64
  %153 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i32, i32* %153, i64 %idxprom268
  %154 = load i32, i32* %arrayidx269, align 4, !tbaa !9
  br label %cond.end.276

cond.false.270:                                   ; preds = %cond.false.261
  %155 = load i32, i32* %i, align 4, !tbaa !9
  %sub271 = sub nsw i32 %155, 1
  %mul272 = mul nsw i32 %sub271, 2
  %add273 = add nsw i32 1, %mul272
  %idxprom274 = sext i32 %add273 to i64
  %156 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds i32, i32* %156, i64 %idxprom274
  %157 = load i32, i32* %arrayidx275, align 4, !tbaa !9
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.270, %cond.true.264
  %cond277 = phi i32 [ %154, %cond.true.264 ], [ %157, %cond.false.270 ]
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.end.276, %cond.true.259
  %cond279 = phi i32 [ %149, %cond.true.259 ], [ %cond277, %cond.end.276 ]
  %add280 = add nsw i32 %cond256, %cond279
  %call281 = call i32 @opj_int_fix_mul(i32 %add280, i32 12993) #6
  %158 = load i32, i32* %i, align 4, !tbaa !9
  %mul282 = mul nsw i32 %158, 2
  %idxprom283 = sext i32 %mul282 to i64
  %159 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i32, i32* %159, i64 %idxprom283
  %160 = load i32, i32* %arrayidx284, align 4, !tbaa !9
  %sub285 = sub nsw i32 %160, %call281
  store i32 %sub285, i32* %arrayidx284, align 4, !tbaa !9
  br label %for.inc.286

for.inc.286:                                      ; preds = %cond.end.278
  %161 = load i32, i32* %i, align 4, !tbaa !9
  %inc287 = add nsw i32 %161, 1
  store i32 %inc287, i32* %i, align 4, !tbaa !9
  br label %for.cond.234

for.end.288:                                      ; preds = %for.cond.234
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.289

for.cond.289:                                     ; preds = %for.inc.338, %for.end.288
  %162 = load i32, i32* %i, align 4, !tbaa !9
  %163 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp290 = icmp slt i32 %162, %163
  br i1 %cmp290, label %for.body.291, label %for.end.340

for.body.291:                                     ; preds = %for.cond.289
  %164 = load i32, i32* %i, align 4, !tbaa !9
  %cmp292 = icmp slt i32 %164, 0
  br i1 %cmp292, label %cond.true.293, label %cond.false.295

cond.true.293:                                    ; preds = %for.body.291
  %165 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i32, i32* %165, i64 0
  %166 = load i32, i32* %arrayidx294, align 4, !tbaa !9
  br label %cond.end.308

cond.false.295:                                   ; preds = %for.body.291
  %167 = load i32, i32* %i, align 4, !tbaa !9
  %168 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp296 = icmp sge i32 %167, %168
  br i1 %cmp296, label %cond.true.297, label %cond.false.302

cond.true.297:                                    ; preds = %cond.false.295
  %169 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub298 = sub nsw i32 %169, 1
  %mul299 = mul nsw i32 %sub298, 2
  %idxprom300 = sext i32 %mul299 to i64
  %170 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds i32, i32* %170, i64 %idxprom300
  %171 = load i32, i32* %arrayidx301, align 4, !tbaa !9
  br label %cond.end.306

cond.false.302:                                   ; preds = %cond.false.295
  %172 = load i32, i32* %i, align 4, !tbaa !9
  %mul303 = mul nsw i32 %172, 2
  %idxprom304 = sext i32 %mul303 to i64
  %173 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx305 = getelementptr inbounds i32, i32* %173, i64 %idxprom304
  %174 = load i32, i32* %arrayidx305, align 4, !tbaa !9
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.302, %cond.true.297
  %cond307 = phi i32 [ %171, %cond.true.297 ], [ %174, %cond.false.302 ]
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.end.306, %cond.true.293
  %cond309 = phi i32 [ %166, %cond.true.293 ], [ %cond307, %cond.end.306 ]
  %175 = load i32, i32* %i, align 4, !tbaa !9
  %add310 = add nsw i32 %175, 1
  %cmp311 = icmp slt i32 %add310, 0
  br i1 %cmp311, label %cond.true.312, label %cond.false.314

cond.true.312:                                    ; preds = %cond.end.308
  %176 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds i32, i32* %176, i64 0
  %177 = load i32, i32* %arrayidx313, align 4, !tbaa !9
  br label %cond.end.329

cond.false.314:                                   ; preds = %cond.end.308
  %178 = load i32, i32* %i, align 4, !tbaa !9
  %add315 = add nsw i32 %178, 1
  %179 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp316 = icmp sge i32 %add315, %179
  br i1 %cmp316, label %cond.true.317, label %cond.false.322

cond.true.317:                                    ; preds = %cond.false.314
  %180 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub318 = sub nsw i32 %180, 1
  %mul319 = mul nsw i32 %sub318, 2
  %idxprom320 = sext i32 %mul319 to i64
  %181 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx321 = getelementptr inbounds i32, i32* %181, i64 %idxprom320
  %182 = load i32, i32* %arrayidx321, align 4, !tbaa !9
  br label %cond.end.327

cond.false.322:                                   ; preds = %cond.false.314
  %183 = load i32, i32* %i, align 4, !tbaa !9
  %add323 = add nsw i32 %183, 1
  %mul324 = mul nsw i32 %add323, 2
  %idxprom325 = sext i32 %mul324 to i64
  %184 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx326 = getelementptr inbounds i32, i32* %184, i64 %idxprom325
  %185 = load i32, i32* %arrayidx326, align 4, !tbaa !9
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.false.322, %cond.true.317
  %cond328 = phi i32 [ %182, %cond.true.317 ], [ %185, %cond.false.322 ]
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.end.327, %cond.true.312
  %cond330 = phi i32 [ %177, %cond.true.312 ], [ %cond328, %cond.end.327 ]
  %add331 = add nsw i32 %cond309, %cond330
  %call332 = call i32 @opj_int_fix_mul(i32 %add331, i32 434) #6
  %186 = load i32, i32* %i, align 4, !tbaa !9
  %mul333 = mul nsw i32 %186, 2
  %add334 = add nsw i32 1, %mul333
  %idxprom335 = sext i32 %add334 to i64
  %187 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds i32, i32* %187, i64 %idxprom335
  %188 = load i32, i32* %arrayidx336, align 4, !tbaa !9
  %sub337 = sub nsw i32 %188, %call332
  store i32 %sub337, i32* %arrayidx336, align 4, !tbaa !9
  br label %for.inc.338

for.inc.338:                                      ; preds = %cond.end.329
  %189 = load i32, i32* %i, align 4, !tbaa !9
  %inc339 = add nsw i32 %189, 1
  store i32 %inc339, i32* %i, align 4, !tbaa !9
  br label %for.cond.289

for.end.340:                                      ; preds = %for.cond.289
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.341

for.cond.341:                                     ; preds = %for.inc.393, %for.end.340
  %190 = load i32, i32* %i, align 4, !tbaa !9
  %191 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp342 = icmp slt i32 %190, %191
  br i1 %cmp342, label %for.body.343, label %for.end.395

for.body.343:                                     ; preds = %for.cond.341
  %192 = load i32, i32* %i, align 4, !tbaa !9
  %cmp344 = icmp slt i32 %192, 0
  br i1 %cmp344, label %cond.true.345, label %cond.false.347

cond.true.345:                                    ; preds = %for.body.343
  %193 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx346 = getelementptr inbounds i32, i32* %193, i64 1
  %194 = load i32, i32* %arrayidx346, align 4, !tbaa !9
  br label %cond.end.362

cond.false.347:                                   ; preds = %for.body.343
  %195 = load i32, i32* %i, align 4, !tbaa !9
  %196 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp348 = icmp sge i32 %195, %196
  br i1 %cmp348, label %cond.true.349, label %cond.false.355

cond.true.349:                                    ; preds = %cond.false.347
  %197 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub350 = sub nsw i32 %197, 1
  %mul351 = mul nsw i32 %sub350, 2
  %add352 = add nsw i32 1, %mul351
  %idxprom353 = sext i32 %add352 to i64
  %198 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds i32, i32* %198, i64 %idxprom353
  %199 = load i32, i32* %arrayidx354, align 4, !tbaa !9
  br label %cond.end.360

cond.false.355:                                   ; preds = %cond.false.347
  %200 = load i32, i32* %i, align 4, !tbaa !9
  %mul356 = mul nsw i32 %200, 2
  %add357 = add nsw i32 1, %mul356
  %idxprom358 = sext i32 %add357 to i64
  %201 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx359 = getelementptr inbounds i32, i32* %201, i64 %idxprom358
  %202 = load i32, i32* %arrayidx359, align 4, !tbaa !9
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.355, %cond.true.349
  %cond361 = phi i32 [ %199, %cond.true.349 ], [ %202, %cond.false.355 ]
  br label %cond.end.362

cond.end.362:                                     ; preds = %cond.end.360, %cond.true.345
  %cond363 = phi i32 [ %194, %cond.true.345 ], [ %cond361, %cond.end.360 ]
  %203 = load i32, i32* %i, align 4, !tbaa !9
  %sub364 = sub nsw i32 %203, 1
  %cmp365 = icmp slt i32 %sub364, 0
  br i1 %cmp365, label %cond.true.366, label %cond.false.368

cond.true.366:                                    ; preds = %cond.end.362
  %204 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx367 = getelementptr inbounds i32, i32* %204, i64 1
  %205 = load i32, i32* %arrayidx367, align 4, !tbaa !9
  br label %cond.end.385

cond.false.368:                                   ; preds = %cond.end.362
  %206 = load i32, i32* %i, align 4, !tbaa !9
  %sub369 = sub nsw i32 %206, 1
  %207 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp370 = icmp sge i32 %sub369, %207
  br i1 %cmp370, label %cond.true.371, label %cond.false.377

cond.true.371:                                    ; preds = %cond.false.368
  %208 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub372 = sub nsw i32 %208, 1
  %mul373 = mul nsw i32 %sub372, 2
  %add374 = add nsw i32 1, %mul373
  %idxprom375 = sext i32 %add374 to i64
  %209 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx376 = getelementptr inbounds i32, i32* %209, i64 %idxprom375
  %210 = load i32, i32* %arrayidx376, align 4, !tbaa !9
  br label %cond.end.383

cond.false.377:                                   ; preds = %cond.false.368
  %211 = load i32, i32* %i, align 4, !tbaa !9
  %sub378 = sub nsw i32 %211, 1
  %mul379 = mul nsw i32 %sub378, 2
  %add380 = add nsw i32 1, %mul379
  %idxprom381 = sext i32 %add380 to i64
  %212 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx382 = getelementptr inbounds i32, i32* %212, i64 %idxprom381
  %213 = load i32, i32* %arrayidx382, align 4, !tbaa !9
  br label %cond.end.383

cond.end.383:                                     ; preds = %cond.false.377, %cond.true.371
  %cond384 = phi i32 [ %210, %cond.true.371 ], [ %213, %cond.false.377 ]
  br label %cond.end.385

cond.end.385:                                     ; preds = %cond.end.383, %cond.true.366
  %cond386 = phi i32 [ %205, %cond.true.366 ], [ %cond384, %cond.end.383 ]
  %add387 = add nsw i32 %cond363, %cond386
  %call388 = call i32 @opj_int_fix_mul(i32 %add387, i32 7233) #6
  %214 = load i32, i32* %i, align 4, !tbaa !9
  %mul389 = mul nsw i32 %214, 2
  %idxprom390 = sext i32 %mul389 to i64
  %215 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx391 = getelementptr inbounds i32, i32* %215, i64 %idxprom390
  %216 = load i32, i32* %arrayidx391, align 4, !tbaa !9
  %add392 = add nsw i32 %216, %call388
  store i32 %add392, i32* %arrayidx391, align 4, !tbaa !9
  br label %for.inc.393

for.inc.393:                                      ; preds = %cond.end.385
  %217 = load i32, i32* %i, align 4, !tbaa !9
  %inc394 = add nsw i32 %217, 1
  store i32 %inc394, i32* %i, align 4, !tbaa !9
  br label %for.cond.341

for.end.395:                                      ; preds = %for.cond.341
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.396

for.cond.396:                                     ; preds = %for.inc.445, %for.end.395
  %218 = load i32, i32* %i, align 4, !tbaa !9
  %219 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp397 = icmp slt i32 %218, %219
  br i1 %cmp397, label %for.body.398, label %for.end.447

for.body.398:                                     ; preds = %for.cond.396
  %220 = load i32, i32* %i, align 4, !tbaa !9
  %cmp399 = icmp slt i32 %220, 0
  br i1 %cmp399, label %cond.true.400, label %cond.false.402

cond.true.400:                                    ; preds = %for.body.398
  %221 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx401 = getelementptr inbounds i32, i32* %221, i64 0
  %222 = load i32, i32* %arrayidx401, align 4, !tbaa !9
  br label %cond.end.415

cond.false.402:                                   ; preds = %for.body.398
  %223 = load i32, i32* %i, align 4, !tbaa !9
  %224 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp403 = icmp sge i32 %223, %224
  br i1 %cmp403, label %cond.true.404, label %cond.false.409

cond.true.404:                                    ; preds = %cond.false.402
  %225 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub405 = sub nsw i32 %225, 1
  %mul406 = mul nsw i32 %sub405, 2
  %idxprom407 = sext i32 %mul406 to i64
  %226 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds i32, i32* %226, i64 %idxprom407
  %227 = load i32, i32* %arrayidx408, align 4, !tbaa !9
  br label %cond.end.413

cond.false.409:                                   ; preds = %cond.false.402
  %228 = load i32, i32* %i, align 4, !tbaa !9
  %mul410 = mul nsw i32 %228, 2
  %idxprom411 = sext i32 %mul410 to i64
  %229 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds i32, i32* %229, i64 %idxprom411
  %230 = load i32, i32* %arrayidx412, align 4, !tbaa !9
  br label %cond.end.413

cond.end.413:                                     ; preds = %cond.false.409, %cond.true.404
  %cond414 = phi i32 [ %227, %cond.true.404 ], [ %230, %cond.false.409 ]
  br label %cond.end.415

cond.end.415:                                     ; preds = %cond.end.413, %cond.true.400
  %cond416 = phi i32 [ %222, %cond.true.400 ], [ %cond414, %cond.end.413 ]
  %231 = load i32, i32* %i, align 4, !tbaa !9
  %add417 = add nsw i32 %231, 1
  %cmp418 = icmp slt i32 %add417, 0
  br i1 %cmp418, label %cond.true.419, label %cond.false.421

cond.true.419:                                    ; preds = %cond.end.415
  %232 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx420 = getelementptr inbounds i32, i32* %232, i64 0
  %233 = load i32, i32* %arrayidx420, align 4, !tbaa !9
  br label %cond.end.436

cond.false.421:                                   ; preds = %cond.end.415
  %234 = load i32, i32* %i, align 4, !tbaa !9
  %add422 = add nsw i32 %234, 1
  %235 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp423 = icmp sge i32 %add422, %235
  br i1 %cmp423, label %cond.true.424, label %cond.false.429

cond.true.424:                                    ; preds = %cond.false.421
  %236 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub425 = sub nsw i32 %236, 1
  %mul426 = mul nsw i32 %sub425, 2
  %idxprom427 = sext i32 %mul426 to i64
  %237 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx428 = getelementptr inbounds i32, i32* %237, i64 %idxprom427
  %238 = load i32, i32* %arrayidx428, align 4, !tbaa !9
  br label %cond.end.434

cond.false.429:                                   ; preds = %cond.false.421
  %239 = load i32, i32* %i, align 4, !tbaa !9
  %add430 = add nsw i32 %239, 1
  %mul431 = mul nsw i32 %add430, 2
  %idxprom432 = sext i32 %mul431 to i64
  %240 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx433 = getelementptr inbounds i32, i32* %240, i64 %idxprom432
  %241 = load i32, i32* %arrayidx433, align 4, !tbaa !9
  br label %cond.end.434

cond.end.434:                                     ; preds = %cond.false.429, %cond.true.424
  %cond435 = phi i32 [ %238, %cond.true.424 ], [ %241, %cond.false.429 ]
  br label %cond.end.436

cond.end.436:                                     ; preds = %cond.end.434, %cond.true.419
  %cond437 = phi i32 [ %233, %cond.true.419 ], [ %cond435, %cond.end.434 ]
  %add438 = add nsw i32 %cond416, %cond437
  %call439 = call i32 @opj_int_fix_mul(i32 %add438, i32 3633) #6
  %242 = load i32, i32* %i, align 4, !tbaa !9
  %mul440 = mul nsw i32 %242, 2
  %add441 = add nsw i32 1, %mul440
  %idxprom442 = sext i32 %add441 to i64
  %243 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx443 = getelementptr inbounds i32, i32* %243, i64 %idxprom442
  %244 = load i32, i32* %arrayidx443, align 4, !tbaa !9
  %add444 = add nsw i32 %244, %call439
  store i32 %add444, i32* %arrayidx443, align 4, !tbaa !9
  br label %for.inc.445

for.inc.445:                                      ; preds = %cond.end.436
  %245 = load i32, i32* %i, align 4, !tbaa !9
  %inc446 = add nsw i32 %245, 1
  store i32 %inc446, i32* %i, align 4, !tbaa !9
  br label %for.cond.396

for.end.447:                                      ; preds = %for.cond.396
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.448

for.cond.448:                                     ; preds = %for.inc.458, %for.end.447
  %246 = load i32, i32* %i, align 4, !tbaa !9
  %247 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp449 = icmp slt i32 %246, %247
  br i1 %cmp449, label %for.body.450, label %for.end.460

for.body.450:                                     ; preds = %for.cond.448
  %248 = load i32, i32* %i, align 4, !tbaa !9
  %mul451 = mul nsw i32 %248, 2
  %idxprom452 = sext i32 %mul451 to i64
  %249 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx453 = getelementptr inbounds i32, i32* %249, i64 %idxprom452
  %250 = load i32, i32* %arrayidx453, align 4, !tbaa !9
  %call454 = call i32 @opj_int_fix_mul(i32 %250, i32 5038) #6
  %251 = load i32, i32* %i, align 4, !tbaa !9
  %mul455 = mul nsw i32 %251, 2
  %idxprom456 = sext i32 %mul455 to i64
  %252 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx457 = getelementptr inbounds i32, i32* %252, i64 %idxprom456
  store i32 %call454, i32* %arrayidx457, align 4, !tbaa !9
  br label %for.inc.458

for.inc.458:                                      ; preds = %for.body.450
  %253 = load i32, i32* %i, align 4, !tbaa !9
  %inc459 = add nsw i32 %253, 1
  store i32 %inc459, i32* %i, align 4, !tbaa !9
  br label %for.cond.448

for.end.460:                                      ; preds = %for.cond.448
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.461

for.cond.461:                                     ; preds = %for.inc.473, %for.end.460
  %254 = load i32, i32* %i, align 4, !tbaa !9
  %255 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp462 = icmp slt i32 %254, %255
  br i1 %cmp462, label %for.body.463, label %for.end.475

for.body.463:                                     ; preds = %for.cond.461
  %256 = load i32, i32* %i, align 4, !tbaa !9
  %mul464 = mul nsw i32 %256, 2
  %add465 = add nsw i32 1, %mul464
  %idxprom466 = sext i32 %add465 to i64
  %257 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx467 = getelementptr inbounds i32, i32* %257, i64 %idxprom466
  %258 = load i32, i32* %arrayidx467, align 4, !tbaa !9
  %call468 = call i32 @opj_int_fix_mul(i32 %258, i32 6659) #6
  %259 = load i32, i32* %i, align 4, !tbaa !9
  %mul469 = mul nsw i32 %259, 2
  %add470 = add nsw i32 1, %mul469
  %idxprom471 = sext i32 %add470 to i64
  %260 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx472 = getelementptr inbounds i32, i32* %260, i64 %idxprom471
  store i32 %call468, i32* %arrayidx472, align 4, !tbaa !9
  br label %for.inc.473

for.inc.473:                                      ; preds = %for.body.463
  %261 = load i32, i32* %i, align 4, !tbaa !9
  %inc474 = add nsw i32 %261, 1
  store i32 %inc474, i32* %i, align 4, !tbaa !9
  br label %for.cond.461

for.end.475:                                      ; preds = %for.cond.461
  br label %if.end.476

if.end.476:                                       ; preds = %for.end.475, %lor.lhs.false.231
  br label %if.end.477

if.end.477:                                       ; preds = %if.end.476, %if.end
  %262 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @opj_dwt_getgain_real(i32 %orient) #0 {
entry:
  %orient.addr = alloca i32, align 4
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !9
  %0 = load i32, i32* %orient.addr, align 4, !tbaa !9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define double @opj_dwt_getnorm_real(i32 %level, i32 %orient) #0 {
entry:
  %level.addr = alloca i32, align 4
  %orient.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4, !tbaa !9
  store i32 %orient, i32* %orient.addr, align 4, !tbaa !9
  %0 = load i32, i32* %level.addr, align 4, !tbaa !9
  %idxprom = zext i32 %0 to i64
  %1 = load i32, i32* %orient.addr, align 4, !tbaa !9
  %idxprom1 = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x [10 x double]], [4 x [10 x double]]* @opj_dwt_norms_real, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx, i32 0, i64 %idxprom
  %2 = load double, double* %arrayidx2, align 8, !tbaa !23
  ret double %2
}

; Function Attrs: nounwind uwtable
define void @opj_dwt_calc_explicit_stepsizes(%struct.opj_tccp* %tccp, i32 %prec) #0 {
entry:
  %tccp.addr = alloca %struct.opj_tccp*, align 8
  %prec.addr = alloca i32, align 4
  %numbands = alloca i32, align 4
  %bandno = alloca i32, align 4
  %stepsize = alloca double, align 8
  %resno = alloca i32, align 4
  %level = alloca i32, align 4
  %orient = alloca i32, align 4
  %gain = alloca i32, align 4
  %norm = alloca double, align 8
  store %struct.opj_tccp* %tccp, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  store i32 %prec, i32* %prec.addr, align 4, !tbaa !9
  %0 = bitcast i32* %numbands to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %numresolutions = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %2, i32 0, i32 1
  %3 = load i32, i32* %numresolutions, align 4, !tbaa !25
  %mul = mul i32 3, %3
  %sub = sub i32 %mul, 2
  store i32 %sub, i32* %numbands, align 4, !tbaa !9
  store i32 0, i32* %bandno, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %bandno, align 4, !tbaa !9
  %5 = load i32, i32* %numbands, align 4, !tbaa !9
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = bitcast double* %stepsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %gain to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %bandno, align 4, !tbaa !9
  %cmp1 = icmp eq i32 %11, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i32, i32* %bandno, align 4, !tbaa !9
  %sub2 = sub i32 %12, 1
  %div = udiv i32 %sub2, 3
  %add = add i32 %div, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %resno, align 4, !tbaa !9
  %13 = load i32, i32* %bandno, align 4, !tbaa !9
  %cmp3 = icmp eq i32 %13, 0
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  br label %cond.end.8

cond.false.5:                                     ; preds = %cond.end
  %14 = load i32, i32* %bandno, align 4, !tbaa !9
  %sub6 = sub i32 %14, 1
  %rem = urem i32 %sub6, 3
  %add7 = add i32 %rem, 1
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.5, %cond.true.4
  %cond9 = phi i32 [ 0, %cond.true.4 ], [ %add7, %cond.false.5 ]
  store i32 %cond9, i32* %orient, align 4, !tbaa !9
  %15 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %numresolutions10 = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %15, i32 0, i32 1
  %16 = load i32, i32* %numresolutions10, align 4, !tbaa !25
  %sub11 = sub i32 %16, 1
  %17 = load i32, i32* %resno, align 4, !tbaa !9
  %sub12 = sub i32 %sub11, %17
  store i32 %sub12, i32* %level, align 4, !tbaa !9
  %18 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %qmfbid = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %18, i32 0, i32 5
  %19 = load i32, i32* %qmfbid, align 4, !tbaa !27
  %cmp13 = icmp eq i32 %19, 0
  br i1 %cmp13, label %cond.true.14, label %cond.false.15

cond.true.14:                                     ; preds = %cond.end.8
  br label %cond.end.24

cond.false.15:                                    ; preds = %cond.end.8
  %20 = load i32, i32* %orient, align 4, !tbaa !9
  %cmp16 = icmp eq i32 %20, 0
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false.15
  br label %cond.end.22

cond.false.18:                                    ; preds = %cond.false.15
  %21 = load i32, i32* %orient, align 4, !tbaa !9
  %cmp19 = icmp eq i32 %21, 1
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.18
  %22 = load i32, i32* %orient, align 4, !tbaa !9
  %cmp20 = icmp eq i32 %22, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.18
  %23 = phi i1 [ true, %cond.false.18 ], [ %cmp20, %lor.rhs ]
  %cond21 = select i1 %23, i32 1, i32 2
  br label %cond.end.22

cond.end.22:                                      ; preds = %lor.end, %cond.true.17
  %cond23 = phi i32 [ 0, %cond.true.17 ], [ %cond21, %lor.end ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true.14
  %cond25 = phi i32 [ 0, %cond.true.14 ], [ %cond23, %cond.end.22 ]
  store i32 %cond25, i32* %gain, align 4, !tbaa !9
  %24 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %qntsty = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %24, i32 0, i32 6
  %25 = load i32, i32* %qntsty, align 4, !tbaa !28
  %cmp26 = icmp eq i32 %25, 0
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.24
  store double 1.000000e+00, double* %stepsize, align 8, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %cond.end.24
  %26 = bitcast double* %norm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  %27 = load i32, i32* %level, align 4, !tbaa !9
  %idxprom = zext i32 %27 to i64
  %28 = load i32, i32* %orient, align 4, !tbaa !9
  %idxprom27 = zext i32 %28 to i64
  %arrayidx = getelementptr inbounds [4 x [10 x double]], [4 x [10 x double]]* @opj_dwt_norms_real, i32 0, i64 %idxprom27
  %arrayidx28 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx, i32 0, i64 %idxprom
  %29 = load double, double* %arrayidx28, align 8, !tbaa !23
  store double %29, double* %norm, align 8, !tbaa !23
  %30 = load i32, i32* %gain, align 4, !tbaa !9
  %shl = shl i32 1, %30
  %conv = sitofp i32 %shl to double
  %31 = load double, double* %norm, align 8, !tbaa !23
  %div29 = fdiv double %conv, %31
  store double %div29, double* %stepsize, align 8, !tbaa !23
  %32 = bitcast double* %norm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load double, double* %stepsize, align 8, !tbaa !23
  %mul30 = fmul double %33, 8.192000e+03
  %call = call double @floor(double %mul30) #8
  %conv31 = fptosi double %call to i32
  %34 = load i32, i32* %prec.addr, align 4, !tbaa !9
  %35 = load i32, i32* %gain, align 4, !tbaa !9
  %add32 = add i32 %34, %35
  %36 = load i32, i32* %bandno, align 4, !tbaa !9
  %idxprom33 = zext i32 %36 to i64
  %37 = load %struct.opj_tccp*, %struct.opj_tccp** %tccp.addr, align 8, !tbaa !1
  %stepsizes = getelementptr inbounds %struct.opj_tccp, %struct.opj_tccp* %37, i32 0, i32 7
  %arrayidx34 = getelementptr inbounds [97 x %struct.opj_stepsize], [97 x %struct.opj_stepsize]* %stepsizes, i32 0, i64 %idxprom33
  call void @opj_dwt_encode_stepsize(i32 %conv31, i32 %add32, %struct.opj_stepsize* %arrayidx34) #6
  %38 = bitcast i32* %gain to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %orient to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %resno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast double* %stepsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i32, i32* %bandno, align 4, !tbaa !9
  %inc = add i32 %43, 1
  store i32 %inc, i32* %bandno, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = bitcast i32* %bandno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast i32* %numbands to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_encode_stepsize(i32 %stepsize, i32 %numbps, %struct.opj_stepsize* %bandno_stepsize) #0 {
entry:
  %stepsize.addr = alloca i32, align 4
  %numbps.addr = alloca i32, align 4
  %bandno_stepsize.addr = alloca %struct.opj_stepsize*, align 8
  %p = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %stepsize, i32* %stepsize.addr, align 4, !tbaa !9
  store i32 %numbps, i32* %numbps.addr, align 4, !tbaa !9
  store %struct.opj_stepsize* %bandno_stepsize, %struct.opj_stepsize** %bandno_stepsize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i32, i32* %stepsize.addr, align 4, !tbaa !9
  %call = call i32 @opj_int_floorlog2(i32 %2) #6
  %sub = sub nsw i32 %call, 13
  store i32 %sub, i32* %p, align 4, !tbaa !9
  %3 = load i32, i32* %stepsize.addr, align 4, !tbaa !9
  %call1 = call i32 @opj_int_floorlog2(i32 %3) #6
  %sub2 = sub nsw i32 11, %call1
  store i32 %sub2, i32* %n, align 4, !tbaa !9
  %4 = load i32, i32* %n, align 4, !tbaa !9
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %stepsize.addr, align 4, !tbaa !9
  %6 = load i32, i32* %n, align 4, !tbaa !9
  %sub3 = sub nsw i32 0, %6
  %shr = ashr i32 %5, %sub3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %stepsize.addr, align 4, !tbaa !9
  %8 = load i32, i32* %n, align 4, !tbaa !9
  %shl = shl i32 %7, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ %shl, %cond.false ]
  %and = and i32 %cond, 2047
  %9 = load %struct.opj_stepsize*, %struct.opj_stepsize** %bandno_stepsize.addr, align 8, !tbaa !1
  %mant = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %9, i32 0, i32 1
  store i32 %and, i32* %mant, align 4, !tbaa !29
  %10 = load i32, i32* %numbps.addr, align 4, !tbaa !9
  %11 = load i32, i32* %p, align 4, !tbaa !9
  %sub4 = sub nsw i32 %10, %11
  %12 = load %struct.opj_stepsize*, %struct.opj_stepsize** %bandno_stepsize.addr, align 8, !tbaa !1
  %expn = getelementptr inbounds %struct.opj_stepsize, %struct.opj_stepsize* %12, i32 0, i32 0
  store i32 %sub4, i32* %expn, align 4, !tbaa !31
  %13 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define i32 @opj_dwt_decode_real(%struct.opj_tcd_tilecomp* noalias %tilec, i32 %numres) #0 {
entry:
  %tilec.addr = alloca %struct.opj_tcd_tilecomp*, align 8
  %numres.addr = alloca i32, align 4
  %h = alloca %struct.v4dwt_local, align 8
  %v = alloca %struct.v4dwt_local, align 8
  %res = alloca %struct.opj_tcd_resolution*, align 8
  %rw = alloca i32, align 4
  %rh = alloca i32, align 4
  %w = alloca i32, align 4
  %aj = alloca float*, align 8
  %bufsize = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %k67 = alloca i32, align 4
  %k112 = alloca i32, align 4
  %k133 = alloca i32, align 4
  store %struct.opj_tcd_tilecomp* %tilec, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  store i32 %numres, i32* %numres.addr, align 4, !tbaa !9
  %0 = bitcast %struct.v4dwt_local* %h to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.v4dwt_local* %v to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %resolutions = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %3, i32 0, i32 6
  %4 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %resolutions, align 8, !tbaa !12
  store %struct.opj_tcd_resolution* %4, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %5 = bitcast i32* %rw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %6, i32 0, i32 2
  %7 = load i32, i32* %x1, align 4, !tbaa !13
  %8 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %8, i32 0, i32 0
  %9 = load i32, i32* %x0, align 4, !tbaa !15
  %sub = sub nsw i32 %7, %9
  store i32 %sub, i32* %rw, align 4, !tbaa !9
  %10 = bitcast i32* %rh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %11, i32 0, i32 3
  %12 = load i32, i32* %y1, align 4, !tbaa !16
  %13 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %13, i32 0, i32 1
  %14 = load i32, i32* %y0, align 4, !tbaa !17
  %sub1 = sub nsw i32 %12, %14
  store i32 %sub1, i32* %rh, align 4, !tbaa !9
  %15 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x12 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %16, i32 0, i32 2
  %17 = load i32, i32* %x12, align 4, !tbaa !5
  %18 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x03 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %18, i32 0, i32 0
  %19 = load i32, i32* %x03, align 4, !tbaa !8
  %sub4 = sub nsw i32 %17, %19
  store i32 %sub4, i32* %w, align 4, !tbaa !9
  %20 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %21 = load i32, i32* %numres.addr, align 4, !tbaa !9
  %call = call i32 @opj_dwt_max_resolution(%struct.opj_tcd_resolution* %20, i32 %21) #6
  %add = add i32 %call, 5
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 16
  %call5 = call noalias i8* @malloc(i64 %mul) #7
  %22 = bitcast i8* %call5 to %union.opj_v4_t*
  %wavelet = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  store %union.opj_v4_t* %22, %union.opj_v4_t** %wavelet, align 8, !tbaa !32
  %wavelet6 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  %23 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet6, align 8, !tbaa !32
  %wavelet7 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %v, i32 0, i32 0
  store %union.opj_v4_t* %23, %union.opj_v4_t** %wavelet7, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %if.end.151, %entry
  %24 = load i32, i32* %numres.addr, align 4, !tbaa !9
  %dec = add i32 %24, -1
  store i32 %dec, i32* %numres.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = bitcast float** %aj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %26, i32 0, i32 8
  %27 = load i32*, i32** %data, align 8, !tbaa !11
  %28 = bitcast i32* %27 to float*
  store float* %28, float** %aj, align 8, !tbaa !1
  %29 = bitcast i32* %bufsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x18 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %30, i32 0, i32 2
  %31 = load i32, i32* %x18, align 4, !tbaa !5
  %32 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %x09 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %32, i32 0, i32 0
  %33 = load i32, i32* %x09, align 4, !tbaa !8
  %sub10 = sub nsw i32 %31, %33
  %34 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %y111 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %34, i32 0, i32 3
  %35 = load i32, i32* %y111, align 4, !tbaa !34
  %36 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %y012 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %36, i32 0, i32 1
  %37 = load i32, i32* %y012, align 4, !tbaa !35
  %sub13 = sub nsw i32 %35, %37
  %mul14 = mul nsw i32 %sub10, %sub13
  store i32 %mul14, i32* %bufsize, align 4, !tbaa !9
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #2
  %39 = load i32, i32* %rw, align 4, !tbaa !9
  %sn = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 2
  store i32 %39, i32* %sn, align 4, !tbaa !36
  %40 = load i32, i32* %rh, align 4, !tbaa !9
  %sn15 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %v, i32 0, i32 2
  store i32 %40, i32* %sn15, align 4, !tbaa !36
  %41 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %41, i32 1
  store %struct.opj_tcd_resolution* %incdec.ptr, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %42 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %x116 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %42, i32 0, i32 2
  %43 = load i32, i32* %x116, align 4, !tbaa !13
  %44 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %x017 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %44, i32 0, i32 0
  %45 = load i32, i32* %x017, align 4, !tbaa !15
  %sub18 = sub nsw i32 %43, %45
  store i32 %sub18, i32* %rw, align 4, !tbaa !9
  %46 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %y119 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %46, i32 0, i32 3
  %47 = load i32, i32* %y119, align 4, !tbaa !16
  %48 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %y020 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %48, i32 0, i32 1
  %49 = load i32, i32* %y020, align 4, !tbaa !17
  %sub21 = sub nsw i32 %47, %49
  store i32 %sub21, i32* %rh, align 4, !tbaa !9
  %50 = load i32, i32* %rw, align 4, !tbaa !9
  %sn22 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 2
  %51 = load i32, i32* %sn22, align 4, !tbaa !36
  %sub23 = sub i32 %50, %51
  %dn = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 1
  store i32 %sub23, i32* %dn, align 4, !tbaa !37
  %52 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %x024 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %52, i32 0, i32 0
  %53 = load i32, i32* %x024, align 4, !tbaa !15
  %rem = srem i32 %53, 2
  %cas = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 3
  store i32 %rem, i32* %cas, align 4, !tbaa !38
  %54 = load i32, i32* %rh, align 4, !tbaa !9
  store i32 %54, i32* %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %55 = load i32, i32* %j, align 4, !tbaa !9
  %cmp = icmp sgt i32 %55, 3
  br i1 %cmp, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %56 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %57 = load float*, float** %aj, align 8, !tbaa !1
  %58 = load i32, i32* %w, align 4, !tbaa !9
  %59 = load i32, i32* %bufsize, align 4, !tbaa !9
  call void @opj_v4dwt_interleave_h(%struct.v4dwt_local* %h, float* %57, i32 %58, i32 %59) #6
  call void @opj_v4dwt_decode(%struct.v4dwt_local* %h) #6
  %60 = load i32, i32* %rw, align 4, !tbaa !9
  store i32 %60, i32* %k, align 4, !tbaa !9
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.body.30, %for.body
  %61 = load i32, i32* %k, align 4, !tbaa !9
  %dec27 = add nsw i32 %61, -1
  store i32 %dec27, i32* %k, align 4, !tbaa !9
  %cmp28 = icmp sge i32 %dec27, 0
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.26
  %62 = load i32, i32* %k, align 4, !tbaa !9
  %idxprom = sext i32 %62 to i64
  %wavelet31 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  %63 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet31, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %63, i64 %idxprom
  %f = bitcast %union.opj_v4_t* %arrayidx to [4 x float]*
  %arrayidx32 = getelementptr inbounds [4 x float], [4 x float]* %f, i32 0, i64 0
  %64 = load float, float* %arrayidx32, align 4, !tbaa !39
  %65 = load i32, i32* %k, align 4, !tbaa !9
  %idxprom33 = sext i32 %65 to i64
  %66 = load float*, float** %aj, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds float, float* %66, i64 %idxprom33
  store float %64, float* %arrayidx34, align 4, !tbaa !39
  %67 = load i32, i32* %k, align 4, !tbaa !9
  %idxprom35 = sext i32 %67 to i64
  %wavelet36 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  %68 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet36, align 8, !tbaa !32
  %arrayidx37 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %68, i64 %idxprom35
  %f38 = bitcast %union.opj_v4_t* %arrayidx37 to [4 x float]*
  %arrayidx39 = getelementptr inbounds [4 x float], [4 x float]* %f38, i32 0, i64 1
  %69 = load float, float* %arrayidx39, align 4, !tbaa !39
  %70 = load i32, i32* %k, align 4, !tbaa !9
  %71 = load i32, i32* %w, align 4, !tbaa !9
  %add40 = add i32 %70, %71
  %idxprom41 = zext i32 %add40 to i64
  %72 = load float*, float** %aj, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds float, float* %72, i64 %idxprom41
  store float %69, float* %arrayidx42, align 4, !tbaa !39
  %73 = load i32, i32* %k, align 4, !tbaa !9
  %idxprom43 = sext i32 %73 to i64
  %wavelet44 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  %74 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet44, align 8, !tbaa !32
  %arrayidx45 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %74, i64 %idxprom43
  %f46 = bitcast %union.opj_v4_t* %arrayidx45 to [4 x float]*
  %arrayidx47 = getelementptr inbounds [4 x float], [4 x float]* %f46, i32 0, i64 2
  %75 = load float, float* %arrayidx47, align 4, !tbaa !39
  %76 = load i32, i32* %k, align 4, !tbaa !9
  %77 = load i32, i32* %w, align 4, !tbaa !9
  %mul48 = mul i32 %77, 2
  %add49 = add i32 %76, %mul48
  %idxprom50 = zext i32 %add49 to i64
  %78 = load float*, float** %aj, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds float, float* %78, i64 %idxprom50
  store float %75, float* %arrayidx51, align 4, !tbaa !39
  %79 = load i32, i32* %k, align 4, !tbaa !9
  %idxprom52 = sext i32 %79 to i64
  %wavelet53 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  %80 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet53, align 8, !tbaa !32
  %arrayidx54 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %80, i64 %idxprom52
  %f55 = bitcast %union.opj_v4_t* %arrayidx54 to [4 x float]*
  %arrayidx56 = getelementptr inbounds [4 x float], [4 x float]* %f55, i32 0, i64 3
  %81 = load float, float* %arrayidx56, align 4, !tbaa !39
  %82 = load i32, i32* %k, align 4, !tbaa !9
  %83 = load i32, i32* %w, align 4, !tbaa !9
  %mul57 = mul i32 %83, 3
  %add58 = add i32 %82, %mul57
  %idxprom59 = zext i32 %add58 to i64
  %84 = load float*, float** %aj, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds float, float* %84, i64 %idxprom59
  store float %81, float* %arrayidx60, align 4, !tbaa !39
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  %85 = load i32, i32* %w, align 4, !tbaa !9
  %mul61 = mul i32 %85, 4
  %86 = load float*, float** %aj, align 8, !tbaa !1
  %idx.ext = zext i32 %mul61 to i64
  %add.ptr = getelementptr inbounds float, float* %86, i64 %idx.ext
  store float* %add.ptr, float** %aj, align 8, !tbaa !1
  %87 = load i32, i32* %w, align 4, !tbaa !9
  %mul62 = mul i32 %87, 4
  %88 = load i32, i32* %bufsize, align 4, !tbaa !9
  %sub63 = sub i32 %88, %mul62
  store i32 %sub63, i32* %bufsize, align 4, !tbaa !9
  %89 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %90 = load i32, i32* %j, align 4, !tbaa !9
  %sub64 = sub nsw i32 %90, 4
  store i32 %sub64, i32* %j, align 4, !tbaa !9
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  %91 = load i32, i32* %rh, align 4, !tbaa !9
  %and = and i32 %91, 3
  %tobool66 = icmp ne i32 %and, 0
  br i1 %tobool66, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.65
  %92 = bitcast i32* %k67 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #2
  %93 = load i32, i32* %rh, align 4, !tbaa !9
  %and68 = and i32 %93, 3
  store i32 %and68, i32* %j, align 4, !tbaa !9
  %94 = load float*, float** %aj, align 8, !tbaa !1
  %95 = load i32, i32* %w, align 4, !tbaa !9
  %96 = load i32, i32* %bufsize, align 4, !tbaa !9
  call void @opj_v4dwt_interleave_h(%struct.v4dwt_local* %h, float* %94, i32 %95, i32 %96) #6
  call void @opj_v4dwt_decode(%struct.v4dwt_local* %h) #6
  %97 = load i32, i32* %rw, align 4, !tbaa !9
  store i32 %97, i32* %k67, align 4, !tbaa !9
  br label %for.cond.69

for.cond.69:                                      ; preds = %sw.epilog, %if.then
  %98 = load i32, i32* %k67, align 4, !tbaa !9
  %dec70 = add nsw i32 %98, -1
  store i32 %dec70, i32* %k67, align 4, !tbaa !9
  %cmp71 = icmp sge i32 %dec70, 0
  br i1 %cmp71, label %for.body.73, label %for.end.100

for.body.73:                                      ; preds = %for.cond.69
  %99 = load i32, i32* %j, align 4, !tbaa !9
  switch i32 %99, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.83
    i32 1, label %sw.bb.92
  ]

sw.bb:                                            ; preds = %for.body.73
  %100 = load i32, i32* %k67, align 4, !tbaa !9
  %idxprom74 = sext i32 %100 to i64
  %wavelet75 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  %101 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet75, align 8, !tbaa !32
  %arrayidx76 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %101, i64 %idxprom74
  %f77 = bitcast %union.opj_v4_t* %arrayidx76 to [4 x float]*
  %arrayidx78 = getelementptr inbounds [4 x float], [4 x float]* %f77, i32 0, i64 2
  %102 = load float, float* %arrayidx78, align 4, !tbaa !39
  %103 = load i32, i32* %k67, align 4, !tbaa !9
  %104 = load i32, i32* %w, align 4, !tbaa !9
  %mul79 = mul i32 %104, 2
  %add80 = add i32 %103, %mul79
  %idxprom81 = zext i32 %add80 to i64
  %105 = load float*, float** %aj, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds float, float* %105, i64 %idxprom81
  store float %102, float* %arrayidx82, align 4, !tbaa !39
  br label %sw.bb.83

sw.bb.83:                                         ; preds = %for.body.73, %sw.bb
  %106 = load i32, i32* %k67, align 4, !tbaa !9
  %idxprom84 = sext i32 %106 to i64
  %wavelet85 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  %107 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet85, align 8, !tbaa !32
  %arrayidx86 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %107, i64 %idxprom84
  %f87 = bitcast %union.opj_v4_t* %arrayidx86 to [4 x float]*
  %arrayidx88 = getelementptr inbounds [4 x float], [4 x float]* %f87, i32 0, i64 1
  %108 = load float, float* %arrayidx88, align 4, !tbaa !39
  %109 = load i32, i32* %k67, align 4, !tbaa !9
  %110 = load i32, i32* %w, align 4, !tbaa !9
  %add89 = add i32 %109, %110
  %idxprom90 = zext i32 %add89 to i64
  %111 = load float*, float** %aj, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds float, float* %111, i64 %idxprom90
  store float %108, float* %arrayidx91, align 4, !tbaa !39
  br label %sw.bb.92

sw.bb.92:                                         ; preds = %for.body.73, %sw.bb.83
  %112 = load i32, i32* %k67, align 4, !tbaa !9
  %idxprom93 = sext i32 %112 to i64
  %wavelet94 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  %113 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet94, align 8, !tbaa !32
  %arrayidx95 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %113, i64 %idxprom93
  %f96 = bitcast %union.opj_v4_t* %arrayidx95 to [4 x float]*
  %arrayidx97 = getelementptr inbounds [4 x float], [4 x float]* %f96, i32 0, i64 0
  %114 = load float, float* %arrayidx97, align 4, !tbaa !39
  %115 = load i32, i32* %k67, align 4, !tbaa !9
  %idxprom98 = sext i32 %115 to i64
  %116 = load float*, float** %aj, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds float, float* %116, i64 %idxprom98
  store float %114, float* %arrayidx99, align 4, !tbaa !39
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.92, %for.body.73
  br label %for.cond.69

for.end.100:                                      ; preds = %for.cond.69
  %117 = bitcast i32* %k67 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  br label %if.end

if.end:                                           ; preds = %for.end.100, %for.end.65
  %118 = load i32, i32* %rh, align 4, !tbaa !9
  %sn101 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %v, i32 0, i32 2
  %119 = load i32, i32* %sn101, align 4, !tbaa !36
  %sub102 = sub i32 %118, %119
  %dn103 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %v, i32 0, i32 1
  store i32 %sub102, i32* %dn103, align 4, !tbaa !37
  %120 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %res, align 8, !tbaa !1
  %y0104 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %120, i32 0, i32 1
  %121 = load i32, i32* %y0104, align 4, !tbaa !17
  %rem105 = srem i32 %121, 2
  %cas106 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %v, i32 0, i32 3
  store i32 %rem105, i32* %cas106, align 4, !tbaa !38
  %122 = load %struct.opj_tcd_tilecomp*, %struct.opj_tcd_tilecomp** %tilec.addr, align 8, !tbaa !1
  %data107 = getelementptr inbounds %struct.opj_tcd_tilecomp, %struct.opj_tcd_tilecomp* %122, i32 0, i32 8
  %123 = load i32*, i32** %data107, align 8, !tbaa !11
  %124 = bitcast i32* %123 to float*
  store float* %124, float** %aj, align 8, !tbaa !1
  %125 = load i32, i32* %rw, align 4, !tbaa !9
  store i32 %125, i32* %j, align 4, !tbaa !9
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.127, %if.end
  %126 = load i32, i32* %j, align 4, !tbaa !9
  %cmp109 = icmp sgt i32 %126, 3
  br i1 %cmp109, label %for.body.111, label %for.end.129

for.body.111:                                     ; preds = %for.cond.108
  %127 = bitcast i32* %k112 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #2
  %128 = load float*, float** %aj, align 8, !tbaa !1
  %129 = load i32, i32* %w, align 4, !tbaa !9
  call void @opj_v4dwt_interleave_v(%struct.v4dwt_local* %v, float* %128, i32 %129, i32 4) #6
  call void @opj_v4dwt_decode(%struct.v4dwt_local* %v) #6
  store i32 0, i32* %k112, align 4, !tbaa !9
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.124, %for.body.111
  %130 = load i32, i32* %k112, align 4, !tbaa !9
  %131 = load i32, i32* %rh, align 4, !tbaa !9
  %cmp114 = icmp ult i32 %130, %131
  br i1 %cmp114, label %for.body.116, label %for.end.125

for.body.116:                                     ; preds = %for.cond.113
  %132 = load i32, i32* %k112, align 4, !tbaa !9
  %133 = load i32, i32* %w, align 4, !tbaa !9
  %mul117 = mul i32 %132, %133
  %idxprom118 = zext i32 %mul117 to i64
  %134 = load float*, float** %aj, align 8, !tbaa !1
  %arrayidx119 = getelementptr inbounds float, float* %134, i64 %idxprom118
  %135 = bitcast float* %arrayidx119 to i8*
  %136 = load i32, i32* %k112, align 4, !tbaa !9
  %idxprom120 = zext i32 %136 to i64
  %wavelet121 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %v, i32 0, i32 0
  %137 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet121, align 8, !tbaa !32
  %arrayidx122 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %137, i64 %idxprom120
  %138 = bitcast %union.opj_v4_t* %arrayidx122 to i8*
  %call123 = call i8* @memcpy(i8* %135, i8* %138, i64 16) #7
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.body.116
  %139 = load i32, i32* %k112, align 4, !tbaa !9
  %inc = add i32 %139, 1
  store i32 %inc, i32* %k112, align 4, !tbaa !9
  br label %for.cond.113

for.end.125:                                      ; preds = %for.cond.113
  %140 = load float*, float** %aj, align 8, !tbaa !1
  %add.ptr126 = getelementptr inbounds float, float* %140, i64 4
  store float* %add.ptr126, float** %aj, align 8, !tbaa !1
  %141 = bitcast i32* %k112 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end.125
  %142 = load i32, i32* %j, align 4, !tbaa !9
  %sub128 = sub nsw i32 %142, 4
  store i32 %sub128, i32* %j, align 4, !tbaa !9
  br label %for.cond.108

for.end.129:                                      ; preds = %for.cond.108
  %143 = load i32, i32* %rw, align 4, !tbaa !9
  %and130 = and i32 %143, 3
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.151

if.then.132:                                      ; preds = %for.end.129
  %144 = bitcast i32* %k133 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #2
  %145 = load i32, i32* %rw, align 4, !tbaa !9
  %and134 = and i32 %145, 3
  store i32 %and134, i32* %j, align 4, !tbaa !9
  %146 = load float*, float** %aj, align 8, !tbaa !1
  %147 = load i32, i32* %w, align 4, !tbaa !9
  %148 = load i32, i32* %j, align 4, !tbaa !9
  call void @opj_v4dwt_interleave_v(%struct.v4dwt_local* %v, float* %146, i32 %147, i32 %148) #6
  call void @opj_v4dwt_decode(%struct.v4dwt_local* %v) #6
  store i32 0, i32* %k133, align 4, !tbaa !9
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.148, %if.then.132
  %149 = load i32, i32* %k133, align 4, !tbaa !9
  %150 = load i32, i32* %rh, align 4, !tbaa !9
  %cmp136 = icmp ult i32 %149, %150
  br i1 %cmp136, label %for.body.138, label %for.end.150

for.body.138:                                     ; preds = %for.cond.135
  %151 = load i32, i32* %k133, align 4, !tbaa !9
  %152 = load i32, i32* %w, align 4, !tbaa !9
  %mul139 = mul i32 %151, %152
  %idxprom140 = zext i32 %mul139 to i64
  %153 = load float*, float** %aj, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds float, float* %153, i64 %idxprom140
  %154 = bitcast float* %arrayidx141 to i8*
  %155 = load i32, i32* %k133, align 4, !tbaa !9
  %idxprom142 = zext i32 %155 to i64
  %wavelet143 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %v, i32 0, i32 0
  %156 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet143, align 8, !tbaa !32
  %arrayidx144 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %156, i64 %idxprom142
  %157 = bitcast %union.opj_v4_t* %arrayidx144 to i8*
  %158 = load i32, i32* %j, align 4, !tbaa !9
  %conv145 = sext i32 %158 to i64
  %mul146 = mul i64 %conv145, 4
  %call147 = call i8* @memcpy(i8* %154, i8* %157, i64 %mul146) #7
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.138
  %159 = load i32, i32* %k133, align 4, !tbaa !9
  %inc149 = add i32 %159, 1
  store i32 %inc149, i32* %k133, align 4, !tbaa !9
  br label %for.cond.135

for.end.150:                                      ; preds = %for.cond.135
  %160 = bitcast i32* %k133 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  br label %if.end.151

if.end.151:                                       ; preds = %for.end.150, %for.end.129
  %161 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #2
  %162 = bitcast i32* %bufsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast float** %aj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %wavelet152 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %h, i32 0, i32 0
  %164 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet152, align 8, !tbaa !32
  %165 = bitcast %union.opj_v4_t* %164 to i8*
  call void @free(i8* %165) #7
  %166 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast i32* %rh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #2
  %168 = bitcast i32* %rw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %169 = bitcast %struct.opj_tcd_resolution** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #2
  %170 = bitcast %struct.v4dwt_local* %v to i8*
  call void @llvm.lifetime.end(i64 24, i8* %170) #2
  %171 = bitcast %struct.v4dwt_local* %h to i8*
  call void @llvm.lifetime.end(i64 24, i8* %171) #2
  ret i32 1
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @opj_dwt_max_resolution(%struct.opj_tcd_resolution* noalias %r, i32 %i) #0 {
entry:
  %r.addr = alloca %struct.opj_tcd_resolution*, align 8
  %i.addr = alloca i32, align 4
  %mr = alloca i32, align 4
  %w = alloca i32, align 4
  store %struct.opj_tcd_resolution* %r, %struct.opj_tcd_resolution** %r.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !9
  %0 = bitcast i32* %mr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %mr, align 4, !tbaa !9
  %1 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %entry
  %2 = load i32, i32* %i.addr, align 4, !tbaa !9
  %dec = add i32 %2, -1
  store i32 %dec, i32* %i.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %r.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %3, i32 1
  store %struct.opj_tcd_resolution* %incdec.ptr, %struct.opj_tcd_resolution** %r.addr, align 8, !tbaa !1
  %4 = load i32, i32* %mr, align 4, !tbaa !9
  %5 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %r.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %5, i32 0, i32 2
  %6 = load i32, i32* %x1, align 4, !tbaa !13
  %7 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %r.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %7, i32 0, i32 0
  %8 = load i32, i32* %x0, align 4, !tbaa !15
  %sub = sub nsw i32 %6, %8
  store i32 %sub, i32* %w, align 4, !tbaa !9
  %cmp = icmp ult i32 %4, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %w, align 4, !tbaa !9
  store i32 %9, i32* %mr, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i32, i32* %mr, align 4, !tbaa !9
  %11 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %r.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %11, i32 0, i32 3
  %12 = load i32, i32* %y1, align 4, !tbaa !16
  %13 = load %struct.opj_tcd_resolution*, %struct.opj_tcd_resolution** %r.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_tcd_resolution, %struct.opj_tcd_resolution* %13, i32 0, i32 1
  %14 = load i32, i32* %y0, align 4, !tbaa !17
  %sub1 = sub nsw i32 %12, %14
  store i32 %sub1, i32* %w, align 4, !tbaa !9
  %cmp2 = icmp ult i32 %10, %sub1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %15 = load i32, i32* %w, align 4, !tbaa !9
  store i32 %15, i32* %mr, align 4, !tbaa !9
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %mr, align 4, !tbaa !9
  %17 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast i32* %mr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @opj_v4dwt_interleave_h(%struct.v4dwt_local* noalias %w, float* noalias %a, i32 %x, i32 %size) #0 {
entry:
  %w.addr = alloca %struct.v4dwt_local*, align 8
  %a.addr = alloca float*, align 8
  %x.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %bi = alloca float*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %j39 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.v4dwt_local* %w, %struct.v4dwt_local** %w.addr, align 8, !tbaa !1
  store float* %a, float** %a.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !9
  store i32 %size, i32* %size.addr, align 4, !tbaa !9
  %0 = bitcast float** %bi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.v4dwt_local*, %struct.v4dwt_local** %w.addr, align 8, !tbaa !1
  %wavelet = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %1, i32 0, i32 0
  %2 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet, align 8, !tbaa !32
  %3 = load %struct.v4dwt_local*, %struct.v4dwt_local** %w.addr, align 8, !tbaa !1
  %cas = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %3, i32 0, i32 3
  %4 = load i32, i32* %cas, align 4, !tbaa !38
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %2, i64 %idx.ext
  %5 = bitcast %union.opj_v4_t* %add.ptr to float*
  store float* %5, float** %bi, align 8, !tbaa !1
  %6 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.v4dwt_local*, %struct.v4dwt_local** %w.addr, align 8, !tbaa !1
  %sn = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %7, i32 0, i32 2
  %8 = load i32, i32* %sn, align 4, !tbaa !36
  store i32 %8, i32* %count, align 4, !tbaa !9
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  store i32 0, i32* %k, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc.87, %entry
  %11 = load i32, i32* %k, align 4, !tbaa !9
  %cmp = icmp slt i32 %11, 2
  br i1 %cmp, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %count, align 4, !tbaa !9
  %13 = load i32, i32* %x.addr, align 4, !tbaa !9
  %mul = mul nsw i32 3, %13
  %add = add nsw i32 %12, %mul
  %14 = load i32, i32* %size.addr, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %add, %14
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %15 = load float*, float** %a.addr, align 8, !tbaa !1
  %16 = ptrtoint float* %15 to i64
  %and = and i64 %16, 15
  %cmp2 = icmp eq i64 %and, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %17 = load float*, float** %bi, align 8, !tbaa !1
  %18 = ptrtoint float* %17 to i64
  %and4 = and i64 %18, 15
  %cmp5 = icmp eq i64 %and4, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %19 = load i32, i32* %x.addr, align 4, !tbaa !9
  %and7 = and i32 %19, 15
  %cmp8 = icmp eq i32 %and7, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then
  %20 = load i32, i32* %i, align 4, !tbaa !9
  %21 = load i32, i32* %count, align 4, !tbaa !9
  %cmp10 = icmp slt i32 %20, %21
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load i32, i32* %i, align 4, !tbaa !9
  store i32 %23, i32* %j, align 4, !tbaa !9
  %24 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom = sext i32 %24 to i64
  %25 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %25, i64 %idxprom
  %26 = load float, float* %arrayidx, align 4, !tbaa !39
  %27 = load i32, i32* %i, align 4, !tbaa !9
  %mul12 = mul nsw i32 %27, 8
  %idxprom13 = sext i32 %mul12 to i64
  %28 = load float*, float** %bi, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %28, i64 %idxprom13
  store float %26, float* %arrayidx14, align 4, !tbaa !39
  %29 = load i32, i32* %x.addr, align 4, !tbaa !9
  %30 = load i32, i32* %j, align 4, !tbaa !9
  %add15 = add nsw i32 %30, %29
  store i32 %add15, i32* %j, align 4, !tbaa !9
  %31 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom16 = sext i32 %31 to i64
  %32 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds float, float* %32, i64 %idxprom16
  %33 = load float, float* %arrayidx17, align 4, !tbaa !39
  %34 = load i32, i32* %i, align 4, !tbaa !9
  %mul18 = mul nsw i32 %34, 8
  %add19 = add nsw i32 %mul18, 1
  %idxprom20 = sext i32 %add19 to i64
  %35 = load float*, float** %bi, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds float, float* %35, i64 %idxprom20
  store float %33, float* %arrayidx21, align 4, !tbaa !39
  %36 = load i32, i32* %x.addr, align 4, !tbaa !9
  %37 = load i32, i32* %j, align 4, !tbaa !9
  %add22 = add nsw i32 %37, %36
  store i32 %add22, i32* %j, align 4, !tbaa !9
  %38 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom23 = sext i32 %38 to i64
  %39 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds float, float* %39, i64 %idxprom23
  %40 = load float, float* %arrayidx24, align 4, !tbaa !39
  %41 = load i32, i32* %i, align 4, !tbaa !9
  %mul25 = mul nsw i32 %41, 8
  %add26 = add nsw i32 %mul25, 2
  %idxprom27 = sext i32 %add26 to i64
  %42 = load float*, float** %bi, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds float, float* %42, i64 %idxprom27
  store float %40, float* %arrayidx28, align 4, !tbaa !39
  %43 = load i32, i32* %x.addr, align 4, !tbaa !9
  %44 = load i32, i32* %j, align 4, !tbaa !9
  %add29 = add nsw i32 %44, %43
  store i32 %add29, i32* %j, align 4, !tbaa !9
  %45 = load i32, i32* %j, align 4, !tbaa !9
  %idxprom30 = sext i32 %45 to i64
  %46 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds float, float* %46, i64 %idxprom30
  %47 = load float, float* %arrayidx31, align 4, !tbaa !39
  %48 = load i32, i32* %i, align 4, !tbaa !9
  %mul32 = mul nsw i32 %48, 8
  %add33 = add nsw i32 %mul32, 3
  %idxprom34 = sext i32 %add33 to i64
  %49 = load float*, float** %bi, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds float, float* %49, i64 %idxprom34
  store float %47, float* %arrayidx35, align 4, !tbaa !39
  %50 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %51 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %if.end.77

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true.3, %land.lhs.true, %for.body
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.74, %if.else
  %52 = load i32, i32* %i, align 4, !tbaa !9
  %53 = load i32, i32* %count, align 4, !tbaa !9
  %cmp37 = icmp slt i32 %52, %53
  br i1 %cmp37, label %for.body.38, label %for.end.76

for.body.38:                                      ; preds = %for.cond.36
  %54 = bitcast i32* %j39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load i32, i32* %i, align 4, !tbaa !9
  store i32 %55, i32* %j39, align 4, !tbaa !9
  %56 = load i32, i32* %j39, align 4, !tbaa !9
  %idxprom40 = sext i32 %56 to i64
  %57 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds float, float* %57, i64 %idxprom40
  %58 = load float, float* %arrayidx41, align 4, !tbaa !39
  %59 = load i32, i32* %i, align 4, !tbaa !9
  %mul42 = mul nsw i32 %59, 8
  %idxprom43 = sext i32 %mul42 to i64
  %60 = load float*, float** %bi, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds float, float* %60, i64 %idxprom43
  store float %58, float* %arrayidx44, align 4, !tbaa !39
  %61 = load i32, i32* %x.addr, align 4, !tbaa !9
  %62 = load i32, i32* %j39, align 4, !tbaa !9
  %add45 = add nsw i32 %62, %61
  store i32 %add45, i32* %j39, align 4, !tbaa !9
  %63 = load i32, i32* %j39, align 4, !tbaa !9
  %64 = load i32, i32* %size.addr, align 4, !tbaa !9
  %cmp46 = icmp sge i32 %63, %64
  br i1 %cmp46, label %if.then.47, label %if.end

if.then.47:                                       ; preds = %for.body.38
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.38
  %65 = load i32, i32* %j39, align 4, !tbaa !9
  %idxprom48 = sext i32 %65 to i64
  %66 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds float, float* %66, i64 %idxprom48
  %67 = load float, float* %arrayidx49, align 4, !tbaa !39
  %68 = load i32, i32* %i, align 4, !tbaa !9
  %mul50 = mul nsw i32 %68, 8
  %add51 = add nsw i32 %mul50, 1
  %idxprom52 = sext i32 %add51 to i64
  %69 = load float*, float** %bi, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds float, float* %69, i64 %idxprom52
  store float %67, float* %arrayidx53, align 4, !tbaa !39
  %70 = load i32, i32* %x.addr, align 4, !tbaa !9
  %71 = load i32, i32* %j39, align 4, !tbaa !9
  %add54 = add nsw i32 %71, %70
  store i32 %add54, i32* %j39, align 4, !tbaa !9
  %72 = load i32, i32* %j39, align 4, !tbaa !9
  %73 = load i32, i32* %size.addr, align 4, !tbaa !9
  %cmp55 = icmp sge i32 %72, %73
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end
  %74 = load i32, i32* %j39, align 4, !tbaa !9
  %idxprom58 = sext i32 %74 to i64
  %75 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds float, float* %75, i64 %idxprom58
  %76 = load float, float* %arrayidx59, align 4, !tbaa !39
  %77 = load i32, i32* %i, align 4, !tbaa !9
  %mul60 = mul nsw i32 %77, 8
  %add61 = add nsw i32 %mul60, 2
  %idxprom62 = sext i32 %add61 to i64
  %78 = load float*, float** %bi, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds float, float* %78, i64 %idxprom62
  store float %76, float* %arrayidx63, align 4, !tbaa !39
  %79 = load i32, i32* %x.addr, align 4, !tbaa !9
  %80 = load i32, i32* %j39, align 4, !tbaa !9
  %add64 = add nsw i32 %80, %79
  store i32 %add64, i32* %j39, align 4, !tbaa !9
  %81 = load i32, i32* %j39, align 4, !tbaa !9
  %82 = load i32, i32* %size.addr, align 4, !tbaa !9
  %cmp65 = icmp sge i32 %81, %82
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.57
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.end.57
  %83 = load i32, i32* %j39, align 4, !tbaa !9
  %idxprom68 = sext i32 %83 to i64
  %84 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds float, float* %84, i64 %idxprom68
  %85 = load float, float* %arrayidx69, align 4, !tbaa !39
  %86 = load i32, i32* %i, align 4, !tbaa !9
  %mul70 = mul nsw i32 %86, 8
  %add71 = add nsw i32 %mul70, 3
  %idxprom72 = sext i32 %add71 to i64
  %87 = load float*, float** %bi, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds float, float* %87, i64 %idxprom72
  store float %85, float* %arrayidx73, align 4, !tbaa !39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.66, %if.then.56, %if.then.47
  %88 = bitcast i32* %j39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 10, label %for.inc.74
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.74

for.inc.74:                                       ; preds = %cleanup.cont, %cleanup
  %89 = load i32, i32* %i, align 4, !tbaa !9
  %inc75 = add nsw i32 %89, 1
  store i32 %inc75, i32* %i, align 4, !tbaa !9
  br label %for.cond.36

for.end.76:                                       ; preds = %for.cond.36
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %for.end
  %90 = load %struct.v4dwt_local*, %struct.v4dwt_local** %w.addr, align 8, !tbaa !1
  %wavelet78 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %90, i32 0, i32 0
  %91 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet78, align 8, !tbaa !32
  %add.ptr79 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %91, i64 1
  %92 = load %struct.v4dwt_local*, %struct.v4dwt_local** %w.addr, align 8, !tbaa !1
  %cas80 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %92, i32 0, i32 3
  %93 = load i32, i32* %cas80, align 4, !tbaa !38
  %idx.ext81 = sext i32 %93 to i64
  %idx.neg = sub i64 0, %idx.ext81
  %add.ptr82 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %add.ptr79, i64 %idx.neg
  %94 = bitcast %union.opj_v4_t* %add.ptr82 to float*
  store float* %94, float** %bi, align 8, !tbaa !1
  %95 = load %struct.v4dwt_local*, %struct.v4dwt_local** %w.addr, align 8, !tbaa !1
  %sn83 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %95, i32 0, i32 2
  %96 = load i32, i32* %sn83, align 4, !tbaa !36
  %97 = load float*, float** %a.addr, align 8, !tbaa !1
  %idx.ext84 = sext i32 %96 to i64
  %add.ptr85 = getelementptr inbounds float, float* %97, i64 %idx.ext84
  store float* %add.ptr85, float** %a.addr, align 8, !tbaa !1
  %98 = load %struct.v4dwt_local*, %struct.v4dwt_local** %w.addr, align 8, !tbaa !1
  %sn86 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %98, i32 0, i32 2
  %99 = load i32, i32* %sn86, align 4, !tbaa !36
  %100 = load i32, i32* %size.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %100, %99
  store i32 %sub, i32* %size.addr, align 4, !tbaa !9
  %101 = load %struct.v4dwt_local*, %struct.v4dwt_local** %w.addr, align 8, !tbaa !1
  %dn = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %101, i32 0, i32 1
  %102 = load i32, i32* %dn, align 4, !tbaa !37
  store i32 %102, i32* %count, align 4, !tbaa !9
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.77
  %103 = load i32, i32* %k, align 4, !tbaa !9
  %inc88 = add nsw i32 %103, 1
  store i32 %inc88, i32* %k, align 4, !tbaa !9
  br label %for.cond

for.end.89:                                       ; preds = %for.cond
  %104 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast float** %bi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @opj_v4dwt_decode(%struct.v4dwt_local* noalias %dwt) #0 {
entry:
  %dwt.addr = alloca %struct.v4dwt_local*, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.v4dwt_local* %dwt, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %cas = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %2, i32 0, i32 3
  %3 = load i32, i32* %cas, align 4, !tbaa !38
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %dn = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %4, i32 0, i32 1
  %5 = load i32, i32* %dn, align 4, !tbaa !37
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %sn = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %6, i32 0, i32 2
  %7 = load i32, i32* %sn, align 4, !tbaa !36
  %cmp2 = icmp sgt i32 %7, 1
  br i1 %cmp2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %a, align 4, !tbaa !9
  store i32 1, i32* %b, align 4, !tbaa !9
  br label %if.end.11

if.else:                                          ; preds = %entry
  %8 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %sn4 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %8, i32 0, i32 2
  %9 = load i32, i32* %sn4, align 4, !tbaa !36
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %if.end.10, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.else
  %10 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %dn7 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %10, i32 0, i32 1
  %11 = load i32, i32* %dn7, align 4, !tbaa !37
  %cmp8 = icmp sgt i32 %11, 1
  br i1 %cmp8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false.6
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %lor.lhs.false.6, %if.else
  store i32 1, i32* %a, align 4, !tbaa !9
  store i32 0, i32* %b, align 4, !tbaa !9
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %12 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %12, i32 0, i32 0
  %13 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet, align 8, !tbaa !32
  %14 = load i32, i32* %a, align 4, !tbaa !9
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %13, i64 %idx.ext
  %15 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %sn12 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %15, i32 0, i32 2
  %16 = load i32, i32* %sn12, align 4, !tbaa !36
  %call = call <4 x float> @_mm_set1_ps(float 0x3FF3AECB00000000) #6
  call void @opj_v4dwt_decode_step1_sse(%union.opj_v4_t* %add.ptr, i32 %16, <4 x float> %call) #6
  %17 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet13 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %17, i32 0, i32 0
  %18 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet13, align 8, !tbaa !32
  %19 = load i32, i32* %b, align 4, !tbaa !9
  %idx.ext14 = sext i32 %19 to i64
  %add.ptr15 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %18, i64 %idx.ext14
  %20 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %dn16 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %20, i32 0, i32 1
  %21 = load i32, i32* %dn16, align 4, !tbaa !37
  %call17 = call <4 x float> @_mm_set1_ps(float 0x3FFA030000000000) #6
  call void @opj_v4dwt_decode_step1_sse(%union.opj_v4_t* %add.ptr15, i32 %21, <4 x float> %call17) #6
  %22 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet18 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %22, i32 0, i32 0
  %23 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet18, align 8, !tbaa !32
  %24 = load i32, i32* %b, align 4, !tbaa !9
  %idx.ext19 = sext i32 %24 to i64
  %add.ptr20 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %23, i64 %idx.ext19
  %25 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet21 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %25, i32 0, i32 0
  %26 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet21, align 8, !tbaa !32
  %27 = load i32, i32* %a, align 4, !tbaa !9
  %idx.ext22 = sext i32 %27 to i64
  %add.ptr23 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %26, i64 %idx.ext22
  %add.ptr24 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %add.ptr23, i64 1
  %28 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %sn25 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %28, i32 0, i32 2
  %29 = load i32, i32* %sn25, align 4, !tbaa !36
  %30 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %sn26 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %30, i32 0, i32 2
  %31 = load i32, i32* %sn26, align 4, !tbaa !36
  %32 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %dn27 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %32, i32 0, i32 1
  %33 = load i32, i32* %dn27, align 4, !tbaa !37
  %34 = load i32, i32* %a, align 4, !tbaa !9
  %sub = sub nsw i32 %33, %34
  %call28 = call i32 @opj_int_min(i32 %31, i32 %sub) #6
  %call29 = call <4 x float> @_mm_set1_ps(float 0xBFDC626AA0000000) #6
  call void @opj_v4dwt_decode_step2_sse(%union.opj_v4_t* %add.ptr20, %union.opj_v4_t* %add.ptr24, i32 %29, i32 %call28, <4 x float> %call29) #6
  %35 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet30 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %35, i32 0, i32 0
  %36 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet30, align 8, !tbaa !32
  %37 = load i32, i32* %a, align 4, !tbaa !9
  %idx.ext31 = sext i32 %37 to i64
  %add.ptr32 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %36, i64 %idx.ext31
  %38 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet33 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %38, i32 0, i32 0
  %39 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet33, align 8, !tbaa !32
  %40 = load i32, i32* %b, align 4, !tbaa !9
  %idx.ext34 = sext i32 %40 to i64
  %add.ptr35 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %39, i64 %idx.ext34
  %add.ptr36 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %add.ptr35, i64 1
  %41 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %dn37 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %41, i32 0, i32 1
  %42 = load i32, i32* %dn37, align 4, !tbaa !37
  %43 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %dn38 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %43, i32 0, i32 1
  %44 = load i32, i32* %dn38, align 4, !tbaa !37
  %45 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %sn39 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %45, i32 0, i32 2
  %46 = load i32, i32* %sn39, align 4, !tbaa !36
  %47 = load i32, i32* %b, align 4, !tbaa !9
  %sub40 = sub nsw i32 %46, %47
  %call41 = call i32 @opj_int_min(i32 %44, i32 %sub40) #6
  %call42 = call <4 x float> @_mm_set1_ps(float 0xBFEC40CEC0000000) #6
  call void @opj_v4dwt_decode_step2_sse(%union.opj_v4_t* %add.ptr32, %union.opj_v4_t* %add.ptr36, i32 %42, i32 %call41, <4 x float> %call42) #6
  %48 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet43 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %48, i32 0, i32 0
  %49 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet43, align 8, !tbaa !32
  %50 = load i32, i32* %b, align 4, !tbaa !9
  %idx.ext44 = sext i32 %50 to i64
  %add.ptr45 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %49, i64 %idx.ext44
  %51 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet46 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %51, i32 0, i32 0
  %52 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet46, align 8, !tbaa !32
  %53 = load i32, i32* %a, align 4, !tbaa !9
  %idx.ext47 = sext i32 %53 to i64
  %add.ptr48 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %52, i64 %idx.ext47
  %add.ptr49 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %add.ptr48, i64 1
  %54 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %sn50 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %54, i32 0, i32 2
  %55 = load i32, i32* %sn50, align 4, !tbaa !36
  %56 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %sn51 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %56, i32 0, i32 2
  %57 = load i32, i32* %sn51, align 4, !tbaa !36
  %58 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %dn52 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %58, i32 0, i32 1
  %59 = load i32, i32* %dn52, align 4, !tbaa !37
  %60 = load i32, i32* %a, align 4, !tbaa !9
  %sub53 = sub nsw i32 %59, %60
  %call54 = call i32 @opj_int_min(i32 %57, i32 %sub53) #6
  %call55 = call <4 x float> @_mm_set1_ps(float 0x3FAB2035C0000000) #6
  call void @opj_v4dwt_decode_step2_sse(%union.opj_v4_t* %add.ptr45, %union.opj_v4_t* %add.ptr49, i32 %55, i32 %call54, <4 x float> %call55) #6
  %61 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet56 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %61, i32 0, i32 0
  %62 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet56, align 8, !tbaa !32
  %63 = load i32, i32* %a, align 4, !tbaa !9
  %idx.ext57 = sext i32 %63 to i64
  %add.ptr58 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %62, i64 %idx.ext57
  %64 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %wavelet59 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %64, i32 0, i32 0
  %65 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet59, align 8, !tbaa !32
  %66 = load i32, i32* %b, align 4, !tbaa !9
  %idx.ext60 = sext i32 %66 to i64
  %add.ptr61 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %65, i64 %idx.ext60
  %add.ptr62 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %add.ptr61, i64 1
  %67 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %dn63 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %67, i32 0, i32 1
  %68 = load i32, i32* %dn63, align 4, !tbaa !37
  %69 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %dn64 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %69, i32 0, i32 1
  %70 = load i32, i32* %dn64, align 4, !tbaa !37
  %71 = load %struct.v4dwt_local*, %struct.v4dwt_local** %dwt.addr, align 8, !tbaa !1
  %sn65 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %71, i32 0, i32 2
  %72 = load i32, i32* %sn65, align 4, !tbaa !36
  %73 = load i32, i32* %b, align 4, !tbaa !9
  %sub66 = sub nsw i32 %72, %73
  %call67 = call i32 @opj_int_min(i32 %70, i32 %sub66) #6
  %call68 = call <4 x float> @_mm_set1_ps(float 0x3FF960CE60000000) #6
  call void @opj_v4dwt_decode_step2_sse(%union.opj_v4_t* %add.ptr58, %union.opj_v4_t* %add.ptr62, i32 %68, i32 %call67, <4 x float> %call68) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.9, %if.then.3
  %74 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @opj_v4dwt_interleave_v(%struct.v4dwt_local* noalias %v, float* noalias %a, i32 %x, i32 %nb_elts_read) #0 {
entry:
  %v.addr = alloca %struct.v4dwt_local*, align 8
  %a.addr = alloca float*, align 8
  %x.addr = alloca i32, align 4
  %nb_elts_read.addr = alloca i32, align 4
  %bi = alloca %union.opj_v4_t*, align 8
  %i = alloca i32, align 4
  store %struct.v4dwt_local* %v, %struct.v4dwt_local** %v.addr, align 8, !tbaa !1
  store float* %a, float** %a.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !9
  store i32 %nb_elts_read, i32* %nb_elts_read.addr, align 4, !tbaa !9
  %0 = bitcast %union.opj_v4_t** %bi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.v4dwt_local*, %struct.v4dwt_local** %v.addr, align 8, !tbaa !1
  %wavelet = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %1, i32 0, i32 0
  %2 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet, align 8, !tbaa !32
  %3 = load %struct.v4dwt_local*, %struct.v4dwt_local** %v.addr, align 8, !tbaa !1
  %cas = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %3, i32 0, i32 3
  %4 = load i32, i32* %cas, align 4, !tbaa !38
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %2, i64 %idx.ext
  store %union.opj_v4_t* %add.ptr, %union.opj_v4_t** %bi, align 8, !tbaa !1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !9
  %7 = load %struct.v4dwt_local*, %struct.v4dwt_local** %v.addr, align 8, !tbaa !1
  %sn = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %7, i32 0, i32 2
  %8 = load i32, i32* %sn, align 4, !tbaa !36
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !9
  %mul = mul nsw i32 %9, 2
  %idxprom = sext i32 %mul to i64
  %10 = load %union.opj_v4_t*, %union.opj_v4_t** %bi, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %10, i64 %idxprom
  %11 = bitcast %union.opj_v4_t* %arrayidx to i8*
  %12 = load i32, i32* %i, align 4, !tbaa !9
  %13 = load i32, i32* %x.addr, align 4, !tbaa !9
  %mul1 = mul nsw i32 %12, %13
  %idxprom2 = sext i32 %mul1 to i64
  %14 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %14, i64 %idxprom2
  %15 = bitcast float* %arrayidx3 to i8*
  %16 = load i32, i32* %nb_elts_read.addr, align 4, !tbaa !9
  %conv = sext i32 %16 to i64
  %mul4 = mul i64 %conv, 4
  %call = call i8* @memcpy(i8* %11, i8* %15, i64 %mul4) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.v4dwt_local*, %struct.v4dwt_local** %v.addr, align 8, !tbaa !1
  %sn5 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %18, i32 0, i32 2
  %19 = load i32, i32* %sn5, align 4, !tbaa !36
  %20 = load i32, i32* %x.addr, align 4, !tbaa !9
  %mul6 = mul nsw i32 %19, %20
  %21 = load float*, float** %a.addr, align 8, !tbaa !1
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds float, float* %21, i64 %idx.ext7
  store float* %add.ptr8, float** %a.addr, align 8, !tbaa !1
  %22 = load %struct.v4dwt_local*, %struct.v4dwt_local** %v.addr, align 8, !tbaa !1
  %wavelet9 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %22, i32 0, i32 0
  %23 = load %union.opj_v4_t*, %union.opj_v4_t** %wavelet9, align 8, !tbaa !32
  %add.ptr10 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %23, i64 1
  %24 = load %struct.v4dwt_local*, %struct.v4dwt_local** %v.addr, align 8, !tbaa !1
  %cas11 = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %24, i32 0, i32 3
  %25 = load i32, i32* %cas11, align 4, !tbaa !38
  %idx.ext12 = sext i32 %25 to i64
  %idx.neg = sub i64 0, %idx.ext12
  %add.ptr13 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %add.ptr10, i64 %idx.neg
  store %union.opj_v4_t* %add.ptr13, %union.opj_v4_t** %bi, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %for.end
  %26 = load i32, i32* %i, align 4, !tbaa !9
  %27 = load %struct.v4dwt_local*, %struct.v4dwt_local** %v.addr, align 8, !tbaa !1
  %dn = getelementptr inbounds %struct.v4dwt_local, %struct.v4dwt_local* %27, i32 0, i32 1
  %28 = load i32, i32* %dn, align 4, !tbaa !37
  %cmp15 = icmp slt i32 %26, %28
  br i1 %cmp15, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.14
  %29 = load i32, i32* %i, align 4, !tbaa !9
  %mul18 = mul nsw i32 %29, 2
  %idxprom19 = sext i32 %mul18 to i64
  %30 = load %union.opj_v4_t*, %union.opj_v4_t** %bi, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %union.opj_v4_t, %union.opj_v4_t* %30, i64 %idxprom19
  %31 = bitcast %union.opj_v4_t* %arrayidx20 to i8*
  %32 = load i32, i32* %i, align 4, !tbaa !9
  %33 = load i32, i32* %x.addr, align 4, !tbaa !9
  %mul21 = mul nsw i32 %32, %33
  %idxprom22 = sext i32 %mul21 to i64
  %34 = load float*, float** %a.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds float, float* %34, i64 %idxprom22
  %35 = bitcast float* %arrayidx23 to i8*
  %36 = load i32, i32* %nb_elts_read.addr, align 4, !tbaa !9
  %conv24 = sext i32 %36 to i64
  %mul25 = mul i64 %conv24, 4
  %call26 = call i8* @memcpy(i8* %31, i8* %35, i64 %mul25) #7
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.17
  %37 = load i32, i32* %i, align 4, !tbaa !9
  %inc28 = add nsw i32 %37, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !9
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast %union.opj_v4_t** %bi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_deinterleave_v(i32* %a, i32* %b, i32 %dn, i32 %sn, i32 %x, i32 %cas) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %dn.addr = alloca i32, align 4
  %sn.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %cas.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %l_dest = alloca i32*, align 8
  %l_src = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8, !tbaa !1
  store i32* %b, i32** %b.addr, align 8, !tbaa !1
  store i32 %dn, i32* %dn.addr, align 4, !tbaa !9
  store i32 %sn, i32* %sn.addr, align 4, !tbaa !9
  store i32 %x, i32* %x.addr, align 4, !tbaa !9
  store i32 %cas, i32* %cas.addr, align 4, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %sn.addr, align 4, !tbaa !9
  store i32 %1, i32* %i, align 4, !tbaa !9
  %2 = bitcast i32** %l_dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i32*, i32** %b.addr, align 8, !tbaa !1
  store i32* %3, i32** %l_dest, align 8, !tbaa !1
  %4 = bitcast i32** %l_src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %6 = load i32, i32* %cas.addr, align 4, !tbaa !9
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %idx.ext
  store i32* %add.ptr, i32** %l_src, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !9
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4, !tbaa !9
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32*, i32** %l_src, align 8, !tbaa !1
  %9 = load i32, i32* %8, align 4, !tbaa !9
  %10 = load i32*, i32** %l_dest, align 8, !tbaa !1
  store i32 %9, i32* %10, align 4, !tbaa !9
  %11 = load i32, i32* %x.addr, align 4, !tbaa !9
  %12 = load i32*, i32** %l_dest, align 8, !tbaa !1
  %idx.ext1 = sext i32 %11 to i64
  %add.ptr2 = getelementptr inbounds i32, i32* %12, i64 %idx.ext1
  store i32* %add.ptr2, i32** %l_dest, align 8, !tbaa !1
  %13 = load i32*, i32** %l_src, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i32, i32* %13, i64 2
  store i32* %add.ptr3, i32** %l_src, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32*, i32** %b.addr, align 8, !tbaa !1
  %15 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %16 = load i32, i32* %x.addr, align 4, !tbaa !9
  %mul = mul nsw i32 %15, %16
  %idx.ext4 = sext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds i32, i32* %14, i64 %idx.ext4
  store i32* %add.ptr5, i32** %l_dest, align 8, !tbaa !1
  %17 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i32, i32* %17, i64 1
  %18 = load i32, i32* %cas.addr, align 4, !tbaa !9
  %idx.ext7 = sext i32 %18 to i64
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds i32, i32* %add.ptr6, i64 %idx.neg
  store i32* %add.ptr8, i32** %l_src, align 8, !tbaa !1
  %19 = load i32, i32* %dn.addr, align 4, !tbaa !9
  store i32 %19, i32* %i, align 4, !tbaa !9
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.12, %while.end
  %20 = load i32, i32* %i, align 4, !tbaa !9
  %dec10 = add nsw i32 %20, -1
  store i32 %dec10, i32* %i, align 4, !tbaa !9
  %tobool11 = icmp ne i32 %20, 0
  br i1 %tobool11, label %while.body.12, label %while.end.16

while.body.12:                                    ; preds = %while.cond.9
  %21 = load i32*, i32** %l_src, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !9
  %23 = load i32*, i32** %l_dest, align 8, !tbaa !1
  store i32 %22, i32* %23, align 4, !tbaa !9
  %24 = load i32, i32* %x.addr, align 4, !tbaa !9
  %25 = load i32*, i32** %l_dest, align 8, !tbaa !1
  %idx.ext13 = sext i32 %24 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %25, i64 %idx.ext13
  store i32* %add.ptr14, i32** %l_dest, align 8, !tbaa !1
  %26 = load i32*, i32** %l_src, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i32, i32* %26, i64 2
  store i32* %add.ptr15, i32** %l_src, align 8, !tbaa !1
  br label %while.cond.9

while.end.16:                                     ; preds = %while.cond.9
  %27 = bitcast i32** %l_src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i32** %l_dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_deinterleave_h(i32* %a, i32* %b, i32 %dn, i32 %sn, i32 %cas) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %dn.addr = alloca i32, align 4
  %sn.addr = alloca i32, align 4
  %cas.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %l_dest = alloca i32*, align 8
  %l_src = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8, !tbaa !1
  store i32* %b, i32** %b.addr, align 8, !tbaa !1
  store i32 %dn, i32* %dn.addr, align 4, !tbaa !9
  store i32 %sn, i32* %sn.addr, align 4, !tbaa !9
  store i32 %cas, i32* %cas.addr, align 4, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32** %l_dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i32*, i32** %b.addr, align 8, !tbaa !1
  store i32* %2, i32** %l_dest, align 8, !tbaa !1
  %3 = bitcast i32** %l_src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %5 = load i32, i32* %cas.addr, align 4, !tbaa !9
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  store i32* %add.ptr, i32** %l_src, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !9
  %7 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32*, i32** %l_src, align 8, !tbaa !1
  %9 = load i32, i32* %8, align 4, !tbaa !9
  %10 = load i32*, i32** %l_dest, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %l_dest, align 8, !tbaa !1
  store i32 %9, i32* %10, align 4, !tbaa !9
  %11 = load i32*, i32** %l_src, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i32, i32* %11, i64 2
  store i32* %add.ptr1, i32** %l_src, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32*, i32** %b.addr, align 8, !tbaa !1
  %14 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %idx.ext2 = sext i32 %14 to i64
  %add.ptr3 = getelementptr inbounds i32, i32* %13, i64 %idx.ext2
  store i32* %add.ptr3, i32** %l_dest, align 8, !tbaa !1
  %15 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %cas.addr, align 4, !tbaa !9
  %idx.ext5 = sext i32 %16 to i64
  %idx.neg = sub i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds i32, i32* %add.ptr4, i64 %idx.neg
  store i32* %add.ptr6, i32** %l_src, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.12, %for.end
  %17 = load i32, i32* %i, align 4, !tbaa !9
  %18 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp8 = icmp slt i32 %17, %18
  br i1 %cmp8, label %for.body.9, label %for.end.14

for.body.9:                                       ; preds = %for.cond.7
  %19 = load i32*, i32** %l_src, align 8, !tbaa !1
  %20 = load i32, i32* %19, align 4, !tbaa !9
  %21 = load i32*, i32** %l_dest, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr10, i32** %l_dest, align 8, !tbaa !1
  store i32 %20, i32* %21, align 4, !tbaa !9
  %22 = load i32*, i32** %l_src, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i32, i32* %22, i64 2
  store i32* %add.ptr11, i32** %l_src, align 8, !tbaa !1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.9
  %23 = load i32, i32* %i, align 4, !tbaa !9
  %inc13 = add nsw i32 %23, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !9
  br label %for.cond.7

for.end.14:                                       ; preds = %for.cond.7
  %24 = bitcast i32** %l_src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i32** %l_dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_decode_1_(i32* %a, i32 %dn, i32 %sn, i32 %cas) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %dn.addr = alloca i32, align 4
  %sn.addr = alloca i32, align 4
  %cas.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8, !tbaa !1
  store i32 %dn, i32* %dn.addr, align 4, !tbaa !9
  store i32 %sn, i32* %sn.addr, align 4, !tbaa !9
  store i32 %cas, i32* %cas.addr, align 4, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %cas.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4, !tbaa !9
  %5 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !9
  %sub = sub nsw i32 %6, 1
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !9
  br label %cond.end.16

cond.false:                                       ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !9
  %sub5 = sub nsw i32 %9, 1
  %10 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp6 = icmp sge i32 %sub5, %10
  br i1 %cmp6, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %cond.false
  %11 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub8 = sub nsw i32 %11, 1
  %mul = mul nsw i32 %sub8, 2
  %add = add nsw i32 1, %mul
  %idxprom = sext i32 %add to i64
  %12 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx9, align 4, !tbaa !9
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %14 = load i32, i32* %i, align 4, !tbaa !9
  %sub11 = sub nsw i32 %14, 1
  %mul12 = mul nsw i32 %sub11, 2
  %add13 = add nsw i32 1, %mul12
  %idxprom14 = sext i32 %add13 to i64
  %15 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32, i32* %15, i64 %idxprom14
  %16 = load i32, i32* %arrayidx15, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.7
  %cond = phi i32 [ %13, %cond.true.7 ], [ %16, %cond.false.10 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi i32 [ %8, %cond.true ], [ %cond, %cond.end ]
  %17 = load i32, i32* %i, align 4, !tbaa !9
  %cmp18 = icmp slt i32 %17, 0
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.end.16
  %18 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 1
  %19 = load i32, i32* %arrayidx20, align 4, !tbaa !9
  br label %cond.end.36

cond.false.21:                                    ; preds = %cond.end.16
  %20 = load i32, i32* %i, align 4, !tbaa !9
  %21 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp22 = icmp sge i32 %20, %21
  br i1 %cmp22, label %cond.true.23, label %cond.false.29

cond.true.23:                                     ; preds = %cond.false.21
  %22 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub24 = sub nsw i32 %22, 1
  %mul25 = mul nsw i32 %sub24, 2
  %add26 = add nsw i32 1, %mul25
  %idxprom27 = sext i32 %add26 to i64
  %23 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i32, i32* %23, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4, !tbaa !9
  br label %cond.end.34

cond.false.29:                                    ; preds = %cond.false.21
  %25 = load i32, i32* %i, align 4, !tbaa !9
  %mul30 = mul nsw i32 %25, 2
  %add31 = add nsw i32 1, %mul30
  %idxprom32 = sext i32 %add31 to i64
  %26 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i32, i32* %26, i64 %idxprom32
  %27 = load i32, i32* %arrayidx33, align 4, !tbaa !9
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.29, %cond.true.23
  %cond35 = phi i32 [ %24, %cond.true.23 ], [ %27, %cond.false.29 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end.34, %cond.true.19
  %cond37 = phi i32 [ %19, %cond.true.19 ], [ %cond35, %cond.end.34 ]
  %add38 = add nsw i32 %cond17, %cond37
  %add39 = add nsw i32 %add38, 2
  %shr = ashr i32 %add39, 2
  %28 = load i32, i32* %i, align 4, !tbaa !9
  %mul40 = mul nsw i32 %28, 2
  %idxprom41 = sext i32 %mul40 to i64
  %29 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i32, i32* %29, i64 %idxprom41
  %30 = load i32, i32* %arrayidx42, align 4, !tbaa !9
  %sub43 = sub nsw i32 %30, %shr
  store i32 %sub43, i32* %arrayidx42, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %cond.end.36
  %31 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.93, %for.end
  %32 = load i32, i32* %i, align 4, !tbaa !9
  %33 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp45 = icmp slt i32 %32, %33
  br i1 %cmp45, label %for.body.46, label %for.end.95

for.body.46:                                      ; preds = %for.cond.44
  %34 = load i32, i32* %i, align 4, !tbaa !9
  %cmp47 = icmp slt i32 %34, 0
  br i1 %cmp47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %for.body.46
  %35 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx49, align 4, !tbaa !9
  br label %cond.end.63

cond.false.50:                                    ; preds = %for.body.46
  %37 = load i32, i32* %i, align 4, !tbaa !9
  %38 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp51 = icmp sge i32 %37, %38
  br i1 %cmp51, label %cond.true.52, label %cond.false.57

cond.true.52:                                     ; preds = %cond.false.50
  %39 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub53 = sub nsw i32 %39, 1
  %mul54 = mul nsw i32 %sub53, 2
  %idxprom55 = sext i32 %mul54 to i64
  %40 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i32, i32* %40, i64 %idxprom55
  %41 = load i32, i32* %arrayidx56, align 4, !tbaa !9
  br label %cond.end.61

cond.false.57:                                    ; preds = %cond.false.50
  %42 = load i32, i32* %i, align 4, !tbaa !9
  %mul58 = mul nsw i32 %42, 2
  %idxprom59 = sext i32 %mul58 to i64
  %43 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i32, i32* %43, i64 %idxprom59
  %44 = load i32, i32* %arrayidx60, align 4, !tbaa !9
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.57, %cond.true.52
  %cond62 = phi i32 [ %41, %cond.true.52 ], [ %44, %cond.false.57 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.48
  %cond64 = phi i32 [ %36, %cond.true.48 ], [ %cond62, %cond.end.61 ]
  %45 = load i32, i32* %i, align 4, !tbaa !9
  %add65 = add nsw i32 %45, 1
  %cmp66 = icmp slt i32 %add65, 0
  br i1 %cmp66, label %cond.true.67, label %cond.false.69

cond.true.67:                                     ; preds = %cond.end.63
  %46 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i32, i32* %46, i64 0
  %47 = load i32, i32* %arrayidx68, align 4, !tbaa !9
  br label %cond.end.84

cond.false.69:                                    ; preds = %cond.end.63
  %48 = load i32, i32* %i, align 4, !tbaa !9
  %add70 = add nsw i32 %48, 1
  %49 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp71 = icmp sge i32 %add70, %49
  br i1 %cmp71, label %cond.true.72, label %cond.false.77

cond.true.72:                                     ; preds = %cond.false.69
  %50 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub73 = sub nsw i32 %50, 1
  %mul74 = mul nsw i32 %sub73, 2
  %idxprom75 = sext i32 %mul74 to i64
  %51 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i32, i32* %51, i64 %idxprom75
  %52 = load i32, i32* %arrayidx76, align 4, !tbaa !9
  br label %cond.end.82

cond.false.77:                                    ; preds = %cond.false.69
  %53 = load i32, i32* %i, align 4, !tbaa !9
  %add78 = add nsw i32 %53, 1
  %mul79 = mul nsw i32 %add78, 2
  %idxprom80 = sext i32 %mul79 to i64
  %54 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i32, i32* %54, i64 %idxprom80
  %55 = load i32, i32* %arrayidx81, align 4, !tbaa !9
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.77, %cond.true.72
  %cond83 = phi i32 [ %52, %cond.true.72 ], [ %55, %cond.false.77 ]
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.end.82, %cond.true.67
  %cond85 = phi i32 [ %47, %cond.true.67 ], [ %cond83, %cond.end.82 ]
  %add86 = add nsw i32 %cond64, %cond85
  %shr87 = ashr i32 %add86, 1
  %56 = load i32, i32* %i, align 4, !tbaa !9
  %mul88 = mul nsw i32 %56, 2
  %add89 = add nsw i32 1, %mul88
  %idxprom90 = sext i32 %add89 to i64
  %57 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i32, i32* %57, i64 %idxprom90
  %58 = load i32, i32* %arrayidx91, align 4, !tbaa !9
  %add92 = add nsw i32 %58, %shr87
  store i32 %add92, i32* %arrayidx91, align 4, !tbaa !9
  br label %for.inc.93

for.inc.93:                                       ; preds = %cond.end.84
  %59 = load i32, i32* %i, align 4, !tbaa !9
  %inc94 = add nsw i32 %59, 1
  store i32 %inc94, i32* %i, align 4, !tbaa !9
  br label %for.cond.44

for.end.95:                                       ; preds = %for.cond.44
  br label %if.end

if.end:                                           ; preds = %for.end.95, %lor.lhs.false
  br label %if.end.210

if.else:                                          ; preds = %entry
  %60 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %tobool96 = icmp ne i32 %60, 0
  br i1 %tobool96, label %if.else.100, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %61 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp97 = icmp eq i32 %61, 1
  br i1 %cmp97, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %land.lhs.true
  %62 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i32, i32* %62, i64 0
  %63 = load i32, i32* %arrayidx99, align 4, !tbaa !9
  %div = sdiv i32 %63, 2
  store i32 %div, i32* %arrayidx99, align 4, !tbaa !9
  br label %if.end.209

if.else.100:                                      ; preds = %land.lhs.true, %if.else
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.151, %if.else.100
  %64 = load i32, i32* %i, align 4, !tbaa !9
  %65 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp102 = icmp slt i32 %64, %65
  br i1 %cmp102, label %for.body.103, label %for.end.153

for.body.103:                                     ; preds = %for.cond.101
  %66 = load i32, i32* %i, align 4, !tbaa !9
  %cmp104 = icmp slt i32 %66, 0
  br i1 %cmp104, label %cond.true.105, label %cond.false.107

cond.true.105:                                    ; preds = %for.body.103
  %67 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i32, i32* %67, i64 0
  %68 = load i32, i32* %arrayidx106, align 4, !tbaa !9
  br label %cond.end.120

cond.false.107:                                   ; preds = %for.body.103
  %69 = load i32, i32* %i, align 4, !tbaa !9
  %70 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp108 = icmp sge i32 %69, %70
  br i1 %cmp108, label %cond.true.109, label %cond.false.114

cond.true.109:                                    ; preds = %cond.false.107
  %71 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub110 = sub nsw i32 %71, 1
  %mul111 = mul nsw i32 %sub110, 2
  %idxprom112 = sext i32 %mul111 to i64
  %72 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i32, i32* %72, i64 %idxprom112
  %73 = load i32, i32* %arrayidx113, align 4, !tbaa !9
  br label %cond.end.118

cond.false.114:                                   ; preds = %cond.false.107
  %74 = load i32, i32* %i, align 4, !tbaa !9
  %mul115 = mul nsw i32 %74, 2
  %idxprom116 = sext i32 %mul115 to i64
  %75 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %75, i64 %idxprom116
  %76 = load i32, i32* %arrayidx117, align 4, !tbaa !9
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.114, %cond.true.109
  %cond119 = phi i32 [ %73, %cond.true.109 ], [ %76, %cond.false.114 ]
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.end.118, %cond.true.105
  %cond121 = phi i32 [ %68, %cond.true.105 ], [ %cond119, %cond.end.118 ]
  %77 = load i32, i32* %i, align 4, !tbaa !9
  %add122 = add nsw i32 %77, 1
  %cmp123 = icmp slt i32 %add122, 0
  br i1 %cmp123, label %cond.true.124, label %cond.false.126

cond.true.124:                                    ; preds = %cond.end.120
  %78 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx125, align 4, !tbaa !9
  br label %cond.end.141

cond.false.126:                                   ; preds = %cond.end.120
  %80 = load i32, i32* %i, align 4, !tbaa !9
  %add127 = add nsw i32 %80, 1
  %81 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp128 = icmp sge i32 %add127, %81
  br i1 %cmp128, label %cond.true.129, label %cond.false.134

cond.true.129:                                    ; preds = %cond.false.126
  %82 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %sub130 = sub nsw i32 %82, 1
  %mul131 = mul nsw i32 %sub130, 2
  %idxprom132 = sext i32 %mul131 to i64
  %83 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i32, i32* %83, i64 %idxprom132
  %84 = load i32, i32* %arrayidx133, align 4, !tbaa !9
  br label %cond.end.139

cond.false.134:                                   ; preds = %cond.false.126
  %85 = load i32, i32* %i, align 4, !tbaa !9
  %add135 = add nsw i32 %85, 1
  %mul136 = mul nsw i32 %add135, 2
  %idxprom137 = sext i32 %mul136 to i64
  %86 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds i32, i32* %86, i64 %idxprom137
  %87 = load i32, i32* %arrayidx138, align 4, !tbaa !9
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.134, %cond.true.129
  %cond140 = phi i32 [ %84, %cond.true.129 ], [ %87, %cond.false.134 ]
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.end.139, %cond.true.124
  %cond142 = phi i32 [ %79, %cond.true.124 ], [ %cond140, %cond.end.139 ]
  %add143 = add nsw i32 %cond121, %cond142
  %add144 = add nsw i32 %add143, 2
  %shr145 = ashr i32 %add144, 2
  %88 = load i32, i32* %i, align 4, !tbaa !9
  %mul146 = mul nsw i32 %88, 2
  %add147 = add nsw i32 1, %mul146
  %idxprom148 = sext i32 %add147 to i64
  %89 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i32, i32* %89, i64 %idxprom148
  %90 = load i32, i32* %arrayidx149, align 4, !tbaa !9
  %sub150 = sub nsw i32 %90, %shr145
  store i32 %sub150, i32* %arrayidx149, align 4, !tbaa !9
  br label %for.inc.151

for.inc.151:                                      ; preds = %cond.end.141
  %91 = load i32, i32* %i, align 4, !tbaa !9
  %inc152 = add nsw i32 %91, 1
  store i32 %inc152, i32* %i, align 4, !tbaa !9
  br label %for.cond.101

for.end.153:                                      ; preds = %for.cond.101
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.206, %for.end.153
  %92 = load i32, i32* %i, align 4, !tbaa !9
  %93 = load i32, i32* %dn.addr, align 4, !tbaa !9
  %cmp155 = icmp slt i32 %92, %93
  br i1 %cmp155, label %for.body.156, label %for.end.208

for.body.156:                                     ; preds = %for.cond.154
  %94 = load i32, i32* %i, align 4, !tbaa !9
  %cmp157 = icmp slt i32 %94, 0
  br i1 %cmp157, label %cond.true.158, label %cond.false.160

cond.true.158:                                    ; preds = %for.body.156
  %95 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i32, i32* %95, i64 1
  %96 = load i32, i32* %arrayidx159, align 4, !tbaa !9
  br label %cond.end.175

cond.false.160:                                   ; preds = %for.body.156
  %97 = load i32, i32* %i, align 4, !tbaa !9
  %98 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp161 = icmp sge i32 %97, %98
  br i1 %cmp161, label %cond.true.162, label %cond.false.168

cond.true.162:                                    ; preds = %cond.false.160
  %99 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub163 = sub nsw i32 %99, 1
  %mul164 = mul nsw i32 %sub163, 2
  %add165 = add nsw i32 1, %mul164
  %idxprom166 = sext i32 %add165 to i64
  %100 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i32, i32* %100, i64 %idxprom166
  %101 = load i32, i32* %arrayidx167, align 4, !tbaa !9
  br label %cond.end.173

cond.false.168:                                   ; preds = %cond.false.160
  %102 = load i32, i32* %i, align 4, !tbaa !9
  %mul169 = mul nsw i32 %102, 2
  %add170 = add nsw i32 1, %mul169
  %idxprom171 = sext i32 %add170 to i64
  %103 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i32, i32* %103, i64 %idxprom171
  %104 = load i32, i32* %arrayidx172, align 4, !tbaa !9
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.168, %cond.true.162
  %cond174 = phi i32 [ %101, %cond.true.162 ], [ %104, %cond.false.168 ]
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.end.173, %cond.true.158
  %cond176 = phi i32 [ %96, %cond.true.158 ], [ %cond174, %cond.end.173 ]
  %105 = load i32, i32* %i, align 4, !tbaa !9
  %sub177 = sub nsw i32 %105, 1
  %cmp178 = icmp slt i32 %sub177, 0
  br i1 %cmp178, label %cond.true.179, label %cond.false.181

cond.true.179:                                    ; preds = %cond.end.175
  %106 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i32, i32* %106, i64 1
  %107 = load i32, i32* %arrayidx180, align 4, !tbaa !9
  br label %cond.end.198

cond.false.181:                                   ; preds = %cond.end.175
  %108 = load i32, i32* %i, align 4, !tbaa !9
  %sub182 = sub nsw i32 %108, 1
  %109 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %cmp183 = icmp sge i32 %sub182, %109
  br i1 %cmp183, label %cond.true.184, label %cond.false.190

cond.true.184:                                    ; preds = %cond.false.181
  %110 = load i32, i32* %sn.addr, align 4, !tbaa !9
  %sub185 = sub nsw i32 %110, 1
  %mul186 = mul nsw i32 %sub185, 2
  %add187 = add nsw i32 1, %mul186
  %idxprom188 = sext i32 %add187 to i64
  %111 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i32, i32* %111, i64 %idxprom188
  %112 = load i32, i32* %arrayidx189, align 4, !tbaa !9
  br label %cond.end.196

cond.false.190:                                   ; preds = %cond.false.181
  %113 = load i32, i32* %i, align 4, !tbaa !9
  %sub191 = sub nsw i32 %113, 1
  %mul192 = mul nsw i32 %sub191, 2
  %add193 = add nsw i32 1, %mul192
  %idxprom194 = sext i32 %add193 to i64
  %114 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i32, i32* %114, i64 %idxprom194
  %115 = load i32, i32* %arrayidx195, align 4, !tbaa !9
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.190, %cond.true.184
  %cond197 = phi i32 [ %112, %cond.true.184 ], [ %115, %cond.false.190 ]
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.end.196, %cond.true.179
  %cond199 = phi i32 [ %107, %cond.true.179 ], [ %cond197, %cond.end.196 ]
  %add200 = add nsw i32 %cond176, %cond199
  %shr201 = ashr i32 %add200, 1
  %116 = load i32, i32* %i, align 4, !tbaa !9
  %mul202 = mul nsw i32 %116, 2
  %idxprom203 = sext i32 %mul202 to i64
  %117 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i32, i32* %117, i64 %idxprom203
  %118 = load i32, i32* %arrayidx204, align 4, !tbaa !9
  %add205 = add nsw i32 %118, %shr201
  store i32 %add205, i32* %arrayidx204, align 4, !tbaa !9
  br label %for.inc.206

for.inc.206:                                      ; preds = %cond.end.198
  %119 = load i32, i32* %i, align 4, !tbaa !9
  %inc207 = add nsw i32 %119, 1
  store i32 %inc207, i32* %i, align 4, !tbaa !9
  br label %for.cond.154

for.end.208:                                      ; preds = %for.cond.154
  br label %if.end.209

if.end.209:                                       ; preds = %for.end.208, %if.then.98
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end
  %120 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_fix_mul(i32 %a, i32 %b) #1 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %temp = alloca i64, align 8
  store i32 %a, i32* %a.addr, align 4, !tbaa !9
  store i32 %b, i32* %b.addr, align 4, !tbaa !9
  %0 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32, i32* %a.addr, align 4, !tbaa !9
  %conv = sext i32 %1 to i64
  %2 = load i32, i32* %b.addr, align 4, !tbaa !9
  %conv1 = sext i32 %2 to i64
  %mul = mul nsw i64 %conv, %conv1
  store i64 %mul, i64* %temp, align 8, !tbaa !41
  %3 = load i64, i64* %temp, align 8, !tbaa !41
  %and = and i64 %3, 4096
  %4 = load i64, i64* %temp, align 8, !tbaa !41
  %add = add nsw i64 %4, %and
  store i64 %add, i64* %temp, align 8, !tbaa !41
  %5 = load i64, i64* %temp, align 8, !tbaa !41
  %shr = ashr i64 %5, 13
  %conv2 = trunc i64 %shr to i32
  %6 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret i32 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_floorlog2(i32 %a) #1 {
entry:
  %a.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !9
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %l, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %a.addr, align 4, !tbaa !9
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a.addr, align 4, !tbaa !9
  %shr = ashr i32 %2, 1
  store i32 %shr, i32* %a.addr, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %l, align 4, !tbaa !9
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %l, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %l, align 4, !tbaa !9
  %5 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #2
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_interleave_h(%struct.dwt_local* %h, i32* %a) #0 {
entry:
  %h.addr = alloca %struct.dwt_local*, align 8
  %a.addr = alloca i32*, align 8
  %ai = alloca i32*, align 8
  %bi = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.dwt_local* %h, %struct.dwt_local** %h.addr, align 8, !tbaa !1
  store i32* %a, i32** %a.addr, align 8, !tbaa !1
  %0 = bitcast i32** %ai to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32*, i32** %a.addr, align 8, !tbaa !1
  store i32* %1, i32** %ai, align 8, !tbaa !1
  %2 = bitcast i32** %bi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.dwt_local*, %struct.dwt_local** %h.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %3, i32 0, i32 0
  %4 = load i32*, i32** %mem, align 8, !tbaa !18
  %5 = load %struct.dwt_local*, %struct.dwt_local** %h.addr, align 8, !tbaa !1
  %cas = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %5, i32 0, i32 3
  %6 = load i32, i32* %cas, align 4, !tbaa !22
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  store i32* %add.ptr, i32** %bi, align 8, !tbaa !1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.dwt_local*, %struct.dwt_local** %h.addr, align 8, !tbaa !1
  %sn = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %8, i32 0, i32 2
  %9 = load i32, i32* %sn, align 4, !tbaa !20
  store i32 %9, i32* %i, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !9
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4, !tbaa !9
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32*, i32** %ai, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %ai, align 8, !tbaa !1
  %12 = load i32, i32* %11, align 4, !tbaa !9
  %13 = load i32*, i32** %bi, align 8, !tbaa !1
  store i32 %12, i32* %13, align 4, !tbaa !9
  %14 = load i32*, i32** %bi, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i32, i32* %14, i64 2
  store i32* %add.ptr1, i32** %bi, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %16 = load %struct.dwt_local*, %struct.dwt_local** %h.addr, align 8, !tbaa !1
  %sn2 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %16, i32 0, i32 2
  %17 = load i32, i32* %sn2, align 4, !tbaa !20
  %idx.ext3 = sext i32 %17 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %15, i64 %idx.ext3
  store i32* %add.ptr4, i32** %ai, align 8, !tbaa !1
  %18 = load %struct.dwt_local*, %struct.dwt_local** %h.addr, align 8, !tbaa !1
  %mem5 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %18, i32 0, i32 0
  %19 = load i32*, i32** %mem5, align 8, !tbaa !18
  %add.ptr6 = getelementptr inbounds i32, i32* %19, i64 1
  %20 = load %struct.dwt_local*, %struct.dwt_local** %h.addr, align 8, !tbaa !1
  %cas7 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %20, i32 0, i32 3
  %21 = load i32, i32* %cas7, align 4, !tbaa !22
  %idx.ext8 = sext i32 %21 to i64
  %idx.neg = sub i64 0, %idx.ext8
  %add.ptr9 = getelementptr inbounds i32, i32* %add.ptr6, i64 %idx.neg
  store i32* %add.ptr9, i32** %bi, align 8, !tbaa !1
  %22 = load %struct.dwt_local*, %struct.dwt_local** %h.addr, align 8, !tbaa !1
  %dn = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %22, i32 0, i32 1
  %23 = load i32, i32* %dn, align 4, !tbaa !21
  store i32 %23, i32* %i, align 4, !tbaa !9
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.13, %while.end
  %24 = load i32, i32* %i, align 4, !tbaa !9
  %dec11 = add nsw i32 %24, -1
  store i32 %dec11, i32* %i, align 4, !tbaa !9
  %tobool12 = icmp ne i32 %24, 0
  br i1 %tobool12, label %while.body.13, label %while.end.16

while.body.13:                                    ; preds = %while.cond.10
  %25 = load i32*, i32** %ai, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %incdec.ptr14, i32** %ai, align 8, !tbaa !1
  %26 = load i32, i32* %25, align 4, !tbaa !9
  %27 = load i32*, i32** %bi, align 8, !tbaa !1
  store i32 %26, i32* %27, align 4, !tbaa !9
  %28 = load i32*, i32** %bi, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i32, i32* %28, i64 2
  store i32* %add.ptr15, i32** %bi, align 8, !tbaa !1
  br label %while.cond.10

while.end.16:                                     ; preds = %while.cond.10
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32** %bi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast i32** %ai to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_interleave_v(%struct.dwt_local* %v, i32* %a, i32 %x) #0 {
entry:
  %v.addr = alloca %struct.dwt_local*, align 8
  %a.addr = alloca i32*, align 8
  %x.addr = alloca i32, align 4
  %ai = alloca i32*, align 8
  %bi = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.dwt_local* %v, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  store i32* %a, i32** %a.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !9
  %0 = bitcast i32** %ai to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i32*, i32** %a.addr, align 8, !tbaa !1
  store i32* %1, i32** %ai, align 8, !tbaa !1
  %2 = bitcast i32** %bi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %3, i32 0, i32 0
  %4 = load i32*, i32** %mem, align 8, !tbaa !18
  %5 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %cas = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %5, i32 0, i32 3
  %6 = load i32, i32* %cas, align 4, !tbaa !22
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  store i32* %add.ptr, i32** %bi, align 8, !tbaa !1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %sn = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %8, i32 0, i32 2
  %9 = load i32, i32* %sn, align 4, !tbaa !20
  store i32 %9, i32* %i, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !9
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4, !tbaa !9
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32*, i32** %ai, align 8, !tbaa !1
  %12 = load i32, i32* %11, align 4, !tbaa !9
  %13 = load i32*, i32** %bi, align 8, !tbaa !1
  store i32 %12, i32* %13, align 4, !tbaa !9
  %14 = load i32*, i32** %bi, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i32, i32* %14, i64 2
  store i32* %add.ptr1, i32** %bi, align 8, !tbaa !1
  %15 = load i32, i32* %x.addr, align 4, !tbaa !9
  %16 = load i32*, i32** %ai, align 8, !tbaa !1
  %idx.ext2 = sext i32 %15 to i64
  %add.ptr3 = getelementptr inbounds i32, i32* %16, i64 %idx.ext2
  store i32* %add.ptr3, i32** %ai, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32*, i32** %a.addr, align 8, !tbaa !1
  %18 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %sn4 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %18, i32 0, i32 2
  %19 = load i32, i32* %sn4, align 4, !tbaa !20
  %20 = load i32, i32* %x.addr, align 4, !tbaa !9
  %mul = mul nsw i32 %19, %20
  %idx.ext5 = sext i32 %mul to i64
  %add.ptr6 = getelementptr inbounds i32, i32* %17, i64 %idx.ext5
  store i32* %add.ptr6, i32** %ai, align 8, !tbaa !1
  %21 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %mem7 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %21, i32 0, i32 0
  %22 = load i32*, i32** %mem7, align 8, !tbaa !18
  %add.ptr8 = getelementptr inbounds i32, i32* %22, i64 1
  %23 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %cas9 = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %23, i32 0, i32 3
  %24 = load i32, i32* %cas9, align 4, !tbaa !22
  %idx.ext10 = sext i32 %24 to i64
  %idx.neg = sub i64 0, %idx.ext10
  %add.ptr11 = getelementptr inbounds i32, i32* %add.ptr8, i64 %idx.neg
  store i32* %add.ptr11, i32** %bi, align 8, !tbaa !1
  %25 = load %struct.dwt_local*, %struct.dwt_local** %v.addr, align 8, !tbaa !1
  %dn = getelementptr inbounds %struct.dwt_local, %struct.dwt_local* %25, i32 0, i32 1
  %26 = load i32, i32* %dn, align 4, !tbaa !21
  store i32 %26, i32* %i, align 4, !tbaa !9
  br label %while.cond.12

while.cond.12:                                    ; preds = %while.body.15, %while.end
  %27 = load i32, i32* %i, align 4, !tbaa !9
  %dec13 = add nsw i32 %27, -1
  store i32 %dec13, i32* %i, align 4, !tbaa !9
  %tobool14 = icmp ne i32 %27, 0
  br i1 %tobool14, label %while.body.15, label %while.end.19

while.body.15:                                    ; preds = %while.cond.12
  %28 = load i32*, i32** %ai, align 8, !tbaa !1
  %29 = load i32, i32* %28, align 4, !tbaa !9
  %30 = load i32*, i32** %bi, align 8, !tbaa !1
  store i32 %29, i32* %30, align 4, !tbaa !9
  %31 = load i32*, i32** %bi, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i32, i32* %31, i64 2
  store i32* %add.ptr16, i32** %bi, align 8, !tbaa !1
  %32 = load i32, i32* %x.addr, align 4, !tbaa !9
  %33 = load i32*, i32** %ai, align 8, !tbaa !1
  %idx.ext17 = sext i32 %32 to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %33, i64 %idx.ext17
  store i32* %add.ptr18, i32** %ai, align 8, !tbaa !1
  br label %while.cond.12

while.end.19:                                     ; preds = %while.cond.12
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32** %bi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast i32** %ai to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_v4dwt_decode_step1_sse(%union.opj_v4_t* %w, i32 %count, <4 x float> %c) #0 {
entry:
  %w.addr = alloca %union.opj_v4_t*, align 8
  %count.addr = alloca i32, align 4
  %c.addr = alloca <4 x float>, align 16
  %vw = alloca <4 x float>*, align 8
  %i = alloca i32, align 4
  store %union.opj_v4_t* %w, %union.opj_v4_t** %w.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !9
  store <4 x float> %c, <4 x float>* %c.addr, align 16, !tbaa !43
  %0 = bitcast <4 x float>** %vw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %union.opj_v4_t*, %union.opj_v4_t** %w.addr, align 8, !tbaa !1
  %2 = bitcast %union.opj_v4_t* %1 to <4 x float>*
  store <4 x float>* %2, <4 x float>** %vw, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !9
  %5 = load i32, i32* %count.addr, align 4, !tbaa !9
  %shr = ashr i32 %5, 2
  %cmp = icmp slt i32 %4, %shr
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %7 = load <4 x float>, <4 x float>* %6, align 16, !tbaa !43
  %8 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %call = call <4 x float> @_mm_mul_ps(<4 x float> %7, <4 x float> %8) #6
  %9 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  store <4 x float> %call, <4 x float>* %9, align 16, !tbaa !43
  %10 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds <4 x float>, <4 x float>* %10, i64 2
  store <4 x float>* %add.ptr, <4 x float>** %vw, align 8, !tbaa !1
  %11 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %12 = load <4 x float>, <4 x float>* %11, align 16, !tbaa !43
  %13 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %call1 = call <4 x float> @_mm_mul_ps(<4 x float> %12, <4 x float> %13) #6
  %14 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  store <4 x float> %call1, <4 x float>* %14, align 16, !tbaa !43
  %15 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds <4 x float>, <4 x float>* %15, i64 2
  store <4 x float>* %add.ptr2, <4 x float>** %vw, align 8, !tbaa !1
  %16 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %17 = load <4 x float>, <4 x float>* %16, align 16, !tbaa !43
  %18 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %call3 = call <4 x float> @_mm_mul_ps(<4 x float> %17, <4 x float> %18) #6
  %19 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  store <4 x float> %call3, <4 x float>* %19, align 16, !tbaa !43
  %20 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds <4 x float>, <4 x float>* %20, i64 2
  store <4 x float>* %add.ptr4, <4 x float>** %vw, align 8, !tbaa !1
  %21 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %22 = load <4 x float>, <4 x float>* %21, align 16, !tbaa !43
  %23 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %call5 = call <4 x float> @_mm_mul_ps(<4 x float> %22, <4 x float> %23) #6
  %24 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  store <4 x float> %call5, <4 x float>* %24, align 16, !tbaa !43
  %25 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds <4 x float>, <4 x float>* %25, i64 2
  store <4 x float>* %add.ptr6, <4 x float>** %vw, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %count.addr, align 4, !tbaa !9
  %and = and i32 %27, 3
  store i32 %and, i32* %count.addr, align 4, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.12, %for.end
  %28 = load i32, i32* %i, align 4, !tbaa !9
  %29 = load i32, i32* %count.addr, align 4, !tbaa !9
  %cmp8 = icmp slt i32 %28, %29
  br i1 %cmp8, label %for.body.9, label %for.end.14

for.body.9:                                       ; preds = %for.cond.7
  %30 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %31 = load <4 x float>, <4 x float>* %30, align 16, !tbaa !43
  %32 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %call10 = call <4 x float> @_mm_mul_ps(<4 x float> %31, <4 x float> %32) #6
  %33 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  store <4 x float> %call10, <4 x float>* %33, align 16, !tbaa !43
  %34 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds <4 x float>, <4 x float>* %34, i64 2
  store <4 x float>* %add.ptr11, <4 x float>** %vw, align 8, !tbaa !1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.9
  %35 = load i32, i32* %i, align 4, !tbaa !9
  %inc13 = add nsw i32 %35, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !9
  br label %for.cond.7

for.end.14:                                       ; preds = %for.cond.7
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast <4 x float>** %vw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  ret void
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_set1_ps(float %__w) #5 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %__w, float* %__w.addr, align 4, !tbaa !39
  %0 = load float, float* %__w.addr, align 4, !tbaa !39
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, float* %__w.addr, align 4, !tbaa !39
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, float* %__w.addr, align 4, !tbaa !39
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, float* %__w.addr, align 4, !tbaa !39
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral, !tbaa !43
  %4 = load <4 x float>, <4 x float>* %.compoundliteral, !tbaa !43
  ret <4 x float> %4
}

; Function Attrs: nounwind uwtable
define internal void @opj_v4dwt_decode_step2_sse(%union.opj_v4_t* %l, %union.opj_v4_t* %w, i32 %k, i32 %m, <4 x float> %c) #0 {
entry:
  %l.addr = alloca %union.opj_v4_t*, align 8
  %w.addr = alloca %union.opj_v4_t*, align 8
  %k.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %c.addr = alloca <4 x float>, align 16
  %vl = alloca <4 x float>*, align 8
  %vw = alloca <4 x float>*, align 8
  %i = alloca i32, align 4
  %tmp1 = alloca <4 x float>, align 16
  %tmp2 = alloca <4 x float>, align 16
  %tmp3 = alloca <4 x float>, align 16
  %cleanup.dest.slot = alloca i32
  %tmp = alloca <4 x float>, align 16
  store %union.opj_v4_t* %l, %union.opj_v4_t** %l.addr, align 8, !tbaa !1
  store %union.opj_v4_t* %w, %union.opj_v4_t** %w.addr, align 8, !tbaa !1
  store i32 %k, i32* %k.addr, align 4, !tbaa !9
  store i32 %m, i32* %m.addr, align 4, !tbaa !9
  store <4 x float> %c, <4 x float>* %c.addr, align 16, !tbaa !43
  %0 = bitcast <4 x float>** %vl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %union.opj_v4_t*, %union.opj_v4_t** %l.addr, align 8, !tbaa !1
  %2 = bitcast %union.opj_v4_t* %1 to <4 x float>*
  store <4 x float>* %2, <4 x float>** %vl, align 8, !tbaa !1
  %3 = bitcast <4 x float>** %vw to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %union.opj_v4_t*, %union.opj_v4_t** %w.addr, align 8, !tbaa !1
  %5 = bitcast %union.opj_v4_t* %4 to <4 x float>*
  store <4 x float>* %5, <4 x float>** %vw, align 8, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast <4 x float>* %tmp1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = bitcast <4 x float>* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = bitcast <4 x float>* %tmp3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #2
  %10 = load <4 x float>*, <4 x float>** %vl, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds <4 x float>, <4 x float>* %10, i64 0
  %11 = load <4 x float>, <4 x float>* %arrayidx, align 16, !tbaa !43
  store <4 x float> %11, <4 x float>* %tmp1, align 16, !tbaa !43
  store i32 0, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !9
  %13 = load i32, i32* %m.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds <4 x float>, <4 x float>* %14, i64 -1
  %15 = load <4 x float>, <4 x float>* %arrayidx1, align 16, !tbaa !43
  store <4 x float> %15, <4 x float>* %tmp2, align 16, !tbaa !43
  %16 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds <4 x float>, <4 x float>* %16, i64 0
  %17 = load <4 x float>, <4 x float>* %arrayidx2, align 16, !tbaa !43
  store <4 x float> %17, <4 x float>* %tmp3, align 16, !tbaa !43
  %18 = load <4 x float>, <4 x float>* %tmp2, align 16, !tbaa !43
  %19 = load <4 x float>, <4 x float>* %tmp1, align 16, !tbaa !43
  %20 = load <4 x float>, <4 x float>* %tmp3, align 16, !tbaa !43
  %call = call <4 x float> @_mm_add_ps(<4 x float> %19, <4 x float> %20) #6
  %21 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %call3 = call <4 x float> @_mm_mul_ps(<4 x float> %call, <4 x float> %21) #6
  %call4 = call <4 x float> @_mm_add_ps(<4 x float> %18, <4 x float> %call3) #6
  %22 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds <4 x float>, <4 x float>* %22, i64 -1
  store <4 x float> %call4, <4 x float>* %arrayidx5, align 16, !tbaa !43
  %23 = load <4 x float>, <4 x float>* %tmp3, align 16, !tbaa !43
  store <4 x float> %23, <4 x float>* %tmp1, align 16, !tbaa !43
  %24 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds <4 x float>, <4 x float>* %24, i64 2
  store <4 x float>* %add.ptr, <4 x float>** %vw, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !9
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds <4 x float>, <4 x float>* %26, i64 -2
  store <4 x float>* %add.ptr6, <4 x float>** %vl, align 8, !tbaa !1
  %27 = load i32, i32* %m.addr, align 4, !tbaa !9
  %28 = load i32, i32* %k.addr, align 4, !tbaa !9
  %cmp7 = icmp sge i32 %27, %28
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.end
  %29 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %30 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %call8 = call <4 x float> @_mm_add_ps(<4 x float> %29, <4 x float> %30) #6
  store <4 x float> %call8, <4 x float>* %c.addr, align 16, !tbaa !43
  %31 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %32 = load <4 x float>*, <4 x float>** %vl, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds <4 x float>, <4 x float>* %32, i64 0
  %33 = load <4 x float>, <4 x float>* %arrayidx9, align 16, !tbaa !43
  %call10 = call <4 x float> @_mm_mul_ps(<4 x float> %31, <4 x float> %33) #6
  store <4 x float> %call10, <4 x float>* %c.addr, align 16, !tbaa !43
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.18, %if.end
  %34 = load i32, i32* %m.addr, align 4, !tbaa !9
  %35 = load i32, i32* %k.addr, align 4, !tbaa !9
  %cmp12 = icmp slt i32 %34, %35
  br i1 %cmp12, label %for.body.13, label %for.end.20

for.body.13:                                      ; preds = %for.cond.11
  %36 = bitcast <4 x float>* %tmp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %36) #2
  %37 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds <4 x float>, <4 x float>* %37, i64 -1
  %38 = load <4 x float>, <4 x float>* %arrayidx14, align 16, !tbaa !43
  store <4 x float> %38, <4 x float>* %tmp, align 16, !tbaa !43
  %39 = load <4 x float>, <4 x float>* %tmp, align 16, !tbaa !43
  %40 = load <4 x float>, <4 x float>* %c.addr, align 16, !tbaa !43
  %call15 = call <4 x float> @_mm_add_ps(<4 x float> %39, <4 x float> %40) #6
  %41 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds <4 x float>, <4 x float>* %41, i64 -1
  store <4 x float> %call15, <4 x float>* %arrayidx16, align 16, !tbaa !43
  %42 = load <4 x float>*, <4 x float>** %vw, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds <4 x float>, <4 x float>* %42, i64 2
  store <4 x float>* %add.ptr17, <4 x float>** %vw, align 8, !tbaa !1
  %43 = bitcast <4 x float>* %tmp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %43) #2
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.13
  %44 = load i32, i32* %m.addr, align 4, !tbaa !9
  %inc19 = add nsw i32 %44, 1
  store i32 %inc19, i32* %m.addr, align 4, !tbaa !9
  br label %for.cond.11

for.end.20:                                       ; preds = %for.cond.11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.20, %if.then
  %45 = bitcast <4 x float>* %tmp3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #2
  %46 = bitcast <4 x float>* %tmp2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %46) #2
  %47 = bitcast <4 x float>* %tmp1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %47) #2
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast <4 x float>** %vw to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast <4 x float>** %vl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_min(i32 %a, i32 %b) #1 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !9
  store i32 %b, i32* %b.addr, align 4, !tbaa !9
  %0 = load i32, i32* %a.addr, align 4, !tbaa !9
  %1 = load i32, i32* %b.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_mul_ps(<4 x float> %__a, <4 x float> %__b) #5 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16, !tbaa !43
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16, !tbaa !43
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16, !tbaa !43
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16, !tbaa !43
  %mul = fmul <4 x float> %0, %1
  ret <4 x float> %mul
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> %__a, <4 x float> %__b) #5 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, <4 x float>* %__a.addr, align 16, !tbaa !43
  store <4 x float> %__b, <4 x float>* %__b.addr, align 16, !tbaa !43
  %0 = load <4 x float>, <4 x float>* %__a.addr, align 16, !tbaa !43
  %1 = load <4 x float>, <4 x float>* %__b.addr, align 16, !tbaa !43
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 8}
!6 = !{!"opj_tcd_tilecomp", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !2, i64 24, !7, i64 32, !2, i64 40, !7, i64 48, !7, i64 52}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!6, !7, i64 16}
!11 = !{!6, !2, i64 40}
!12 = !{!6, !2, i64 24}
!13 = !{!14, !7, i64 8}
!14 = !{!"opj_tcd_resolution", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !3, i64 32}
!15 = !{!14, !7, i64 0}
!16 = !{!14, !7, i64 12}
!17 = !{!14, !7, i64 4}
!18 = !{!19, !2, i64 0}
!19 = !{!"dwt_local", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!20 = !{!19, !7, i64 12}
!21 = !{!19, !7, i64 8}
!22 = !{!19, !7, i64 16}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !3, i64 0}
!25 = !{!26, !7, i64 4}
!26 = !{!"opj_tccp", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !3, i64 28, !7, i64 804, !7, i64 808, !3, i64 812, !3, i64 944, !7, i64 1076}
!27 = !{!26, !7, i64 20}
!28 = !{!26, !7, i64 24}
!29 = !{!30, !7, i64 4}
!30 = !{!"opj_stepsize", !7, i64 0, !7, i64 4}
!31 = !{!30, !7, i64 0}
!32 = !{!33, !2, i64 0}
!33 = !{!"v4dwt_local", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!34 = !{!6, !7, i64 12}
!35 = !{!6, !7, i64 4}
!36 = !{!33, !7, i64 12}
!37 = !{!33, !7, i64 8}
!38 = !{!33, !7, i64 16}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !3, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !3, i64 0}
!43 = !{!3, !3, i64 0}
