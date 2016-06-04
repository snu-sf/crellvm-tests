; ModuleID = 'gs.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_s = type { i32, i32, i32, i32, i32, i32, float**, i32***, %struct._IO_FILE*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"gs.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fread failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Reading gaussian selector map: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"The number of mixtures of gaussian: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"The number of features stream: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"The number of density: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"The number of code word: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"The feature length: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"The number of byte to read: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Code idx: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Cannot allocate gs\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"gs_read(%s,rb) failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"No active gaussian found in senone %d, with num. component = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_fread_int32(%struct.gs_s* %gs) #0 {
entry:
  %gs.addr = alloca %struct.gs_s*, align 8
  %val = alloca i32, align 4
  store %struct.gs_s* %gs, %struct.gs_s** %gs.addr, align 8
  %0 = bitcast i32* %val to i8*
  %1 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %fp = getelementptr inbounds %struct.gs_s, %struct.gs_s* %1, i32 0, i32 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %val, align 4
  ret i32 %3
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define float @gs_fread_float32(%struct.gs_s* %gs) #0 {
entry:
  %gs.addr = alloca %struct.gs_s*, align 8
  %val = alloca float, align 4
  store %struct.gs_s* %gs, %struct.gs_s** %gs.addr, align 8
  %0 = bitcast float* %val to i8*
  %1 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %fp = getelementptr inbounds %struct.gs_s, %struct.gs_s* %1, i32 0, i32 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load float, float* %val, align 4
  ret float %3
}

