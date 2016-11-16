; ModuleID = './image.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.opj_image = type { i32, i32, i32, i32, i32, i32, %struct.opj_image_comp*, i8*, i32 }
%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i16 }
%struct.opj_image_comptparm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_cp = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, %struct.opj_tcp*, %union.anon, i8 }
%struct.opj_tcp = type { i32, i32, i32, i32, i32, [100 x float], i32, [32 x %struct.opj_poc], i8*, i8*, i32, i32, [100 x float], %struct.opj_tccp*, i32, i8*, i32, double*, float*, float*, %struct.opj_mct_data*, i32, i32, %struct.opj_simple_mcc_decorrelation_data*, i32, i32, i8 }
%struct.opj_poc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.opj_tccp = type { i32, i32, i32, i32, i32, i32, i32, [97 x %struct.opj_stepsize], i32, i32, [33 x i32], [33 x i32], i32 }
%struct.opj_stepsize = type { i32, i32 }
%struct.opj_mct_data = type { i32, i32, i32, i8*, i32 }
%struct.opj_simple_mcc_decorrelation_data = type { i32, i32, %struct.opj_mct_data*, %struct.opj_mct_data*, i8 }
%union.anon = type { %struct.opj_encoding_param }
%struct.opj_encoding_param = type { i32, i32, i32, i32*, i8, i8 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for image.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"p_image_src != 00\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"./openjpeg/libopenjpeg/image.c\00", align 1
@__PRETTY_FUNCTION__.opj_copy_image_header = private unnamed_addr constant [63 x i8] c"void opj_copy_image_header(const opj_image_t *, opj_image_t *)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"p_image_dest != 00\00", align 1

; Function Attrs: nounwind uwtable
define %struct.opj_image* @opj_image_create0() #0 {
entry:
  %image = alloca %struct.opj_image*, align 8
  %0 = bitcast %struct.opj_image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @calloc(i64 1, i64 48) #6
  %1 = bitcast i8* %call to %struct.opj_image*
  store %struct.opj_image* %1, %struct.opj_image** %image, align 8, !tbaa !1
  %2 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %3 = bitcast %struct.opj_image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #1
  ret %struct.opj_image* %2
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.opj_image* @opj_image_create(i32 %numcmpts, %struct.opj_image_comptparm* %cmptparms, i32 %clrspc) #0 {
entry:
  %retval = alloca %struct.opj_image*, align 8
  %numcmpts.addr = alloca i32, align 4
  %cmptparms.addr = alloca %struct.opj_image_comptparm*, align 8
  %clrspc.addr = alloca i32, align 4
  %compno = alloca i32, align 4
  %image = alloca %struct.opj_image*, align 8
  %cleanup.dest.slot = alloca i32
  %comp = alloca %struct.opj_image_comp*, align 8
  store i32 %numcmpts, i32* %numcmpts.addr, align 4, !tbaa !5
  store %struct.opj_image_comptparm* %cmptparms, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  store i32 %clrspc, i32* %clrspc.addr, align 4, !tbaa !7
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_image* null, %struct.opj_image** %image, align 8, !tbaa !1
  %call = call noalias i8* @calloc(i64 1, i64 48) #6
  %2 = bitcast i8* %call to %struct.opj_image*
  store %struct.opj_image* %2, %struct.opj_image** %image, align 8, !tbaa !1
  %3 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_image* %3, null
  br i1 %tobool, label %if.then, label %if.end.67

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %clrspc.addr, align 4, !tbaa !7
  %5 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.opj_image, %struct.opj_image* %5, i32 0, i32 5
  store i32 %4, i32* %color_space, align 4, !tbaa !8
  %6 = load i32, i32* %numcmpts.addr, align 4, !tbaa !5
  %7 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %7, i32 0, i32 4
  store i32 %6, i32* %numcomps, align 4, !tbaa !10
  %8 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %numcomps1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %8, i32 0, i32 4
  %9 = load i32, i32* %numcomps1, align 4, !tbaa !10
  %conv = zext i32 %9 to i64
  %mul = mul i64 %conv, 64
  %cmp = icmp uge i64 %mul, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %numcomps3 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %10, i32 0, i32 4
  %11 = load i32, i32* %numcomps3, align 4, !tbaa !10
  %conv4 = zext i32 %11 to i64
  %mul5 = mul i64 %conv4, 64
  %call6 = call noalias i8* @malloc(i64 %mul5) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call6, %cond.false ]
  %12 = bitcast i8* %cond to %struct.opj_image_comp*
  %13 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %13, i32 0, i32 6
  store %struct.opj_image_comp* %12, %struct.opj_image_comp** %comps, align 8, !tbaa !11
  %14 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %comps7 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %14, i32 0, i32 6
  %15 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps7, align 8, !tbaa !11
  %tobool8 = icmp ne %struct.opj_image_comp* %15, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %cond.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0)) #7
  %17 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  call void @opj_image_destroy(%struct.opj_image* %17) #7
  store %struct.opj_image* null, %struct.opj_image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %compno, align 4, !tbaa !5
  %19 = load i32, i32* %numcmpts.addr, align 4, !tbaa !5
  %cmp11 = icmp ult i32 %18, %19
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = bitcast %struct.opj_image_comp** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom = zext i32 %21 to i64
  %22 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %comps13 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %22, i32 0, i32 6
  %23 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps13, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %23, i64 %idxprom
  store %struct.opj_image_comp* %arrayidx, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %24 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom14 = zext i32 %24 to i64
  %25 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %25, i64 %idxprom14
  %dx = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx15, i32 0, i32 0
  %26 = load i32, i32* %dx, align 4, !tbaa !12
  %27 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %dx16 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %27, i32 0, i32 0
  store i32 %26, i32* %dx16, align 4, !tbaa !14
  %28 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom17 = zext i32 %28 to i64
  %29 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %29, i64 %idxprom17
  %dy = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx18, i32 0, i32 1
  %30 = load i32, i32* %dy, align 4, !tbaa !17
  %31 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %dy19 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %31, i32 0, i32 1
  store i32 %30, i32* %dy19, align 4, !tbaa !18
  %32 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom20 = zext i32 %32 to i64
  %33 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %33, i64 %idxprom20
  %w = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx21, i32 0, i32 2
  %34 = load i32, i32* %w, align 4, !tbaa !19
  %35 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %w22 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %35, i32 0, i32 2
  store i32 %34, i32* %w22, align 4, !tbaa !20
  %36 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom23 = zext i32 %36 to i64
  %37 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %37, i64 %idxprom23
  %h = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx24, i32 0, i32 3
  %38 = load i32, i32* %h, align 4, !tbaa !21
  %39 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %h25 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %39, i32 0, i32 3
  store i32 %38, i32* %h25, align 4, !tbaa !22
  %40 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom26 = zext i32 %40 to i64
  %41 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %41, i64 %idxprom26
  %x0 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx27, i32 0, i32 4
  %42 = load i32, i32* %x0, align 4, !tbaa !23
  %43 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %x028 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %43, i32 0, i32 4
  store i32 %42, i32* %x028, align 4, !tbaa !24
  %44 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom29 = zext i32 %44 to i64
  %45 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %45, i64 %idxprom29
  %y0 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx30, i32 0, i32 5
  %46 = load i32, i32* %y0, align 4, !tbaa !25
  %47 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %y031 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %47, i32 0, i32 5
  store i32 %46, i32* %y031, align 4, !tbaa !26
  %48 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom32 = zext i32 %48 to i64
  %49 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %49, i64 %idxprom32
  %prec = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx33, i32 0, i32 6
  %50 = load i32, i32* %prec, align 4, !tbaa !27
  %51 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %prec34 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %51, i32 0, i32 6
  store i32 %50, i32* %prec34, align 4, !tbaa !28
  %52 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom35 = zext i32 %52 to i64
  %53 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %53, i64 %idxprom35
  %bpp = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx36, i32 0, i32 7
  %54 = load i32, i32* %bpp, align 4, !tbaa !29
  %55 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %bpp37 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %55, i32 0, i32 7
  store i32 %54, i32* %bpp37, align 4, !tbaa !30
  %56 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom38 = zext i32 %56 to i64
  %57 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %57, i64 %idxprom38
  %sgnd = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx39, i32 0, i32 8
  %58 = load i32, i32* %sgnd, align 4, !tbaa !31
  %59 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %sgnd40 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %59, i32 0, i32 8
  store i32 %58, i32* %sgnd40, align 4, !tbaa !32
  %60 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %w41 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %60, i32 0, i32 2
  %61 = load i32, i32* %w41, align 4, !tbaa !20
  %62 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %h42 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %62, i32 0, i32 3
  %63 = load i32, i32* %h42, align 4, !tbaa !22
  %mul43 = mul i32 %61, %63
  %conv44 = zext i32 %mul43 to i64
  %cmp45 = icmp ne i64 %conv44, 0
  br i1 %cmp45, label %land.lhs.true, label %cond.false.54

