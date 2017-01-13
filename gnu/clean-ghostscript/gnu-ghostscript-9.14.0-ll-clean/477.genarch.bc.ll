; ModuleID = './genarch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.anon = type { i8, i16 }
%struct.anon.0 = type { i8, i32 }
%struct.anon.1 = type { i8, i64 }
%struct.anon.2 = type { i8, i8* }
%struct.anon.3 = type { i8, float }
%struct.anon.4 = type { i8, double }
%union.anon = type { i64 }
%union.anon.5 = type { i64 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [78 x i8] c"genarch: Invalid invocation\0Agenarch <output-file> [ <existing-config-file> ]\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"genarch.c: can't open %s for writing\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"/* Parameters derived from machine and compiler architecture. */\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"/* This file is generated mechanically by genarch.c. */\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Scalar alignments\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ARCH_ALIGN_SHORT_MOD\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ARCH_ALIGN_INT_MOD\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ARCH_ALIGN_LONG_MOD\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"ARCH_ALIGN_PTR_MOD\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"ARCH_ALIGN_FLOAT_MOD\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"ARCH_ALIGN_DOUBLE_MOD\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Scalar sizes\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"ARCH_LOG2_SIZEOF_CHAR\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"ARCH_LOG2_SIZEOF_SHORT\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"ARCH_LOG2_SIZEOF_INT\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"ARCH_LOG2_SIZEOF_LONG\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"ARCH_LOG2_SIZEOF_LONG_LONG\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"ARCH_SIZEOF_GX_COLOR_INDEX\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"ARCH_SIZEOF_PTR\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"ARCH_SIZEOF_FLOAT\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"ARCH_SIZEOF_DOUBLE\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"ARCH_FLOAT_MANTISSA_BITS\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"ARCH_DOUBLE_MANTISSA_BITS\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Unsigned max values\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"ARCH_MAX_UCHAR\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"((%s)0x\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"%s + (%s)0)\0A\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"ARCH_MAX_USHORT\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"ARCH_MAX_UINT\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"((unsigned int)~0 + (unsigned int)0)\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"ARCH_MAX_ULONG\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"((unsigned long)~0L + (unsigned long)0)\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Miscellaneous\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"ARCH_IS_BIG_ENDIAN\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"ARCH_PTRS_ARE_SIGNED\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"ARCH_FLOATS_ARE_IEEE\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"ARCH_ARITH_RSHIFT\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"ARCH_DIV_NEG_POS_TRUNCATES\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"genarch.c: can't open %s for reading\0A\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"\0A\09 /* ---------------- %s ---------------- */\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"#define %s %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"#define %s \00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"ff\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fname = alloca i8*, align 8
  %one = alloca i64, align 8
  %ss = alloca %struct.anon, align 2
  %si = alloca %struct.anon.0, align 4
  %sl = alloca %struct.anon.1, align 8
  %sp = alloca %struct.anon.2, align 8
  %sf = alloca %struct.anon.3, align 4
  %sd = alloca %struct.anon.4, align 8
  %lm1 = alloca i64, align 8
  %lr1 = alloca i64, align 8
  %lr2 = alloca i64, align 8
  %im1 = alloca i32, align 4
  %ir1 = alloca i32, align 4
  %ir2 = alloca i32, align 4
  %pl0 = alloca %union.anon, align 8
  %pl1 = alloca %union.anon, align 8
  %ars = alloca i32, align 4
  %f0 = alloca %union.anon.5, align 8
  %f1 = alloca %union.anon.5, align 8
  %fm1 = alloca %union.anon.5, align 8
  %floats_are_IEEE = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !1
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !5
  %0 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %one to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 1, i64* %one, align 8, !tbaa !7
  %2 = bitcast %struct.anon* %ss to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.anon.0* %si to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.anon.1* %sl to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.anon.2* %sp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.anon.3* %sf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.anon.4* %sd to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast i64* %lm1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 -1, i64* %lm1, align 8, !tbaa !7
  %9 = bitcast i64* %lr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i64, i64* %lm1, align 8, !tbaa !7
  %shr = ashr i64 %10, 1
  store i64 %shr, i64* %lr1, align 8, !tbaa !7
  %11 = bitcast i64* %lr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i64, i64* %lm1, align 8, !tbaa !7
  %shr1 = ashr i64 %12, 2
  store i64 %shr1, i64* %lr2, align 8, !tbaa !7
  %13 = bitcast i32* %im1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -1, i32* %im1, align 4, !tbaa !1
  %14 = bitcast i32* %ir1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %im1, align 4, !tbaa !1
  %shr2 = ashr i32 %15, 1
  store i32 %shr2, i32* %ir1, align 4, !tbaa !1
  %16 = bitcast i32* %ir2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %im1, align 4, !tbaa !1
  %shr3 = ashr i32 %17, 2
  store i32 %shr3, i32* %ir2, align 4, !tbaa !1
  %18 = bitcast %union.anon* %pl0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = bitcast %union.anon* %pl1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i32* %ars to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast %union.anon.5* %f0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast %union.anon.5* %f1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast %union.anon.5* %fm1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = bitcast i32* %floats_are_IEEE to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %26, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %27 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp4 = icmp sgt i32 %27, 3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i32 0, i32 0)) #4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %29 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8*, i8** %29, i64 1
  %30 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  store i8* %30, i8** %fname, align 8, !tbaa !5
  %31 = load i8*, i8** %fname, align 8, !tbaa !5
  %call5 = call %struct._IO_FILE* @fopen64(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #4
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f, align 8, !tbaa !5
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %cmp6 = icmp eq %struct._IO_FILE* %32, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %34 = load i8*, i8** %fname, align 8, !tbaa !5
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i8* %34) #4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %35 = load i32, i32* %argc.addr, align 4, !tbaa !1
  %cmp10 = icmp eq i32 %35, 3
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %37 = load i8**, i8*** %argv.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i8*, i8** %37, i64 2
  %38 = load i8*, i8** %arrayidx12, align 8, !tbaa !5
  %call13 = call i32 @copy_existing_file(%struct._IO_FILE* %36, i8* %38) #4
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i32 0, i32 0)) #4
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i32 0, i32 0)) #4
  %f17 = bitcast %union.anon.5* %f0 to float*
  store float 0.000000e+00, float* %f17, align 4, !tbaa !9
  %f18 = bitcast %union.anon.5* %f1 to float*
  store float 1.000000e+00, float* %f18, align 4, !tbaa !9
  %f19 = bitcast %union.anon.5* %fm1 to float*
  store float -1.000000e+00, float* %f19, align 4, !tbaa !9
  %i = bitcast %union.anon.5* %f0 to i32*
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %cmp20 = icmp eq i32 %41, 0
  br i1 %cmp20, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.14
  %i21 = bitcast %union.anon.5* %f1 to i32*
  %42 = load i32, i32* %i21, align 4, !tbaa !1
  %cmp22 = icmp eq i32 %42, 1065353216
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %i23 = bitcast %union.anon.5* %fm1 to i32*
  %43 = load i32, i32* %i23, align 4, !tbaa !1
  %cmp24 = icmp eq i32 %43, -1082130432
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end.14
  %44 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.14 ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %44 to i32
  store i32 %land.ext, i32* %floats_are_IEEE, align 4, !tbaa !1
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @section(%struct._IO_FILE* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #4
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %s = getelementptr inbounds %struct.anon, %struct.anon* %ss, i32 0, i32 1
  %47 = bitcast i16* %s to i8*
  %48 = bitcast %struct.anon* %ss to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  call void @define_int(%struct._IO_FILE* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 %conv) #4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %i25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %si, i32 0, i32 1
  %50 = bitcast i32* %i25 to i8*
  %51 = bitcast %struct.anon.0* %si to i8*
  %sub.ptr.lhs.cast26 = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %51 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %conv29 = trunc i64 %sub.ptr.sub28 to i32
  call void @define_int(%struct._IO_FILE* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 %conv29) #4
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %l = getelementptr inbounds %struct.anon.1, %struct.anon.1* %sl, i32 0, i32 1
  %53 = bitcast i64* %l to i8*
  %54 = bitcast %struct.anon.1* %sl to i8*
  %sub.ptr.lhs.cast30 = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %54 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %conv33 = trunc i64 %sub.ptr.sub32 to i32
  call void @define_int(%struct._IO_FILE* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 %conv33) #4
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %p = getelementptr inbounds %struct.anon.2, %struct.anon.2* %sp, i32 0, i32 1
  %56 = bitcast i8** %p to i8*
  %57 = bitcast %struct.anon.2* %sp to i8*
  %sub.ptr.lhs.cast34 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %57 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %conv37 = trunc i64 %sub.ptr.sub36 to i32
  call void @define_int(%struct._IO_FILE* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 %conv37) #4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %f38 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %sf, i32 0, i32 1
  %59 = bitcast float* %f38 to i8*
  %60 = bitcast %struct.anon.3* %sf to i8*
  %sub.ptr.lhs.cast39 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %60 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %conv42 = trunc i64 %sub.ptr.sub41 to i32
  call void @define_int(%struct._IO_FILE* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 %conv42) #4
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %d = getelementptr inbounds %struct.anon.4, %struct.anon.4* %sd, i32 0, i32 1
  %62 = bitcast double* %d to i8*
  %63 = bitcast %struct.anon.4* %sd to i8*
  %sub.ptr.lhs.cast43 = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast44 = ptrtoint i8* %63 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast43, %sub.ptr.rhs.cast44
  %conv46 = trunc i64 %sub.ptr.sub45 to i32
  call void @define_int(%struct._IO_FILE* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %conv46) #4
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @section(%struct._IO_FILE* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)) #4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call47 = call i32 @ilog2(i32 1) #4
  call void @define_int(%struct._IO_FILE* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 %call47) #4
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call48 = call i32 @ilog2(i32 2) #4
  call void @define_int(%struct._IO_FILE* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 %call48) #4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call49 = call i32 @ilog2(i32 4) #4
  call void @define_int(%struct._IO_FILE* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32 %call49) #4
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call50 = call i32 @ilog2(i32 8) #4
  call void @define_int(%struct._IO_FILE* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %call50) #4
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call51 = call i32 @ilog2(i32 8) #4
  call void @define_int(%struct._IO_FILE* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 %call51) #4
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define_int(%struct._IO_FILE* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i32 0, i32 0), i32 8) #4
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define_int(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 8) #4
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define_int(%struct._IO_FILE* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 4) #4
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define_int(%struct._IO_FILE* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i32 8) #4
  %74 = load i32, i32* %floats_are_IEEE, align 4, !tbaa !1
  %tobool = icmp ne i32 %74, 0
  br i1 %tobool, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %land.end
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define_int(%struct._IO_FILE* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 24) #4
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define_int(%struct._IO_FILE* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i32 53) #4
  br label %if.end.53

