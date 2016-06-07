; ModuleID = 'tmat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmat_t = type { i32***, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"TMAT %d = %d x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %12d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tmat.c\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Reading HMM transition probability matrices: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"SYSTEM_ERROR\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"bio_readhdr(%s) failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Version mismatch(%s): %s, expecting %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"chksum0\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"bio_fread(%s) (arraysize) failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"%s: #tmat (%d) exceeds limit (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"%s: #from-states(%d) != #to-states(%d)-1\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"%s: #float32s(%d) doesn't match dimensions: %d x %d x %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"fread(%s) (arraydata) failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Non-empty file beyond end of data\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Read %d transition matrices of size %dx%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Tmat not upper triangular\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @tmat_dump(%struct.tmat_t* %tmat, %struct._IO_FILE* %fp) #0 {
entry:
  %tmat.addr = alloca %struct.tmat_t*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %src = alloca i32, align 4
  %dst = alloca i32, align 4
  store %struct.tmat_t* %tmat, %struct.tmat_t** %tmat.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_tmat = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %1, i32 0, i32 1
  %2 = load i32, i32* %n_tmat, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_state = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %5, i32 0, i32 2
  %6 = load i32, i32* %n_state, align 4
  %7 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_state1 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %7, i32 0, i32 2
  %8 = load i32, i32* %n_state1, align 4
  %add = add nsw i32 %8, 1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 %4, i32 %6, i32 %add)
  store i32 0, i32* %src, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.16, %for.body
  %9 = load i32, i32* %src, align 4
  %10 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_state3 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %10, i32 0, i32 2
  %11 = load i32, i32* %n_state3, align 4
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body.5, label %for.end.18

for.body.5:                                       ; preds = %for.cond.2
  store i32 0, i32* %dst, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.5
  %12 = load i32, i32* %dst, align 4
  %13 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_state7 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %13, i32 0, i32 2
  %14 = load i32, i32* %n_state7, align 4
  %cmp8 = icmp sle i32 %12, %14
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %16 = load i32, i32* %dst, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i32, i32* %src, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %tp = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %19, i32 0, i32 0
  %20 = load i32***, i32**** %tp, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %20, i64 %idxprom11
  %21 = load i32**, i32*** %arrayidx, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %21, i64 %idxprom10
  %22 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %22, i64 %idxprom
  %23 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %24 = load i32, i32* %dst, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %dst, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %26 = load i32, i32* %src, align 4
  %inc17 = add nsw i32 %26, 1
  store i32 %inc17, i32* %src, align 4
  br label %for.cond.2

for.end.18:                                       ; preds = %for.cond.2
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.18
  %28 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %28, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 @fflush(%struct._IO_FILE* %29)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @tmat_chk_uppertri(%struct.tmat_t* %tmat) #0 {
entry:
  %retval = alloca i32, align 4
  %tmat.addr = alloca %struct.tmat_t*, align 8
  %i = alloca i32, align 4
  %src = alloca i32, align 4
  %dst = alloca i32, align 4
  store %struct.tmat_t* %tmat, %struct.tmat_t** %tmat.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_tmat = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %1, i32 0, i32 1
  %2 = load i32, i32* %n_tmat, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dst, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.13, %for.body
  %3 = load i32, i32* %dst, align 4
  %4 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_state = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %4, i32 0, i32 2
  %5 = load i32, i32* %n_state, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body.3, label %for.end.15

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %dst, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %src, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %7 = load i32, i32* %src, align 4
  %8 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_state5 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %8, i32 0, i32 2
  %9 = load i32, i32* %n_state5, align 4
  %cmp6 = icmp slt i32 %7, %9
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %dst, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %src, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %tp = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %13, i32 0, i32 0
  %14 = load i32***, i32**** %tp, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %14, i64 %idxprom9
  %15 = load i32**, i32*** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %15, i64 %idxprom8
  %16 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp sgt i32 %17, -939524096
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %src, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %src, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %19 = load i32, i32* %dst, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %dst, align 4
  br label %for.cond.1

for.end.15:                                       ; preds = %for.cond.1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end.15
  %20 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.18, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @tmat_chk_1skip(%struct.tmat_t* %tmat) #0 {