land.lhs.true:                                    ; preds = %for.body
  %64 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %w47 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %64, i32 0, i32 2
  %65 = load i32, i32* %w47, align 4, !tbaa !20
  %66 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %h48 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %66, i32 0, i32 3
  %67 = load i32, i32* %h48, align 4, !tbaa !22
  %mul49 = mul i32 %65, %67
  %conv50 = zext i32 %mul49 to i64
  %cmp51 = icmp uge i64 %conv50, 4611686018427387840
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %land.lhs.true
  br label %cond.end.60

cond.false.54:                                    ; preds = %land.lhs.true, %for.body
  %68 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %w55 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %68, i32 0, i32 2
  %69 = load i32, i32* %w55, align 4, !tbaa !20
  %70 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %h56 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %70, i32 0, i32 3
  %71 = load i32, i32* %h56, align 4, !tbaa !22
  %mul57 = mul i32 %69, %71
  %conv58 = zext i32 %mul57 to i64
  %call59 = call noalias i8* @calloc(i64 %conv58, i64 4) #6
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.54, %cond.true.53
  %cond61 = phi i8* [ null, %cond.true.53 ], [ %call59, %cond.false.54 ]
  %72 = bitcast i8* %cond61 to i32*
  %73 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %73, i32 0, i32 11
  store i32* %72, i32** %data, align 8, !tbaa !33
  %74 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %data62 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %74, i32 0, i32 11
  %75 = load i32*, i32** %data62, align 8, !tbaa !33
  %tobool63 = icmp ne i32* %75, null
  br i1 %tobool63, label %if.end.66, label %if.then.64

if.then.64:                                       ; preds = %cond.end.60
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0)) #7
  %77 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  call void @opj_image_destroy(%struct.opj_image* %77) #7
  store %struct.opj_image* null, %struct.opj_image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %cond.end.60
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then.64
  %78 = bitcast %struct.opj_image_comp** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.68 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %79 = load i32, i32* %compno, align 4, !tbaa !5
  %inc = add i32 %79, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.67

