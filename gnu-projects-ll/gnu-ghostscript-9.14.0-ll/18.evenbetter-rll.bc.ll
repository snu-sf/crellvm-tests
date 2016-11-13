; ModuleID = './evenbetter-rll.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._EvenBetterCtx = type { i32, i32, i32, i32, %struct._EBPlaneCtx**, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, %struct._IO_FILE*, i32 }
%struct._EBPlaneCtx = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ET_Rll = type { i16, i8 }
%struct.EvenBetterParams = type { i32, i32, i32, i32, i32**, double, i32, i32*, i32, i32, i32, i32, %struct._IO_FILE*, i32, double }

; Function Attrs: nounwind uwtable
define i8* @eb_malloc_aligned(i32 %size, i32 %align) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %align.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  %alloced = alloca i8*, align 8
  %pad = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  store i32 %align, i32* %align.addr, align 4, !tbaa !1
  %0 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %alloced to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !1
  %3 = load i32, i32* %align.addr, align 4, !tbaa !1
  %add = add nsw i32 %2, %3
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #4
  store i8* %call, i8** %alloced, align 8, !tbaa !5
  %4 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8*, i8** %alloced, align 8, !tbaa !5
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %alloced, align 8, !tbaa !5
  %7 = ptrtoint i8* %6 to i64
  %conv2 = trunc i64 %7 to i32
  %add3 = add nsw i32 %conv2, 12
  %and = and i32 %add3, 15
  %add4 = add nsw i32 %and, 4
  store i32 %add4, i32* %pad, align 4, !tbaa !1
  %8 = load i32, i32* %pad, align 4, !tbaa !1
  %9 = load i8*, i8** %alloced, align 8, !tbaa !5
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %result, align 8, !tbaa !5
  %10 = load i32, i32* %pad, align 4, !tbaa !1
  %11 = load i8*, i8** %result, align 8, !tbaa !5
  %12 = bitcast i8* %11 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 -1
  store i32 %10, i32* %arrayidx, align 4, !tbaa !1
  %13 = load i8*, i8** %result, align 8, !tbaa !5
  store i8* %13, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i8** %alloced to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @eb_free_aligned(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pad = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !5
  %0 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 -1
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !1
  store i32 %3, i32* %pad, align 4, !tbaa !1
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !5
  %5 = load i32, i32* %pad, align 4, !tbaa !1
  %idx.ext = sext i32 %5 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.neg
  call void @free(i8* %add.ptr) #4
  %6 = bitcast i32* %pad to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @even_better_line_rll(%struct._EvenBetterCtx* %ebc, i8** %dest, %struct.ET_Rll** %src) #0 {
entry:
  %ebc.addr = alloca %struct._EvenBetterCtx*, align 8
  %dest.addr = alloca i8**, align 8
  %src.addr = alloca %struct.ET_Rll**, align 8
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store %struct._EvenBetterCtx* %ebc, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  store i8** %dest, i8*** %dest.addr, align 8, !tbaa !5
  store %struct.ET_Rll** %src, %struct.ET_Rll*** %src.addr, align 8, !tbaa !5
  %0 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %dump_file = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %0, i32 0, i32 14
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file, align 8, !tbaa !7
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %dump_level = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %2, i32 0, i32 15
  %3 = load i32, i32* %dump_level, align 4, !tbaa !9
  %cmp = icmp uge i32 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %6 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %n_planes = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %6, i32 0, i32 2
  %7 = load i32, i32* %n_planes, align 4, !tbaa !10
  %cmp1 = icmp slt i32 %5, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ET_Rll**, %struct.ET_Rll*** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.ET_Rll*, %struct.ET_Rll** %9, i64 %idxprom
  %10 = load %struct.ET_Rll*, %struct.ET_Rll** %arrayidx, align 8, !tbaa !5
  %11 = bitcast %struct.ET_Rll* %10 to i8*
  %12 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %source_width = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %12, i32 0, i32 0
  %13 = load i32, i32* %source_width, align 4, !tbaa !11
  %conv = sext i32 %13 to i64
  %14 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %dump_file2 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %14, i32 0, i32 14
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file2, align 8, !tbaa !7
  %call = call i64 @fwrite(i8* %11, i64 4, i64 %conv, %struct._IO_FILE* %15) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  %18 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %do_shadows = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %18, i32 0, i32 11
  %19 = load i32, i32* %do_shadows, align 4, !tbaa !12
  %tobool3 = icmp ne i32 %19, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %20 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %21 = load i8**, i8*** %dest.addr, align 8, !tbaa !5
  %22 = load %struct.ET_Rll**, %struct.ET_Rll*** %src.addr, align 8, !tbaa !5
  call void @even_better_line_both(%struct._EvenBetterCtx* %20, i8** %21, %struct.ET_Rll** %22) #5
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %23 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %24 = load i8**, i8*** %dest.addr, align 8, !tbaa !5
  %25 = load %struct.ET_Rll**, %struct.ET_Rll*** %src.addr, align 8, !tbaa !5
  call void @even_better_line_hi(%struct._EvenBetterCtx* %23, i8** %24, %struct.ET_Rll** %25) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %26 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %dump_file6 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %26, i32 0, i32 14
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file6, align 8, !tbaa !7
  %tobool7 = icmp ne %struct._IO_FILE* %27, null
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.27

land.lhs.true.8:                                  ; preds = %if.end.5
  %28 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %dump_level9 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %28, i32 0, i32 15
  %29 = load i32, i32* %dump_level9, align 4, !tbaa !9
  %cmp10 = icmp uge i32 %29, 3
  br i1 %cmp10, label %if.then.12, label %if.end.27

if.then.12:                                       ; preds = %land.lhs.true.8
  %30 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 0, i32* %i13, align 4, !tbaa !1
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.24, %if.then.12
  %31 = load i32, i32* %i13, align 4, !tbaa !1
  %32 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %n_planes15 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %32, i32 0, i32 2
  %33 = load i32, i32* %n_planes15, align 4, !tbaa !10
  %cmp16 = icmp slt i32 %31, %33
  br i1 %cmp16, label %for.body.18, label %for.end.26

for.body.18:                                      ; preds = %for.cond.14
  %34 = load i32, i32* %i13, align 4, !tbaa !1
  %idxprom19 = sext i32 %34 to i64
  %35 = load i8**, i8*** %dest.addr, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds i8*, i8** %35, i64 %idxprom19
  %36 = load i8*, i8** %arrayidx20, align 8, !tbaa !5
  %37 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %dest_width = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %37, i32 0, i32 1
  %38 = load i32, i32* %dest_width, align 4, !tbaa !13
  %conv21 = sext i32 %38 to i64
  %39 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %dump_file22 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %39, i32 0, i32 14
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file22, align 8, !tbaa !7
  %call23 = call i64 @fwrite(i8* %36, i64 1, i64 %conv21, %struct._IO_FILE* %40) #5
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.18
  %41 = load i32, i32* %i13, align 4, !tbaa !1
  %inc25 = add nsw i32 %41, 1
  store i32 %inc25, i32* %i13, align 4, !tbaa !1
  br label %for.cond.14

for.end.26:                                       ; preds = %for.cond.14
  %42 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %land.lhs.true.8, %if.end.5
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @even_better_line_both(%struct._EvenBetterCtx* %ebc, i8** %dest, %struct.ET_Rll** %src) #0 {
entry:
  %ebc.addr = alloca %struct._EvenBetterCtx*, align 8
  %dest.addr = alloca i8**, align 8
  %src.addr = alloca %struct.ET_Rll**, align 8
  store %struct._EvenBetterCtx* %ebc, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  store i8** %dest, i8*** %dest.addr, align 8, !tbaa !5
  store %struct.ET_Rll** %src, %struct.ET_Rll*** %src.addr, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @even_better_line_hi(%struct._EvenBetterCtx* %ebc, i8** %dest, %struct.ET_Rll** %src) #0 {
entry:
  %ebc.addr = alloca %struct._EvenBetterCtx*, align 8
  %dest.addr = alloca i8**, align 8
  %src.addr = alloca %struct.ET_Rll**, align 8
  %a = alloca [16 x i32], align 16
  %b = alloca [16 x i32], align 16
  %e_1_0 = alloca [16 x i32], align 16
  %e_m1_1 = alloca [16 x i32], align 16
  %e_0_1 = alloca [16 x i32], align 16
  %e_1_1 = alloca [16 x i32], align 16
  %iml = alloca [16 x i32], align 16
  %rbl = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %im = alloca i32, align 4
  %pa = alloca i32*, align 8
  %pb = alloca i32*, align 8
  %piir = alloca i32*, align 8
  %pr = alloca i32*, align 8
  %r = alloca [16 x i32], align 16
  %rg = alloca i32, align 4
  %xd = alloca i32, align 4
  %xs = alloca i32, align 4
  %seed1 = alloca i32, align 4
  %seed2 = alloca i32, align 4
  %sum = alloca i32, align 4
  %plane_idx = alloca i32, align 4
  %r_scratch = alloca [16 x i32], align 16
  %n_planes = alloca i32, align 4
  %levels = alloca i32, align 4
  %dith_mul = alloca i32, align 4
  %imo_mul = alloca i32, align 4
  %aspect2 = alloca i32, align 4
  %strengths = alloca i32*, align 8
  %even_elo = alloca i32, align 4
  %even_ehi = alloca i32, align 4
  %coupling = alloca i32, align 4
  %c_line = alloca i32*, align 8
  %even_c1 = alloca i32, align 4
  %rand_shift = alloca i32, align 4
  %even_rlimit = alloca i32, align 4
  %count = alloca [16 x i32], align 16
  %src_idx = alloca [16 x i32], align 16
  %rs = alloca [16 x i32], align 16
  %work_planes = alloca [16 x i32], align 16
  %n_work = alloca i32, align 4
  %work_idx = alloca i32, align 4
  %jmax = alloca i32, align 4
  %ctx = alloca %struct._EBPlaneCtx*, align 8
  %wcl = alloca i32*, align 8
  %dst_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %plane_idx110 = alloca i32, align 4
  %ctx113 = alloca %struct._EBPlaneCtx*, align 8
  %src_pixel = alloca i8, align 1
  %new_r = alloca i32, align 4
  %src_p = alloca %struct.ET_Rll*, align 8
  %lut = alloca i32*, align 8
  %rblut = alloca i32*, align 8
  %rslut = alloca i8*, align 8
  %r_tmp = alloca i32, align 4
  %r_max = alloca i32, align 4
  %plane_idx211 = alloca i32, align 4
  %ctx214 = alloca %struct._EBPlaneCtx*, align 8
  %dst_ptr218 = alloca i8*, align 8
  %new_e_1_0 = alloca i32, align 4
  %coupling_contribution = alloca i32, align 4
  %err = alloca i32, align 4
  %imo = alloca i32, align 4
  %ctx386 = alloca %struct._EBPlaneCtx*, align 8
  %wcl390 = alloca i32*, align 8
  %av = alloca i32, align 4
  %bv = alloca i32, align 4
  %rv = alloca i32, align 4
  %jmax392 = alloca i32, align 4
  store %struct._EvenBetterCtx* %ebc, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  store i8** %dest, i8*** %dest.addr, align 8, !tbaa !5
  store %struct.ET_Rll** %src, %struct.ET_Rll*** %src.addr, align 8, !tbaa !5
  %0 = bitcast [16 x i32]* %a to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast [16 x i32]* %b to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [16 x i32]* %e_1_0 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast [16 x i32]* %e_m1_1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %4 = bitcast [16 x i32]* %e_0_1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast [16 x i32]* %e_1_1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #1
  %6 = bitcast [16 x i32]* %iml to i8*
  call void @llvm.lifetime.start(i64 64, i8* %6) #1
  %7 = bitcast [16 x i32]* %rbl to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %im to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32** %pa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32** %pb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32** %piir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32** %pr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast [16 x i32]* %r to i8*
  call void @llvm.lifetime.start(i64 64, i8* %15) #1
  %16 = bitcast i32* %rg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %xd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %xs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %seed1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %seed11 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %20, i32 0, i32 12
  %21 = load i32, i32* %seed11, align 4, !tbaa !14
  store i32 %21, i32* %seed1, align 4, !tbaa !1
  %22 = bitcast i32* %seed2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %seed22 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %23, i32 0, i32 13
  %24 = load i32, i32* %seed22, align 4, !tbaa !15
  store i32 %24, i32* %seed2, align 4, !tbaa !1
  %25 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %plane_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast [16 x i32]* %r_scratch to i8*
  call void @llvm.lifetime.start(i64 64, i8* %27) #1
  %28 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %n_planes3 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %29, i32 0, i32 2
  %30 = load i32, i32* %n_planes3, align 4, !tbaa !10
  store i32 %30, i32* %n_planes, align 4, !tbaa !1
  %31 = bitcast i32* %levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %levels4 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %32, i32 0, i32 3
  %33 = load i32, i32* %levels4, align 4, !tbaa !16
  store i32 %33, i32* %levels, align 4, !tbaa !1
  %34 = bitcast i32* %dith_mul to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %levels, align 4, !tbaa !1
  %sub = sub nsw i32 %35, 1
  %shl = shl i32 %sub, 8
  store i32 %shl, i32* %dith_mul, align 4, !tbaa !1
  %36 = bitcast i32* %imo_mul to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %levels, align 4, !tbaa !1
  %sub5 = sub nsw i32 %37, 1
  %div = sdiv i32 1073741824, %sub5
  store i32 %div, i32* %imo_mul, align 4, !tbaa !1
  %38 = bitcast i32* %aspect2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %aspect = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %39, i32 0, i32 5
  %40 = load i32, i32* %aspect, align 4, !tbaa !17
  %41 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %aspect6 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %41, i32 0, i32 5
  %42 = load i32, i32* %aspect6, align 4, !tbaa !17
  %mul = mul nsw i32 %40, %42
  store i32 %mul, i32* %aspect2, align 4, !tbaa !1
  %43 = bitcast i32** %strengths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %strengths7 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %44, i32 0, i32 6
  %45 = load i32*, i32** %strengths7, align 8, !tbaa !18
  store i32* %45, i32** %strengths, align 8, !tbaa !5
  %46 = bitcast i32* %even_elo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %even_elo8 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %47, i32 0, i32 7
  %48 = load i32, i32* %even_elo8, align 4, !tbaa !19
  store i32 %48, i32* %even_elo, align 4, !tbaa !1
  %49 = bitcast i32* %even_ehi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %even_ehi9 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %50, i32 0, i32 8
  %51 = load i32, i32* %even_ehi9, align 4, !tbaa !20
  store i32 %51, i32* %even_ehi, align 4, !tbaa !1
  %52 = bitcast i32* %coupling to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast i32** %c_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %c_line10 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %54, i32 0, i32 9
  %55 = load i32*, i32** %c_line10, align 8, !tbaa !21
  store i32* %55, i32** %c_line, align 8, !tbaa !5
  %56 = bitcast i32* %even_c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %even_c111 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %57, i32 0, i32 10
  %58 = load i32, i32* %even_c111, align 4, !tbaa !22
  store i32 %58, i32* %even_c1, align 4, !tbaa !1
  %59 = bitcast i32* %rand_shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %even_rlimit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i32, i32* %even_c1, align 4, !tbaa !1
  %add = add nsw i32 14, %61
  %shl12 = shl i32 1, %add
  store i32 %shl12, i32* %even_rlimit, align 4, !tbaa !1
  %62 = bitcast [16 x i32]* %count to i8*
  call void @llvm.lifetime.start(i64 64, i8* %62) #1
  %63 = bitcast [16 x i32]* %src_idx to i8*
  call void @llvm.lifetime.start(i64 64, i8* %63) #1
  %64 = bitcast [16 x i32]* %rs to i8*
  call void @llvm.lifetime.start(i64 64, i8* %64) #1
  %65 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %source_width = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %65, i32 0, i32 0
  %66 = load i32, i32* %source_width, align 4, !tbaa !11
  store i32 %66, i32* %xs, align 4, !tbaa !1
  %67 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %dest_width = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %67, i32 0, i32 1
  %68 = load i32, i32* %dest_width, align 4, !tbaa !13
  store i32 %68, i32* %xd, align 4, !tbaa !1
  store i32 0, i32* %plane_idx, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %69 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %70 = load i32, i32* %n_planes, align 4, !tbaa !1
  %cmp = icmp slt i32 %69, %70
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %71 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom = sext i32 %71 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %a, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4, !tbaa !1
  %72 = load i32, i32* %aspect2, align 4, !tbaa !1
  %73 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom13 = sext i32 %73 to i64
  %arrayidx14 = getelementptr inbounds [16 x i32], [16 x i32]* %b, i32 0, i64 %idxprom13
  store i32 %72, i32* %arrayidx14, align 4, !tbaa !1
  %74 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom15 = sext i32 %74 to i64
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* %r, i32 0, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4, !tbaa !1
  %75 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom17 = sext i32 %75 to i64
  %arrayidx18 = getelementptr inbounds [16 x i32], [16 x i32]* %e_0_1, i32 0, i64 %idxprom17
  store i32 0, i32* %arrayidx18, align 4, !tbaa !1
  %76 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom19 = sext i32 %76 to i64
  %arrayidx20 = getelementptr inbounds [16 x i32], [16 x i32]* %e_1_0, i32 0, i64 %idxprom19
  store i32 0, i32* %arrayidx20, align 4, !tbaa !1
  %77 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom21 = sext i32 %77 to i64
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* %e_1_1, i32 0, i64 %idxprom21
  store i32 0, i32* %arrayidx22, align 4, !tbaa !1
  %78 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom23 = sext i32 %78 to i64
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* %count, i32 0, i64 %idxprom23
  store i32 0, i32* %arrayidx24, align 4, !tbaa !1
  %79 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom25 = sext i32 %79 to i64
  %arrayidx26 = getelementptr inbounds [16 x i32], [16 x i32]* %src_idx, i32 0, i64 %idxprom25
  store i32 0, i32* %arrayidx26, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %plane_idx, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %coupling, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.27

for.cond.27:                                      ; preds = %cleanup.cont, %cleanup, %for.end
  %81 = load i32, i32* %i, align 4, !tbaa !1
  %82 = load i32, i32* %xd, align 4, !tbaa !1
  %cmp28 = icmp slt i32 %81, %82
  br i1 %cmp28, label %for.body.29, label %for.end.365

for.body.29:                                      ; preds = %for.cond.27
  %83 = bitcast [16 x i32]* %work_planes to i8*
  call void @llvm.lifetime.start(i64 64, i8* %83) #1
  %84 = bitcast i32* %n_work to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  store i32 0, i32* %n_work, align 4, !tbaa !1
  %85 = bitcast i32* %work_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  %86 = bitcast i32* %jmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = load i32, i32* %xd, align 4, !tbaa !1
  %88 = load i32, i32* %i, align 4, !tbaa !1
  %sub30 = sub nsw i32 %87, %88
  %cmp31 = icmp sgt i32 %sub30, 16
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.29
  br label %cond.end

cond.false:                                       ; preds = %for.body.29
  %89 = load i32, i32* %xd, align 4, !tbaa !1
  %90 = load i32, i32* %i, align 4, !tbaa !1
  %sub32 = sub nsw i32 %89, %90
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 16, %cond.true ], [ %sub32, %cond.false ]
  store i32 %cond, i32* %jmax, align 4, !tbaa !1
  store i32 0, i32* %plane_idx, align 4, !tbaa !1
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.94, %cond.end
  %91 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %92 = load i32, i32* %n_planes, align 4, !tbaa !1
  %cmp34 = icmp slt i32 %91, %92
  br i1 %cmp34, label %for.body.35, label %for.end.96