; Function Attrs: nounwind uwtable
define void @gs_fread_bitvec_t(i32* %val, %struct.gs_s* %gs) #0 {
entry:
  %val.addr = alloca i32*, align 8
  %gs.addr = alloca %struct.gs_s*, align 8
  store i32* %val, i32** %val.addr, align 8
  store %struct.gs_s* %gs, %struct.gs_s** %gs.addr, align 8
  %0 = load i32*, i32** %val.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_mbyte = getelementptr inbounds %struct.gs_s, %struct.gs_s* %2, i32 0, i32 5
  %3 = load i32, i32* %n_mbyte, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %fp = getelementptr inbounds %struct.gs_s, %struct.gs_s* %4, i32 0, i32 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i64 @fread(i8* %1, i64 %conv, i64 1, %struct._IO_FILE* %5)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_display(i8* %file, %struct.gs_s* %gs) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %gs.addr = alloca %struct.gs_s*, align 8
  %i = alloca i32, align 4
  %code_id = alloca i32, align 4
  %m_id = alloca i32, align 4
  %s_id = alloca i32, align 4
  %c_id = alloca i32, align 4
  %tmp = alloca float, align 4
  %bv = alloca i32*, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct.gs_s* %gs, %struct.gs_s** %gs.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %0 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* %0)
  %call = call i8* @__ckd_calloc__(i64 1, i64 56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 90)
  %1 = bitcast i8* %call to %struct.gs_s*
  store %struct.gs_s* %1, %struct.gs_s** %gs.addr, align 8
  %2 = load i8*, i8** %file.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %3 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %fp = getelementptr inbounds %struct.gs_s, %struct.gs_s* %3, i32 0, i32 8
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %4 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %call3 = call i32 @gs_fread_int32(%struct.gs_s* %5)
  %6 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_mgau = getelementptr inbounds %struct.gs_s, %struct.gs_s* %6, i32 0, i32 0
  store i32 %call3, i32* %n_mgau, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %7 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_mgau4 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %7, i32 0, i32 0
  %8 = load i32, i32* %n_mgau4, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i32 %8)
  %9 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %call5 = call i32 @gs_fread_int32(%struct.gs_s* %9)
  %10 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_feat = getelementptr inbounds %struct.gs_s, %struct.gs_s* %10, i32 0, i32 1
  store i32 %call5, i32* %n_feat, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %11 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_feat6 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %11, i32 0, i32 1
  %12 = load i32, i32* %n_feat6, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %12)
  %13 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %call7 = call i32 @gs_fread_int32(%struct.gs_s* %13)
  %14 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_density = getelementptr inbounds %struct.gs_s, %struct.gs_s* %14, i32 0, i32 3
  store i32 %call7, i32* %n_density, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %15 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_density8 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %15, i32 0, i32 3
  %16 = load i32, i32* %n_density8, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %16)
  %17 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %call9 = call i32 @gs_fread_int32(%struct.gs_s* %17)
  %18 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_code = getelementptr inbounds %struct.gs_s, %struct.gs_s* %18, i32 0, i32 2
  store i32 %call9, i32* %n_code, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %19 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_code10 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %19, i32 0, i32 2
  %20 = load i32, i32* %n_code10, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i32 %20)
  %21 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %call11 = call i32 @gs_fread_int32(%struct.gs_s* %21)
  %22 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_featlen = getelementptr inbounds %struct.gs_s, %struct.gs_s* %22, i32 0, i32 4
  store i32 %call11, i32* %n_featlen, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %23 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_featlen12 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %23, i32 0, i32 4
  %24 = load i32, i32* %n_featlen12, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 %24)
  %25 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_density13 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %25, i32 0, i32 3
  %26 = load i32, i32* %n_density13, align 4
  %add = add nsw i32 %26, 31
  %shr = ashr i32 %add, 5
  %conv = sext i32 %shr to i64
  %mul = mul i64 %conv, 4
  %conv14 = trunc i64 %mul to i32
  %27 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_mbyte = getelementptr inbounds %struct.gs_s, %struct.gs_s* %27, i32 0, i32 5
  store i32 %conv14, i32* %n_mbyte, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %28 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_mbyte15 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %28, i32 0, i32 5
  %29 = load i32, i32* %n_mbyte15, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i32 %29)
  %30 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_density16 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %30, i32 0, i32 3
  %31 = load i32, i32* %n_density16, align 4
  %add17 = add nsw i32 %31, 31
  %shr18 = ashr i32 %add17, 5
  %conv19 = sext i32 %shr18 to i64
  %call20 = call i8* @__ckd_calloc__(i64 %conv19, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 111)
  %32 = bitcast i8* %call20 to i32*
  store i32* %32, i32** %bv, align 8
  store i32 0, i32* %code_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %if.end
  %33 = load i32, i32* %code_id, align 4
  %34 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_code21 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %34, i32 0, i32 2
  %35 = load i32, i32* %n_code21, align 4
  %cmp22 = icmp slt i32 %33, %35
  br i1 %cmp22, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %code_id, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 %36)
  store i32 0, i32* %c_id, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %for.body
  %37 = load i32, i32* %c_id, align 4
  %38 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_featlen26 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %38, i32 0, i32 4
  %39 = load i32, i32* %n_featlen26, align 4
  %cmp27 = icmp slt i32 %37, %39
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.25
  %40 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %call30 = call float @gs_fread_float32(%struct.gs_s* %40)
  store float %call30, float* %tmp, align 4
  %41 = load float, float* %tmp, align 4
  %conv31 = fpext float %41 to double
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), double %conv31)
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %42 = load i32, i32* %c_id, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %c_id, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %m_id, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.62, %for.end
  %43 = load i32, i32* %m_id, align 4
  %44 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_mgau35 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %44, i32 0, i32 0
  %45 = load i32, i32* %n_mgau35, align 4
  %cmp36 = icmp slt i32 %43, %45
  br i1 %cmp36, label %for.body.38, label %for.end.64

for.body.38:                                      ; preds = %for.cond.34
  store i32 0, i32* %s_id, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.59, %for.body.38
  %46 = load i32, i32* %s_id, align 4
  %47 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_feat40 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %47, i32 0, i32 1
  %48 = load i32, i32* %n_feat40, align 4
  %cmp41 = icmp slt i32 %46, %48
  br i1 %cmp41, label %for.body.43, label %for.end.61

for.body.43:                                      ; preds = %for.cond.39
  %49 = load i32*, i32** %bv, align 8
  %50 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  call void @gs_fread_bitvec_t(i32* %49, %struct.gs_s* %50)
  %51 = load i32, i32* %m_id, align 4
  %52 = load i32, i32* %s_id, align 4
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 %51, i32 %52)
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.55, %for.body.43
  %53 = load i32, i32* %i, align 4
  %54 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_density46 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %54, i32 0, i32 3
  %55 = load i32, i32* %n_density46, align 4
  %cmp47 = icmp slt i32 %53, %55
  br i1 %cmp47, label %for.body.49, label %for.end.57