if.end.67:                                        ; preds = %for.end, %entry
  %80 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  store %struct.opj_image* %80, %struct.opj_image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.67, %cleanup, %if.then.9
  %81 = bitcast %struct.opj_image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = load %struct.opj_image*, %struct.opj_image** %retval
  ret %struct.opj_image* %83
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @opj_image_destroy(%struct.opj_image* %image) #0 {
entry:
  %image.addr = alloca %struct.opj_image*, align 8
  %compno = alloca i32, align 4
  %image_comp = alloca %struct.opj_image_comp*, align 8
  store %struct.opj_image* %image, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %0 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_image* %0, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %1 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %1, i32 0, i32 6
  %2 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !11
  %tobool1 = icmp ne %struct.opj_image_comp* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.then
  %3 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %compno, align 4, !tbaa !5
  %5 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %5, i32 0, i32 4
  %6 = load i32, i32* %numcomps, align 4, !tbaa !10
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = bitcast %struct.opj_image_comp** %image_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps3 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %9, i32 0, i32 6
  %10 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps3, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %10, i64 %idxprom
  store %struct.opj_image_comp* %arrayidx, %struct.opj_image_comp** %image_comp, align 8, !tbaa !1
  %11 = load %struct.opj_image_comp*, %struct.opj_image_comp** %image_comp, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %11, i32 0, i32 11
  %12 = load i32*, i32** %data, align 8, !tbaa !33
  %tobool4 = icmp ne i32* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %13 = load %struct.opj_image_comp*, %struct.opj_image_comp** %image_comp, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %13, i32 0, i32 11
  %14 = load i32*, i32** %data6, align 8, !tbaa !33
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body
  %16 = bitcast %struct.opj_image_comp** %image_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %compno, align 4, !tbaa !5
  %inc = add i32 %17, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %comps7 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %18, i32 0, i32 6
  %19 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps7, align 8, !tbaa !11
  %20 = bitcast %struct.opj_image_comp* %19 to i8*
  call void @free(i8* %20) #6
  %21 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.then
  %22 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %icc_profile_buf = getelementptr inbounds %struct.opj_image, %struct.opj_image* %22, i32 0, i32 7
  %23 = load i8*, i8** %icc_profile_buf, align 8, !tbaa !34
  %tobool9 = icmp ne i8* %23, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %24 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %icc_profile_buf11 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %24, i32 0, i32 7
  %25 = load i8*, i8** %icc_profile_buf11, align 8, !tbaa !34
  call void @free(i8* %25) #6
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %26 = load %struct.opj_image*, %struct.opj_image** %image.addr, align 8, !tbaa !1
  %27 = bitcast %struct.opj_image* %26 to i8*
  call void @free(i8* %27) #6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @opj_image_comp_header_update(%struct.opj_image* %p_image_header, %struct.opj_cp* %p_cp) #0 {