entry:
  %retval = alloca i32, align 4
  %tmat.addr = alloca %struct.tmat_t*, align 8
  %i = alloca i32, align 4
  %src = alloca i32, align 4
  %dst = alloca i32, align 4
  store %struct.tmat_t* %tmat, %struct.tmat_t** %tmat.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_tmat = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %1, i32 0, i32 1
  %2 = load i32, i32* %n_tmat, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %src, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.13, %for.body
  %3 = load i32, i32* %src, align 4
  %4 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_state = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %4, i32 0, i32 2
  %5 = load i32, i32* %n_state, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body.3, label %for.end.15

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %src, align 4
  %add = add nsw i32 %6, 3
  store i32 %add, i32* %dst, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %7 = load i32, i32* %dst, align 4
  %8 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %n_state5 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %8, i32 0, i32 2
  %9 = load i32, i32* %n_state5, align 4
  %cmp6 = icmp sle i32 %7, %9
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %dst, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %src, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.tmat_t*, %struct.tmat_t** %tmat.addr, align 8
  %tp = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %13, i32 0, i32 0
  %14 = load i32***, i32**** %tp, align 8
  %arrayidx = getelementptr inbounds i32**, i32*** %14, i64 %idxprom9
  %15 = load i32**, i32*** %arrayidx, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %15, i64 %idxprom8
  %16 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp sgt i32 %17, -939524096
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %dst, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %dst, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %19 = load i32, i32* %src, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %src, align 4
  br label %for.cond.1

for.end.15:                                       ; preds = %for.cond.1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end.15
  %20 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.18, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define %struct.tmat_t* @tmat_init(i8* %file_name, double %tpfloor) #0 {
entry:
  %file_name.addr = alloca i8*, align 8
  %tpfloor.addr = alloca double, align 8
  %tmp = alloca i8, align 1
  %n_src = alloca i32, align 4
  %n_dst = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %byteswap = alloca i32, align 4
  %chksum_present = alloca i32, align 4
  %chksum = alloca i32, align 4
  %tp = alloca float**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tp_per_tmat = alloca i32, align 4
  %argname = alloca i8**, align 8
  %argval = alloca i8**, align 8
  %t = alloca %struct.tmat_t*, align 8
  store i8* %file_name, i8** %file_name.addr, align 8
  store double %tpfloor, double* %tpfloor.addr, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %0 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), i8* %0)
  %call = call i8* @__ckd_calloc__(i64 1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 137)
  %1 = bitcast i8* %call to %struct.tmat_t*
  store %struct.tmat_t* %1, %struct.tmat_t** %t, align 8
  %2 = load i8*, i8** %file_name.addr, align 8
  %call15 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call15, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0))
  %3 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__fatal_sys_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 @bio_readhdr(%struct._IO_FILE* %4, i8*** %argname, i8*** %argval, i32* %byteswap)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %5 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* %5)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end
  store i32 0, i32* %chksum_present, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8**, i8*** %argname, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %9 to i64
  %10 = load i8**, i8*** %argname, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %10, i64 %idxprom20
  %11 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #3
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argval, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %13, i64 %idxprom25
  %14 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #3
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.then.24
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  %15 = load i8*, i8** %file_name.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %16 to i64
  %17 = load i8**, i8*** %argval, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %17, i64 %idxprom30
  %18 = load i8*, i8** %arrayidx31, align 8
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0), i8* %15, i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.then.24
  br label %if.end.39