for.body.49:                                      ; preds = %for.cond.45
  %56 = load i32, i32* %i, align 4
  %shr50 = ashr i32 %56, 5
  %idxprom = sext i32 %shr50 to i64
  %57 = load i32*, i32** %bv, align 8
  %arrayidx = getelementptr inbounds i32, i32* %57, i64 %idxprom
  %58 = load i32, i32* %arrayidx, align 4
  %59 = load i32, i32* %i, align 4
  %and = and i32 %59, 31
  %shl = shl i32 1, %and
  %and51 = and i32 %58, %shl
  %tobool = icmp ne i32 %and51, 0
  br i1 %tobool, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %for.body.49
  %60 = load i32, i32* %i, align 4
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 %60)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %for.body.49
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %61 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %61, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.45

for.end.57:                                       ; preds = %for.cond.45
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.57
  %62 = load i32, i32* %s_id, align 4
  %inc60 = add nsw i32 %62, 1
  store i32 %inc60, i32* %s_id, align 4
  br label %for.cond.39

for.end.61:                                       ; preds = %for.cond.39
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %63 = load i32, i32* %m_id, align 4
  %inc63 = add nsw i32 %63, 1
  store i32 %inc63, i32* %m_id, align 4
  br label %for.cond.34

for.end.64:                                       ; preds = %for.cond.34
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %64 = load i32, i32* %code_id, align 4
  %inc66 = add nsw i32 %64, 1
  store i32 %inc66, i32* %code_id, align 4
  br label %for.cond