entry:
  %p_image_header.addr = alloca %struct.opj_image*, align 8
  %p_cp.addr = alloca %struct.opj_cp*, align 8
  %i = alloca i32, align 4
  %l_width = alloca i32, align 4
  %l_height = alloca i32, align 4
  %l_x0 = alloca i32, align 4
  %l_y0 = alloca i32, align 4
  %l_x1 = alloca i32, align 4
  %l_y1 = alloca i32, align 4
  %l_comp_x0 = alloca i32, align 4
  %l_comp_y0 = alloca i32, align 4
  %l_comp_x1 = alloca i32, align 4
  %l_comp_y1 = alloca i32, align 4
  %l_img_comp = alloca %struct.opj_image_comp*, align 8
  store %struct.opj_image* %p_image_header, %struct.opj_image** %p_image_header.addr, align 8, !tbaa !1
  store %struct.opj_cp* %p_cp, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %l_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %l_x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %l_y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %l_x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %l_y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %l_comp_x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %l_comp_y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %l_comp_x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %l_comp_y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %12 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %tx0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %12, i32 0, i32 1
  %13 = load i32, i32* %tx0, align 4, !tbaa !35
  %14 = load %struct.opj_image*, %struct.opj_image** %p_image_header.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %14, i32 0, i32 0
  %15 = load i32, i32* %x0, align 4, !tbaa !37
  %call = call i32 @opj_int_max(i32 %13, i32 %15) #7
  store i32 %call, i32* %l_x0, align 4, !tbaa !5
  %16 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %ty0 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %16, i32 0, i32 2
  %17 = load i32, i32* %ty0, align 4, !tbaa !38
  %18 = load %struct.opj_image*, %struct.opj_image** %p_image_header.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %18, i32 0, i32 1
  %19 = load i32, i32* %y0, align 4, !tbaa !39
  %call1 = call i32 @opj_int_max(i32 %17, i32 %19) #7
  store i32 %call1, i32* %l_y0, align 4, !tbaa !5
  %20 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %tx02 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %20, i32 0, i32 1
  %21 = load i32, i32* %tx02, align 4, !tbaa !35
  %22 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %tw = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %22, i32 0, i32 6
  %23 = load i32, i32* %tw, align 4, !tbaa !40
  %24 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %tdx = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %24, i32 0, i32 3
  %25 = load i32, i32* %tdx, align 4, !tbaa !41
  %mul = mul i32 %23, %25
  %add = add i32 %21, %mul
  %26 = load %struct.opj_image*, %struct.opj_image** %p_image_header.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %26, i32 0, i32 2
  %27 = load i32, i32* %x1, align 4, !tbaa !42
  %call3 = call i32 @opj_int_min(i32 %add, i32 %27) #7
  store i32 %call3, i32* %l_x1, align 4, !tbaa !5
  %28 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %ty04 = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %28, i32 0, i32 2
  %29 = load i32, i32* %ty04, align 4, !tbaa !38
  %30 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %th = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %30, i32 0, i32 7
  %31 = load i32, i32* %th, align 4, !tbaa !43
  %32 = load %struct.opj_cp*, %struct.opj_cp** %p_cp.addr, align 8, !tbaa !1
  %tdy = getelementptr inbounds %struct.opj_cp, %struct.opj_cp* %32, i32 0, i32 4
  %33 = load i32, i32* %tdy, align 4, !tbaa !44
  %mul5 = mul i32 %31, %33
  %add6 = add i32 %29, %mul5
  %34 = load %struct.opj_image*, %struct.opj_image** %p_image_header.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %34, i32 0, i32 3
  %35 = load i32, i32* %y1, align 4, !tbaa !45
  %call7 = call i32 @opj_int_min(i32 %add6, i32 %35) #7
  store i32 %call7, i32* %l_y1, align 4, !tbaa !5
  %36 = load %struct.opj_image*, %struct.opj_image** %p_image_header.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %36, i32 0, i32 6
  %37 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !11
  store %struct.opj_image_comp* %37, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %39 = load %struct.opj_image*, %struct.opj_image** %p_image_header.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %39, i32 0, i32 4
  %40 = load i32, i32* %numcomps, align 4, !tbaa !10
  %cmp = icmp ult i32 %38, %40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %l_x0, align 4, !tbaa !5
  %42 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %dx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %42, i32 0, i32 0
  %43 = load i32, i32* %dx, align 4, !tbaa !14
  %call8 = call i32 @opj_int_ceildiv(i32 %41, i32 %43) #7
  store i32 %call8, i32* %l_comp_x0, align 4, !tbaa !5
  %44 = load i32, i32* %l_y0, align 4, !tbaa !5
  %45 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %dy = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %45, i32 0, i32 1
  %46 = load i32, i32* %dy, align 4, !tbaa !18
  %call9 = call i32 @opj_int_ceildiv(i32 %44, i32 %46) #7
  store i32 %call9, i32* %l_comp_y0, align 4, !tbaa !5
  %47 = load i32, i32* %l_x1, align 4, !tbaa !5
  %48 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %dx10 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %48, i32 0, i32 0
  %49 = load i32, i32* %dx10, align 4, !tbaa !14
  %call11 = call i32 @opj_int_ceildiv(i32 %47, i32 %49) #7
  store i32 %call11, i32* %l_comp_x1, align 4, !tbaa !5
  %50 = load i32, i32* %l_y1, align 4, !tbaa !5
  %51 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %dy12 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %51, i32 0, i32 1
  %52 = load i32, i32* %dy12, align 4, !tbaa !18
  %call13 = call i32 @opj_int_ceildiv(i32 %50, i32 %52) #7
  store i32 %call13, i32* %l_comp_y1, align 4, !tbaa !5
  %53 = load i32, i32* %l_comp_x1, align 4, !tbaa !5
  %54 = load i32, i32* %l_comp_x0, align 4, !tbaa !5
  %sub = sub nsw i32 %53, %54
  %55 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %factor = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %55, i32 0, i32 10
  %56 = load i32, i32* %factor, align 4, !tbaa !46
  %call14 = call i32 @opj_int_ceildivpow2(i32 %sub, i32 %56) #7
  store i32 %call14, i32* %l_width, align 4, !tbaa !5
  %57 = load i32, i32* %l_comp_y1, align 4, !tbaa !5
  %58 = load i32, i32* %l_comp_y0, align 4, !tbaa !5
  %sub15 = sub nsw i32 %57, %58
  %59 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %factor16 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %59, i32 0, i32 10
  %60 = load i32, i32* %factor16, align 4, !tbaa !46
  %call17 = call i32 @opj_int_ceildivpow2(i32 %sub15, i32 %60) #7
  store i32 %call17, i32* %l_height, align 4, !tbaa !5
  %61 = load i32, i32* %l_width, align 4, !tbaa !5
  %62 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %62, i32 0, i32 2
  store i32 %61, i32* %w, align 4, !tbaa !20
  %63 = load i32, i32* %l_height, align 4, !tbaa !5
  %64 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %64, i32 0, i32 3
  store i32 %63, i32* %h, align 4, !tbaa !22
  %65 = load i32, i32* %l_comp_x0, align 4, !tbaa !5
  %66 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %x018 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %66, i32 0, i32 4
  store i32 %65, i32* %x018, align 4, !tbaa !24
  %67 = load i32, i32* %l_comp_y0, align 4, !tbaa !5
  %68 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %y019 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %68, i32 0, i32 5
  store i32 %67, i32* %y019, align 4, !tbaa !26
  %69 = load %struct.opj_image_comp*, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %69, i32 1
  store %struct.opj_image_comp* %incdec.ptr, %struct.opj_image_comp** %l_img_comp, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %70, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = bitcast %struct.opj_image_comp** %l_img_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32* %l_comp_y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %l_comp_x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %l_comp_y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %l_comp_x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %l_y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %l_x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %l_y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %l_x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %l_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %l_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_max(i32 %a, i32 %b) #4 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_min(i32 %a, i32 %b) #4 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_ceildiv(i32 %a, i32 %b) #4 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %add = add nsw i32 %0, %1
  %sub = sub nsw i32 %add, 1
  %2 = load i32, i32* %b.addr, align 4, !tbaa !5
  %div = sdiv i32 %sub, %2
  ret i32 %div
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @opj_int_ceildivpow2(i32 %a, i32 %b) #4 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %shl = shl i32 1, %1
  %conv1 = sext i32 %shl to i64
  %add = add nsw i64 %conv, %conv1
  %sub = sub nsw i64 %add, 1
  %2 = load i32, i32* %b.addr, align 4, !tbaa !5
  %sh_prom = zext i32 %2 to i64
  %shr = ashr i64 %sub, %sh_prom
  %conv2 = trunc i64 %shr to i32
  ret i32 %conv2
}