for.body.35:                                      ; preds = %for.cond.33
  %93 = bitcast %struct._EBPlaneCtx** %ctx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom36 = sext i32 %94 to i64
  %95 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %plane_ctx = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %95, i32 0, i32 4
  %96 = load %struct._EBPlaneCtx**, %struct._EBPlaneCtx*** %plane_ctx, align 8, !tbaa !23
  %arrayidx37 = getelementptr inbounds %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %96, i64 %idxprom36
  %97 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %arrayidx37, align 8, !tbaa !5
  store %struct._EBPlaneCtx* %97, %struct._EBPlaneCtx** %ctx, align 8, !tbaa !5
  %98 = bitcast i32** %wcl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx, align 8, !tbaa !5
  %white_count_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %99, i32 0, i32 13
  %100 = load i32*, i32** %white_count_line, align 8, !tbaa !24
  store i32* %100, i32** %wcl, align 8, !tbaa !5
  %101 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom38 = sext i32 %101 to i64
  %arrayidx39 = getelementptr inbounds [16 x i32], [16 x i32]* %count, i32 0, i64 %idxprom38
  %102 = load i32, i32* %arrayidx39, align 4, !tbaa !1
  %cmp40 = icmp sge i32 %102, 16
  br i1 %cmp40, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.35
  %103 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom41 = sext i32 %103 to i64
  %arrayidx42 = getelementptr inbounds [16 x i32], [16 x i32]* %iml, i32 0, i64 %idxprom41
  %104 = load i32, i32* %arrayidx42, align 4, !tbaa !1
  %cmp43 = icmp eq i32 %104, 0
  br i1 %cmp43, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %105 = load i32, i32* %i, align 4, !tbaa !1
  %shr = ashr i32 %105, 4
  %idxprom44 = sext i32 %shr to i64
  %106 = load i32*, i32** %wcl, align 8, !tbaa !5
  %arrayidx45 = getelementptr inbounds i32, i32* %106, i64 %idxprom44
  %107 = load i32, i32* %arrayidx45, align 4, !tbaa !1
  %inc46 = add nsw i32 %107, 1
  store i32 %inc46, i32* %arrayidx45, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body.35
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %shr47 = ashr i32 %108, 4
  %idxprom48 = sext i32 %shr47 to i64
  %109 = load i32*, i32** %wcl, align 8, !tbaa !5
  %arrayidx49 = getelementptr inbounds i32, i32* %109, i64 %idxprom48
  store i32 0, i32* %arrayidx49, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %shr50 = ashr i32 %110, 4
  %idxprom51 = sext i32 %shr50 to i64
  %111 = load i32*, i32** %wcl, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds i32, i32* %111, i64 %idxprom51
  %112 = load i32, i32* %arrayidx52, align 4, !tbaa !1
  %cmp53 = icmp sgt i32 %112, 15
  br i1 %cmp53, label %if.then.54, label %if.else.89

if.then.54:                                       ; preds = %if.end
  %113 = bitcast i8** %dst_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  %114 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom55 = sext i32 %114 to i64
  %115 = load i8**, i8*** %dest.addr, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds i8*, i8** %115, i64 %idxprom55
  %116 = load i8*, i8** %arrayidx56, align 8, !tbaa !5
  store i8* %116, i8** %dst_ptr, align 8, !tbaa !5
  %117 = load i32, i32* %jmax, align 4, !tbaa !1
  %cmp57 = icmp eq i32 %117, 16
  br i1 %cmp57, label %if.then.58, label %if.else.75

if.then.58:                                       ; preds = %if.then.54
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %shr59 = ashr i32 %118, 2
  %add60 = add nsw i32 %shr59, 0
  %idxprom61 = sext i32 %add60 to i64
  %119 = load i8*, i8** %dst_ptr, align 8, !tbaa !5
  %120 = bitcast i8* %119 to i32*
  %arrayidx62 = getelementptr inbounds i32, i32* %120, i64 %idxprom61
  store i32 0, i32* %arrayidx62, align 4, !tbaa !1
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %shr63 = ashr i32 %121, 2
  %add64 = add nsw i32 %shr63, 1
  %idxprom65 = sext i32 %add64 to i64
  %122 = load i8*, i8** %dst_ptr, align 8, !tbaa !5
  %123 = bitcast i8* %122 to i32*
  %arrayidx66 = getelementptr inbounds i32, i32* %123, i64 %idxprom65
  store i32 0, i32* %arrayidx66, align 4, !tbaa !1
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %shr67 = ashr i32 %124, 2
  %add68 = add nsw i32 %shr67, 2
  %idxprom69 = sext i32 %add68 to i64
  %125 = load i8*, i8** %dst_ptr, align 8, !tbaa !5
  %126 = bitcast i8* %125 to i32*
  %arrayidx70 = getelementptr inbounds i32, i32* %126, i64 %idxprom69
  store i32 0, i32* %arrayidx70, align 4, !tbaa !1
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %shr71 = ashr i32 %127, 2
  %add72 = add nsw i32 %shr71, 3
  %idxprom73 = sext i32 %add72 to i64
  %128 = load i8*, i8** %dst_ptr, align 8, !tbaa !5
  %129 = bitcast i8* %128 to i32*
  %arrayidx74 = getelementptr inbounds i32, i32* %129, i64 %idxprom73
  store i32 0, i32* %arrayidx74, align 4, !tbaa !1
  br label %if.end.85

if.else.75:                                       ; preds = %if.then.54
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.82, %if.else.75
  %130 = load i32, i32* %j, align 4, !tbaa !1
  %131 = load i32, i32* %jmax, align 4, !tbaa !1
  %cmp77 = icmp slt i32 %130, %131
  br i1 %cmp77, label %for.body.78, label %for.end.84

for.body.78:                                      ; preds = %for.cond.76
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = load i32, i32* %j, align 4, !tbaa !1
  %add79 = add nsw i32 %132, %133
  %idxprom80 = sext i32 %add79 to i64
  %134 = load i8*, i8** %dst_ptr, align 8, !tbaa !5
  %arrayidx81 = getelementptr inbounds i8, i8* %134, i64 %idxprom80
  store i8 0, i8* %arrayidx81, align 1, !tbaa !26
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.78
  %135 = load i32, i32* %j, align 4, !tbaa !1
  %inc83 = add nsw i32 %135, 1
  store i32 %inc83, i32* %j, align 4, !tbaa !1
  br label %for.cond.76

for.end.84:                                       ; preds = %for.cond.76
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.84, %if.then.58
  %136 = load i32, i32* %jmax, align 4, !tbaa !1
  %137 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom86 = sext i32 %137 to i64
  %arrayidx87 = getelementptr inbounds [16 x i32], [16 x i32]* %count, i32 0, i64 %idxprom86
  %138 = load i32, i32* %arrayidx87, align 4, !tbaa !1
  %sub88 = sub nsw i32 %138, %136
  store i32 %sub88, i32* %arrayidx87, align 4, !tbaa !1
  %139 = bitcast i8** %dst_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  br label %if.end.93

if.else.89:                                       ; preds = %if.end
  %140 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %141 = load i32, i32* %n_work, align 4, !tbaa !1
  %inc90 = add nsw i32 %141, 1
  store i32 %inc90, i32* %n_work, align 4, !tbaa !1
  %idxprom91 = sext i32 %141 to i64
  %arrayidx92 = getelementptr inbounds [16 x i32], [16 x i32]* %work_planes, i32 0, i64 %idxprom91
  store i32 %140, i32* %arrayidx92, align 4, !tbaa !1
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.end.85
  %142 = bitcast i32** %wcl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast %struct._EBPlaneCtx** %ctx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %144 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %inc95 = add nsw i32 %144, 1
  store i32 %inc95, i32* %plane_idx, align 4, !tbaa !1
  br label %for.cond.33

for.end.96:                                       ; preds = %for.cond.33
  %145 = load i32, i32* %n_work, align 4, !tbaa !1
  %cmp97 = icmp eq i32 %145, 0
  br i1 %cmp97, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %for.end.96
  %146 = load i32, i32* %jmax, align 4, !tbaa !1
  %147 = load i32, i32* %i, align 4, !tbaa !1
  %add99 = add nsw i32 %147, %146
  store i32 %add99, i32* %i, align 4, !tbaa !1
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.100:                                       ; preds = %for.end.96
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.359, %if.end.100
  %148 = load i32, i32* %j, align 4, !tbaa !1
  %149 = load i32, i32* %jmax, align 4, !tbaa !1
  %cmp102 = icmp slt i32 %148, %149
  br i1 %cmp102, label %for.body.103, label %for.end.361

for.body.103:                                     ; preds = %for.cond.101
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom104 = sext i32 %150 to i64
  %151 = load i32*, i32** %c_line, align 8, !tbaa !5
  %arrayidx105 = getelementptr inbounds i32, i32* %151, i64 %idxprom104
  %152 = load i32, i32* %arrayidx105, align 4, !tbaa !1
  %153 = load i32, i32* %coupling, align 4, !tbaa !1
  %add106 = add nsw i32 %153, %152
  store i32 %add106, i32* %coupling, align 4, !tbaa !1
  store i32 0, i32* %work_idx, align 4, !tbaa !1
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.204, %for.body.103
  %154 = load i32, i32* %work_idx, align 4, !tbaa !1
  %155 = load i32, i32* %n_work, align 4, !tbaa !1
  %cmp108 = icmp slt i32 %154, %155
  br i1 %cmp108, label %for.body.109, label %for.end.206

for.body.109:                                     ; preds = %for.cond.107
  %156 = bitcast i32* %plane_idx110 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #1
  %157 = load i32, i32* %work_idx, align 4, !tbaa !1
  %idxprom111 = sext i32 %157 to i64
  %arrayidx112 = getelementptr inbounds [16 x i32], [16 x i32]* %work_planes, i32 0, i64 %idxprom111
  %158 = load i32, i32* %arrayidx112, align 4, !tbaa !1
  store i32 %158, i32* %plane_idx110, align 4, !tbaa !1
  %159 = bitcast %struct._EBPlaneCtx** %ctx113 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  %160 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom114 = sext i32 %160 to i64
  %161 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %plane_ctx115 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %161, i32 0, i32 4
  %162 = load %struct._EBPlaneCtx**, %struct._EBPlaneCtx*** %plane_ctx115, align 8, !tbaa !23
  %arrayidx116 = getelementptr inbounds %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %162, i64 %idxprom114
  %163 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %arrayidx116, align 8, !tbaa !5
  store %struct._EBPlaneCtx* %163, %struct._EBPlaneCtx** %ctx113, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %src_pixel) #1
  %164 = bitcast i32* %new_r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %164) #1
  %165 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx113, align 8, !tbaa !5
  %r_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %165, i32 0, i32 4
  %166 = load i32*, i32** %r_line, align 8, !tbaa !27
  store i32* %166, i32** %pr, align 8, !tbaa !5
  %167 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx113, align 8, !tbaa !5
  %a_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %167, i32 0, i32 5
  %168 = load i32*, i32** %a_line, align 8, !tbaa !28
  store i32* %168, i32** %pa, align 8, !tbaa !5
  %169 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx113, align 8, !tbaa !5
  %b_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %169, i32 0, i32 6
  %170 = load i32*, i32** %b_line, align 8, !tbaa !29
  store i32* %170, i32** %pb, align 8, !tbaa !5
  %171 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom117 = sext i32 %171 to i64
  %arrayidx118 = getelementptr inbounds [16 x i32], [16 x i32]* %count, i32 0, i64 %idxprom117
  %172 = load i32, i32* %arrayidx118, align 4, !tbaa !1
  %cmp119 = icmp eq i32 %172, 0
  br i1 %cmp119, label %if.then.120, label %if.end.142

if.then.120:                                      ; preds = %for.body.109
  %173 = bitcast %struct.ET_Rll** %src_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  %174 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom121 = sext i32 %174 to i64
  %175 = load %struct.ET_Rll**, %struct.ET_Rll*** %src.addr, align 8, !tbaa !5
  %arrayidx122 = getelementptr inbounds %struct.ET_Rll*, %struct.ET_Rll** %175, i64 %idxprom121
  %176 = load %struct.ET_Rll*, %struct.ET_Rll** %arrayidx122, align 8, !tbaa !5
  %177 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom123 = sext i32 %177 to i64
  %arrayidx124 = getelementptr inbounds [16 x i32], [16 x i32]* %src_idx, i32 0, i64 %idxprom123
  %178 = load i32, i32* %arrayidx124, align 4, !tbaa !1
  %inc125 = add nsw i32 %178, 1
  store i32 %inc125, i32* %arrayidx124, align 4, !tbaa !1
  %idx.ext = sext i32 %178 to i64
  %add.ptr = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %176, i64 %idx.ext
  store %struct.ET_Rll* %add.ptr, %struct.ET_Rll** %src_p, align 8, !tbaa !5
  %179 = bitcast i32** %lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #1
  %180 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx113, align 8, !tbaa !5
  %lut126 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %180, i32 0, i32 10
  %181 = load i32*, i32** %lut126, align 8, !tbaa !30
  store i32* %181, i32** %lut, align 8, !tbaa !5
  %182 = bitcast i32** %rblut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %182) #1
  %183 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx113, align 8, !tbaa !5
  %rb_lut = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %183, i32 0, i32 11
  %184 = load i32*, i32** %rb_lut, align 8, !tbaa !31
  store i32* %184, i32** %rblut, align 8, !tbaa !5
  %185 = bitcast i8** %rslut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #1
  %186 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx113, align 8, !tbaa !5
  %rs_lut = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %186, i32 0, i32 12
  %187 = load i8*, i8** %rs_lut, align 8, !tbaa !32
  store i8* %187, i8** %rslut, align 8, !tbaa !5
  %188 = load %struct.ET_Rll*, %struct.ET_Rll** %src_p, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %188, i32 0, i32 0
  %189 = load i16, i16* %length, align 2, !tbaa !33
  %conv = zext i16 %189 to i32
  %190 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom127 = sext i32 %190 to i64
  %arrayidx128 = getelementptr inbounds [16 x i32], [16 x i32]* %count, i32 0, i64 %idxprom127
  store i32 %conv, i32* %arrayidx128, align 4, !tbaa !1
  %191 = load %struct.ET_Rll*, %struct.ET_Rll** %src_p, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %191, i32 0, i32 1
  %192 = load i8, i8* %value, align 1, !tbaa !36
  store i8 %192, i8* %src_pixel, align 1, !tbaa !26
  %193 = load i8, i8* %src_pixel, align 1, !tbaa !26
  %idxprom129 = zext i8 %193 to i64
  %194 = load i32*, i32** %lut, align 8, !tbaa !5
  %arrayidx130 = getelementptr inbounds i32, i32* %194, i64 %idxprom129
  %195 = load i32, i32* %arrayidx130, align 4, !tbaa !1
  %196 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom131 = sext i32 %196 to i64
  %arrayidx132 = getelementptr inbounds [16 x i32], [16 x i32]* %iml, i32 0, i64 %idxprom131
  store i32 %195, i32* %arrayidx132, align 4, !tbaa !1
  %197 = load i8, i8* %src_pixel, align 1, !tbaa !26
  %idxprom133 = zext i8 %197 to i64
  %198 = load i32*, i32** %rblut, align 8, !tbaa !5
  %arrayidx134 = getelementptr inbounds i32, i32* %198, i64 %idxprom133
  %199 = load i32, i32* %arrayidx134, align 4, !tbaa !1
  %200 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom135 = sext i32 %200 to i64
  %arrayidx136 = getelementptr inbounds [16 x i32], [16 x i32]* %rbl, i32 0, i64 %idxprom135
  store i32 %199, i32* %arrayidx136, align 4, !tbaa !1
  %201 = load i8, i8* %src_pixel, align 1, !tbaa !26
  %idxprom137 = zext i8 %201 to i64
  %202 = load i8*, i8** %rslut, align 8, !tbaa !5
  %arrayidx138 = getelementptr inbounds i8, i8* %202, i64 %idxprom137
  %203 = load i8, i8* %arrayidx138, align 1, !tbaa !26
  %conv139 = sext i8 %203 to i32
  %204 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom140 = sext i32 %204 to i64
  %arrayidx141 = getelementptr inbounds [16 x i32], [16 x i32]* %rs, i32 0, i64 %idxprom140
  store i32 %conv139, i32* %arrayidx141, align 4, !tbaa !1
  %205 = bitcast i8** %rslut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32** %rblut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i32** %lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast %struct.ET_Rll** %src_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.120, %for.body.109
  %209 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom143 = sext i32 %209 to i64
  %arrayidx144 = getelementptr inbounds [16 x i32], [16 x i32]* %count, i32 0, i64 %idxprom143
  %210 = load i32, i32* %arrayidx144, align 4, !tbaa !1
  %dec = add nsw i32 %210, -1
  store i32 %dec, i32* %arrayidx144, align 4, !tbaa !1
  %211 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom145 = sext i32 %211 to i64
  %arrayidx146 = getelementptr inbounds [16 x i32], [16 x i32]* %r, i32 0, i64 %idxprom145
  %212 = load i32, i32* %arrayidx146, align 4, !tbaa !1
  %213 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom147 = sext i32 %213 to i64
  %arrayidx148 = getelementptr inbounds [16 x i32], [16 x i32]* %a, i32 0, i64 %idxprom147
  %214 = load i32, i32* %arrayidx148, align 4, !tbaa !1
  %add149 = add nsw i32 %212, %214
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom150 = sext i32 %215 to i64
  %216 = load i32*, i32** %pr, align 8, !tbaa !5
  %arrayidx151 = getelementptr inbounds i32, i32* %216, i64 %idxprom150
  %217 = load i32, i32* %arrayidx151, align 4, !tbaa !1
  %cmp152 = icmp slt i32 %add149, %217
  br i1 %cmp152, label %if.then.154, label %if.else.163

