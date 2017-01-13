; ModuleID = './MultiSource.Benchmarks.MallocBench/64.gs.gsfont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_font_dir_s = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, i64, %struct.gs_font_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x %struct.cached_char_s*], i8*, i32, %struct.cached_fm_pair_s*, i32, %struct.cached_char_s*, i32 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_dir_s*, i8*, %struct.gs_matrix_s, i32, float, float, float, float, i32, i64, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i8* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_show_enum_s = type opaque
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.device_s = type opaque
%struct.cached_fm_pair_s = type opaque
%struct.cached_char_s = type opaque

@.str = private unnamed_addr constant [20 x i8] c"font_dir_alloc(dir)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"font_dir_alloc(bdata)\00", align 1
@cached_fm_pair_sizeof = external global i32, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"font_dir_alloc(mdata)\00", align 1
@cached_char_sizeof = external global i32, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"font_dir_alloc(cdata)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gs_makefont\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gs_font_dir_s* @gs_font_dir_alloc(i8* (i32, i32, i8*)* %palloc, void (i8*, i32, i32, i8*)* %pfree) #0 {
entry:
  %palloc.addr = alloca i8* (i32, i32, i8*)*, align 8
  %pfree.addr = alloca void (i8*, i32, i32, i8*)*, align 8
  store i8* (i32, i32, i8*)* %palloc, i8* (i32, i32, i8*)** %palloc.addr, align 8
  store void (i8*, i32, i32, i8*)* %pfree, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %0 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %1 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %call = call %struct.gs_font_dir_s* @gs_font_dir_alloc_limits(i8* (i32, i32, i8*)* %0, void (i8*, i32, i32, i8*)* %1, i32 10, i32 20000, i32 20, i32 500, i32 100)
  ret %struct.gs_font_dir_s* %call
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_dir_s* @gs_font_dir_alloc_limits(i8* (i32, i32, i8*)* %palloc, void (i8*, i32, i32, i8*)* %pfree, i32 %smax, i32 %bmax, i32 %mmax, i32 %cmax, i32 %upper) #0 {
entry:
  %retval = alloca %struct.gs_font_dir_s*, align 8
  %palloc.addr = alloca i8* (i32, i32, i8*)*, align 8
  %pfree.addr = alloca void (i8*, i32, i32, i8*)*, align 8
  %smax.addr = alloca i32, align 4
  %bmax.addr = alloca i32, align 4
  %mmax.addr = alloca i32, align 4
  %cmax.addr = alloca i32, align 4
  %upper.addr = alloca i32, align 4
  %pdir = alloca %struct.gs_font_dir_s*, align 8
  %bdata = alloca i8*, align 8
  %mdata = alloca %struct.cached_fm_pair_s*, align 8
  %cdata = alloca %struct.cached_char_s*, align 8
  store i8* (i32, i32, i8*)* %palloc, i8* (i32, i32, i8*)** %palloc.addr, align 8
  store void (i8*, i32, i32, i8*)* %pfree, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  store i32 %smax, i32* %smax.addr, align 4
  store i32 %bmax, i32* %bmax.addr, align 4
  store i32 %mmax, i32* %mmax.addr, align 4
  store i32 %cmax, i32* %cmax.addr, align 4
  store i32 %upper, i32* %upper.addr, align 4
  %0 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %call = call i8* %0(i32 1, i32 1144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %1 = bitcast i8* %call to %struct.gs_font_dir_s*
  store %struct.gs_font_dir_s* %1, %struct.gs_font_dir_s** %pdir, align 8
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %cmp = icmp eq %struct.gs_font_dir_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_font_dir_s* null, %struct.gs_font_dir_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %4 = load i32, i32* %bmax.addr, align 4
  %call1 = call i8* %3(i32 %4, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call1, i8** %bdata, align 8
  %5 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %6 = load i32, i32* %mmax.addr, align 4
  %7 = load i32, i32* @cached_fm_pair_sizeof, align 4
  %call2 = call i8* %5(i32 %6, i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  %8 = bitcast i8* %call2 to %struct.cached_fm_pair_s*
  store %struct.cached_fm_pair_s* %8, %struct.cached_fm_pair_s** %mdata, align 8
  %9 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %10 = load i32, i32* %cmax.addr, align 4
  %11 = load i32, i32* @cached_char_sizeof, align 4
  %call3 = call i8* %9(i32 %10, i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  %12 = bitcast i8* %call3 to %struct.cached_char_s*
  store %struct.cached_char_s* %12, %struct.cached_char_s** %cdata, align 8
  %13 = load i8*, i8** %bdata, align 8
  %cmp4 = icmp eq i8* %13, null
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %14 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8
  %cmp5 = icmp eq %struct.cached_fm_pair_s* %14, null
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %15 = load %struct.cached_char_s*, %struct.cached_char_s** %cdata, align 8
  %cmp7 = icmp eq %struct.cached_char_s* %15, null
  br i1 %cmp7, label %if.then.8, label %if.end.18

if.then.8:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %16 = load %struct.cached_char_s*, %struct.cached_char_s** %cdata, align 8
  %cmp9 = icmp ne %struct.cached_char_s* %16, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  %17 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %18 = load %struct.cached_char_s*, %struct.cached_char_s** %cdata, align 8
  %19 = bitcast %struct.cached_char_s* %18 to i8*
  %20 = load i32, i32* %cmax.addr, align 4
  %21 = load i32, i32* @cached_char_sizeof, align 4
  call void %17(i8* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.8
  %22 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8
  %cmp12 = icmp ne %struct.cached_fm_pair_s* %22, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %23 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %24 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8
  %25 = bitcast %struct.cached_fm_pair_s* %24 to i8*
  %26 = load i32, i32* %mmax.addr, align 4
  %27 = load i32, i32* @cached_fm_pair_sizeof, align 4
  call void %23(i8* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.11
  %28 = load i8*, i8** %bdata, align 8
  %cmp15 = icmp ne i8* %28, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %29 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %30 = load i8*, i8** %bdata, align 8
  %31 = load i32, i32* %bmax.addr, align 4
  call void %29(i8* %30, i32 %31, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %32 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %33 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %34 = bitcast %struct.gs_font_dir_s* %33 to i8*
  call void %32(i8* %34, i32 1, i32 1144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  store %struct.gs_font_dir_s* null, %struct.gs_font_dir_s** %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.6
  %35 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %36 = bitcast %struct.gs_font_dir_s* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 1144, i32 1, i1 false)
  %37 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %palloc.addr, align 8
  %38 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %alloc = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %38, i32 0, i32 0
  store i8* (i32, i32, i8*)* %37, i8* (i32, i32, i8*)** %alloc, align 8
  %39 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %pfree.addr, align 8
  %40 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %free = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %40, i32 0, i32 1
  store void (i8*, i32, i32, i8*)* %39, void (i8*, i32, i32, i8*)** %free, align 8
  %41 = load i32, i32* %smax.addr, align 4
  %42 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %smax19 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %42, i32 0, i32 5
  store i32 %41, i32* %smax19, align 4
  %43 = load i32, i32* %bmax.addr, align 4
  %44 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %bmax20 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %44, i32 0, i32 7
  store i32 %43, i32* %bmax20, align 4
  %45 = load i32, i32* %mmax.addr, align 4
  %46 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %mmax21 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %46, i32 0, i32 9
  store i32 %45, i32* %mmax21, align 4
  %47 = load i32, i32* %cmax.addr, align 4
  %48 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %cmax22 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %48, i32 0, i32 11
  store i32 %47, i32* %cmax22, align 4
  %49 = load i32, i32* %upper.addr, align 4
  %div = udiv i32 %49, 10
  %50 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %lower = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %50, i32 0, i32 12
  store i32 %div, i32* %lower, align 4
  %51 = load i32, i32* %upper.addr, align 4
  %52 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %upper23 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %52, i32 0, i32 13
  store i32 %51, i32* %upper23, align 4
  %53 = load i8*, i8** %bdata, align 8
  %54 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %bdata24 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %54, i32 0, i32 15
  store i8* %53, i8** %bdata24, align 8
  %55 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %mdata, align 8
  %56 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %mdata25 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %56, i32 0, i32 17
  store %struct.cached_fm_pair_s* %55, %struct.cached_fm_pair_s** %mdata25, align 8
  %57 = load %struct.cached_char_s*, %struct.cached_char_s** %cdata, align 8
  %58 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  %cdata26 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %58, i32 0, i32 19
  store %struct.cached_char_s* %57, %struct.cached_char_s** %cdata26, align 8
  %59 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir, align 8
  store %struct.gs_font_dir_s* %59, %struct.gs_font_dir_s** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.end.17, %if.then
  %60 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %retval
  ret %struct.gs_font_dir_s* %60
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gs_scalefont(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont, double %scale, %struct.gs_font_s** %ppfont, %struct.gs_font_s** %pdfont) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %scale.addr = alloca double, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %pdfont.addr = alloca %struct.gs_font_s**, align 8
  %mat = alloca %struct.gs_matrix_s, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8
  store %struct.gs_font_s** %pdfont, %struct.gs_font_s*** %pdfont.addr, align 8
  %0 = load double, double* %scale.addr, align 8
  %1 = load double, double* %scale.addr, align 8
  %call = call i32 @gs_make_scaling(double %0, double %1, %struct.gs_matrix_s* %mat)
  %2 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8
  %4 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8
  %5 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdfont.addr, align 8
  %call1 = call i32 @gs_makefont(%struct.gs_font_dir_s* %2, %struct.gs_font_s* %3, %struct.gs_matrix_s* %mat, %struct.gs_font_s** %4, %struct.gs_font_s** %5)
  ret i32 %call1
}

declare i32 @gs_make_scaling(double, double, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gs_makefont(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont, %struct.gs_matrix_s* %pmat, %struct.gs_font_s** %ppfont, %struct.gs_font_s** %pdfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  %pdfont.addr = alloca %struct.gs_font_s**, align 8
  %code = alloca i32, align 4
  %prev = alloca %struct.gs_font_s*, align 8
  %pf_out = alloca %struct.gs_font_s*, align 8
  %newmat = alloca %struct.gs_matrix_s, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8
  store %struct.gs_font_s** %pdfont, %struct.gs_font_s*** %pdfont.addr, align 8
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev, align 8
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %scaled_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 3
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts, align 8
  store %struct.gs_font_s* %1, %struct.gs_font_s** %pf_out, align 8
  %2 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdfont.addr, align 8
  store %struct.gs_font_s* null, %struct.gs_font_s** %2, align 8
  call void @gs_make_identity(%struct.gs_matrix_s* %newmat)
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8
  %matrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 5
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8
  %call = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %matrix, %struct.gs_matrix_s* %4, %struct.gs_matrix_s* %newmat)
  store i32 %call, i32* %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8
  %unique_id = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 12
  %7 = load i64, i64* %unique_id, align 8
  %cmp1 = icmp ne i64 %7, -1
  br i1 %cmp1, label %if.then.2, label %if.end.27

if.then.2:                                        ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %cmp3 = icmp ne %struct.gs_font_s* %8, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %unique_id4 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 12
  %10 = load i64, i64* %unique_id4, align 8
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8
  %unique_id5 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 12
  %12 = load i64, i64* %unique_id5, align 8
  %cmp6 = icmp eq i64 %10, %12
  br i1 %cmp6, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %font_type = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %13, i32 0, i32 6
  %14 = load i32, i32* %font_type, align 4
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8
  %font_type7 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %15, i32 0, i32 6
  %16 = load i32, i32* %font_type7, align 4
  %cmp8 = icmp eq i32 %14, %16
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.26

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %matrix10 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 5
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix10, i32 0, i32 0
  %18 = load float, float* %xx, align 4
  %xx11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 0
  %19 = load float, float* %xx11, align 4
  %cmp12 = fcmp oeq float %18, %19
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.26

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %matrix14 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 5
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix14, i32 0, i32 2
  %21 = load float, float* %xy, align 4
  %xy15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 2
  %22 = load float, float* %xy15, align 4
  %cmp16 = fcmp oeq float %21, %22
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.26

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %matrix18 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %23, i32 0, i32 5
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix18, i32 0, i32 4
  %24 = load float, float* %yx, align 4
  %yx19 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 4
  %25 = load float, float* %yx19, align 4
  %cmp20 = fcmp oeq float %24, %25
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.26

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %matrix22 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %26, i32 0, i32 5
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix22, i32 0, i32 6
  %27 = load float, float* %yy, align 4
  %yy23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %newmat, i32 0, i32 6
  %28 = load float, float* %yy23, align 4
  %cmp24 = fcmp oeq float %27, %28
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.21
  %29 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %30 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8
  store %struct.gs_font_s* %29, %struct.gs_font_s** %30, align 8
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %31 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  store %struct.gs_font_s* %31, %struct.gs_font_s** %prev, align 8
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %32, i32 0, i32 0
  %33 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8
  store %struct.gs_font_s* %33, %struct.gs_font_s** %pf_out, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.end
  %34 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %alloc = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %34, i32 0, i32 0
  %35 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %alloc, align 8
  %call28 = call i8* %35(i32 1, i32 184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %36 = bitcast i8* %call28 to %struct.gs_font_s*
  store %struct.gs_font_s* %36, %struct.gs_font_s** %pf_out, align 8
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %tobool = icmp ne %struct.gs_font_s* %37, null
  br i1 %tobool, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.27
  store i32 -25, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.27
  %38 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8
  %40 = bitcast %struct.gs_font_s* %38 to i8*
  %41 = bitcast %struct.gs_font_s* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 184, i32 8, i1 false)
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %matrix31 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %42, i32 0, i32 5
  %43 = bitcast %struct.gs_matrix_s* %matrix31 to i8*
  %44 = bitcast %struct.gs_matrix_s* %newmat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 96, i32 8, i1 false)
  %45 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %ssize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %45, i32 0, i32 4
  %46 = load i32, i32* %ssize, align 4
  %47 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %smax = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %47, i32 0, i32 5
  %48 = load i32, i32* %smax, align 4
  %cmp32 = icmp eq i32 %46, %48
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.end.30
  %49 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8
  %tobool34 = icmp ne %struct.gs_font_s* %49, null
  br i1 %tobool34, label %if.end.44, label %if.then.35

if.then.35:                                       ; preds = %if.then.33
  %50 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %scaled_fonts36 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %50, i32 0, i32 3
  %51 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts36, align 8
  store %struct.gs_font_s* %51, %struct.gs_font_s** %prev, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.41, %if.then.35
  %52 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8
  %next38 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %52, i32 0, i32 0
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %next38, align 8
  %cmp39 = icmp ne %struct.gs_font_s* %53, null
  br i1 %cmp39, label %for.body.40, label %for.end.43

for.body.40:                                      ; preds = %for.cond.37
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.40
  %54 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8
  %next42 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %54, i32 0, i32 0
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %next42, align 8
  store %struct.gs_font_s* %55, %struct.gs_font_s** %prev, align 8
  br label %for.cond.37

for.end.43:                                       ; preds = %for.cond.37
  br label %if.end.44

if.end.44:                                        ; preds = %for.end.43, %if.then.33
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8
  %57 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdfont.addr, align 8
  store %struct.gs_font_s* %56, %struct.gs_font_s** %57, align 8
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %prev, align 8
  %prev45 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %58, i32 0, i32 1
  %59 = load %struct.gs_font_s*, %struct.gs_font_s** %prev45, align 8
  %next46 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %59, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %next46, align 8
  br label %if.end.48

if.else:                                          ; preds = %if.end.30
  %60 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %ssize47 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %60, i32 0, i32 4
  %61 = load i32, i32* %ssize47, align 4
  %inc = add i32 %61, 1
  store i32 %inc, i32* %ssize47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.end.44
  %62 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %scaled_fonts49 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %62, i32 0, i32 3
  %63 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts49, align 8
  %64 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %next50 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %64, i32 0, i32 0
  store %struct.gs_font_s* %63, %struct.gs_font_s** %next50, align 8
  %cmp51 = icmp ne %struct.gs_font_s* %63, null
  br i1 %cmp51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.48
  %65 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %66 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %scaled_fonts53 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %66, i32 0, i32 3
  %67 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_fonts53, align 8
  %prev54 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %67, i32 0, i32 1
  store %struct.gs_font_s* %65, %struct.gs_font_s** %prev54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.end.48
  %68 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %prev56 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %68, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %prev56, align 8
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %70 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %scaled_fonts57 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %70, i32 0, i32 3
  store %struct.gs_font_s* %69, %struct.gs_font_s** %scaled_fonts57, align 8
  %71 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8
  %base = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %71, i32 0, i32 2
  %72 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8
  %73 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %base58 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %73, i32 0, i32 2
  store %struct.gs_font_s* %72, %struct.gs_font_s** %base58, align 8
  %74 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %75 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %75, i32 0, i32 3
  store %struct.gs_font_dir_s* %74, %struct.gs_font_dir_s** %dir, align 8
  %76 = load %struct.gs_font_s*, %struct.gs_font_s** %pf_out, align 8
  %77 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8
  store %struct.gs_font_s* %76, %struct.gs_font_s** %77, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.29, %if.then.25, %if.then
  %78 = load i32, i32* %retval
  ret i32 %78
}

declare void @gs_make_identity(%struct.gs_matrix_s*) #2

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setfont(%struct.gs_state_s* %pgs, %struct.gs_font_s* %pfont) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 16
  store %struct.gs_font_s* %0, %struct.gs_font_s** %font, align 8
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %char_tm_valid = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %2, i32 0, i32 18
  store i32 0, i32* %char_tm_valid, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %pgs) #0 {
entry:
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  %0 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8
  %font = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i32 0, i32 16
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8
  ret %struct.gs_font_s* %1
}

; Function Attrs: nounwind uwtable
define void @gs_cachestatus(%struct.gs_font_dir_s* %pdir, i32* %pstat) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pstat.addr = alloca i32*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8
  store i32* %pstat, i32** %pstat.addr, align 8
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %bsize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 6
  %1 = load i32, i32* %bsize, align 4
  %2 = load i32*, i32** %pstat.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 %1, i32* %arrayidx, align 4
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %bmax = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %3, i32 0, i32 7
  %4 = load i32, i32* %bmax, align 4
  %5 = load i32*, i32** %pstat.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 %4, i32* %arrayidx1, align 4
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %msize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %6, i32 0, i32 8
  %7 = load i32, i32* %msize, align 4
  %8 = load i32*, i32** %pstat.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %8, i64 2
  store i32 %7, i32* %arrayidx2, align 4
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %mmax = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %9, i32 0, i32 9
  %10 = load i32, i32* %mmax, align 4
  %11 = load i32*, i32** %pstat.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 3
  store i32 %10, i32* %arrayidx3, align 4
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %csize = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 10
  %13 = load i32, i32* %csize, align 4
  %14 = load i32*, i32** %pstat.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %14, i64 4
  store i32 %13, i32* %arrayidx4, align 4
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %cmax = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 11
  %16 = load i32, i32* %cmax, align 4
  %17 = load i32*, i32** %pstat.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %17, i64 5
  store i32 %16, i32* %arrayidx5, align 4
  %18 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %upper = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %18, i32 0, i32 13
  %19 = load i32, i32* %upper, align 4
  %20 = load i32*, i32** %pstat.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %20, i64 6
  store i32 %19, i32* %arrayidx6, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcachelimit(%struct.gs_font_dir_s* %pdir, i32 %size) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %upper = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 13
  store i32 %0, i32* %upper, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcachelower(%struct.gs_font_dir_s* %pdir, i32 %size) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %lower = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 12
  store i32 %0, i32* %lower, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcacheupper(%struct.gs_font_dir_s* %pdir, i32 %size) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %upper = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 13
  store i32 %0, i32* %upper, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentcachelower(%struct.gs_font_dir_s* %pdir) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %lower = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 12
  %1 = load i32, i32* %lower, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_currentcacheupper(%struct.gs_font_dir_s* %pdir) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8
  %upper = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i32 0, i32 13
  %1 = load i32, i32* %upper, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @gs_no_build_char_proc(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, %struct.gs_font_s* %pfont, i32 %chr, i8* %data) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8
  store i32 %chr, i32* %chr.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