for.end.67:                                       ; preds = %for.cond
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %65 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %call69 = call i32 @gs_free(%struct.gs_s* %65)
  ret i32 1
}

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @gs_free(%struct.gs_s* %gs) #0 {
entry:
  %gs.addr = alloca %struct.gs_s*, align 8
  store %struct.gs_s* %gs, %struct.gs_s** %gs.addr, align 8
  %0 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %fp = getelementptr inbounds %struct.gs_s, %struct.gs_s* %0, i32 0, i32 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %1)
  %2 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %3 = bitcast %struct.gs_s* %2 to i8*
  call void @free(i8* %3) #3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define %struct.gs_s* @gs_read(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %code_id = alloca i32, align 4
  %m_id = alloca i32, align 4
  %s_id = alloca i32, align 4
  %c_id = alloca i32, align 4
  %bv = alloca i32*, align 8
  %gs = alloca %struct.gs_s*, align 8
  store i8* %file, i8** %file.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %0 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* %0)
  %call = call i8* @__ckd_calloc__(i64 1, i64 56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 160)
  %1 = bitcast i8* %call to %struct.gs_s*
  store %struct.gs_s* %1, %struct.gs_s** %gs, align 8
  %2 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %cmp = icmp eq %struct.gs_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %file.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %4 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %fp = getelementptr inbounds %struct.gs_s, %struct.gs_s* %4, i32 0, i32 8
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %5 = load i8*, i8** %file.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i8* %5)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %6 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %call5 = call i32 @gs_fread_int32(%struct.gs_s* %6)
  %7 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_mgau = getelementptr inbounds %struct.gs_s, %struct.gs_s* %7, i32 0, i32 0
  store i32 %call5, i32* %n_mgau, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %8 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_mgau6 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %8, i32 0, i32 0
  %9 = load i32, i32* %n_mgau6, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i32 %9)
  %10 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %call7 = call i32 @gs_fread_int32(%struct.gs_s* %10)
  %11 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_feat = getelementptr inbounds %struct.gs_s, %struct.gs_s* %11, i32 0, i32 1
  store i32 %call7, i32* %n_feat, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %12 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_feat8 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %12, i32 0, i32 1
  %13 = load i32, i32* %n_feat8, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %13)
  %14 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %call9 = call i32 @gs_fread_int32(%struct.gs_s* %14)
  %15 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_density = getelementptr inbounds %struct.gs_s, %struct.gs_s* %15, i32 0, i32 3
  store i32 %call9, i32* %n_density, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %16 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_density10 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %16, i32 0, i32 3
  %17 = load i32, i32* %n_density10, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i32 %17)
  %18 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %call11 = call i32 @gs_fread_int32(%struct.gs_s* %18)
  %19 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_code = getelementptr inbounds %struct.gs_s, %struct.gs_s* %19, i32 0, i32 2
  store i32 %call11, i32* %n_code, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %20 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_code12 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %20, i32 0, i32 2
  %21 = load i32, i32* %n_code12, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i32 %21)
  %22 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %call13 = call i32 @gs_fread_int32(%struct.gs_s* %22)
  %23 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_featlen = getelementptr inbounds %struct.gs_s, %struct.gs_s* %23, i32 0, i32 4
  store i32 %call13, i32* %n_featlen, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %24 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_featlen14 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %24, i32 0, i32 4
  %25 = load i32, i32* %n_featlen14, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 %25)
  %26 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_density15 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %26, i32 0, i32 3
  %27 = load i32, i32* %n_density15, align 4
  %add = add nsw i32 %27, 31
  %shr = ashr i32 %add, 5
  %conv = sext i32 %shr to i64
  %mul = mul i64 %conv, 4
  %conv16 = trunc i64 %mul to i32
  %28 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_mbyte = getelementptr inbounds %struct.gs_s, %struct.gs_s* %28, i32 0, i32 5
  store i32 %conv16, i32* %n_mbyte, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %29 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_mbyte17 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %29, i32 0, i32 5
  %30 = load i32, i32* %n_mbyte17, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0), i32 %30)
  %31 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_density18 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %31, i32 0, i32 3
  %32 = load i32, i32* %n_density18, align 4
  %add19 = add nsw i32 %32, 31
  %shr20 = ashr i32 %add19, 5
  %conv21 = sext i32 %shr20 to i64
  %call22 = call i8* @__ckd_calloc__(i64 %conv21, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 183)
  %33 = bitcast i8* %call22 to i32*
  store i32* %33, i32** %bv, align 8
  %34 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_code23 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %34, i32 0, i32 2
  %35 = load i32, i32* %n_code23, align 4
  %36 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_featlen24 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %36, i32 0, i32 4
  %37 = load i32, i32* %n_featlen24, align 4
  %call25 = call i8** @__ckd_calloc_2d__(i32 %35, i32 %37, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 188)
  %38 = bitcast i8** %call25 to float**
  %39 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %codeword = getelementptr inbounds %struct.gs_s, %struct.gs_s* %39, i32 0, i32 6
  store float** %38, float*** %codeword, align 8
  %40 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_mgau26 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %40, i32 0, i32 0
  %41 = load i32, i32* %n_mgau26, align 4
  %42 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_feat27 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %42, i32 0, i32 1
  %43 = load i32, i32* %n_feat27, align 4
  %44 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_code28 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %44, i32 0, i32 2
  %45 = load i32, i32* %n_code28, align 4
  %call29 = call i8*** @__ckd_calloc_3d__(i32 %41, i32 %43, i32 %45, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 191)
  %46 = bitcast i8*** %call29 to i32***
  %47 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %codemap = getelementptr inbounds %struct.gs_s, %struct.gs_s* %47, i32 0, i32 7
  store i32*** %46, i32**** %codemap, align 8
  %48 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_density30 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %48, i32 0, i32 3
  %49 = load i32, i32* %n_density30, align 4
  %add31 = add nsw i32 %49, 1
  %conv32 = sext i32 %add31 to i64
  %call33 = call i8* @__ckd_calloc__(i64 %conv32, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 192)
  %50 = bitcast i8* %call33 to i32*
  %51 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %mgau_sl = getelementptr inbounds %struct.gs_s, %struct.gs_s* %51, i32 0, i32 9
  store i32* %50, i32** %mgau_sl, align 8
  store i32 0, i32* %code_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %if.end.4
  %52 = load i32, i32* %code_id, align 4
  %53 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_code34 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %53, i32 0, i32 2
  %54 = load i32, i32* %n_code34, align 4
  %cmp35 = icmp slt i32 %52, %54
  br i1 %cmp35, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c_id, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %for.body
  %55 = load i32, i32* %c_id, align 4
  %56 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_featlen38 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %56, i32 0, i32 4
  %57 = load i32, i32* %n_featlen38, align 4
  %cmp39 = icmp slt i32 %55, %57
  br i1 %cmp39, label %for.body.41, label %for.end