; Function Attrs: nounwind uwtable
define void @opj_copy_image_header(%struct.opj_image* %p_image_src, %struct.opj_image* %p_image_dest) #0 {
entry:
  %p_image_src.addr = alloca %struct.opj_image*, align 8
  %p_image_dest.addr = alloca %struct.opj_image*, align 8
  %compno = alloca i32, align 4
  %image_comp = alloca %struct.opj_image_comp*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_image* %p_image_src, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  store %struct.opj_image* %p_image_dest, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.opj_image* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 144, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.opj_copy_image_header, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.opj_image* %3, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 145, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.opj_copy_image_header, i32 0, i32 0)) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %4, %cond.true.2
  %5 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %x0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %5, i32 0, i32 0
  %6 = load i32, i32* %x0, align 4, !tbaa !37
  %7 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %x05 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %7, i32 0, i32 0
  store i32 %6, i32* %x05, align 4, !tbaa !37
  %8 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %y0 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %8, i32 0, i32 1
  %9 = load i32, i32* %y0, align 4, !tbaa !39
  %10 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %y06 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %10, i32 0, i32 1
  store i32 %9, i32* %y06, align 4, !tbaa !39
  %11 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %11, i32 0, i32 2
  %12 = load i32, i32* %x1, align 4, !tbaa !42
  %13 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %x17 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %13, i32 0, i32 2
  store i32 %12, i32* %x17, align 4, !tbaa !42
  %14 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %14, i32 0, i32 3
  %15 = load i32, i32* %y1, align 4, !tbaa !45
  %16 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %y18 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %16, i32 0, i32 3
  store i32 %15, i32* %y18, align 4, !tbaa !45
  %17 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %17, i32 0, i32 6
  %18 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps, align 8, !tbaa !11
  %tobool = icmp ne %struct.opj_image_comp* %18, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %cond.end.4
  store i32 0, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %19 = load i32, i32* %compno, align 4, !tbaa !5
  %20 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %20, i32 0, i32 4
  %21 = load i32, i32* %numcomps, align 4, !tbaa !10
  %cmp9 = icmp ult i32 %19, %21
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast %struct.opj_image_comp** %image_comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom = zext i32 %23 to i64
  %24 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %comps10 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %24, i32 0, i32 6
  %25 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps10, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %25, i64 %idxprom
  store %struct.opj_image_comp* %arrayidx, %struct.opj_image_comp** %image_comp, align 8, !tbaa !1
  %26 = load %struct.opj_image_comp*, %struct.opj_image_comp** %image_comp, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %26, i32 0, i32 11
  %27 = load i32*, i32** %data, align 8, !tbaa !33
  %tobool11 = icmp ne i32* %27, null
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body
  %28 = load %struct.opj_image_comp*, %struct.opj_image_comp** %image_comp, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %28, i32 0, i32 11
  %29 = load i32*, i32** %data13, align 8, !tbaa !33
  %30 = bitcast i32* %29 to i8*
  call void @free(i8* %30) #6
  br label %if.end

if.end:                                           ; preds = %if.then.12, %for.body
  %31 = bitcast %struct.opj_image_comp** %image_comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %compno, align 4, !tbaa !5
  %inc = add i32 %32, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %comps14 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %33, i32 0, i32 6
  %34 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps14, align 8, !tbaa !11
  %35 = bitcast %struct.opj_image_comp* %34 to i8*
  call void @free(i8* %35) #6
  %36 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %comps15 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %36, i32 0, i32 6
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %comps15, align 8, !tbaa !11
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %cond.end.4
  %37 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %numcomps17 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %37, i32 0, i32 4
  %38 = load i32, i32* %numcomps17, align 4, !tbaa !10
  %39 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %numcomps18 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %39, i32 0, i32 4
  store i32 %38, i32* %numcomps18, align 4, !tbaa !10
  %40 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %numcomps19 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %40, i32 0, i32 4
  %41 = load i32, i32* %numcomps19, align 4, !tbaa !10
  %conv = zext i32 %41 to i64
  %mul = mul i64 %conv, 64
  %cmp20 = icmp uge i64 %mul, -256
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %if.end.16
  br label %cond.end.27