if.then.154:                                      ; preds = %if.end.142
  %218 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom155 = sext i32 %218 to i64
  %arrayidx156 = getelementptr inbounds [16 x i32], [16 x i32]* %a, i32 0, i64 %idxprom155
  %219 = load i32, i32* %arrayidx156, align 4, !tbaa !1
  %220 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom157 = sext i32 %220 to i64
  %arrayidx158 = getelementptr inbounds [16 x i32], [16 x i32]* %r, i32 0, i64 %idxprom157
  %221 = load i32, i32* %arrayidx158, align 4, !tbaa !1
  %add159 = add nsw i32 %221, %219
  store i32 %add159, i32* %arrayidx158, align 4, !tbaa !1
  %222 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom160 = sext i32 %222 to i64
  %arrayidx161 = getelementptr inbounds [16 x i32], [16 x i32]* %a, i32 0, i64 %idxprom160
  %223 = load i32, i32* %arrayidx161, align 4, !tbaa !1
  %add162 = add nsw i32 %223, 2
  store i32 %add162, i32* %arrayidx161, align 4, !tbaa !1
  br label %if.end.176

if.else.163:                                      ; preds = %if.end.142
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom164 = sext i32 %224 to i64
  %225 = load i32*, i32** %pa, align 8, !tbaa !5
  %arrayidx165 = getelementptr inbounds i32, i32* %225, i64 %idxprom164
  %226 = load i32, i32* %arrayidx165, align 4, !tbaa !1
  %227 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom166 = sext i32 %227 to i64
  %arrayidx167 = getelementptr inbounds [16 x i32], [16 x i32]* %a, i32 0, i64 %idxprom166
  store i32 %226, i32* %arrayidx167, align 4, !tbaa !1
  %228 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom168 = sext i32 %228 to i64
  %229 = load i32*, i32** %pb, align 8, !tbaa !5
  %arrayidx169 = getelementptr inbounds i32, i32* %229, i64 %idxprom168
  %230 = load i32, i32* %arrayidx169, align 4, !tbaa !1
  %231 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom170 = sext i32 %231 to i64
  %arrayidx171 = getelementptr inbounds [16 x i32], [16 x i32]* %b, i32 0, i64 %idxprom170
  store i32 %230, i32* %arrayidx171, align 4, !tbaa !1
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom172 = sext i32 %232 to i64
  %233 = load i32*, i32** %pr, align 8, !tbaa !5
  %arrayidx173 = getelementptr inbounds i32, i32* %233, i64 %idxprom172
  %234 = load i32, i32* %arrayidx173, align 4, !tbaa !1
  %235 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom174 = sext i32 %235 to i64
  %arrayidx175 = getelementptr inbounds [16 x i32], [16 x i32]* %r, i32 0, i64 %idxprom174
  store i32 %234, i32* %arrayidx175, align 4, !tbaa !1
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.163, %if.then.154
  %236 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom177 = sext i32 %236 to i64
  %arrayidx178 = getelementptr inbounds [16 x i32], [16 x i32]* %iml, i32 0, i64 %idxprom177
  %237 = load i32, i32* %arrayidx178, align 4, !tbaa !1
  %cmp179 = icmp eq i32 %237, 0
  br i1 %cmp179, label %if.then.181, label %if.else.184

if.then.181:                                      ; preds = %if.end.176
  %238 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom182 = sext i32 %238 to i64
  %arrayidx183 = getelementptr inbounds [16 x i32], [16 x i32]* %r_scratch, i32 0, i64 %idxprom182
  store i32 0, i32* %arrayidx183, align 4, !tbaa !1
  br label %if.end.203

if.else.184:                                      ; preds = %if.end.176
  %239 = bitcast i32* %r_tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %239) #1
  %240 = bitcast i32* %r_max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %240) #1
  store i32 0, i32* %r_max, align 4, !tbaa !1
  %241 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom185 = sext i32 %241 to i64
  %arrayidx186 = getelementptr inbounds [16 x i32], [16 x i32]* %r, i32 0, i64 %idxprom185
  %242 = load i32, i32* %arrayidx186, align 4, !tbaa !1
  store i32 %242, i32* %new_r, align 4, !tbaa !1
  %243 = load i32, i32* %new_r, align 4, !tbaa !1
  %244 = load i32, i32* %even_rlimit, align 4, !tbaa !1
  %cmp187 = icmp sgt i32 %243, %244
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.else.184
  %245 = load i32, i32* %even_rlimit, align 4, !tbaa !1
  store i32 %245, i32* %new_r, align 4, !tbaa !1
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.else.184
  %246 = load i32, i32* %new_r, align 4, !tbaa !1
  %247 = load i32, i32* %even_c1, align 4, !tbaa !1
  %sub191 = sub nsw i32 16, %247
  %shl192 = shl i32 %246, %sub191
  store i32 %shl192, i32* %rg, align 4, !tbaa !1
  %248 = load i32, i32* %rg, align 4, !tbaa !1
  %249 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom193 = sext i32 %249 to i64
  %arrayidx194 = getelementptr inbounds [16 x i32], [16 x i32]* %rbl, i32 0, i64 %idxprom193
  %250 = load i32, i32* %arrayidx194, align 4, !tbaa !1
  %sub195 = sub nsw i32 %248, %250
  store i32 %sub195, i32* %r_tmp, align 4, !tbaa !1
  %251 = load i32, i32* %r_tmp, align 4, !tbaa !1
  %cmp196 = icmp sgt i32 %251, 0
  br i1 %cmp196, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %if.end.190
  %252 = load i32, i32* %r_tmp, align 4, !tbaa !1
  %shr199 = ashr i32 %252, 3
  store i32 %shr199, i32* %r_tmp, align 4, !tbaa !1
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.198, %if.end.190
  %253 = load i32, i32* %r_tmp, align 4, !tbaa !1
  %254 = load i32, i32* %plane_idx110, align 4, !tbaa !1
  %idxprom201 = sext i32 %254 to i64
  %arrayidx202 = getelementptr inbounds [16 x i32], [16 x i32]* %r_scratch, i32 0, i64 %idxprom201
  store i32 %253, i32* %arrayidx202, align 4, !tbaa !1
  %255 = bitcast i32* %r_max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32* %r_tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.200, %if.then.181
  %257 = bitcast i32* %new_r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  call void @llvm.lifetime.end(i64 1, i8* %src_pixel) #1
  %258 = bitcast %struct._EBPlaneCtx** %ctx113 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast i32* %plane_idx110 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.203
  %260 = load i32, i32* %work_idx, align 4, !tbaa !1
  %inc205 = add nsw i32 %260, 1
  store i32 %inc205, i32* %work_idx, align 4, !tbaa !1
  br label %for.cond.107

for.end.206:                                      ; preds = %for.cond.107
  store i32 0, i32* %work_idx, align 4, !tbaa !1
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.352, %for.end.206
  %261 = load i32, i32* %work_idx, align 4, !tbaa !1
  %262 = load i32, i32* %n_work, align 4, !tbaa !1
  %cmp208 = icmp slt i32 %261, %262
  br i1 %cmp208, label %for.body.210, label %for.end.354

for.body.210:                                     ; preds = %for.cond.207
  %263 = bitcast i32* %plane_idx211 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %263) #1
  %264 = load i32, i32* %work_idx, align 4, !tbaa !1
  %idxprom212 = sext i32 %264 to i64
  %arrayidx213 = getelementptr inbounds [16 x i32], [16 x i32]* %work_planes, i32 0, i64 %idxprom212
  %265 = load i32, i32* %arrayidx213, align 4, !tbaa !1
  store i32 %265, i32* %plane_idx211, align 4, !tbaa !1
  %266 = bitcast %struct._EBPlaneCtx** %ctx214 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %266) #1
  %267 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom215 = sext i32 %267 to i64
  %268 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %plane_ctx216 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %268, i32 0, i32 4
  %269 = load %struct._EBPlaneCtx**, %struct._EBPlaneCtx*** %plane_ctx216, align 8, !tbaa !23
  %arrayidx217 = getelementptr inbounds %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %269, i64 %idxprom215
  %270 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %arrayidx217, align 8, !tbaa !5
  store %struct._EBPlaneCtx* %270, %struct._EBPlaneCtx** %ctx214, align 8, !tbaa !5
  %271 = bitcast i8** %dst_ptr218 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %271) #1
  %272 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom219 = sext i32 %272 to i64
  %273 = load i8**, i8*** %dest.addr, align 8, !tbaa !5
  %arrayidx220 = getelementptr inbounds i8*, i8** %273, i64 %idxprom219
  %274 = load i8*, i8** %arrayidx220, align 8, !tbaa !5
  store i8* %274, i8** %dst_ptr218, align 8, !tbaa !5
  %275 = bitcast i32* %new_e_1_0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %275) #1
  %276 = bitcast i32* %coupling_contribution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %276) #1
  %277 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx214, align 8, !tbaa !5
  %r_line221 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %277, i32 0, i32 4
  %278 = load i32*, i32** %r_line221, align 8, !tbaa !27
  store i32* %278, i32** %pr, align 8, !tbaa !5
  %279 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx214, align 8, !tbaa !5
  %a_line222 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %279, i32 0, i32 5
  %280 = load i32*, i32** %a_line222, align 8, !tbaa !28
  store i32* %280, i32** %pa, align 8, !tbaa !5
  %281 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx214, align 8, !tbaa !5
  %b_line223 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %281, i32 0, i32 6
  %282 = load i32*, i32** %b_line223, align 8, !tbaa !29
  store i32* %282, i32** %pb, align 8, !tbaa !5
  %283 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx214, align 8, !tbaa !5
  %iir_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %283, i32 0, i32 3
  %284 = load i32*, i32** %iir_line, align 8, !tbaa !37
  store i32* %284, i32** %piir, align 8, !tbaa !5
  %285 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom224 = sext i32 %285 to i64
  %arrayidx225 = getelementptr inbounds [16 x i32], [16 x i32]* %iml, i32 0, i64 %idxprom224
  %286 = load i32, i32* %arrayidx225, align 4, !tbaa !1
  store i32 %286, i32* %im, align 4, !tbaa !1
  %287 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom226 = sext i32 %287 to i64
  %arrayidx227 = getelementptr inbounds [16 x i32], [16 x i32]* %e_0_1, i32 0, i64 %idxprom226
  %288 = load i32, i32* %arrayidx227, align 4, !tbaa !1
  %289 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom228 = sext i32 %289 to i64
  %arrayidx229 = getelementptr inbounds [16 x i32], [16 x i32]* %e_m1_1, i32 0, i64 %idxprom228
  store i32 %288, i32* %arrayidx229, align 4, !tbaa !1
  %290 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom230 = sext i32 %290 to i64
  %arrayidx231 = getelementptr inbounds [16 x i32], [16 x i32]* %e_1_1, i32 0, i64 %idxprom230
  %291 = load i32, i32* %arrayidx231, align 4, !tbaa !1
  %292 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom232 = sext i32 %292 to i64
  %arrayidx233 = getelementptr inbounds [16 x i32], [16 x i32]* %e_0_1, i32 0, i64 %idxprom232
  store i32 %291, i32* %arrayidx233, align 4, !tbaa !1
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = load i32, i32* %xd, align 4, !tbaa !1
  %sub234 = sub nsw i32 %294, 1
  %cmp235 = icmp eq i32 %293, %sub234
  br i1 %cmp235, label %cond.true.237, label %cond.false.238

cond.true.237:                                    ; preds = %for.body.210
  br label %cond.end.242

cond.false.238:                                   ; preds = %for.body.210
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %add239 = add nsw i32 %295, 1
  %idxprom240 = sext i32 %add239 to i64
  %296 = load i32*, i32** %piir, align 8, !tbaa !5
  %arrayidx241 = getelementptr inbounds i32, i32* %296, i64 %idxprom240
  %297 = load i32, i32* %arrayidx241, align 4, !tbaa !1
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.false.238, %cond.true.237
  %cond243 = phi i32 [ 0, %cond.true.237 ], [ %297, %cond.false.238 ]
  %298 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom244 = sext i32 %298 to i64
  %arrayidx245 = getelementptr inbounds [16 x i32], [16 x i32]* %e_1_1, i32 0, i64 %idxprom244
  store i32 %cond243, i32* %arrayidx245, align 4, !tbaa !1
  %299 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom246 = sext i32 %299 to i64
  %arrayidx247 = getelementptr inbounds [16 x i32], [16 x i32]* %e_1_0, i32 0, i64 %idxprom246
  %300 = load i32, i32* %arrayidx247, align 4, !tbaa !1
  %mul248 = mul nsw i32 %300, 7
  %301 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom249 = sext i32 %301 to i64
  %arrayidx250 = getelementptr inbounds [16 x i32], [16 x i32]* %e_m1_1, i32 0, i64 %idxprom249
  %302 = load i32, i32* %arrayidx250, align 4, !tbaa !1
  %mul251 = mul nsw i32 %302, 3
  %add252 = add nsw i32 %mul248, %mul251
  %303 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom253 = sext i32 %303 to i64
  %arrayidx254 = getelementptr inbounds [16 x i32], [16 x i32]* %e_0_1, i32 0, i64 %idxprom253
  %304 = load i32, i32* %arrayidx254, align 4, !tbaa !1
  %mul255 = mul nsw i32 %304, 5
  %add256 = add nsw i32 %add252, %mul255
  %305 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom257 = sext i32 %305 to i64
  %arrayidx258 = getelementptr inbounds [16 x i32], [16 x i32]* %e_1_1, i32 0, i64 %idxprom257
  %306 = load i32, i32* %arrayidx258, align 4, !tbaa !1
  %mul259 = mul nsw i32 %306, 1
  %add260 = add nsw i32 %add256, %mul259
  %shr261 = ashr i32 %add260, 4
  store i32 %shr261, i32* %new_e_1_0, align 4, !tbaa !1
  %307 = load i32, i32* %im, align 4, !tbaa !1
  %cmp262 = icmp eq i32 %307, 0
  br i1 %cmp262, label %if.then.264, label %if.else.267

if.then.264:                                      ; preds = %cond.end.242
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom265 = sext i32 %308 to i64
  %309 = load i8*, i8** %dst_ptr218, align 8, !tbaa !5
  %arrayidx266 = getelementptr inbounds i8, i8* %309, i64 %idxprom265
  store i8 0, i8* %arrayidx266, align 1, !tbaa !26
  br label %if.end.322

if.else.267:                                      ; preds = %cond.end.242
  %310 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %310) #1
  %311 = bitcast i32* %imo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %311) #1
  %312 = load i32, i32* %new_e_1_0, align 4, !tbaa !1
  store i32 %312, i32* %err, align 4, !tbaa !1
  %313 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom268 = sext i32 %313 to i64
  %arrayidx269 = getelementptr inbounds [16 x i32], [16 x i32]* %r_scratch, i32 0, i64 %idxprom268
  %314 = load i32, i32* %arrayidx269, align 4, !tbaa !1
  %315 = load i32, i32* %err, align 4, !tbaa !1
  %add270 = add nsw i32 %315, %314
  store i32 %add270, i32* %err, align 4, !tbaa !1
  %316 = load i32, i32* %seed1, align 4, !tbaa !1
  %317 = load i32, i32* %seed2, align 4, !tbaa !1
  %add271 = add i32 %316, %317
  store i32 %add271, i32* %sum, align 4, !tbaa !1
  %318 = load i32, i32* %sum, align 4, !tbaa !1
  %319 = load i32, i32* %seed1, align 4, !tbaa !1
  %cmp272 = icmp ult i32 %318, %319
  br i1 %cmp272, label %if.then.276, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.267
  %320 = load i32, i32* %sum, align 4, !tbaa !1
  %321 = load i32, i32* %seed2, align 4, !tbaa !1
  %cmp274 = icmp ult i32 %320, %321
  br i1 %cmp274, label %if.then.276, label %if.end.278