if.else:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %19 to i64
  %20 = load i8**, i8*** %argname, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %20, i64 %idxprom33
  %21 = load i8*, i8** %arrayidx34, align 8
  %call35 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #3
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else
  store i32 1, i32* %chksum_present, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8**, i8*** %argname, align 8
  %24 = load i8**, i8*** %argval, align 8
  call void @bio_hdrarg_free(i8** %23, i8** %24)
  store i8** null, i8*** %argval, align 8
  store i8** null, i8*** %argname, align 8
  store i32 0, i32* %chksum, align 4
  %25 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_tmat = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %25, i32 0, i32 1
  %26 = bitcast i32* %n_tmat to i8*
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %28 = load i32, i32* %byteswap, align 4
  %call40 = call i32 @bio_fread(i8* %26, i32 4, i32 1, %struct._IO_FILE* %27, i32 %28, i32* %chksum)
  %cmp41 = icmp ne i32 %call40, 1
  br i1 %cmp41, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %29 = bitcast i32* %n_src to i8*
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %31 = load i32, i32* %byteswap, align 4
  %call42 = call i32 @bio_fread(i8* %29, i32 4, i32 1, %struct._IO_FILE* %30, i32 %31, i32* %chksum)
  %cmp43 = icmp ne i32 %call42, 1
  br i1 %cmp43, label %if.then.50, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false
  %32 = bitcast i32* %n_dst to i8*
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %34 = load i32, i32* %byteswap, align 4
  %call45 = call i32 @bio_fread(i8* %32, i32 4, i32 1, %struct._IO_FILE* %33, i32 %34, i32* %chksum)
  %cmp46 = icmp ne i32 %call45, 1
  br i1 %cmp46, label %if.then.50, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.44
  %35 = bitcast i32* %i to i8*
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %37 = load i32, i32* %byteswap, align 4
  %call48 = call i32 @bio_fread(i8* %35, i32 4, i32 1, %struct._IO_FILE* %36, i32 %37, i32* %chksum)
  %cmp49 = icmp ne i32 %call48, 1
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false.44, %lor.lhs.false, %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %38 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i32 0, i32 0), i8* %38)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %lor.lhs.false.47
  %39 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_tmat52 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %39, i32 0, i32 1
  %40 = load i32, i32* %n_tmat52, align 4
  %cmp53 = icmp sge i32 %40, 2147483646
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.end.51
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %41 = load i8*, i8** %file_name.addr, align 8
  %42 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_tmat55 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %42, i32 0, i32 1
  %43 = load i32, i32* %n_tmat55, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i8* %41, i32 %43, i32 2147483646)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.end.51
  %44 = load i32, i32* %n_dst, align 4
  %45 = load i32, i32* %n_src, align 4
  %add = add nsw i32 %45, 1
  %cmp57 = icmp ne i32 %44, %add
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %46 = load i8*, i8** %file_name.addr, align 8
  %47 = load i32, i32* %n_src, align 4
  %48 = load i32, i32* %n_dst, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0), i8* %46, i32 %47, i32 %48)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.56
  %49 = load i32, i32* %n_src, align 4
  %50 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_state = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %50, i32 0, i32 2
  store i32 %49, i32* %n_state, align 4
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_tmat60 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %52, i32 0, i32 1
  %53 = load i32, i32* %n_tmat60, align 4
  %54 = load i32, i32* %n_src, align 4
  %mul = mul nsw i32 %53, %54
  %55 = load i32, i32* %n_dst, align 4
  %mul61 = mul nsw i32 %mul, %55
  %cmp62 = icmp ne i32 %51, %mul61
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.59
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %56 = load i8*, i8** %file_name.addr, align 8
  %57 = load i32, i32* %i, align 4
  %58 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_tmat64 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %58, i32 0, i32 1
  %59 = load i32, i32* %n_tmat64, align 4
  %60 = load i32, i32* %n_src, align 4
  %61 = load i32, i32* %n_dst, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i32 0, i32 0), i8* %56, i32 %57, i32 %59, i32 %60, i32 %61)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.59
  %62 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_tmat66 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %62, i32 0, i32 1
  %63 = load i32, i32* %n_tmat66, align 4
  %64 = load i32, i32* %n_src, align 4
  %65 = load i32, i32* %n_dst, align 4
  %call67 = call i8*** @__ckd_calloc_3d__(i32 %63, i32 %64, i32 %65, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 181)
  %66 = bitcast i8*** %call67 to i32***
  %67 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %tp68 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %67, i32 0, i32 0
  store i32*** %66, i32**** %tp68, align 8
  %68 = load i32, i32* %n_src, align 4
  %69 = load i32, i32* %n_dst, align 4
  %call69 = call i8** @__ckd_calloc_2d__(i32 %68, i32 %69, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 184)
  %70 = bitcast i8** %call69 to float**
  store float** %70, float*** %tp, align 8
  %71 = load i32, i32* %n_src, align 4
  %72 = load i32, i32* %n_dst, align 4
  %mul70 = mul nsw i32 %71, %72
  store i32 %mul70, i32* %tp_per_tmat, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.116, %if.end.65
  %73 = load i32, i32* %i, align 4
  %74 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_tmat72 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %74, i32 0, i32 1
  %75 = load i32, i32* %n_tmat72, align 4
  %cmp73 = icmp slt i32 %73, %75
  br i1 %cmp73, label %for.body.74, label %for.end.118