if.else:                                          ; preds = %land.end
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define_int(%struct._IO_FILE* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 15) #4
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define_int(%struct._IO_FILE* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i32 0, i32 0), i32 47) #4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.52
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @section(%struct._IO_FILE* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0)) #4
  br label %do.body

do.body:                                          ; preds = %if.end.53
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define(%struct._IO_FILE* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0)) #4
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)) #4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @print_ffs(%struct._IO_FILE* %82, i32 1) #4
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.56

do.body.56:                                       ; preds = %do.end
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define(%struct._IO_FILE* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0)) #4
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)) #4
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @print_ffs(%struct._IO_FILE* %86, i32 2) #4
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)) #4
  br label %do.cond.59

do.cond.59:                                       ; preds = %do.body.56
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define(%struct._IO_FILE* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0)) #4
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0)) #4
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @define(%struct._IO_FILE* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0)) #4
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i32 0, i32 0)) #4
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  call void @section(%struct._IO_FILE* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0)) #4
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %94 = bitcast i64* %one to i8*
  %95 = load i8, i8* %94, align 1, !tbaa !11
  %conv63 = sext i8 %95 to i32
  %sub = sub nsw i32 1, %conv63
  call void @define_int(%struct._IO_FILE* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i32 %sub) #4
  %l64 = bitcast %union.anon* %pl0 to i64*
  store i64 0, i64* %l64, align 8, !tbaa !7
  %l65 = bitcast %union.anon* %pl1 to i64*
  store i64 -1, i64* %l65, align 8, !tbaa !7
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %p66 = bitcast %union.anon* %pl1 to i8**
  %97 = load i8*, i8** %p66, align 8, !tbaa !5
  %p67 = bitcast %union.anon* %pl0 to i8**
  %98 = load i8*, i8** %p67, align 8, !tbaa !5
  %cmp68 = icmp ult i8* %97, %98
  %conv69 = zext i1 %cmp68 to i32
  call void @define_int(%struct._IO_FILE* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0), i32 %conv69) #4
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %100 = load i32, i32* %floats_are_IEEE, align 4, !tbaa !1
  %tobool70 = icmp ne i32 %100, 0
  %cond = select i1 %tobool70, i32 1, i32 0
  call void @define_int(%struct._IO_FILE* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i32 0, i32 0), i32 %cond) #4
  %101 = load i64, i64* %lr2, align 8, !tbaa !7
  %cmp71 = icmp ne i64 %101, -1
  br i1 %cmp71, label %cond.true, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %do.end.60
  %102 = load i32, i32* %ir1, align 4, !tbaa !1
  %cmp74 = icmp ne i32 %102, -1
  br i1 %cmp74, label %cond.true, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.73
  %103 = load i32, i32* %ir2, align 4, !tbaa !1
  %cmp77 = icmp ne i32 %103, -1
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.76, %lor.lhs.false.73, %do.end.60
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.76
  %104 = load i64, i64* %lr1, align 8, !tbaa !7
  %cmp79 = icmp ne i64 %104, -1
  %cond81 = select i1 %cmp79, i32 1, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond82 = phi i32 [ 0, %cond.true ], [ %cond81, %cond.false ]
  store i32 %cond82, i32* %ars, align 4, !tbaa !1
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %106 = load i32, i32* %ars, align 4, !tbaa !1
  call void @define_int(%struct._IO_FILE* %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i32 %106) #4
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %108 = load i32, i32* %im1, align 4, !tbaa !1
  %div = sdiv i32 %108, 2
  %cmp83 = icmp eq i32 %div, 0
  %conv84 = zext i1 %cmp83 to i32
  call void @define_int(%struct._IO_FILE* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), i32 %conv84) #4
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call85 = call i32 @fclose(%struct._IO_FILE* %109) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.11, %if.then.7, %if.then
  %110 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32* %floats_are_IEEE to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast %union.anon.5* %fm1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %union.anon.5* %f1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast %union.anon.5* %f0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i32* %ars to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast %union.anon* %pl1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %union.anon* %pl0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %ir2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %ir1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %im1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i64* %lr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast i64* %lr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i64* %lm1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.anon.4* %sd to i8*
  call void @llvm.lifetime.end(i64 16, i8* %124) #1
  %125 = bitcast %struct.anon.3* %sf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.anon.2* %sp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %126) #1
  %127 = bitcast %struct.anon.1* %sl to i8*
  call void @llvm.lifetime.end(i64 16, i8* %127) #1
  %128 = bitcast %struct.anon.0* %si to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast %struct.anon* %ss to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i64* %one to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast i8** %fname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = load i32, i32* %retval
  ret i32 %132
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @copy_existing_file(%struct._IO_FILE* %f, i8* %infname) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %infname.addr = alloca i8*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [1024 x i8], align 16
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  store i8* %infname, i8** %infname.addr, align 8, !tbaa !5
  %0 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %infname.addr, align 8, !tbaa !5
  %call = call %struct._IO_FILE* @fopen64(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0)) #4
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8, !tbaa !5
  %2 = bitcast [1024 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %2) #1
  %3 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %cmp = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %6 = load i8*, i8** %infname.addr, align 8, !tbaa !5
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0), i8* %6) #4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  %call2 = call i32 @fclose(%struct._IO_FILE* %7) #4
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call3 = call i32 @feof(%struct._IO_FILE* %8) #5
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call4 = call i64 @fread(i8* %arraydecay, i64 1, i64 1024, %struct._IO_FILE* %9) #4
  store i64 %call4, i64* %l, align 8, !tbaa !7
  %10 = load i64, i64* %l, align 8, !tbaa !7
  %cmp5 = icmp ugt i64 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %while.body
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buffer, i32 0, i32 0
  %11 = load i64, i64* %l, align 8, !tbaa !7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  %call8 = call i64 @fwrite(i8* %arraydecay7, i64 1, i64 %11, %struct._IO_FILE* %12) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !5
  %call10 = call i32 @fclose(%struct._IO_FILE* %13) #4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  %call11 = call i32 @fclose(%struct._IO_FILE* %14) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %15 = bitcast i64* %l to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast [1024 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %16) #1
  %17 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @section(%struct._IO_FILE* %f, i8* %str) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %str.addr = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.44, i32 0, i32 0), i8* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @define_int(%struct._IO_FILE* %f, i8* %str, i32 %value) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %str.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !5
  store i32 %value, i32* %value.addr, align 4, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %2 = load i32, i32* %value.addr, align 4, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* %1, i32 %2) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ilog2(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  %1 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %n.addr, align 4, !tbaa !1
  store i32 %2, i32* %m, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %m, align 4, !tbaa !1
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  %5 = load i32, i32* %m, align 4, !tbaa !1
  %add = add nsw i32 %5, 1
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %m, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %7 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal void @define(%struct._IO_FILE* %f, i8* %str) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %str.addr = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  store i8* %str, i8** %str.addr, align 8, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  %1 = load i8*, i8** %str.addr, align 8, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i8* %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_ffs(%struct._IO_FILE* %f, i32 %nbytes) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %nbytes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !1
  %2 = load i32, i32* %nbytes.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !5
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!3, !3, i64 0}