if.then.276:                                      ; preds = %lor.lhs.false, %if.else.267
  %322 = load i32, i32* %sum, align 4, !tbaa !1
  %inc277 = add i32 %322, 1
  store i32 %inc277, i32* %sum, align 4, !tbaa !1
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.276, %lor.lhs.false
  %323 = load i32, i32* %seed1, align 4, !tbaa !1
  store i32 %323, i32* %seed2, align 4, !tbaa !1
  %324 = load i32, i32* %sum, align 4, !tbaa !1
  store i32 %324, i32* %seed1, align 4, !tbaa !1
  %325 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom279 = sext i32 %325 to i64
  %arrayidx280 = getelementptr inbounds [16 x i32], [16 x i32]* %rs, i32 0, i64 %idxprom279
  %326 = load i32, i32* %arrayidx280, align 4, !tbaa !1
  store i32 %326, i32* %rand_shift, align 4, !tbaa !1
  %327 = load i32, i32* %sum, align 4, !tbaa !1
  %328 = load i32, i32* %rand_shift, align 4, !tbaa !1
  %shr281 = lshr i32 %327, %328
  %329 = load i32, i32* %rand_shift, align 4, !tbaa !1
  %shr282 = lshr i32 -2147483648, %329
  %sub283 = sub i32 %shr281, %shr282
  %330 = load i32, i32* %err, align 4, !tbaa !1
  %sub284 = sub i32 %330, %sub283
  store i32 %sub284, i32* %err, align 4, !tbaa !1
  %331 = load i32, i32* %err, align 4, !tbaa !1
  %332 = load i32, i32* %even_elo, align 4, !tbaa !1
  %cmp285 = icmp slt i32 %331, %332
  br i1 %cmp285, label %if.then.287, label %if.else.288

if.then.287:                                      ; preds = %if.end.278
  %333 = load i32, i32* %even_elo, align 4, !tbaa !1
  store i32 %333, i32* %err, align 4, !tbaa !1
  br label %if.end.293

if.else.288:                                      ; preds = %if.end.278
  %334 = load i32, i32* %err, align 4, !tbaa !1
  %335 = load i32, i32* %even_ehi, align 4, !tbaa !1
  %cmp289 = icmp sgt i32 %334, %335
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %if.else.288
  %336 = load i32, i32* %even_ehi, align 4, !tbaa !1
  store i32 %336, i32* %err, align 4, !tbaa !1
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.291, %if.else.288
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.then.287
  %337 = load i32, i32* %coupling, align 4, !tbaa !1
  %338 = load i32, i32* %err, align 4, !tbaa !1
  %add294 = add nsw i32 %338, %337
  store i32 %add294, i32* %err, align 4, !tbaa !1
  %339 = load i32, i32* %err, align 4, !tbaa !1
  %340 = load i32, i32* %im, align 4, !tbaa !1
  %add295 = add nsw i32 %339, %340
  %341 = load i32, i32* %dith_mul, align 4, !tbaa !1
  %mul296 = mul nsw i32 %add295, %341
  %add297 = add nsw i32 %mul296, 8388608
  %shr298 = ashr i32 %add297, 24
  store i32 %shr298, i32* %imo, align 4, !tbaa !1
  %342 = load i32, i32* %imo, align 4, !tbaa !1
  %cmp299 = icmp slt i32 %342, 0
  br i1 %cmp299, label %if.then.301, label %if.else.302

if.then.301:                                      ; preds = %if.end.293
  store i32 0, i32* %imo, align 4, !tbaa !1
  br label %if.end.309

if.else.302:                                      ; preds = %if.end.293
  %343 = load i32, i32* %imo, align 4, !tbaa !1
  %344 = load i32, i32* %levels, align 4, !tbaa !1
  %sub303 = sub nsw i32 %344, 1
  %cmp304 = icmp sgt i32 %343, %sub303
  br i1 %cmp304, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %if.else.302
  %345 = load i32, i32* %levels, align 4, !tbaa !1
  %sub307 = sub nsw i32 %345, 1
  store i32 %sub307, i32* %imo, align 4, !tbaa !1
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.306, %if.else.302
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.then.301
  %346 = load i32, i32* %imo, align 4, !tbaa !1
  %conv310 = trunc i32 %346 to i8
  %347 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom311 = sext i32 %347 to i64
  %348 = load i8*, i8** %dst_ptr218, align 8, !tbaa !5
  %arrayidx312 = getelementptr inbounds i8, i8* %348, i64 %idxprom311
  store i8 %conv310, i8* %arrayidx312, align 1, !tbaa !26
  %349 = load i32, i32* %im, align 4, !tbaa !1
  %350 = load i32, i32* %imo, align 4, !tbaa !1
  %351 = load i32, i32* %imo_mul, align 4, !tbaa !1
  %mul313 = mul nsw i32 %350, %351
  %shr314 = ashr i32 %mul313, 14
  %sub315 = sub nsw i32 %349, %shr314
  store i32 %sub315, i32* %coupling_contribution, align 4, !tbaa !1
  %352 = load i32, i32* %coupling_contribution, align 4, !tbaa !1
  %353 = load i32, i32* %new_e_1_0, align 4, !tbaa !1
  %add316 = add nsw i32 %353, %352
  store i32 %add316, i32* %new_e_1_0, align 4, !tbaa !1
  %354 = load i32, i32* %coupling_contribution, align 4, !tbaa !1
  %355 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom317 = sext i32 %355 to i64
  %356 = load i32*, i32** %strengths, align 8, !tbaa !5
  %arrayidx318 = getelementptr inbounds i32, i32* %356, i64 %idxprom317
  %357 = load i32, i32* %arrayidx318, align 4, !tbaa !1
  %mul319 = mul nsw i32 %354, %357
  %shr320 = ashr i32 %mul319, 8
  %358 = load i32, i32* %coupling, align 4, !tbaa !1
  %add321 = add nsw i32 %358, %shr320
  store i32 %add321, i32* %coupling, align 4, !tbaa !1
  %359 = bitcast i32* %imo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %359) #1
  %360 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.309, %if.then.264
  %361 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom323 = sext i32 %361 to i64
  %362 = load i8*, i8** %dst_ptr218, align 8, !tbaa !5
  %arrayidx324 = getelementptr inbounds i8, i8* %362, i64 %idxprom323
  %363 = load i8, i8* %arrayidx324, align 1, !tbaa !26
  %conv325 = zext i8 %363 to i32
  %cmp326 = icmp ne i32 %conv325, 0
  br i1 %cmp326, label %if.then.328, label %if.end.335

if.then.328:                                      ; preds = %if.end.322
  %364 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom329 = sext i32 %364 to i64
  %arrayidx330 = getelementptr inbounds [16 x i32], [16 x i32]* %a, i32 0, i64 %idxprom329
  store i32 1, i32* %arrayidx330, align 4, !tbaa !1
  %365 = load i32, i32* %aspect2, align 4, !tbaa !1
  %366 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom331 = sext i32 %366 to i64
  %arrayidx332 = getelementptr inbounds [16 x i32], [16 x i32]* %b, i32 0, i64 %idxprom331
  store i32 %365, i32* %arrayidx332, align 4, !tbaa !1
  %367 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom333 = sext i32 %367 to i64
  %arrayidx334 = getelementptr inbounds [16 x i32], [16 x i32]* %r, i32 0, i64 %idxprom333
  store i32 0, i32* %arrayidx334, align 4, !tbaa !1
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.328, %if.end.322
  %368 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom336 = sext i32 %368 to i64
  %arrayidx337 = getelementptr inbounds [16 x i32], [16 x i32]* %a, i32 0, i64 %idxprom336
  %369 = load i32, i32* %arrayidx337, align 4, !tbaa !1
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom338 = sext i32 %370 to i64
  %371 = load i32*, i32** %pa, align 8, !tbaa !5
  %arrayidx339 = getelementptr inbounds i32, i32* %371, i64 %idxprom338
  store i32 %369, i32* %arrayidx339, align 4, !tbaa !1
  %372 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom340 = sext i32 %372 to i64
  %arrayidx341 = getelementptr inbounds [16 x i32], [16 x i32]* %b, i32 0, i64 %idxprom340
  %373 = load i32, i32* %arrayidx341, align 4, !tbaa !1
  %374 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom342 = sext i32 %374 to i64
  %375 = load i32*, i32** %pb, align 8, !tbaa !5
  %arrayidx343 = getelementptr inbounds i32, i32* %375, i64 %idxprom342
  store i32 %373, i32* %arrayidx343, align 4, !tbaa !1
  %376 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom344 = sext i32 %376 to i64
  %arrayidx345 = getelementptr inbounds [16 x i32], [16 x i32]* %r, i32 0, i64 %idxprom344
  %377 = load i32, i32* %arrayidx345, align 4, !tbaa !1
  %378 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom346 = sext i32 %378 to i64
  %379 = load i32*, i32** %pr, align 8, !tbaa !5
  %arrayidx347 = getelementptr inbounds i32, i32* %379, i64 %idxprom346
  store i32 %377, i32* %arrayidx347, align 4, !tbaa !1
  %380 = load i32, i32* %new_e_1_0, align 4, !tbaa !1
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom348 = sext i32 %381 to i64
  %382 = load i32*, i32** %piir, align 8, !tbaa !5
  %arrayidx349 = getelementptr inbounds i32, i32* %382, i64 %idxprom348
  store i32 %380, i32* %arrayidx349, align 4, !tbaa !1
  %383 = load i32, i32* %new_e_1_0, align 4, !tbaa !1
  %384 = load i32, i32* %plane_idx211, align 4, !tbaa !1
  %idxprom350 = sext i32 %384 to i64
  %arrayidx351 = getelementptr inbounds [16 x i32], [16 x i32]* %e_1_0, i32 0, i64 %idxprom350
  store i32 %383, i32* %arrayidx351, align 4, !tbaa !1
  %385 = bitcast i32* %coupling_contribution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %385) #1
  %386 = bitcast i32* %new_e_1_0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %386) #1
  %387 = bitcast i8** %dst_ptr218 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %387) #1
  %388 = bitcast %struct._EBPlaneCtx** %ctx214 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %388) #1
  %389 = bitcast i32* %plane_idx211 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #1
  br label %for.inc.352

for.inc.352:                                      ; preds = %if.end.335
  %390 = load i32, i32* %work_idx, align 4, !tbaa !1
  %inc353 = add nsw i32 %390, 1
  store i32 %inc353, i32* %work_idx, align 4, !tbaa !1
  br label %for.cond.207

for.end.354:                                      ; preds = %for.cond.207
  %391 = load i32, i32* %coupling, align 4, !tbaa !1
  %shr355 = ashr i32 %391, 1
  store i32 %shr355, i32* %coupling, align 4, !tbaa !1
  %392 = load i32, i32* %coupling, align 4, !tbaa !1
  %393 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom356 = sext i32 %393 to i64
  %394 = load i32*, i32** %c_line, align 8, !tbaa !5
  %arrayidx357 = getelementptr inbounds i32, i32* %394, i64 %idxprom356
  store i32 %392, i32* %arrayidx357, align 4, !tbaa !1
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %inc358 = add nsw i32 %395, 1
  store i32 %inc358, i32* %i, align 4, !tbaa !1
  br label %for.inc.359

for.inc.359:                                      ; preds = %for.end.354
  %396 = load i32, i32* %j, align 4, !tbaa !1
  %inc360 = add nsw i32 %396, 1
  store i32 %inc360, i32* %j, align 4, !tbaa !1
  br label %for.cond.101

for.end.361:                                      ; preds = %for.cond.101
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.361, %if.then.98
  %397 = bitcast i32* %jmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %397) #1
  %398 = bitcast i32* %work_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %398) #1
  %399 = bitcast i32* %n_work to i8*
  call void @llvm.lifetime.end(i64 4, i8* %399) #1
  %400 = bitcast [16 x i32]* %work_planes to i8*
  call void @llvm.lifetime.end(i64 64, i8* %400) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.cond.27
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.27

for.end.365:                                      ; preds = %for.cond.27
  store i32 0, i32* %coupling, align 4, !tbaa !1
  %401 = load i32, i32* %xd, align 4, !tbaa !1
  %sub366 = sub nsw i32 %401, 1
  store i32 %sub366, i32* %i, align 4, !tbaa !1
  br label %for.cond.367

for.cond.367:                                     ; preds = %for.inc.379, %for.end.365
  %402 = load i32, i32* %i, align 4, !tbaa !1
  %cmp368 = icmp sge i32 %402, 0
  br i1 %cmp368, label %for.body.370, label %for.end.381

for.body.370:                                     ; preds = %for.cond.367
  %403 = load i32, i32* %coupling, align 4, !tbaa !1
  %404 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom371 = sext i32 %404 to i64
  %405 = load i32*, i32** %c_line, align 8, !tbaa !5
  %arrayidx372 = getelementptr inbounds i32, i32* %405, i64 %idxprom371
  %406 = load i32, i32* %arrayidx372, align 4, !tbaa !1
  %add373 = add nsw i32 %403, %406
  %shr374 = ashr i32 %add373, 1
  store i32 %shr374, i32* %coupling, align 4, !tbaa !1
  %407 = load i32, i32* %coupling, align 4, !tbaa !1
  %408 = load i32, i32* %coupling, align 4, !tbaa !1
  %shr375 = ashr i32 %408, 4
  %sub376 = sub nsw i32 %407, %shr375
  %409 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom377 = sext i32 %409 to i64
  %410 = load i32*, i32** %c_line, align 8, !tbaa !5
  %arrayidx378 = getelementptr inbounds i32, i32* %410, i64 %idxprom377
  store i32 %sub376, i32* %arrayidx378, align 4, !tbaa !1
  br label %for.inc.379

for.inc.379:                                      ; preds = %for.body.370
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %dec380 = add nsw i32 %411, -1
  store i32 %dec380, i32* %i, align 4, !tbaa !1
  br label %for.cond.367

for.end.381:                                      ; preds = %for.cond.367
  store i32 0, i32* %plane_idx, align 4, !tbaa !1
  br label %for.cond.382

for.cond.382:                                     ; preds = %for.inc.454, %for.end.381
  %412 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %413 = load i32, i32* %n_planes, align 4, !tbaa !1
  %cmp383 = icmp slt i32 %412, %413
  br i1 %cmp383, label %for.body.385, label %for.end.456

for.body.385:                                     ; preds = %for.cond.382
  %414 = bitcast %struct._EBPlaneCtx** %ctx386 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %414) #1
  %415 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %idxprom387 = sext i32 %415 to i64
  %416 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %plane_ctx388 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %416, i32 0, i32 4
  %417 = load %struct._EBPlaneCtx**, %struct._EBPlaneCtx*** %plane_ctx388, align 8, !tbaa !23
  %arrayidx389 = getelementptr inbounds %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %417, i64 %idxprom387
  %418 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %arrayidx389, align 8, !tbaa !5
  store %struct._EBPlaneCtx* %418, %struct._EBPlaneCtx** %ctx386, align 8, !tbaa !5
  %419 = bitcast i32** %wcl390 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %419) #1
  %420 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx386, align 8, !tbaa !5
  %white_count_line391 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %420, i32 0, i32 13
  %421 = load i32*, i32** %white_count_line391, align 8, !tbaa !24
  store i32* %421, i32** %wcl390, align 8, !tbaa !5
  %422 = bitcast i32* %av to i8*
  call void @llvm.lifetime.start(i64 4, i8* %422) #1
  %423 = bitcast i32* %bv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #1
  %424 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %424) #1
  %425 = bitcast i32* %jmax392 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %425) #1
  %426 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx386, align 8, !tbaa !5
  %r_line393 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %426, i32 0, i32 4
  %427 = load i32*, i32** %r_line393, align 8, !tbaa !27
  store i32* %427, i32** %pr, align 8, !tbaa !5
  %428 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx386, align 8, !tbaa !5
  %a_line394 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %428, i32 0, i32 5
  %429 = load i32*, i32** %a_line394, align 8, !tbaa !28
  store i32* %429, i32** %pa, align 8, !tbaa !5
  %430 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx386, align 8, !tbaa !5
  %b_line395 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %430, i32 0, i32 6
  %431 = load i32*, i32** %b_line395, align 8, !tbaa !29
  store i32* %431, i32** %pb, align 8, !tbaa !5
  store i32 1, i32* %av, align 4, !tbaa !1
  store i32 1, i32* %bv, align 4, !tbaa !1
  store i32 0, i32* %rv, align 4, !tbaa !1
  %432 = load i32, i32* %xd, align 4, !tbaa !1
  %sub396 = sub nsw i32 %432, 1
  %and = and i32 %sub396, 15
  %add397 = add nsw i32 %and, 1
  store i32 %add397, i32* %jmax392, align 4, !tbaa !1
  %433 = load i32, i32* %xd, align 4, !tbaa !1
  %sub398 = sub nsw i32 %433, 1
  store i32 %sub398, i32* %i, align 4, !tbaa !1
  br label %for.cond.399

for.cond.399:                                     ; preds = %if.end.452, %for.body.385
  %434 = load i32, i32* %i, align 4, !tbaa !1
  %cmp400 = icmp sge i32 %434, 0
  br i1 %cmp400, label %for.body.402, label %for.end.453

for.body.402:                                     ; preds = %for.cond.399
  %435 = load i32, i32* %i, align 4, !tbaa !1
  %shr403 = ashr i32 %435, 4
  %idxprom404 = sext i32 %shr403 to i64
  %436 = load i32*, i32** %wcl390, align 8, !tbaa !5
  %arrayidx405 = getelementptr inbounds i32, i32* %436, i64 %idxprom404
  %437 = load i32, i32* %arrayidx405, align 4, !tbaa !1
  %cmp406 = icmp slt i32 %437, 16
  br i1 %cmp406, label %if.then.408, label %if.else.450

if.then.408:                                      ; preds = %for.body.402
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.409

for.cond.409:                                     ; preds = %for.inc.447, %if.then.408
  %438 = load i32, i32* %j, align 4, !tbaa !1
  %439 = load i32, i32* %jmax392, align 4, !tbaa !1
  %cmp410 = icmp slt i32 %438, %439
  br i1 %cmp410, label %for.body.412, label %for.end.449

for.body.412:                                     ; preds = %for.cond.409
  %440 = load i32, i32* %rv, align 4, !tbaa !1
  %441 = load i32, i32* %bv, align 4, !tbaa !1
  %add413 = add nsw i32 %440, %441
  %442 = load i32, i32* %av, align 4, !tbaa !1
  %add414 = add nsw i32 %add413, %442
  %443 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom415 = sext i32 %443 to i64
  %444 = load i32*, i32** %pr, align 8, !tbaa !5
  %arrayidx416 = getelementptr inbounds i32, i32* %444, i64 %idxprom415
  %445 = load i32, i32* %arrayidx416, align 4, !tbaa !1
  %446 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom417 = sext i32 %446 to i64
  %447 = load i32*, i32** %pb, align 8, !tbaa !5
  %arrayidx418 = getelementptr inbounds i32, i32* %447, i64 %idxprom417
  %448 = load i32, i32* %arrayidx418, align 4, !tbaa !1
  %add419 = add nsw i32 %445, %448
  %cmp420 = icmp slt i32 %add414, %add419
  br i1 %cmp420, label %if.then.422, label %if.else.425