cond.false.23:                                    ; preds = %if.end.16
  %42 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %numcomps24 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %42, i32 0, i32 4
  %43 = load i32, i32* %numcomps24, align 4, !tbaa !10
  %conv25 = zext i32 %43 to i64
  %mul26 = mul i64 %conv25, 64
  %call = call noalias i8* @malloc(i64 %mul26) #6
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.23, %cond.true.22
  %cond = phi i8* [ null, %cond.true.22 ], [ %call, %cond.false.23 ]
  %44 = bitcast i8* %cond to %struct.opj_image_comp*
  %45 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %comps28 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %45, i32 0, i32 6
  store %struct.opj_image_comp* %44, %struct.opj_image_comp** %comps28, align 8, !tbaa !11
  %46 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %comps29 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %46, i32 0, i32 6
  %47 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps29, align 8, !tbaa !11
  %tobool30 = icmp ne %struct.opj_image_comp* %47, null
  br i1 %tobool30, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %cond.end.27
  %48 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %comps32 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %48, i32 0, i32 6
  store %struct.opj_image_comp* null, %struct.opj_image_comp** %comps32, align 8, !tbaa !11
  %49 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %numcomps33 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %49, i32 0, i32 4
  store i32 0, i32* %numcomps33, align 4, !tbaa !10
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %cond.end.27
  store i32 0, i32* %compno, align 4, !tbaa !5
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.51, %if.end.34
  %50 = load i32, i32* %compno, align 4, !tbaa !5
  %51 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %numcomps36 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %51, i32 0, i32 4
  %52 = load i32, i32* %numcomps36, align 4, !tbaa !10
  %cmp37 = icmp ult i32 %50, %52
  br i1 %cmp37, label %for.body.39, label %for.end.53

for.body.39:                                      ; preds = %for.cond.35
  %53 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom40 = zext i32 %53 to i64
  %54 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %comps41 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %54, i32 0, i32 6
  %55 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps41, align 8, !tbaa !11
  %arrayidx42 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %55, i64 %idxprom40
  %56 = bitcast %struct.opj_image_comp* %arrayidx42 to i8*
  %57 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom43 = zext i32 %57 to i64
  %58 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %comps44 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %58, i32 0, i32 6
  %59 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps44, align 8, !tbaa !11
  %arrayidx45 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %59, i64 %idxprom43
  %60 = bitcast %struct.opj_image_comp* %arrayidx45 to i8*
  %call46 = call i8* @memcpy(i8* %56, i8* %60, i64 64) #6
  %61 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom47 = zext i32 %61 to i64
  %62 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %comps48 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %62, i32 0, i32 6
  %63 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps48, align 8, !tbaa !11
  %arrayidx49 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %63, i64 %idxprom47
  %data50 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %arrayidx49, i32 0, i32 11
  store i32* null, i32** %data50, align 8, !tbaa !33
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.39
  %64 = load i32, i32* %compno, align 4, !tbaa !5
  %inc52 = add i32 %64, 1
  store i32 %inc52, i32* %compno, align 4, !tbaa !5
  br label %for.cond.35

for.end.53:                                       ; preds = %for.cond.35
  %65 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.opj_image, %struct.opj_image* %65, i32 0, i32 5
  %66 = load i32, i32* %color_space, align 4, !tbaa !8
  %67 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %color_space54 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %67, i32 0, i32 5
  store i32 %66, i32* %color_space54, align 4, !tbaa !8
  %68 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %icc_profile_len = getelementptr inbounds %struct.opj_image, %struct.opj_image* %68, i32 0, i32 8
  %69 = load i32, i32* %icc_profile_len, align 4, !tbaa !47
  %70 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_len55 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %70, i32 0, i32 8
  store i32 %69, i32* %icc_profile_len55, align 4, !tbaa !47
  %71 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_len56 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %71, i32 0, i32 8
  %72 = load i32, i32* %icc_profile_len56, align 4, !tbaa !47
  %tobool57 = icmp ne i32 %72, 0
  br i1 %tobool57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %for.end.53
  %73 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_len59 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %73, i32 0, i32 8
  %74 = load i32, i32* %icc_profile_len59, align 4, !tbaa !47
  %conv60 = zext i32 %74 to i64
  %cmp61 = icmp uge i64 %conv60, -256
  br i1 %cmp61, label %cond.true.63, label %cond.false.64

cond.true.63:                                     ; preds = %if.then.58
  br label %cond.end.68

cond.false.64:                                    ; preds = %if.then.58
  %75 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_len65 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %75, i32 0, i32 8
  %76 = load i32, i32* %icc_profile_len65, align 4, !tbaa !47
  %conv66 = zext i32 %76 to i64
  %call67 = call noalias i8* @malloc(i64 %conv66) #6
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.64, %cond.true.63
  %cond69 = phi i8* [ null, %cond.true.63 ], [ %call67, %cond.false.64 ]
  %77 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_buf = getelementptr inbounds %struct.opj_image, %struct.opj_image* %77, i32 0, i32 7
  store i8* %cond69, i8** %icc_profile_buf, align 8, !tbaa !34
  %78 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_buf70 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %78, i32 0, i32 7
  %79 = load i8*, i8** %icc_profile_buf70, align 8, !tbaa !34
  %tobool71 = icmp ne i8* %79, null
  br i1 %tobool71, label %if.end.75, label %if.then.72

if.then.72:                                       ; preds = %cond.end.68
  %80 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_buf73 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %80, i32 0, i32 7
  store i8* null, i8** %icc_profile_buf73, align 8, !tbaa !34
  %81 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_len74 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %81, i32 0, i32 8
  store i32 0, i32* %icc_profile_len74, align 4, !tbaa !47
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.75:                                        ; preds = %cond.end.68
  %82 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_buf76 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %82, i32 0, i32 7
  %83 = load i8*, i8** %icc_profile_buf76, align 8, !tbaa !34
  %84 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %icc_profile_buf77 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %84, i32 0, i32 7
  %85 = load i8*, i8** %icc_profile_buf77, align 8, !tbaa !34
  %86 = load %struct.opj_image*, %struct.opj_image** %p_image_src.addr, align 8, !tbaa !1
  %icc_profile_len78 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %86, i32 0, i32 8
  %87 = load i32, i32* %icc_profile_len78, align 4, !tbaa !47
  %conv79 = zext i32 %87 to i64
  %call80 = call i8* @memcpy(i8* %83, i8* %85, i64 %conv79) #6
  br label %if.end.82