for.body.41:                                      ; preds = %for.cond.37
  %58 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %call42 = call float @gs_fread_float32(%struct.gs_s* %58)
  %59 = load i32, i32* %c_id, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load i32, i32* %code_id, align 4
  %idxprom43 = sext i32 %60 to i64
  %61 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %codeword44 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %61, i32 0, i32 6
  %62 = load float**, float*** %codeword44, align 8
  %arrayidx = getelementptr inbounds float*, float** %62, i64 %idxprom43
  %63 = load float*, float** %arrayidx, align 8
  %arrayidx45 = getelementptr inbounds float, float* %63, i64 %idxprom
  store float %call42, float* %arrayidx45, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.41
  %64 = load i32, i32* %c_id, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %c_id, align 4
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  store i32 0, i32* %m_id, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.66, %for.end
  %65 = load i32, i32* %m_id, align 4
  %66 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_mgau47 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %66, i32 0, i32 0
  %67 = load i32, i32* %n_mgau47, align 4
  %cmp48 = icmp slt i32 %65, %67
  br i1 %cmp48, label %for.body.50, label %for.end.68

for.body.50:                                      ; preds = %for.cond.46
  store i32 0, i32* %s_id, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.63, %for.body.50
  %68 = load i32, i32* %s_id, align 4
  %69 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %n_feat52 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %69, i32 0, i32 1
  %70 = load i32, i32* %n_feat52, align 4
  %cmp53 = icmp slt i32 %68, %70
  br i1 %cmp53, label %for.body.55, label %for.end.65

for.body.55:                                      ; preds = %for.cond.51
  %71 = load i32*, i32** %bv, align 8
  %72 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  call void @gs_fread_bitvec_t(i32* %71, %struct.gs_s* %72)
  %73 = load i32*, i32** %bv, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %code_id, align 4
  %idxprom56 = sext i32 %75 to i64
  %76 = load i32, i32* %s_id, align 4
  %idxprom57 = sext i32 %76 to i64
  %77 = load i32, i32* %m_id, align 4
  %idxprom58 = sext i32 %77 to i64
  %78 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  %codemap59 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %78, i32 0, i32 7
  %79 = load i32***, i32**** %codemap59, align 8
  %arrayidx60 = getelementptr inbounds i32**, i32*** %79, i64 %idxprom58
  %80 = load i32**, i32*** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i32*, i32** %80, i64 %idxprom57
  %81 = load i32*, i32** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %81, i64 %idxprom56
  store i32 %74, i32* %arrayidx62, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.55
  %82 = load i32, i32* %s_id, align 4
  %inc64 = add nsw i32 %82, 1
  store i32 %inc64, i32* %s_id, align 4
  br label %for.cond.51

for.end.65:                                       ; preds = %for.cond.51
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %83 = load i32, i32* %m_id, align 4
  %inc67 = add nsw i32 %83, 1
  store i32 %inc67, i32* %m_id, align 4
  br label %for.cond.46

for.end.68:                                       ; preds = %for.cond.46
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.68
  %84 = load i32, i32* %code_id, align 4
  %inc70 = add nsw i32 %84, 1
  store i32 %inc70, i32* %code_id, align 4
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  %85 = load %struct.gs_s*, %struct.gs_s** %gs, align 8
  ret %struct.gs_s* %85
}

declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