if.then.422:                                      ; preds = %for.body.412
  %449 = load i32, i32* %av, align 4, !tbaa !1
  %450 = load i32, i32* %rv, align 4, !tbaa !1
  %add423 = add nsw i32 %450, %449
  store i32 %add423, i32* %rv, align 4, !tbaa !1
  %451 = load i32, i32* %av, align 4, !tbaa !1
  %add424 = add nsw i32 %451, 2
  store i32 %add424, i32* %av, align 4, !tbaa !1
  br label %if.end.432

if.else.425:                                      ; preds = %for.body.412
  %452 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom426 = sext i32 %452 to i64
  %453 = load i32*, i32** %pr, align 8, !tbaa !5
  %arrayidx427 = getelementptr inbounds i32, i32* %453, i64 %idxprom426
  %454 = load i32, i32* %arrayidx427, align 4, !tbaa !1
  store i32 %454, i32* %rv, align 4, !tbaa !1
  %455 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom428 = sext i32 %455 to i64
  %456 = load i32*, i32** %pa, align 8, !tbaa !5
  %arrayidx429 = getelementptr inbounds i32, i32* %456, i64 %idxprom428
  %457 = load i32, i32* %arrayidx429, align 4, !tbaa !1
  store i32 %457, i32* %av, align 4, !tbaa !1
  %458 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom430 = sext i32 %458 to i64
  %459 = load i32*, i32** %pb, align 8, !tbaa !5
  %arrayidx431 = getelementptr inbounds i32, i32* %459, i64 %idxprom430
  %460 = load i32, i32* %arrayidx431, align 4, !tbaa !1
  store i32 %460, i32* %bv, align 4, !tbaa !1
  br label %if.end.432

if.end.432:                                       ; preds = %if.else.425, %if.then.422
  %461 = load i32, i32* %rv, align 4, !tbaa !1
  %462 = load i32, i32* %even_rlimit, align 4, !tbaa !1
  %cmp433 = icmp sgt i32 %461, %462
  br i1 %cmp433, label %if.then.435, label %if.end.436

if.then.435:                                      ; preds = %if.end.432
  %463 = load i32, i32* %even_rlimit, align 4, !tbaa !1
  store i32 %463, i32* %rv, align 4, !tbaa !1
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.435, %if.end.432
  %464 = load i32, i32* %av, align 4, !tbaa !1
  %465 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom437 = sext i32 %465 to i64
  %466 = load i32*, i32** %pa, align 8, !tbaa !5
  %arrayidx438 = getelementptr inbounds i32, i32* %466, i64 %idxprom437
  store i32 %464, i32* %arrayidx438, align 4, !tbaa !1
  %467 = load i32, i32* %bv, align 4, !tbaa !1
  %468 = load i32, i32* %aspect2, align 4, !tbaa !1
  %shl439 = shl i32 %468, 1
  %add440 = add nsw i32 %467, %shl439
  %469 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom441 = sext i32 %469 to i64
  %470 = load i32*, i32** %pb, align 8, !tbaa !5
  %arrayidx442 = getelementptr inbounds i32, i32* %470, i64 %idxprom441
  store i32 %add440, i32* %arrayidx442, align 4, !tbaa !1
  %471 = load i32, i32* %rv, align 4, !tbaa !1
  %472 = load i32, i32* %bv, align 4, !tbaa !1
  %add443 = add nsw i32 %471, %472
  %473 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom444 = sext i32 %473 to i64
  %474 = load i32*, i32** %pr, align 8, !tbaa !5
  %arrayidx445 = getelementptr inbounds i32, i32* %474, i64 %idxprom444
  store i32 %add443, i32* %arrayidx445, align 4, !tbaa !1
  %475 = load i32, i32* %i, align 4, !tbaa !1
  %dec446 = add nsw i32 %475, -1
  store i32 %dec446, i32* %i, align 4, !tbaa !1
  br label %for.inc.447

for.inc.447:                                      ; preds = %if.end.436
  %476 = load i32, i32* %j, align 4, !tbaa !1
  %inc448 = add nsw i32 %476, 1
  store i32 %inc448, i32* %j, align 4, !tbaa !1
  br label %for.cond.409

for.end.449:                                      ; preds = %for.cond.409
  br label %if.end.452

if.else.450:                                      ; preds = %for.body.402
  %477 = load i32, i32* %jmax392, align 4, !tbaa !1
  %478 = load i32, i32* %i, align 4, !tbaa !1
  %sub451 = sub nsw i32 %478, %477
  store i32 %sub451, i32* %i, align 4, !tbaa !1
  br label %if.end.452

if.end.452:                                       ; preds = %if.else.450, %for.end.449
  store i32 16, i32* %jmax392, align 4, !tbaa !1
  br label %for.cond.399

for.end.453:                                      ; preds = %for.cond.399
  %479 = bitcast i32* %jmax392 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #1
  %480 = bitcast i32* %rv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast i32* %bv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %481) #1
  %482 = bitcast i32* %av to i8*
  call void @llvm.lifetime.end(i64 4, i8* %482) #1
  %483 = bitcast i32** %wcl390 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %483) #1
  %484 = bitcast %struct._EBPlaneCtx** %ctx386 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %484) #1
  br label %for.inc.454

for.inc.454:                                      ; preds = %for.end.453
  %485 = load i32, i32* %plane_idx, align 4, !tbaa !1
  %inc455 = add nsw i32 %485, 1
  store i32 %inc455, i32* %plane_idx, align 4, !tbaa !1
  br label %for.cond.382

for.end.456:                                      ; preds = %for.cond.382
  %486 = load i32, i32* %seed1, align 4, !tbaa !1
  %487 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %seed1457 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %487, i32 0, i32 12
  store i32 %486, i32* %seed1457, align 4, !tbaa !14
  %488 = load i32, i32* %seed2, align 4, !tbaa !1
  %489 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %seed2458 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %489, i32 0, i32 13
  store i32 %488, i32* %seed2458, align 4, !tbaa !15
  %490 = bitcast [16 x i32]* %rs to i8*
  call void @llvm.lifetime.end(i64 64, i8* %490) #1
  %491 = bitcast [16 x i32]* %src_idx to i8*
  call void @llvm.lifetime.end(i64 64, i8* %491) #1
  %492 = bitcast [16 x i32]* %count to i8*
  call void @llvm.lifetime.end(i64 64, i8* %492) #1
  %493 = bitcast i32* %even_rlimit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %493) #1
  %494 = bitcast i32* %rand_shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %494) #1
  %495 = bitcast i32* %even_c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %495) #1
  %496 = bitcast i32** %c_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %496) #1
  %497 = bitcast i32* %coupling to i8*
  call void @llvm.lifetime.end(i64 4, i8* %497) #1
  %498 = bitcast i32* %even_ehi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  %499 = bitcast i32* %even_elo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #1
  %500 = bitcast i32** %strengths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %500) #1
  %501 = bitcast i32* %aspect2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %501) #1
  %502 = bitcast i32* %imo_mul to i8*
  call void @llvm.lifetime.end(i64 4, i8* %502) #1
  %503 = bitcast i32* %dith_mul to i8*
  call void @llvm.lifetime.end(i64 4, i8* %503) #1
  %504 = bitcast i32* %levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %504) #1
  %505 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %505) #1
  %506 = bitcast [16 x i32]* %r_scratch to i8*
  call void @llvm.lifetime.end(i64 64, i8* %506) #1
  %507 = bitcast i32* %plane_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %507) #1
  %508 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %508) #1
  %509 = bitcast i32* %seed2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %509) #1
  %510 = bitcast i32* %seed1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %510) #1
  %511 = bitcast i32* %xs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %511) #1
  %512 = bitcast i32* %xd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %512) #1
  %513 = bitcast i32* %rg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %513) #1
  %514 = bitcast [16 x i32]* %r to i8*
  call void @llvm.lifetime.end(i64 64, i8* %514) #1
  %515 = bitcast i32** %pr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %515) #1
  %516 = bitcast i32** %piir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %516) #1
  %517 = bitcast i32** %pb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %517) #1
  %518 = bitcast i32** %pa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %518) #1
  %519 = bitcast i32* %im to i8*
  call void @llvm.lifetime.end(i64 4, i8* %519) #1
  %520 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %520) #1
  %521 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %521) #1
  %522 = bitcast [16 x i32]* %rbl to i8*
  call void @llvm.lifetime.end(i64 64, i8* %522) #1
  %523 = bitcast [16 x i32]* %iml to i8*
  call void @llvm.lifetime.end(i64 64, i8* %523) #1
  %524 = bitcast [16 x i32]* %e_1_1 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %524) #1
  %525 = bitcast [16 x i32]* %e_0_1 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %525) #1
  %526 = bitcast [16 x i32]* %e_m1_1 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %526) #1
  %527 = bitcast [16 x i32]* %e_1_0 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %527) #1
  %528 = bitcast [16 x i32]* %b to i8*
  call void @llvm.lifetime.end(i64 64, i8* %528) #1
  %529 = bitcast [16 x i32]* %a to i8*
  call void @llvm.lifetime.end(i64 64, i8* %529) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @even_better_line(%struct._EvenBetterCtx* %ebc, i8** %dest, i8** %src) #0 {
entry:
  %ebc.addr = alloca %struct._EvenBetterCtx*, align 8
  %dest.addr = alloca i8**, align 8
  %src.addr = alloca i8**, align 8
  %rll_buf = alloca [16 x %struct.ET_Rll*], align 16
  %i = alloca i32, align 4
  %source_width = alloca i32, align 4
  %dest_width = alloca i32, align 4
  store %struct._EvenBetterCtx* %ebc, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  store i8** %dest, i8*** %dest.addr, align 8, !tbaa !5
  store i8** %src, i8*** %src.addr, align 8, !tbaa !5
  %0 = bitcast [16 x %struct.ET_Rll*]* %rll_buf to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %source_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %source_width1 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %3, i32 0, i32 0
  %4 = load i32, i32* %source_width1, align 4, !tbaa !11
  store i32 %4, i32* %source_width, align 4, !tbaa !1
  %5 = bitcast i32* %dest_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %dest_width2 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %6, i32 0, i32 1
  %7 = load i32, i32* %dest_width2, align 4, !tbaa !13
  store i32 %7, i32* %dest_width, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %9 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %n_planes = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %9, i32 0, i32 2
  %10 = load i32, i32* %n_planes, align 4, !tbaa !10
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %source_width, align 4, !tbaa !1
  %conv = sext i32 %11 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #4
  %12 = bitcast i8* %call to %struct.ET_Rll*
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.ET_Rll*], [16 x %struct.ET_Rll*]* %rll_buf, i32 0, i64 %idxprom
  store %struct.ET_Rll* %12, %struct.ET_Rll** %arrayidx, align 8, !tbaa !5
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds [16 x %struct.ET_Rll*], [16 x %struct.ET_Rll*]* %rll_buf, i32 0, i64 %idxprom3
  %15 = load %struct.ET_Rll*, %struct.ET_Rll** %arrayidx4, align 8, !tbaa !5
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom5 = sext i32 %16 to i64
  %17 = load i8**, i8*** %src.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds i8*, i8** %17, i64 %idxprom5
  %18 = load i8*, i8** %arrayidx6, align 8, !tbaa !5
  %19 = load i32, i32* %source_width, align 4, !tbaa !1
  %20 = load i32, i32* %dest_width, align 4, !tbaa !1
  %call7 = call i32 @even_better_compress_rll(%struct.ET_Rll* %15, i8* %18, i32 %19, i32 %20) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %23 = load i8**, i8*** %dest.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [16 x %struct.ET_Rll*], [16 x %struct.ET_Rll*]* %rll_buf, i32 0, i32 0
  call void @even_better_line_rll(%struct._EvenBetterCtx* %22, i8** %23, %struct.ET_Rll** %arraydecay) #5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.15, %for.end
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %n_planes9 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %25, i32 0, i32 2
  %26 = load i32, i32* %n_planes9, align 4, !tbaa !10
  %cmp10 = icmp slt i32 %24, %26
  br i1 %cmp10, label %for.body.12, label %for.end.17

for.body.12:                                      ; preds = %for.cond.8
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds [16 x %struct.ET_Rll*], [16 x %struct.ET_Rll*]* %rll_buf, i32 0, i64 %idxprom13
  %28 = load %struct.ET_Rll*, %struct.ET_Rll** %arrayidx14, align 8, !tbaa !5
  %29 = bitcast %struct.ET_Rll* %28 to i8*
  call void @free(i8* %29) #4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.12
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %inc16 = add nsw i32 %30, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !1
  br label %for.cond.8

for.end.17:                                       ; preds = %for.cond.8
  %31 = bitcast i32* %dest_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %source_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast [16 x %struct.ET_Rll*]* %rll_buf to i8*
  call void @llvm.lifetime.end(i64 128, i8* %34) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @even_better_compress_rll(%struct.ET_Rll* %dst, i8* %src, i32 %src_width, i32 %dst_width) #0 {
entry:
  %dst.addr = alloca %struct.ET_Rll*, align 8
  %src.addr = alloca i8*, align 8
  %src_width.addr = alloca i32, align 4
  %dst_width.addr = alloca i32, align 4
  %rll_idx = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %last_val = alloca i8, align 1
  %whole = alloca i32, align 4
  %frac = alloca i32, align 4
  %rem1 = alloca i32, align 4
  %val = alloca i8, align 1
  %val19 = alloca i8, align 1
  store %struct.ET_Rll* %dst, %struct.ET_Rll** %dst.addr, align 8, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !5
  store i32 %src_width, i32* %src_width.addr, align 4, !tbaa !1
  store i32 %dst_width, i32* %dst_width.addr, align 4, !tbaa !1
  %0 = bitcast i32* %rll_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  call void @llvm.lifetime.start(i64 1, i8* %last_val) #1
  %3 = bitcast i32* %whole to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %dst_width.addr, align 4, !tbaa !1
  %5 = load i32, i32* %src_width.addr, align 4, !tbaa !1
  %div = sdiv i32 %4, %5
  store i32 %div, i32* %whole, align 4, !tbaa !1
  %6 = bitcast i32* %frac to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %dst_width.addr, align 4, !tbaa !1
  %8 = load i32, i32* %src_width.addr, align 4, !tbaa !1
  %rem = srem i32 %7, %8
  store i32 %rem, i32* %frac, align 4, !tbaa !1
  %9 = bitcast i32* %rem1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %rll_idx, align 4, !tbaa !1
  %10 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !26
  store i8 %11, i8* %last_val, align 1, !tbaa !26
  %12 = load i32, i32* %whole, align 4, !tbaa !1
  store i32 %12, i32* %count, align 4, !tbaa !1
  %13 = load i32, i32* %frac, align 4, !tbaa !1
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %15 = load i32, i32* %src_width.addr, align 4, !tbaa !1
  %cmp2 = icmp slt i32 %14, %15
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %val) #1
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %16 to i64
  %17 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx3, align 1, !tbaa !26
  store i8 %18, i8* %val, align 1, !tbaa !26
  %19 = load i32, i32* %count, align 4, !tbaa !1
  %20 = load i32, i32* %whole, align 4, !tbaa !1
  %sub = sub nsw i32 65535, %20
  %cmp4 = icmp sgt i32 %19, %sub
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %21 = load i8, i8* %val, align 1, !tbaa !26
  %conv = zext i8 %21 to i32
  %22 = load i8, i8* %last_val, align 1, !tbaa !26
  %conv5 = zext i8 %22 to i32
  %cmp6 = icmp ne i32 %conv, %conv5
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %lor.lhs.false, %for.body
  %23 = load i32, i32* %count, align 4, !tbaa !1
  %conv9 = trunc i32 %23 to i16
  %24 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %idxprom10 = sext i32 %24 to i64
  %25 = load %struct.ET_Rll*, %struct.ET_Rll** %dst.addr, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %25, i64 %idxprom10
  %length = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %arrayidx11, i32 0, i32 0
  store i16 %conv9, i16* %length, align 2, !tbaa !33
  %26 = load i8, i8* %last_val, align 1, !tbaa !26
  %27 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %idxprom12 = sext i32 %27 to i64
  %28 = load %struct.ET_Rll*, %struct.ET_Rll** %dst.addr, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %28, i64 %idxprom12
  %value = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %arrayidx13, i32 0, i32 1
  store i8 %26, i8* %value, align 1, !tbaa !36
  %29 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %rll_idx, align 4, !tbaa !1
  %30 = load i8, i8* %val, align 1, !tbaa !26
  store i8 %30, i8* %last_val, align 1, !tbaa !26
  store i32 0, i32* %count, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.8, %lor.lhs.false
  %31 = load i32, i32* %whole, align 4, !tbaa !1
  %32 = load i32, i32* %count, align 4, !tbaa !1
  %add = add nsw i32 %32, %31
  store i32 %add, i32* %count, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %val) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %inc14 = add nsw i32 %33, 1
  store i32 %inc14, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.51

if.else:                                          ; preds = %entry
  %34 = load i32, i32* %frac, align 4, !tbaa !1
  store i32 %34, i32* %rem1, align 4, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !1
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.48, %if.else
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = load i32, i32* %src_width.addr, align 4, !tbaa !1
  %cmp16 = icmp slt i32 %35, %36
  br i1 %cmp16, label %for.body.18, label %for.end.50