if.else:                                          ; preds = %for.end.53
  %88 = load %struct.opj_image*, %struct.opj_image** %p_image_dest.addr, align 8, !tbaa !1
  %icc_profile_buf81 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %88, i32 0, i32 7
  store i8* null, i8** %icc_profile_buf81, align 8, !tbaa !34
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.end.75
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.82, %if.then.72, %if.then.31
  %89 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define %struct.opj_image* @opj_image_tile_create(i32 %numcmpts, %struct.opj_image_comptparm* %cmptparms, i32 %clrspc) #0 {
entry:
  %retval = alloca %struct.opj_image*, align 8
  %numcmpts.addr = alloca i32, align 4
  %cmptparms.addr = alloca %struct.opj_image_comptparm*, align 8
  %clrspc.addr = alloca i32, align 4
  %compno = alloca i32, align 4
  %image = alloca %struct.opj_image*, align 8
  %cleanup.dest.slot = alloca i32
  %comp = alloca %struct.opj_image_comp*, align 8
  store i32 %numcmpts, i32* %numcmpts.addr, align 4, !tbaa !5
  store %struct.opj_image_comptparm* %cmptparms, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  store i32 %clrspc, i32* %clrspc.addr, align 4, !tbaa !7
  %0 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_image** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_image* null, %struct.opj_image** %image, align 8, !tbaa !1
  %call = call noalias i8* @malloc(i64 48) #6
  %2 = bitcast i8* %call to %struct.opj_image*
  store %struct.opj_image* %2, %struct.opj_image** %image, align 8, !tbaa !1
  %3 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %tobool = icmp ne %struct.opj_image* %3, null
  br i1 %tobool, label %if.then, label %if.end.43