declare i8*** @__ckd_calloc_3d__(i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gc_compute_closest_cw(%struct.gs_s* %gs, float* %feat) #0 {
entry:
  %gs.addr = alloca %struct.gs_s*, align 8
  %feat.addr = alloca float*, align 8
  %codeid = alloca i32, align 4
  %bst_codeid = alloca i32, align 4
  %diff1 = alloca double, align 8
  %diff2 = alloca double, align 8
  %tmp1 = alloca double, align 8
  %tmp2 = alloca double, align 8
  %min = alloca double, align 8
  %cid = alloca i32, align 4
  %min_density = alloca double, align 8
  store %struct.gs_s* %gs, %struct.gs_s** %gs.addr, align 8
  store float* %feat, float** %feat.addr, align 8
  %call = call double @logs3_to_log(i32 -939524096)
  store double %call, double* %min_density, align 8
  store i32 0, i32* %bst_codeid, align 4
  store double 1.800000e+307, double* %min, align 8
  store i32 0, i32* %codeid, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %0 = load i32, i32* %codeid, align 4
  %1 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_code = getelementptr inbounds %struct.gs_s, %struct.gs_s* %1, i32 0, i32 2
  %2 = load i32, i32* %n_code, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %tmp1, align 8
  store double 0.000000e+00, double* %tmp2, align 8
  store i32 0, i32* %cid, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %cid, align 4
  %4 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %n_featlen = getelementptr inbounds %struct.gs_s, %struct.gs_s* %4, i32 0, i32 4
  %5 = load i32, i32* %n_featlen, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %cid, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load float*, float** %feat.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  %8 = load float, float* %arrayidx, align 4
  %9 = load i32, i32* %cid, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i32, i32* %codeid, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %codeword = getelementptr inbounds %struct.gs_s, %struct.gs_s* %11, i32 0, i32 6
  %12 = load float**, float*** %codeword, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %12, i64 %idxprom5
  %13 = load float*, float** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds float, float* %13, i64 %idxprom4
  %14 = load float, float* %arrayidx7, align 4
  %sub = fsub float %8, %14
  %conv = fpext float %sub to double
  store double %conv, double* %diff1, align 8
  %15 = load double, double* %diff1, align 8
  %16 = load double, double* %diff1, align 8
  %mul = fmul double %15, %16
  %17 = load double, double* %tmp1, align 8
  %add = fadd double %17, %mul
  store double %add, double* %tmp1, align 8
  %18 = load i32, i32* %cid, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load float*, float** %feat.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %19, i64 %idxprom8
  %20 = load float, float* %arrayidx9, align 4
  %21 = load i32, i32* %cid, align 4
  %idxprom10 = sext i32 %21 to i64
  %22 = load i32, i32* %codeid, align 4
  %add11 = add nsw i32 %22, 1
  %idxprom12 = sext i32 %add11 to i64
  %23 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %codeword13 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %23, i32 0, i32 6
  %24 = load float**, float*** %codeword13, align 8
  %arrayidx14 = getelementptr inbounds float*, float** %24, i64 %idxprom12
  %25 = load float*, float** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds float, float* %25, i64 %idxprom10
  %26 = load float, float* %arrayidx15, align 4
  %sub16 = fsub float %20, %26
  %conv17 = fpext float %sub16 to double
  store double %conv17, double* %diff2, align 8
  %27 = load double, double* %diff2, align 8
  %28 = load double, double* %diff2, align 8
  %mul18 = fmul double %27, %28
  %29 = load double, double* %tmp2, align 8
  %add19 = fadd double %29, %mul18
  store double %add19, double* %tmp2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %30 = load i32, i32* %cid, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %cid, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %31 = load double, double* %tmp1, align 8
  %32 = load double, double* %min, align 8
  %cmp20 = fcmp olt double %31, %32
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %33 = load double, double* %tmp1, align 8
  store double %33, double* %min, align 8
  %34 = load i32, i32* %codeid, align 4
  store i32 %34, i32* %bst_codeid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %35 = load double, double* %tmp2, align 8
  %36 = load double, double* %min, align 8
  %cmp22 = fcmp olt double %35, %36
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end
  %37 = load double, double* %tmp2, align 8
  store double %37, double* %min, align 8
  %38 = load i32, i32* %codeid, align 4
  %add25 = add nsw i32 %38, 1
  store i32 %add25, i32* %bst_codeid, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.end
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %39 = load i32, i32* %codeid, align 4
  %add28 = add nsw i32 %39, 2
  store i32 %add28, i32* %codeid, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  %40 = load i32, i32* %bst_codeid, align 4
  ret i32 %40
}