for.body.18:                                      ; preds = %for.cond.15
  call void @llvm.lifetime.start(i64 1, i8* %val19) #1
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom20 = sext i32 %37 to i64
  %38 = load i8*, i8** %src.addr, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds i8, i8* %38, i64 %idxprom20
  %39 = load i8, i8* %arrayidx21, align 1, !tbaa !26
  store i8 %39, i8* %val19, align 1, !tbaa !26
  %40 = load i32, i32* %count, align 4, !tbaa !1
  %41 = load i32, i32* %whole, align 4, !tbaa !1
  %sub22 = sub nsw i32 65535, %41
  %cmp23 = icmp sge i32 %40, %sub22
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %for.body.18
  %42 = load i8, i8* %val19, align 1, !tbaa !26
  %conv26 = zext i8 %42 to i32
  %43 = load i8, i8* %last_val, align 1, !tbaa !26
  %conv27 = zext i8 %43 to i32
  %cmp28 = icmp ne i32 %conv26, %conv27
  br i1 %cmp28, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %lor.lhs.false.25, %for.body.18
  %44 = load i32, i32* %count, align 4, !tbaa !1
  %conv31 = trunc i32 %44 to i16
  %45 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %idxprom32 = sext i32 %45 to i64
  %46 = load %struct.ET_Rll*, %struct.ET_Rll** %dst.addr, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %46, i64 %idxprom32
  %length34 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %arrayidx33, i32 0, i32 0
  store i16 %conv31, i16* %length34, align 2, !tbaa !33
  %47 = load i8, i8* %last_val, align 1, !tbaa !26
  %48 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %idxprom35 = sext i32 %48 to i64
  %49 = load %struct.ET_Rll*, %struct.ET_Rll** %dst.addr, align 8, !tbaa !5
  %arrayidx36 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %49, i64 %idxprom35
  %value37 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %arrayidx36, i32 0, i32 1
  store i8 %47, i8* %value37, align 1, !tbaa !36
  %50 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %inc38 = add nsw i32 %50, 1
  store i32 %inc38, i32* %rll_idx, align 4, !tbaa !1
  %51 = load i8, i8* %val19, align 1, !tbaa !26
  store i8 %51, i8* %last_val, align 1, !tbaa !26
  store i32 0, i32* %count, align 4, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.30, %lor.lhs.false.25
  %52 = load i32, i32* %whole, align 4, !tbaa !1
  %53 = load i32, i32* %count, align 4, !tbaa !1
  %add40 = add nsw i32 %53, %52
  store i32 %add40, i32* %count, align 4, !tbaa !1
  %54 = load i32, i32* %frac, align 4, !tbaa !1
  %55 = load i32, i32* %rem1, align 4, !tbaa !1
  %add41 = add nsw i32 %55, %54
  store i32 %add41, i32* %rem1, align 4, !tbaa !1
  %56 = load i32, i32* %rem1, align 4, !tbaa !1
  %57 = load i32, i32* %src_width.addr, align 4, !tbaa !1
  %cmp42 = icmp sge i32 %56, %57
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.39
  %58 = load i32, i32* %count, align 4, !tbaa !1
  %inc45 = add nsw i32 %58, 1
  store i32 %inc45, i32* %count, align 4, !tbaa !1
  %59 = load i32, i32* %src_width.addr, align 4, !tbaa !1
  %60 = load i32, i32* %rem1, align 4, !tbaa !1
  %sub46 = sub nsw i32 %60, %59
  store i32 %sub46, i32* %rem1, align 4, !tbaa !1
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.39
  call void @llvm.lifetime.end(i64 1, i8* %val19) #1
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %61 = load i32, i32* %i, align 4, !tbaa !1
  %inc49 = add nsw i32 %61, 1
  store i32 %inc49, i32* %i, align 4, !tbaa !1
  br label %for.cond.15

for.end.50:                                       ; preds = %for.cond.15
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %for.end
  %62 = load i32, i32* %count, align 4, !tbaa !1
  %conv52 = trunc i32 %62 to i16
  %63 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %idxprom53 = sext i32 %63 to i64
  %64 = load %struct.ET_Rll*, %struct.ET_Rll** %dst.addr, align 8, !tbaa !5
  %arrayidx54 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %64, i64 %idxprom53
  %length55 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %arrayidx54, i32 0, i32 0
  store i16 %conv52, i16* %length55, align 2, !tbaa !33
  %65 = load i8, i8* %last_val, align 1, !tbaa !26
  %66 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %idxprom56 = sext i32 %66 to i64
  %67 = load %struct.ET_Rll*, %struct.ET_Rll** %dst.addr, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %67, i64 %idxprom56
  %value58 = getelementptr inbounds %struct.ET_Rll, %struct.ET_Rll* %arrayidx57, i32 0, i32 1
  store i8 %65, i8* %value58, align 1, !tbaa !36
  %68 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %inc59 = add nsw i32 %68, 1
  store i32 %inc59, i32* %rll_idx, align 4, !tbaa !1
  %69 = load i32, i32* %rll_idx, align 4, !tbaa !1
  %70 = bitcast i32* %rem1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %frac to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %whole to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  call void @llvm.lifetime.end(i64 1, i8* %last_val) #1
  %73 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %rll_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define %struct._EvenBetterCtx* @even_better_new(%struct.EvenBetterParams* %params) #0 {
entry:
  %params.addr = alloca %struct.EvenBetterParams*, align 8
  %result = alloca %struct._EvenBetterCtx*, align 8
  %n_planes = alloca i32, align 4
  %i = alloca i32, align 4
  %log2_levels = alloca i32, align 4
  %log2_aspect = alloca i32, align 4
  %using_vectors = alloca i32, align 4
  %header = alloca [5 x i32], align 16
  %i14 = alloca i32, align 4
  store %struct.EvenBetterParams* %params, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %0 = bitcast %struct._EvenBetterCtx** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 88) #4
  %1 = bitcast i8* %call to %struct._EvenBetterCtx*
  store %struct._EvenBetterCtx* %1, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %2 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %n_planes1 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %3, i32 0, i32 2
  %4 = load i32, i32* %n_planes1, align 4, !tbaa !38
  store i32 %4, i32* %n_planes, align 4, !tbaa !1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %log2_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %log2_aspect to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %using_vectors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %using_vectors, align 4, !tbaa !1
  %9 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dump_file = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %9, i32 0, i32 12
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file, align 8, !tbaa !41
  %tobool = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %11 = bitcast [5 x i32]* %header to i8*
  call void @llvm.lifetime.start(i64 20, i8* %11) #1
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %header, i32 0, i64 0
  store i32 1885618757, i32* %arrayidx, align 4, !tbaa !1
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* %header, i32 0, i64 1
  store i32 1296910665, i32* %arrayidx2, align 4, !tbaa !1
  %arrayidx3 = getelementptr inbounds [5 x i32], [5 x i32]* %header, i32 0, i64 2
  store i32 133, i32* %arrayidx3, align 4, !tbaa !1
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* %header, i32 0, i64 3
  store i32 255, i32* %arrayidx4, align 4, !tbaa !1
  %arrayidx5 = getelementptr inbounds [5 x i32], [5 x i32]* %header, i32 0, i64 4
  store i32 1, i32* %arrayidx5, align 4, !tbaa !1
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %header, i32 0, i32 0
  %12 = bitcast i32* %arraydecay to i8*
  %13 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dump_file6 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %13, i32 0, i32 12
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file6, align 8, !tbaa !41
  %call7 = call i64 @fwrite(i8* %12, i64 4, i64 5, %struct._IO_FILE* %14) #5
  %15 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dump_level = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %15, i32 0, i32 13
  %16 = load i32, i32* %dump_level, align 4, !tbaa !42
  %cmp = icmp uge i32 %16, 1
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %17 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %18 = bitcast %struct.EvenBetterParams* %17 to i8*
  %19 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dump_file9 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %19, i32 0, i32 12
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file9, align 8, !tbaa !41
  %call10 = call i64 @fwrite(i8* %18, i64 1, i64 88, %struct._IO_FILE* %20) #5
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %21 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dump_level11 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %21, i32 0, i32 13
  %22 = load i32, i32* %dump_level11, align 4, !tbaa !42
  %cmp12 = icmp uge i32 %22, 2
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end
  %23 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %i14, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %24 = load i32, i32* %i14, align 4, !tbaa !1
  %25 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %n_planes15 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %25, i32 0, i32 2
  %26 = load i32, i32* %n_planes15, align 4, !tbaa !38
  %cmp16 = icmp slt i32 %24, %26
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i14, align 4, !tbaa !1
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %luts = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %28, i32 0, i32 4
  %29 = load i32**, i32*** %luts, align 8, !tbaa !43
  %arrayidx17 = getelementptr inbounds i32*, i32** %29, i64 %idxprom
  %30 = load i32*, i32** %arrayidx17, align 8, !tbaa !5
  %31 = bitcast i32* %30 to i8*
  %32 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dump_file18 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %32, i32 0, i32 12
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file18, align 8, !tbaa !41
  %call19 = call i64 @fwrite(i8* %31, i64 4, i64 256, %struct._IO_FILE* %33) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i14, align 4, !tbaa !1
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i14, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %if.end
  %36 = bitcast [5 x i32]* %header to i8*
  call void @llvm.lifetime.end(i64 20, i8* %36) #1
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  %37 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %source_width = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %37, i32 0, i32 0
  %38 = load i32, i32* %source_width, align 4, !tbaa !44
  %39 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %source_width22 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %39, i32 0, i32 0
  store i32 %38, i32* %source_width22, align 4, !tbaa !11
  %40 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dest_width = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %40, i32 0, i32 1
  %41 = load i32, i32* %dest_width, align 4, !tbaa !45
  %42 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %dest_width23 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %42, i32 0, i32 1
  store i32 %41, i32* %dest_width23, align 4, !tbaa !13
  %43 = load i32, i32* %n_planes, align 4, !tbaa !1
  %44 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %n_planes24 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %44, i32 0, i32 2
  store i32 %43, i32* %n_planes24, align 4, !tbaa !10
  %45 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %levels = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %45, i32 0, i32 3
  %46 = load i32, i32* %levels, align 4, !tbaa !46
  %47 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %levels25 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %47, i32 0, i32 3
  store i32 %46, i32* %levels25, align 4, !tbaa !16
  %48 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %aspect = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %48, i32 0, i32 6
  %49 = load i32, i32* %aspect, align 4, !tbaa !47
  %50 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %aspect26 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %50, i32 0, i32 5
  store i32 %49, i32* %aspect26, align 4, !tbaa !17
  %51 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %levels27 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %51, i32 0, i32 3
  %52 = load i32, i32* %levels27, align 4, !tbaa !46
  %sub = sub nsw i32 %52, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double 3.932160e+04, %conv
  %conv28 = fptosi double %div to i32
  %53 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %even_ehi = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %53, i32 0, i32 8
  store i32 %conv28, i32* %even_ehi, align 4, !tbaa !20
  %54 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %even_ehi29 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %54, i32 0, i32 8
  %55 = load i32, i32* %even_ehi29, align 4, !tbaa !20
  %sub30 = sub nsw i32 0, %55
  %56 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %even_elo = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %56, i32 0, i32 7
  store i32 %sub30, i32* %even_elo, align 4, !tbaa !19
  %57 = load i32, i32* %n_planes, align 4, !tbaa !1
  %conv31 = sext i32 %57 to i64
  %mul = mul i64 4, %conv31
  %call32 = call noalias i8* @malloc(i64 %mul) #4
  %58 = bitcast i8* %call32 to i32*
  %59 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %strengths = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %59, i32 0, i32 6
  store i32* %58, i32** %strengths, align 8, !tbaa !18
  %60 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %strengths33 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %60, i32 0, i32 6
  %61 = load i32*, i32** %strengths33, align 8, !tbaa !18
  %62 = bitcast i32* %61 to i8*
  %63 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %strengths34 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %63, i32 0, i32 7
  %64 = load i32*, i32** %strengths34, align 8, !tbaa !48
  %65 = bitcast i32* %64 to i8*
  %66 = load i32, i32* %n_planes, align 4, !tbaa !1
  %conv35 = sext i32 %66 to i64
  %mul36 = mul i64 4, %conv35
  %call37 = call i8* @memcpy(i8* %62, i8* %65, i64 %mul36) #4
  %67 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %levels38 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %67, i32 0, i32 3
  %68 = load i32, i32* %levels38, align 4, !tbaa !46
  %call39 = call i32 @even_log2(i32 %68) #5
  store i32 %call39, i32* %log2_levels, align 4, !tbaa !1
  %69 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %aspect40 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %69, i32 0, i32 6
  %70 = load i32, i32* %aspect40, align 4, !tbaa !47
  %call41 = call i32 @even_log2(i32 %70) #5
  store i32 %call41, i32* %log2_aspect, align 4, !tbaa !1
  %71 = load i32, i32* %log2_aspect, align 4, !tbaa !1
  %add = add nsw i32 6, %71
  %72 = load i32, i32* %log2_levels, align 4, !tbaa !1
  %add42 = add nsw i32 %add, %72
  %73 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %even_c1_scale = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %73, i32 0, i32 9
  %74 = load i32, i32* %even_c1_scale, align 4, !tbaa !49
  %sub43 = sub nsw i32 %add42, %74
  %75 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %even_c1 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %75, i32 0, i32 10
  store i32 %sub43, i32* %even_c1, align 4, !tbaa !22
  %76 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %do_shadows = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %76, i32 0, i32 10
  %77 = load i32, i32* %do_shadows, align 4, !tbaa !50
  %78 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %do_shadows44 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %78, i32 0, i32 11
  store i32 %77, i32* %do_shadows44, align 4, !tbaa !12
  %79 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dest_width45 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %79, i32 0, i32 1
  %80 = load i32, i32* %dest_width45, align 4, !tbaa !45
  %conv46 = sext i32 %80 to i64
  %call47 = call noalias i8* @calloc(i64 %conv46, i64 4) #4
  %81 = bitcast i8* %call47 to i32*
  %82 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %c_line = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %82, i32 0, i32 9
  store i32* %81, i32** %c_line, align 8, !tbaa !21
  %83 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %seed1 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %83, i32 0, i32 12
  store i32 1394902943, i32* %seed1, align 4, !tbaa !14
  %84 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %seed2 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %84, i32 0, i32 13
  store i32 -1215493819, i32* %seed2, align 4, !tbaa !15
  %85 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dump_file48 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %85, i32 0, i32 12
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file48, align 8, !tbaa !41
  %87 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %dump_file49 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %87, i32 0, i32 14
  store %struct._IO_FILE* %86, %struct._IO_FILE** %dump_file49, align 8, !tbaa !7
  %88 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dump_level50 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %88, i32 0, i32 13
  %89 = load i32, i32* %dump_level50, align 4, !tbaa !42
  %90 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %dump_level51 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %90, i32 0, i32 15
  store i32 %89, i32* %dump_level51, align 4, !tbaa !9
  %91 = load i32, i32* %using_vectors, align 4, !tbaa !1
  %tobool52 = icmp ne i32 %91, 0
  br i1 %tobool52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.end.21
  %92 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %plane_ctx = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %92, i32 0, i32 4
  store %struct._EBPlaneCtx** null, %struct._EBPlaneCtx*** %plane_ctx, align 8, !tbaa !23
  br label %if.end.69

if.else:                                          ; preds = %if.end.21
  %93 = load i32, i32* %n_planes, align 4, !tbaa !1
  %conv54 = sext i32 %93 to i64
  %mul55 = mul i64 8, %conv54
  %call56 = call noalias i8* @malloc(i64 %mul55) #4
  %94 = bitcast i8* %call56 to %struct._EBPlaneCtx**
  %95 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %plane_ctx57 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %95, i32 0, i32 4
  store %struct._EBPlaneCtx** %94, %struct._EBPlaneCtx*** %plane_ctx57, align 8, !tbaa !23
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.66, %if.else
  %96 = load i32, i32* %i, align 4, !tbaa !1
  %97 = load i32, i32* %n_planes, align 4, !tbaa !1
  %cmp59 = icmp slt i32 %96, %97
  br i1 %cmp59, label %for.body.61, label %for.end.68

for.body.61:                                      ; preds = %for.cond.58
  %98 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %99 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %100 = load i32, i32* %i, align 4, !tbaa !1
  %call62 = call %struct._EBPlaneCtx* @even_better_plane_new(%struct.EvenBetterParams* %98, %struct._EvenBetterCtx* %99, i32 %100) #5
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom63 = sext i32 %101 to i64
  %102 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %plane_ctx64 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %102, i32 0, i32 4
  %103 = load %struct._EBPlaneCtx**, %struct._EBPlaneCtx*** %plane_ctx64, align 8, !tbaa !23
  %arrayidx65 = getelementptr inbounds %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %103, i64 %idxprom63
  store %struct._EBPlaneCtx* %call62, %struct._EBPlaneCtx** %arrayidx65, align 8, !tbaa !5
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.61
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %inc67 = add nsw i32 %104, 1
  store i32 %inc67, i32* %i, align 4, !tbaa !1
  br label %for.cond.58

for.end.68:                                       ; preds = %for.cond.58
  br label %if.end.69