if.then:                                          ; preds = %entry
  %4 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %5 = bitcast %struct.opj_image* %4 to i8*
  %call1 = call i8* @memset(i8* %5, i32 0, i64 48) #6
  %6 = load i32, i32* %clrspc.addr, align 4, !tbaa !7
  %7 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %color_space = getelementptr inbounds %struct.opj_image, %struct.opj_image* %7, i32 0, i32 5
  store i32 %6, i32* %color_space, align 4, !tbaa !8
  %8 = load i32, i32* %numcmpts.addr, align 4, !tbaa !5
  %9 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %numcomps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %9, i32 0, i32 4
  store i32 %8, i32* %numcomps, align 4, !tbaa !10
  %10 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %numcomps2 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %10, i32 0, i32 4
  %11 = load i32, i32* %numcomps2, align 4, !tbaa !10
  %conv = zext i32 %11 to i64
  %mul = mul i64 %conv, 64
  %cmp = icmp uge i64 %mul, -256
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %12 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %numcomps4 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %12, i32 0, i32 4
  %13 = load i32, i32* %numcomps4, align 4, !tbaa !10
  %conv5 = zext i32 %13 to i64
  %mul6 = mul i64 %conv5, 64
  %call7 = call noalias i8* @malloc(i64 %mul6) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call7, %cond.false ]
  %14 = bitcast i8* %cond to %struct.opj_image_comp*
  %15 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %comps = getelementptr inbounds %struct.opj_image, %struct.opj_image* %15, i32 0, i32 6
  store %struct.opj_image_comp* %14, %struct.opj_image_comp** %comps, align 8, !tbaa !11
  %16 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %comps8 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %16, i32 0, i32 6
  %17 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps8, align 8, !tbaa !11
  %tobool9 = icmp ne %struct.opj_image_comp* %17, null
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %cond.end
  %18 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  call void @opj_image_destroy(%struct.opj_image* %18) #7
  store %struct.opj_image* null, %struct.opj_image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %19 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %comps11 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %19, i32 0, i32 6
  %20 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps11, align 8, !tbaa !11
  %21 = bitcast %struct.opj_image_comp* %20 to i8*
  %22 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %numcomps12 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %22, i32 0, i32 4
  %23 = load i32, i32* %numcomps12, align 4, !tbaa !10
  %conv13 = zext i32 %23 to i64
  %mul14 = mul i64 %conv13, 64
  %call15 = call i8* @memset(i8* %21, i32 0, i64 %mul14) #6
  store i32 0, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, i32* %compno, align 4, !tbaa !5
  %25 = load i32, i32* %numcmpts.addr, align 4, !tbaa !5
  %cmp16 = icmp ult i32 %24, %25
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = bitcast %struct.opj_image_comp** %comp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom = zext i32 %27 to i64
  %28 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  %comps18 = getelementptr inbounds %struct.opj_image, %struct.opj_image* %28, i32 0, i32 6
  %29 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comps18, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %29, i64 %idxprom
  store %struct.opj_image_comp* %arrayidx, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %30 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom19 = zext i32 %30 to i64
  %31 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %31, i64 %idxprom19
  %dx = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx20, i32 0, i32 0
  %32 = load i32, i32* %dx, align 4, !tbaa !12
  %33 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %dx21 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %33, i32 0, i32 0
  store i32 %32, i32* %dx21, align 4, !tbaa !14
  %34 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom22 = zext i32 %34 to i64
  %35 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %35, i64 %idxprom22
  %dy = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx23, i32 0, i32 1
  %36 = load i32, i32* %dy, align 4, !tbaa !17
  %37 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %dy24 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %37, i32 0, i32 1
  store i32 %36, i32* %dy24, align 4, !tbaa !18
  %38 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom25 = zext i32 %38 to i64
  %39 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %39, i64 %idxprom25
  %w = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx26, i32 0, i32 2
  %40 = load i32, i32* %w, align 4, !tbaa !19
  %41 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %w27 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %41, i32 0, i32 2
  store i32 %40, i32* %w27, align 4, !tbaa !20
  %42 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom28 = zext i32 %42 to i64
  %43 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %43, i64 %idxprom28
  %h = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx29, i32 0, i32 3
  %44 = load i32, i32* %h, align 4, !tbaa !21
  %45 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %h30 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %45, i32 0, i32 3
  store i32 %44, i32* %h30, align 4, !tbaa !22
  %46 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom31 = zext i32 %46 to i64
  %47 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %47, i64 %idxprom31
  %x0 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx32, i32 0, i32 4
  %48 = load i32, i32* %x0, align 4, !tbaa !23
  %49 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %x033 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %49, i32 0, i32 4
  store i32 %48, i32* %x033, align 4, !tbaa !24
  %50 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom34 = zext i32 %50 to i64
  %51 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %51, i64 %idxprom34
  %y0 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx35, i32 0, i32 5
  %52 = load i32, i32* %y0, align 4, !tbaa !25
  %53 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %y036 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %53, i32 0, i32 5
  store i32 %52, i32* %y036, align 4, !tbaa !26
  %54 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom37 = zext i32 %54 to i64
  %55 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %55, i64 %idxprom37
  %prec = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx38, i32 0, i32 6
  %56 = load i32, i32* %prec, align 4, !tbaa !27
  %57 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %prec39 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %57, i32 0, i32 6
  store i32 %56, i32* %prec39, align 4, !tbaa !28
  %58 = load i32, i32* %compno, align 4, !tbaa !5
  %idxprom40 = zext i32 %58 to i64
  %59 = load %struct.opj_image_comptparm*, %struct.opj_image_comptparm** %cmptparms.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %59, i64 %idxprom40
  %sgnd = getelementptr inbounds %struct.opj_image_comptparm, %struct.opj_image_comptparm* %arrayidx41, i32 0, i32 8
  %60 = load i32, i32* %sgnd, align 4, !tbaa !31
  %61 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %sgnd42 = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %61, i32 0, i32 8
  store i32 %60, i32* %sgnd42, align 4, !tbaa !32
  %62 = load %struct.opj_image_comp*, %struct.opj_image_comp** %comp, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.opj_image_comp, %struct.opj_image_comp* %62, i32 0, i32 11
  store i32* null, i32** %data, align 8, !tbaa !33
  %63 = bitcast %struct.opj_image_comp** %comp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %compno, align 4, !tbaa !5
  %inc = add i32 %64, 1
  store i32 %inc, i32* %compno, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %entry
  %65 = load %struct.opj_image*, %struct.opj_image** %image, align 8, !tbaa !1
  store %struct.opj_image* %65, %struct.opj_image** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.10
  %66 = bitcast %struct.opj_image** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32* %compno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = load %struct.opj_image*, %struct.opj_image** %retval
  ret %struct.opj_image* %68
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !3, i64 20}
!9 = !{!"opj_image", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !3, i64 20, !2, i64 24, !2, i64 32, !6, i64 40}
!10 = !{!9, !6, i64 16}
!11 = !{!9, !2, i64 24}
!12 = !{!13, !6, i64 0}
!13 = !{!"opj_image_comptparm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!14 = !{!15, !6, i64 0}
!15 = !{!"opj_image_comp", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !2, i64 48, !16, i64 56}
!16 = !{!"short", !3, i64 0}
!17 = !{!13, !6, i64 4}
!18 = !{!15, !6, i64 4}
!19 = !{!13, !6, i64 8}
!20 = !{!15, !6, i64 8}
!21 = !{!13, !6, i64 12}
!22 = !{!15, !6, i64 12}
!23 = !{!13, !6, i64 16}
!24 = !{!15, !6, i64 16}
!25 = !{!13, !6, i64 20}
!26 = !{!15, !6, i64 20}
!27 = !{!13, !6, i64 24}
!28 = !{!15, !6, i64 24}
!29 = !{!13, !6, i64 28}
!30 = !{!15, !6, i64 28}
!31 = !{!13, !6, i64 32}
!32 = !{!15, !6, i64 32}
!33 = !{!15, !2, i64 48}
!34 = !{!9, !2, i64 32}
!35 = !{!36, !6, i64 4}
!36 = !{!"opj_cp", !3, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !6, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !6, i64 52, !2, i64 56, !2, i64 64, !2, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !2, i64 96, !3, i64 104, !6, i64 136, !6, i64 136}
!37 = !{!9, !6, i64 0}
!38 = !{!36, !6, i64 8}
!39 = !{!9, !6, i64 4}
!40 = !{!36, !6, i64 32}
!41 = !{!36, !6, i64 12}
!42 = !{!9, !6, i64 8}
!43 = !{!36, !6, i64 36}
!44 = !{!36, !6, i64 16}
!45 = !{!9, !6, i64 12}
!46 = !{!15, !6, i64 40}
!47 = !{!9, !6, i64 40}