for.body.74:                                      ; preds = %for.cond.71
  %76 = load float**, float*** %tp, align 8
  %arrayidx75 = getelementptr inbounds float*, float** %76, i64 0
  %77 = load float*, float** %arrayidx75, align 8
  %78 = bitcast float* %77 to i8*
  %79 = load i32, i32* %tp_per_tmat, align 4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %81 = load i32, i32* %byteswap, align 4
  %call76 = call i32 @bio_fread(i8* %78, i32 4, i32 %79, %struct._IO_FILE* %80, i32 %81, i32* %chksum)
  %82 = load i32, i32* %tp_per_tmat, align 4
  %cmp77 = icmp ne i32 %call76, %82
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.body.74
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  %83 = load i8*, i8** %file_name.addr, align 8
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0), i8* %83)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %for.body.74
  store i32 0, i32* %j, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.113, %if.end.79
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %n_src, align 4
  %cmp81 = icmp slt i32 %84, %85
  br i1 %cmp81, label %for.body.82, label %for.end.115

for.body.82:                                      ; preds = %for.cond.80
  %86 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %86 to i64
  %87 = load float**, float*** %tp, align 8
  %arrayidx84 = getelementptr inbounds float*, float** %87, i64 %idxprom83
  %88 = load float*, float** %arrayidx84, align 8
  %89 = load i32, i32* %n_dst, align 4
  %90 = load double, double* %tpfloor.addr, align 8
  call void @vector_nz_floor(float* %88, i32 %89, double %90)
  %91 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %91 to i64
  %92 = load float**, float*** %tp, align 8
  %arrayidx86 = getelementptr inbounds float*, float** %92, i64 %idxprom85
  %93 = load float*, float** %arrayidx86, align 8
  %94 = load i32, i32* %n_dst, align 4
  %call87 = call double @vector_sum_norm(float* %93, i32 %94)
  store i32 0, i32* %k, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.110, %for.body.82
  %95 = load i32, i32* %k, align 4
  %96 = load i32, i32* %n_dst, align 4
  %cmp89 = icmp slt i32 %95, %96
  br i1 %cmp89, label %for.body.90, label %for.end.112

for.body.90:                                      ; preds = %for.cond.88
  %97 = load i32, i32* %k, align 4
  %idxprom91 = sext i32 %97 to i64
  %98 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %98 to i64
  %99 = load float**, float*** %tp, align 8
  %arrayidx93 = getelementptr inbounds float*, float** %99, i64 %idxprom92
  %100 = load float*, float** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds float, float* %100, i64 %idxprom91
  %101 = load float, float* %arrayidx94, align 4
  %conv = fpext float %101 to double
  %cmp95 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.90
  br label %cond.end

cond.false:                                       ; preds = %for.body.90
  %102 = load i32, i32* %k, align 4
  %idxprom97 = sext i32 %102 to i64
  %103 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %103 to i64
  %104 = load float**, float*** %tp, align 8
  %arrayidx99 = getelementptr inbounds float*, float** %104, i64 %idxprom98
  %105 = load float*, float** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds float, float* %105, i64 %idxprom97
  %106 = load float, float* %arrayidx100, align 4
  %conv101 = fpext float %106 to double
  %call102 = call i32 @logs3(double %conv101)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -939524096, %cond.true ], [ %call102, %cond.false ]
  %107 = load i32, i32* %k, align 4
  %idxprom103 = sext i32 %107 to i64
  %108 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %108 to i64
  %109 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %109 to i64
  %110 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %tp106 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %110, i32 0, i32 0
  %111 = load i32***, i32**** %tp106, align 8
  %arrayidx107 = getelementptr inbounds i32**, i32*** %111, i64 %idxprom105
  %112 = load i32**, i32*** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32*, i32** %112, i64 %idxprom104
  %113 = load i32*, i32** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %113, i64 %idxprom103
  store i32 %cond, i32* %arrayidx109, align 4
  br label %for.inc.110

for.inc.110:                                      ; preds = %cond.end
  %114 = load i32, i32* %k, align 4
  %inc111 = add nsw i32 %114, 1
  store i32 %inc111, i32* %k, align 4
  br label %for.cond.88