if.end.69:                                        ; preds = %for.end.68, %if.then.53
  %105 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %result, align 8, !tbaa !5
  %106 = bitcast i32* %using_vectors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %log2_aspect to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %log2_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast %struct._EvenBetterCtx** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  ret %struct._EvenBetterCtx* %105
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @even_log2(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !1
  %0 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %y, align 4, !tbaa !1
  %1 = bitcast i32* %z to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %x.addr, align 4, !tbaa !1
  store i32 %2, i32* %z, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %z, align 4, !tbaa !1
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %y, align 4, !tbaa !1
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %y, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %z, align 4, !tbaa !1
  %shr = ashr i32 %5, 1
  store i32 %shr, i32* %z, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %y, align 4, !tbaa !1
  %7 = bitcast i32* %z to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %6
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._EBPlaneCtx* @even_better_plane_new(%struct.EvenBetterParams* %params, %struct._EvenBetterCtx* %ebc, i32 %plane_idx) #0 {
entry:
  %params.addr = alloca %struct.EvenBetterParams*, align 8
  %ebc.addr = alloca %struct._EvenBetterCtx*, align 8
  %plane_idx.addr = alloca i32, align 4
  %source_width = alloca i32, align 4
  %dest_width = alloca i32, align 4
  %lut = alloca i32*, align 8
  %result = alloca %struct._EBPlaneCtx*, align 8
  %i = alloca i32, align 4
  %new_lut = alloca i32*, align 8
  %rb_lut = alloca i32*, align 8
  %rs_lut = alloca i8*, align 8
  %rbscale = alloca double, align 8
  %even_c1 = alloca i32, align 4
  %even_rlimit = alloca i32, align 4
  %do_shadows = alloca i32, align 4
  %log2_levels = alloca i32, align 4
  %rs_base = alloca i32, align 4
  %nli = alloca i32, align 4
  %rb = alloca double, align 8
  %nl = alloca i32, align 4
  %rs = alloca i32, align 4
  %rb_sh = alloca i32, align 4
  store %struct.EvenBetterParams* %params, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  store %struct._EvenBetterCtx* %ebc, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  store i32 %plane_idx, i32* %plane_idx.addr, align 4, !tbaa !1
  %0 = bitcast i32* %source_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %source_width1 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %1, i32 0, i32 0
  %2 = load i32, i32* %source_width1, align 4, !tbaa !44
  store i32 %2, i32* %source_width, align 4, !tbaa !1
  %3 = bitcast i32* %dest_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %dest_width2 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %4, i32 0, i32 1
  %5 = load i32, i32* %dest_width2, align 4, !tbaa !45
  store i32 %5, i32* %dest_width, align 4, !tbaa !1
  %6 = bitcast i32** %lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %plane_idx.addr, align 4, !tbaa !1
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %luts = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %8, i32 0, i32 4
  %9 = load i32**, i32*** %luts, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds i32*, i32** %9, i64 %idxprom
  %10 = load i32*, i32** %arrayidx, align 8, !tbaa !5
  store i32* %10, i32** %lut, align 8, !tbaa !5
  %11 = bitcast %struct._EBPlaneCtx** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32** %new_lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i32** %rb_lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i8** %rs_lut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast double* %rbscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %call = call double @eb_compute_rbscale(%struct.EvenBetterParams* %17) #5
  store double %call, double* %rbscale, align 8, !tbaa !51
  %18 = bitcast i32* %even_c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ebc.addr, align 8, !tbaa !5
  %even_c13 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %19, i32 0, i32 10
  %20 = load i32, i32* %even_c13, align 4, !tbaa !22
  store i32 %20, i32* %even_c1, align 4, !tbaa !1
  %21 = bitcast i32* %even_rlimit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %even_c1, align 4, !tbaa !1
  %add = add nsw i32 14, %22
  %shl = shl i32 1, %add
  store i32 %shl, i32* %even_rlimit, align 4, !tbaa !1
  %23 = bitcast i32* %do_shadows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %do_shadows4 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %24, i32 0, i32 10
  %25 = load i32, i32* %do_shadows4, align 4, !tbaa !50
  store i32 %25, i32* %do_shadows, align 4, !tbaa !1
  %26 = bitcast i32* %log2_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %rs_base to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %call5 = call noalias i8* @malloc(i64 104) #4
  %28 = bitcast i8* %call5 to %struct._EBPlaneCtx*
  store %struct._EBPlaneCtx* %28, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %29 = load i32, i32* %source_width, align 4, !tbaa !1
  %30 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %source_width6 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %30, i32 0, i32 0
  store i32 %29, i32* %source_width6, align 4, !tbaa !52
  %31 = load i32, i32* %dest_width, align 4, !tbaa !1
  %32 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %dest_width7 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %32, i32 0, i32 1
  store i32 %31, i32* %dest_width7, align 4, !tbaa !53
  %call8 = call noalias i8* @malloc(i64 1024) #4
  %33 = bitcast i8* %call8 to i32*
  store i32* %33, i32** %new_lut, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %cmp = icmp slt i32 %34, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = bitcast i32* %nli to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32*, i32** %lut, align 8, !tbaa !5
  %cmp9 = icmp eq i32* %36, null
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %mul = mul nsw i32 %37, 65793
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %shr = ashr i32 %38, 7
  %add10 = add nsw i32 %mul, %shr
  %shr11 = ashr i32 %add10, 8
  store i32 %shr11, i32* %nli, align 4, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom12 = sext i32 %39 to i64
  %40 = load i32*, i32** %lut, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds i32, i32* %40, i64 %idxprom12
  %41 = load i32, i32* %arrayidx13, align 4, !tbaa !1
  %shr14 = ashr i32 %41, 8
  store i32 %shr14, i32* %nli, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %42 = load i32, i32* %nli, align 4, !tbaa !1
  %sub = sub nsw i32 65536, %42
  %43 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom15 = sext i32 %43 to i64
  %44 = load i32*, i32** %new_lut, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i32, i32* %44, i64 %idxprom15
  store i32 %sub, i32* %arrayidx16, align 4, !tbaa !1
  %45 = bitcast i32* %nli to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %46 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call17 = call noalias i8* @malloc(i64 1024) #4
  %47 = bitcast i8* %call17 to i32*
  store i32* %47, i32** %rb_lut, align 8, !tbaa !5
  %call18 = call noalias i8* @malloc(i64 1024) #4
  store i8* %call18, i8** %rs_lut, align 8, !tbaa !5
  %48 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %levels = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %48, i32 0, i32 3
  %49 = load i32, i32* %levels, align 4, !tbaa !46
  %call19 = call i32 @even_log2(i32 %49) #5
  store i32 %call19, i32* %log2_levels, align 4, !tbaa !1
  %50 = load i32, i32* %log2_levels, align 4, !tbaa !1
  %add20 = add nsw i32 19, %50
  %51 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %rand_scale = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %51, i32 0, i32 8
  %52 = load i32, i32* %rand_scale, align 4, !tbaa !54
  %sub21 = sub nsw i32 %add20, %52
  store i32 %sub21, i32* %rs_base, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.87, %for.end
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %cmp23 = icmp sle i32 %53, 255
  br i1 %cmp23, label %for.body.24, label %for.end.89

for.body.24:                                      ; preds = %for.cond.22
  %54 = bitcast double* %rb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom25 = sext i32 %56 to i64
  %57 = load i32*, i32** %new_lut, align 8, !tbaa !5
  %arrayidx26 = getelementptr inbounds i32, i32* %57, i64 %idxprom25
  %58 = load i32, i32* %arrayidx26, align 4, !tbaa !1
  %59 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %levels27 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %59, i32 0, i32 3
  %60 = load i32, i32* %levels27, align 4, !tbaa !46
  %sub28 = sub nsw i32 %60, 1
  %mul29 = mul nsw i32 %58, %sub28
  store i32 %mul29, i32* %nl, align 4, !tbaa !1
  %61 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load i32, i32* %nl, align 4, !tbaa !1
  %cmp30 = icmp eq i32 %62, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %for.body.24
  store double 0.000000e+00, double* %rb, align 8, !tbaa !51
  br label %if.end.47

if.else.32:                                       ; preds = %for.body.24
  %63 = load double, double* %rbscale, align 8, !tbaa !51
  %64 = load i32, i32* %even_c1, align 4, !tbaa !1
  %sub33 = sub nsw i32 32, %64
  %shl34 = shl i32 1, %sub33
  %conv = sitofp i32 %shl34 to double
  %mul35 = fmul double %63, %conv
  %65 = load i32, i32* %nl, align 4, !tbaa !1
  %conv36 = sitofp i32 %65 to double
  %div = fdiv double %mul35, %conv36
  store double %div, double* %rb, align 8, !tbaa !51
  %66 = load double, double* %rb, align 8, !tbaa !51
  %67 = load i32, i32* %even_rlimit, align 4, !tbaa !1
  %68 = load i32, i32* %even_c1, align 4, !tbaa !1
  %sub37 = sub nsw i32 16, %68
  %shl38 = shl i32 %67, %sub37
  %conv39 = sitofp i32 %shl38 to double
  %cmp40 = fcmp ogt double %66, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.else.32
  %69 = load i32, i32* %even_rlimit, align 4, !tbaa !1
  %70 = load i32, i32* %even_c1, align 4, !tbaa !1
  %sub43 = sub nsw i32 16, %70
  %shl44 = shl i32 %69, %sub43
  %conv45 = sitofp i32 %shl44 to double
  store double %conv45, double* %rb, align 8, !tbaa !51
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.else.32
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.31
  %71 = load i32, i32* %nl, align 4, !tbaa !1
  %72 = load i32, i32* %rs_base, align 4, !tbaa !1
  %73 = load i32, i32* %do_shadows, align 4, !tbaa !1
  %74 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %levels48 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %74, i32 0, i32 3
  %75 = load i32, i32* %levels48, align 4, !tbaa !46
  %call49 = call i32 @eb_compute_randshift(i32 %71, i32 %72, i32 %73, i32 %75) #5
  store i32 %call49, i32* %rs, align 4, !tbaa !1
  %76 = load i32, i32* %rs, align 4, !tbaa !1
  %conv50 = trunc i32 %76 to i8
  %77 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom51 = sext i32 %77 to i64
  %78 = load i8*, i8** %rs_lut, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds i8, i8* %78, i64 %idxprom51
  store i8 %conv50, i8* %arrayidx52, align 1, !tbaa !26
  %79 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %do_shadows53 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %79, i32 0, i32 10
  %80 = load i32, i32* %do_shadows53, align 4, !tbaa !50
  %tobool = icmp ne i32 %80, 0
  br i1 %tobool, label %if.then.54, label %if.end.83

if.then.54:                                       ; preds = %if.end.47
  %81 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom55 = sext i32 %81 to i64
  %82 = load i32*, i32** %new_lut, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds i32, i32* %82, i64 %idxprom55
  %83 = load i32, i32* %arrayidx56, align 4, !tbaa !1
  %sub57 = sub nsw i32 65536, %83
  %84 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %levels58 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %84, i32 0, i32 3
  %85 = load i32, i32* %levels58, align 4, !tbaa !46
  %sub59 = sub nsw i32 %85, 1
  %mul60 = mul nsw i32 %sub57, %sub59
  store i32 %mul60, i32* %nl, align 4, !tbaa !1
  %86 = load i32, i32* %nl, align 4, !tbaa !1
  %cmp61 = icmp eq i32 %86, 0
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.then.54
  store double 0.000000e+00, double* %rb, align 8, !tbaa !51
  br label %if.end.82

if.else.64:                                       ; preds = %if.then.54
  %87 = bitcast i32* %rb_sh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load double, double* %rbscale, align 8, !tbaa !51
  %89 = load i32, i32* %even_c1, align 4, !tbaa !1
  %sub65 = sub nsw i32 32, %89
  %shl66 = shl i32 1, %sub65
  %conv67 = sitofp i32 %shl66 to double
  %mul68 = fmul double %88, %conv67
  %90 = load i32, i32* %nl, align 4, !tbaa !1
  %conv69 = sitofp i32 %90 to double
  %div70 = fdiv double %mul68, %conv69
  %conv71 = fptosi double %div70 to i32
  store i32 %conv71, i32* %rb_sh, align 4, !tbaa !1
  %91 = load i32, i32* %rb_sh, align 4, !tbaa !1
  %92 = load i32, i32* %even_rlimit, align 4, !tbaa !1
  %93 = load i32, i32* %even_c1, align 4, !tbaa !1
  %sub72 = sub nsw i32 16, %93
  %shl73 = shl i32 %92, %sub72
  %cmp74 = icmp sgt i32 %91, %shl73
  br i1 %cmp74, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %if.else.64
  %94 = load i32, i32* %even_rlimit, align 4, !tbaa !1
  %95 = load i32, i32* %even_c1, align 4, !tbaa !1
  %sub77 = sub nsw i32 16, %95
  %shl78 = shl i32 %94, %sub77
  store i32 %shl78, i32* %rb_sh, align 4, !tbaa !1
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %if.else.64
  %96 = load i32, i32* %rb_sh, align 4, !tbaa !1
  %conv80 = sitofp i32 %96 to double
  %97 = load double, double* %rb, align 8, !tbaa !51
  %sub81 = fsub double %97, %conv80
  store double %sub81, double* %rb, align 8, !tbaa !51
  %98 = bitcast i32* %rb_sh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.79, %if.then.63
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.47
  %99 = load double, double* %rb, align 8, !tbaa !51
  %conv84 = fptosi double %99 to i32
  %100 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom85 = sext i32 %100 to i64
  %101 = load i32*, i32** %rb_lut, align 8, !tbaa !5
  %arrayidx86 = getelementptr inbounds i32, i32* %101, i64 %idxprom85
  store i32 %conv84, i32* %arrayidx86, align 4, !tbaa !1
  %102 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast double* %rb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.83
  %105 = load i32, i32* %i, align 4, !tbaa !1
  %inc88 = add nsw i32 %105, 1
  store i32 %inc88, i32* %i, align 4, !tbaa !1
  br label %for.cond.22

for.end.89:                                       ; preds = %for.cond.22
  %106 = load i32*, i32** %new_lut, align 8, !tbaa !5
  %107 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %lut90 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %107, i32 0, i32 10
  store i32* %106, i32** %lut90, align 8, !tbaa !30
  %108 = load i32*, i32** %rb_lut, align 8, !tbaa !5
  %109 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %rb_lut91 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %109, i32 0, i32 11
  store i32* %108, i32** %rb_lut91, align 8, !tbaa !31
  %110 = load i8*, i8** %rs_lut, align 8, !tbaa !5
  %111 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %rs_lut92 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %111, i32 0, i32 12
  store i8* %110, i8** %rs_lut92, align 8, !tbaa !32
  %112 = load i32, i32* %dest_width, align 4, !tbaa !1
  %conv93 = sext i32 %112 to i64
  %call94 = call noalias i8* @calloc(i64 %conv93, i64 4) #4
  %113 = bitcast i8* %call94 to i32*
  %114 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %rb_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %114, i32 0, i32 2
  store i32* %113, i32** %rb_line, align 8, !tbaa !55
  %115 = load i32, i32* %dest_width, align 4, !tbaa !1
  %conv95 = sext i32 %115 to i64
  %call96 = call noalias i8* @calloc(i64 %conv95, i64 4) #4
  %116 = bitcast i8* %call96 to i32*
  %117 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %iir_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %117, i32 0, i32 3
  store i32* %116, i32** %iir_line, align 8, !tbaa !37
  %118 = load i32, i32* %dest_width, align 4, !tbaa !1
  %conv97 = sext i32 %118 to i64
  %call98 = call noalias i8* @calloc(i64 %conv97, i64 4) #4
  %119 = bitcast i8* %call98 to i32*
  %120 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %r_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %120, i32 0, i32 4
  store i32* %119, i32** %r_line, align 8, !tbaa !27
  %121 = load i32, i32* %dest_width, align 4, !tbaa !1
  %conv99 = sext i32 %121 to i64
  %call100 = call noalias i8* @calloc(i64 %conv99, i64 4) #4
  %122 = bitcast i8* %call100 to i32*
  %123 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %a_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %123, i32 0, i32 5
  store i32* %122, i32** %a_line, align 8, !tbaa !28
  %124 = load i32, i32* %dest_width, align 4, !tbaa !1
  %conv101 = sext i32 %124 to i64
  %call102 = call noalias i8* @calloc(i64 %conv101, i64 4) #4
  %125 = bitcast i8* %call102 to i32*
  %126 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %b_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %126, i32 0, i32 6
  store i32* %125, i32** %b_line, align 8, !tbaa !29
  %127 = load i32, i32* %dest_width, align 4, !tbaa !1
  %add103 = add nsw i32 %127, 15
  %shr104 = ashr i32 %add103, 4
  %conv105 = sext i32 %shr104 to i64
  %call106 = call noalias i8* @calloc(i64 %conv105, i64 4) #4
  %128 = bitcast i8* %call106 to i32*
  %129 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %white_count_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %129, i32 0, i32 13
  store i32* %128, i32** %white_count_line, align 8, !tbaa !24
  %130 = load i32, i32* %do_shadows, align 4, !tbaa !1
  %tobool107 = icmp ne i32 %130, 0
  br i1 %tobool107, label %if.then.108, label %if.else.115

if.then.108:                                      ; preds = %for.end.89
  %131 = load i32, i32* %dest_width, align 4, !tbaa !1
  %conv109 = sext i32 %131 to i64
  %call110 = call noalias i8* @calloc(i64 %conv109, i64 4) #4
  %132 = bitcast i8* %call110 to i32*
  %133 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %r_line_sh = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %133, i32 0, i32 7
  store i32* %132, i32** %r_line_sh, align 8, !tbaa !56
  %134 = load i32, i32* %dest_width, align 4, !tbaa !1
  %conv111 = sext i32 %134 to i64
  %call112 = call noalias i8* @calloc(i64 %conv111, i64 4) #4
  %135 = bitcast i8* %call112 to i32*
  %136 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %a_line_sh = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %136, i32 0, i32 8
  store i32* %135, i32** %a_line_sh, align 8, !tbaa !57
  %137 = load i32, i32* %dest_width, align 4, !tbaa !1
  %conv113 = sext i32 %137 to i64
  %call114 = call noalias i8* @calloc(i64 %conv113, i64 4) #4
  %138 = bitcast i8* %call114 to i32*
  %139 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %b_line_sh = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %139, i32 0, i32 9
  store i32* %138, i32** %b_line_sh, align 8, !tbaa !58
  br label %if.end.119

if.else.115:                                      ; preds = %for.end.89
  %140 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %r_line_sh116 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %140, i32 0, i32 7
  store i32* null, i32** %r_line_sh116, align 8, !tbaa !56
  %141 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %a_line_sh117 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %141, i32 0, i32 8
  store i32* null, i32** %a_line_sh117, align 8, !tbaa !57
  %142 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %b_line_sh118 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %142, i32 0, i32 9
  store i32* null, i32** %b_line_sh118, align 8, !tbaa !58
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.115, %if.then.108
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.146, %if.end.119
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %144 = load i32, i32* %dest_width, align 4, !tbaa !1
  %cmp121 = icmp slt i32 %143, %144
  br i1 %cmp121, label %for.body.123, label %for.end.148

for.body.123:                                     ; preds = %for.cond.120
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom124 = sext i32 %145 to i64
  %146 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %a_line125 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %146, i32 0, i32 5
  %147 = load i32*, i32** %a_line125, align 8, !tbaa !28
  %arrayidx126 = getelementptr inbounds i32, i32* %147, i64 %idxprom124
  store i32 1, i32* %arrayidx126, align 4, !tbaa !1
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom127 = sext i32 %148 to i64
  %149 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %b_line128 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %149, i32 0, i32 6
  %150 = load i32*, i32** %b_line128, align 8, !tbaa !29
  %arrayidx129 = getelementptr inbounds i32, i32* %150, i64 %idxprom127
  store i32 1, i32* %arrayidx129, align 4, !tbaa !1
  %call130 = call i32 @rand() #4
  %and = and i32 %call130, 32767
  %shl131 = shl i32 %and, 6
  %sub132 = sub nsw i32 0, %shl131
  %shr133 = ashr i32 %sub132, 8
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom134 = sext i32 %151 to i64
  %152 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %iir_line135 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %152, i32 0, i32 3
  %153 = load i32*, i32** %iir_line135, align 8, !tbaa !37
  %arrayidx136 = getelementptr inbounds i32, i32* %153, i64 %idxprom134
  store i32 %shr133, i32* %arrayidx136, align 4, !tbaa !1
  %154 = load i32, i32* %do_shadows, align 4, !tbaa !1
  %tobool137 = icmp ne i32 %154, 0
  br i1 %tobool137, label %if.then.138, label %if.end.145

if.then.138:                                      ; preds = %for.body.123
  %155 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom139 = sext i32 %155 to i64
  %156 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %a_line_sh140 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %156, i32 0, i32 8
  %157 = load i32*, i32** %a_line_sh140, align 8, !tbaa !57
  %arrayidx141 = getelementptr inbounds i32, i32* %157, i64 %idxprom139
  store i32 1, i32* %arrayidx141, align 4, !tbaa !1
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom142 = sext i32 %158 to i64
  %159 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %b_line_sh143 = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %159, i32 0, i32 9
  %160 = load i32*, i32** %b_line_sh143, align 8, !tbaa !58
  %arrayidx144 = getelementptr inbounds i32, i32* %160, i64 %idxprom142
  store i32 1, i32* %arrayidx144, align 4, !tbaa !1
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.138, %for.body.123
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %161 = load i32, i32* %i, align 4, !tbaa !1
  %inc147 = add nsw i32 %161, 1
  store i32 %inc147, i32* %i, align 4, !tbaa !1
  br label %for.cond.120

for.end.148:                                      ; preds = %for.cond.120
  %162 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %result, align 8, !tbaa !5
  %163 = bitcast i32* %rs_base to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %log2_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %do_shadows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %even_rlimit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %even_c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast double* %rbscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i8** %rs_lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i32** %rb_lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i32** %new_lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast %struct._EBPlaneCtx** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i32** %lut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast i32* %dest_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %source_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  ret %struct._EBPlaneCtx* %162
}