declare double @logs3_to_log(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_mgau_shortlist(%struct.gs_s* %gs, i32 %m, i32 %n, float* %feat, i32 %bst_codeid) #0 {
entry:
  %gs.addr = alloca %struct.gs_s*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %feat.addr = alloca float*, align 8
  %bst_codeid.addr = alloca i32, align 4
  %map = alloca i32, align 4
  %bit_id = alloca i32, align 4
  %nc = alloca i32, align 4
  store %struct.gs_s* %gs, %struct.gs_s** %gs.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %feat, float** %feat.addr, align 8
  store i32 %bst_codeid, i32* %bst_codeid.addr, align 4
  store i32 0, i32* %nc, align 4
  store i32 0, i32* %map, align 4
  %0 = load i32, i32* %bst_codeid.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %m.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %codemap = getelementptr inbounds %struct.gs_s, %struct.gs_s* %2, i32 0, i32 7
  %3 = load i32***, i32**** %codemap, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %3, i64 %idxprom1
  %4 = load i32**, i32*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %4, i64 0
  %5 = load i32*, i32** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx3, align 4
  store i32 %6, i32* %map, align 4
  store i32 0, i32* %bit_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %bit_id, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %map, align 4
  %10 = load i32, i32* %bit_id, align 4
  %shl = shl i32 1, %10
  %and = and i32 %9, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %bit_id, align 4
  %12 = load i32, i32* %nc, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %nc, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %mgau_sl = getelementptr inbounds %struct.gs_s, %struct.gs_s* %13, i32 0, i32 9
  %14 = load i32*, i32** %mgau_sl, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %14, i64 %idxprom4
  store i32 %11, i32* %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %bit_id, align 4
  %inc6 = add nsw i32 %15, 1
  store i32 %inc6, i32* %bit_id, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %nc, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %mgau_sl8 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %17, i32 0, i32 9
  %18 = load i32*, i32** %mgau_sl8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 %idxprom7
  store i32 -1, i32* %arrayidx9, align 4
  %19 = load i32, i32* %nc, align 4
  %cmp10 = icmp eq i32 %19, 0
  br i1 %cmp10, label %if.then.11, label %if.end.25

if.then.11:                                       ; preds = %for.end
  store i32 0, i32* %bit_id, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.19, %if.then.11
  %20 = load i32, i32* %bit_id, align 4
  %21 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp slt i32 %20, %21
  br i1 %cmp13, label %for.body.14, label %for.end.21

for.body.14:                                      ; preds = %for.cond.12
  %22 = load i32, i32* %bit_id, align 4
  %23 = load i32, i32* %nc, align 4
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, i32* %nc, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %mgau_sl17 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %24, i32 0, i32 9
  %25 = load i32*, i32** %mgau_sl17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  store i32 %22, i32* %arrayidx18, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.14
  %26 = load i32, i32* %bit_id, align 4
  %inc20 = add nsw i32 %26, 1
  store i32 %inc20, i32* %bit_id, align 4
  br label %for.cond.12

for.end.21:                                       ; preds = %for.cond.12
  %27 = load i32, i32* %nc, align 4
  %idxprom22 = sext i32 %27 to i64
  %28 = load %struct.gs_s*, %struct.gs_s** %gs.addr, align 8
  %mgau_sl23 = getelementptr inbounds %struct.gs_s, %struct.gs_s* %28, i32 0, i32 9
  %29 = load i32*, i32** %mgau_sl23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i64 %idxprom22
  store i32 -1, i32* %arrayidx24, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %for.end.21, %for.end
  %30 = load i32, i32* %nc, align 4
  %cmp26 = icmp eq i32 %30, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  call void @_E__pr_info_header(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %31 = load i32, i32* %m.addr, align 4
  %32 = load i32, i32* %n.addr, align 4
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0), i32 %31, i32 %32)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  %33 = load i32, i32* %nc, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @gs_delete(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  ret i32 1
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