for.end.112:                                      ; preds = %for.cond.88
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.end.112
  %115 = load i32, i32* %j, align 4
  %inc114 = add nsw i32 %115, 1
  store i32 %inc114, i32* %j, align 4
  br label %for.cond.80

for.end.115:                                      ; preds = %for.cond.80
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end.115
  %116 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %116, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.71

for.end.118:                                      ; preds = %for.cond.71
  %117 = load float**, float*** %tp, align 8
  %118 = bitcast float** %117 to i8**
  call void @ckd_free_2d(i8** %118)
  %119 = load i32, i32* %chksum_present, align 4
  %tobool119 = icmp ne i32 %119, 0
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %for.end.118
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %121 = load i32, i32* %byteswap, align 4
  %122 = load i32, i32* %chksum, align 4
  call void @bio_verify_chksum(%struct._IO_FILE* %120, i32 %121, i32 %122)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %for.end.118
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call122 = call i64 @fread(i8* %tmp, i64 1, i64 1, %struct._IO_FILE* %123)
  %cmp123 = icmp eq i64 %call122, 1
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.121
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0))
  call void (i8*, ...) @_E__pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end.121
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call127 = call i32 @fclose(%struct._IO_FILE* %124)
  call void @_E__pr_info_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  %125 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_tmat128 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %125, i32 0, i32 1
  %126 = load i32, i32* %n_tmat128, align 4
  %127 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_state129 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %127, i32 0, i32 2
  %128 = load i32, i32* %n_state129, align 4
  %129 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %n_state130 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %129, i32 0, i32 2
  %130 = load i32, i32* %n_state130, align 4
  %add131 = add nsw i32 %130, 1
  call void (i8*, ...) @_E__pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0), i32 %126, i32 %128, i32 %add131)
  %131 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  %call132 = call i32 @tmat_chk_uppertri(%struct.tmat_t* %131)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.126
  call void @_E__pr_header(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 221, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0))
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.end.126
  %132 = load %struct.tmat_t*, %struct.tmat_t** %t, align 8
  ret %struct.tmat_t* %132
}

declare void @_E__pr_info_header(i8*, i64, i8*) #1

declare void @_E__pr_info(i8*, ...) #1

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @_E__pr_header(i8*, i64, i8*) #1

declare void @_E__fatal_sys_error(i8*, ...) #1

declare i32 @bio_readhdr(%struct._IO_FILE*, i8***, i8***, i32*) #1

declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @_E__pr_warn(i8*, ...) #1

declare void @bio_hdrarg_free(i8**, i8**) #1

declare i32 @bio_fread(i8*, i32, i32, %struct._IO_FILE*, i32, i32*) #1

declare i8*** @__ckd_calloc_3d__(i32, i32, i32, i32, i8*, i32) #1

declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #1

declare void @vector_nz_floor(float*, i32, double) #1

declare double @vector_sum_norm(float*, i32) #1

declare i32 @logs3(double) #1

declare void @ckd_free_2d(i8**) #1

declare void @bio_verify_chksum(%struct._IO_FILE*, i32, i32) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @tmat_free(%struct.tmat_t* %t) #0 {
entry:
  %t.addr = alloca %struct.tmat_t*, align 8
  store %struct.tmat_t* %t, %struct.tmat_t** %t.addr, align 8
  %0 = load %struct.tmat_t*, %struct.tmat_t** %t.addr, align 8
  %tobool = icmp ne %struct.tmat_t* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = load %struct.tmat_t*, %struct.tmat_t** %t.addr, align 8
  %tp = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %1, i32 0, i32 0
  %2 = load i32***, i32**** %tp, align 8
  %tobool1 = icmp ne i32*** %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.tmat_t*, %struct.tmat_t** %t.addr, align 8
  %tp3 = getelementptr inbounds %struct.tmat_t, %struct.tmat_t* %3, i32 0, i32 0
  %4 = load i32***, i32**** %tp3, align 8
  %5 = bitcast i32*** %4 to i8***
  call void @ckd_free_3d(i8*** %5)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %6 = load %struct.tmat_t*, %struct.tmat_t** %t.addr, align 8
  %7 = bitcast %struct.tmat_t* %6 to i8*
  call void @ckd_free(i8* %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  ret void
}

declare void @ckd_free_3d(i8***) #1

declare void @ckd_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