; Function Attrs: nounwind uwtable
define void @even_better_free(%struct._EvenBetterCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._EvenBetterCtx*, align 8
  %i = alloca i32, align 4
  %n_planes = alloca i32, align 4
  store %struct._EvenBetterCtx* %ctx, %struct._EvenBetterCtx** %ctx.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ctx.addr, align 8, !tbaa !5
  %n_planes1 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %2, i32 0, i32 2
  %3 = load i32, i32* %n_planes1, align 4, !tbaa !10
  store i32 %3, i32* %n_planes, align 4, !tbaa !1
  %4 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ctx.addr, align 8, !tbaa !5
  %dump_file = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %4, i32 0, i32 14
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file, align 8, !tbaa !7
  %tobool = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ctx.addr, align 8, !tbaa !5
  %dump_file2 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %6, i32 0, i32 14
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %dump_file2, align 8, !tbaa !7
  %call = call i32 @fclose(%struct._IO_FILE* %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %9 = load i32, i32* %n_planes, align 4, !tbaa !1
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %10 to i64
  %11 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ctx.addr, align 8, !tbaa !5
  %plane_ctx = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %11, i32 0, i32 4
  %12 = load %struct._EBPlaneCtx**, %struct._EBPlaneCtx*** %plane_ctx, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %12, i64 %idxprom
  %13 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %arrayidx, align 8, !tbaa !5
  call void @even_better_plane_free(%struct._EBPlaneCtx* %13) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ctx.addr, align 8, !tbaa !5
  %plane_ctx3 = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %15, i32 0, i32 4
  %16 = load %struct._EBPlaneCtx**, %struct._EBPlaneCtx*** %plane_ctx3, align 8, !tbaa !23
  %17 = bitcast %struct._EBPlaneCtx** %16 to i8*
  call void @free(i8* %17) #4
  %18 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ctx.addr, align 8, !tbaa !5
  %strengths = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %18, i32 0, i32 6
  %19 = load i32*, i32** %strengths, align 8, !tbaa !18
  %20 = bitcast i32* %19 to i8*
  call void @free(i8* %20) #4
  %21 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ctx.addr, align 8, !tbaa !5
  %c_line = getelementptr inbounds %struct._EvenBetterCtx, %struct._EvenBetterCtx* %21, i32 0, i32 9
  %22 = load i32*, i32** %c_line, align 8, !tbaa !21
  %23 = bitcast i32* %22 to i8*
  call void @free(i8* %23) #4
  %24 = load %struct._EvenBetterCtx*, %struct._EvenBetterCtx** %ctx.addr, align 8, !tbaa !5
  %25 = bitcast %struct._EvenBetterCtx* %24 to i8*
  call void @free(i8* %25) #4
  %26 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @even_better_plane_free(%struct._EBPlaneCtx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct._EBPlaneCtx*, align 8
  store %struct._EBPlaneCtx* %ctx, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %0 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %rb_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %0, i32 0, i32 2
  %1 = load i32*, i32** %rb_line, align 8, !tbaa !55
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %iir_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %3, i32 0, i32 3
  %4 = load i32*, i32** %iir_line, align 8, !tbaa !37
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #4
  %6 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %r_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %6, i32 0, i32 4
  %7 = load i32*, i32** %r_line, align 8, !tbaa !27
  %8 = bitcast i32* %7 to i8*
  call void @free(i8* %8) #4
  %9 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %a_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %9, i32 0, i32 5
  %10 = load i32*, i32** %a_line, align 8, !tbaa !28
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11) #4
  %12 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %b_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %12, i32 0, i32 6
  %13 = load i32*, i32** %b_line, align 8, !tbaa !29
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #4
  %15 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %lut = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %15, i32 0, i32 10
  %16 = load i32*, i32** %lut, align 8, !tbaa !30
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17) #4
  %18 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %rb_lut = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %18, i32 0, i32 11
  %19 = load i32*, i32** %rb_lut, align 8, !tbaa !31
  %20 = bitcast i32* %19 to i8*
  call void @free(i8* %20) #4
  %21 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %rs_lut = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %21, i32 0, i32 12
  %22 = load i8*, i8** %rs_lut, align 8, !tbaa !32
  call void @free(i8* %22) #4
  %23 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %white_count_line = getelementptr inbounds %struct._EBPlaneCtx, %struct._EBPlaneCtx* %23, i32 0, i32 13
  %24 = load i32*, i32** %white_count_line, align 8, !tbaa !24
  %25 = bitcast i32* %24 to i8*
  call void @free(i8* %25) #4
  %26 = load %struct._EBPlaneCtx*, %struct._EBPlaneCtx** %ctx.addr, align 8, !tbaa !5
  %27 = bitcast %struct._EBPlaneCtx* %26 to i8*
  call void @free(i8* %27) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @eb_compute_rbscale(%struct.EvenBetterParams* %params) #0 {
entry:
  %params.addr = alloca %struct.EvenBetterParams*, align 8
  %rbscale = alloca double, align 8
  store %struct.EvenBetterParams* %params, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %0 = bitcast double* %rbscale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %rbscale1 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %1, i32 0, i32 5
  %2 = load double, double* %rbscale1, align 8, !tbaa !59
  store double %2, double* %rbscale, align 8, !tbaa !51
  %3 = load double, double* %rbscale, align 8, !tbaa !51
  %cmp = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %aspect = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %4, i32 0, i32 6
  %5 = load i32, i32* %aspect, align 4, !tbaa !47
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end.10

cond.false:                                       ; preds = %if.then
  %6 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %aspect3 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %6, i32 0, i32 6
  %7 = load i32, i32* %aspect3, align 4, !tbaa !47
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %8 = load %struct.EvenBetterParams*, %struct.EvenBetterParams** %params.addr, align 8, !tbaa !5
  %aspect7 = getelementptr inbounds %struct.EvenBetterParams, %struct.EvenBetterParams* %8, i32 0, i32 6
  %9 = load i32, i32* %aspect7, align 4, !tbaa !47
  %cmp8 = icmp eq i32 %9, 4
  %cond = select i1 %cmp8, double 3.600000e+00, double 1.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond9 = phi double [ 1.800000e+00, %cond.true.5 ], [ %cond, %cond.false.6 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi double [ 9.500000e-01, %cond.true ], [ %cond9, %cond.end ]
  store double %cond11, double* %rbscale, align 8, !tbaa !51
  br label %if.end

if.end:                                           ; preds = %cond.end.10, %entry
  %10 = load double, double* %rbscale, align 8, !tbaa !51
  %11 = bitcast double* %rbscale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret double %10
}

; Function Attrs: nounwind uwtable
define internal i32 @eb_compute_randshift(i32 %nl, i32 %rs_base, i32 %do_shadows, i32 %levels) #0 {
entry:
  %nl.addr = alloca i32, align 4
  %rs_base.addr = alloca i32, align 4
  %do_shadows.addr = alloca i32, align 4
  %levels.addr = alloca i32, align 4
  %rs = alloca i32, align 4
  store i32 %nl, i32* %nl.addr, align 4, !tbaa !1
  store i32 %rs_base, i32* %rs_base.addr, align 4, !tbaa !1
  store i32 %do_shadows, i32* %do_shadows.addr, align 4, !tbaa !1
  store i32 %levels, i32* %levels.addr, align 4, !tbaa !1
  %0 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %rs_base.addr, align 4, !tbaa !1
  store i32 %1, i32* %rs, align 4, !tbaa !1
  %2 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %2, 5760
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp1 = icmp slt i32 %3, 8256
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp2 = icmp sgt i32 %4, 10368
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %5, 11520
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  %6 = load i32, i32* %rs, align 4, !tbaa !1
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %rs, align 4, !tbaa !1
  br label %if.end.69

if.else:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  %7 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp5 = icmp sgt i32 %7, 20544
  br i1 %cmp5, label %land.lhs.true.6, label %if.else.15

land.lhs.true.6:                                  ; preds = %if.else
  %8 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp7 = icmp slt i32 %8, 23104
  br i1 %cmp7, label %if.then.8, label %if.else.15

if.then.8:                                        ; preds = %land.lhs.true.6
  %9 = load i32, i32* %rs, align 4, !tbaa !1
  %dec9 = add nsw i32 %9, -1
  store i32 %dec9, i32* %rs, align 4, !tbaa !1
  %10 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp10 = icmp sgt i32 %10, 21184
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %if.then.8
  %11 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp12 = icmp slt i32 %11, 22464
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true.11
  %12 = load i32, i32* %rs, align 4, !tbaa !1
  %dec14 = add nsw i32 %12, -1
  store i32 %dec14, i32* %rs, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true.11, %if.then.8
  br label %if.end.68

if.else.15:                                       ; preds = %land.lhs.true.6, %if.else
  %13 = load i32, i32* %do_shadows.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %land.lhs.true.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.else.15
  %14 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %15 = load i32, i32* %levels.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %15, 1
  %shl = shl i32 %sub, 16
  %cmp17 = icmp eq i32 %14, %shl
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.24

land.lhs.true.18:                                 ; preds = %lor.lhs.false.16, %if.else.15
  %16 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %17 = load i32, i32* %levels.addr, align 4, !tbaa !1
  %sub19 = sub nsw i32 %17, 1
  %shl20 = shl i32 %sub19, 16
  %sub21 = sub nsw i32 %shl20, 16384
  %cmp22 = icmp sgt i32 %16, %sub21
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.18
  br label %if.end.67

if.else.24:                                       ; preds = %land.lhs.true.18, %lor.lhs.false.16
  %18 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp25 = icmp sgt i32 %18, 49152
  br i1 %cmp25, label %if.then.26, label %if.else.44

if.then.26:                                       ; preds = %if.else.24
  %19 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %add = add nsw i32 %19, 16384
  %and = and i32 %add, -32768
  %20 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %sub27 = sub nsw i32 %20, %and
  store i32 %sub27, i32* %nl.addr, align 4, !tbaa !1
  %21 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp28 = icmp slt i32 %21, 0
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.26
  %22 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %sub30 = sub nsw i32 0, %22
  store i32 %sub30, i32* %nl.addr, align 4, !tbaa !1
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.26
  %23 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp32 = icmp slt i32 %23, 4096
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %24 = load i32, i32* %rs, align 4, !tbaa !1
  %dec34 = add nsw i32 %24, -1
  store i32 %dec34, i32* %rs, align 4, !tbaa !1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  %25 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp36 = icmp slt i32 %25, 2048
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.35
  %26 = load i32, i32* %rs, align 4, !tbaa !1
  %dec38 = add nsw i32 %26, -1
  store i32 %dec38, i32* %rs, align 4, !tbaa !1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.35
  %27 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp40 = icmp slt i32 %27, 1024
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.end.39
  %28 = load i32, i32* %rs, align 4, !tbaa !1
  %dec42 = add nsw i32 %28, -1
  store i32 %dec42, i32* %rs, align 4, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.39
  br label %if.end.66

if.else.44:                                       ; preds = %if.else.24
  %29 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp45 = icmp slt i32 %29, 24576
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.else.44
  %30 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %add47 = add nsw i32 %30, 16384
  store i32 %add47, i32* %nl.addr, align 4, !tbaa !1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.else.44
  %31 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %sub49 = sub nsw i32 %31, 32768
  store i32 %sub49, i32* %nl.addr, align 4, !tbaa !1
  %32 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp50 = icmp slt i32 %32, 0
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.48
  %33 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %sub52 = sub nsw i32 0, %33
  store i32 %sub52, i32* %nl.addr, align 4, !tbaa !1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.48
  %34 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp54 = icmp slt i32 %34, 4096
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.53
  %35 = load i32, i32* %rs, align 4, !tbaa !1
  %dec56 = add nsw i32 %35, -1
  store i32 %dec56, i32* %rs, align 4, !tbaa !1
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.53
  %36 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp58 = icmp slt i32 %36, 2048
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.57
  %37 = load i32, i32* %rs, align 4, !tbaa !1
  %dec60 = add nsw i32 %37, -1
  store i32 %dec60, i32* %rs, align 4, !tbaa !1
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.57
  %38 = load i32, i32* %nl.addr, align 4, !tbaa !1
  %cmp62 = icmp slt i32 %38, 1024
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.61
  %39 = load i32, i32* %rs, align 4, !tbaa !1
  %dec64 = add nsw i32 %39, -1
  store i32 %dec64, i32* %rs, align 4, !tbaa !1
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.43
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.23
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then
  %40 = load i32, i32* %rs, align 4, !tbaa !1
  %41 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret i32 %40
}

; Function Attrs: nounwind
declare i32 @rand() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 72}
!8 = !{!"_EvenBetterCtx", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !2, i64 44, !6, i64 48, !2, i64 56, !2, i64 60, !2, i64 64, !2, i64 68, !6, i64 72, !3, i64 80}
!9 = !{!8, !3, i64 80}
!10 = !{!8, !2, i64 8}
!11 = !{!8, !2, i64 0}
!12 = !{!8, !2, i64 60}
!13 = !{!8, !2, i64 4}
!14 = !{!8, !2, i64 64}
!15 = !{!8, !2, i64 68}
!16 = !{!8, !2, i64 12}
!17 = !{!8, !2, i64 24}
!18 = !{!8, !6, i64 32}
!19 = !{!8, !2, i64 40}
!20 = !{!8, !2, i64 44}
!21 = !{!8, !6, i64 48}
!22 = !{!8, !2, i64 56}
!23 = !{!8, !6, i64 16}
!24 = !{!25, !6, i64 96}
!25 = !{!"_EBPlaneCtx", !2, i64 0, !2, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!26 = !{!3, !3, i64 0}
!27 = !{!25, !6, i64 24}
!28 = !{!25, !6, i64 32}
!29 = !{!25, !6, i64 40}
!30 = !{!25, !6, i64 72}
!31 = !{!25, !6, i64 80}
!32 = !{!25, !6, i64 88}
!33 = !{!34, !35, i64 0}
!34 = !{!"", !35, i64 0, !3, i64 2}
!35 = !{!"short", !3, i64 0}
!36 = !{!34, !3, i64 2}
!37 = !{!25, !6, i64 16}
!38 = !{!39, !2, i64 8}
!39 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12, !6, i64 16, !40, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !2, i64 52, !2, i64 56, !2, i64 60, !6, i64 64, !3, i64 72, !40, i64 80}
!40 = !{!"double", !3, i64 0}
!41 = !{!39, !6, i64 64}
!42 = !{!39, !3, i64 72}
!43 = !{!39, !6, i64 16}
!44 = !{!39, !2, i64 0}
!45 = !{!39, !2, i64 4}
!46 = !{!39, !2, i64 12}
!47 = !{!39, !2, i64 32}
!48 = !{!39, !6, i64 40}
!49 = !{!39, !2, i64 52}
!50 = !{!39, !2, i64 56}
!51 = !{!40, !40, i64 0}
!52 = !{!25, !2, i64 0}
!53 = !{!25, !2, i64 4}
!54 = !{!39, !2, i64 48}
!55 = !{!25, !6, i64 8}
!56 = !{!25, !6, i64 48}
!57 = !{!25, !6, i64 56}
!58 = !{!25, !6, i64 64}
!59 = !{!39, !40, i64 24}
