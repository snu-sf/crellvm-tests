; ModuleID = './pclcomp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcl_OctetString = type { i8*, i32 }

@.str = private unnamed_addr constant [338 x i8] c"(in != ((void*)0) && ((in)->length == 0 || (in)->length > 0 && (in)->str != ((void*)0))) && (out != ((void*)0) && ((out)->length == 0 || (out)->length > 0 && (out)->str != ((void*)0))) && (method != pcl_cm_delta && method != pcl_cm_crdr || (prev != ((void*)0) && ((prev)->length == 0 || (prev)->length > 0 && (prev)->str != ((void*)0))))\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"./contrib/pcl3/src/pclcomp.c\00", align 1
@__PRETTY_FUNCTION__.pcl_compress = private unnamed_addr constant [103 x i8] c"int pcl_compress(pcl_Compression, const pcl_OctetString *, const pcl_OctetString *, pcl_OctetString *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"opos <= maxoutcount\00", align 1
@__PRETTY_FUNCTION__.compress_delta = private unnamed_addr constant [85 x i8] c"int compress_delta(const pcl_Octet *, int, const pcl_Octet *, int, pcl_Octet *, int)\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"1 <= replace_count && replace_count <= 8\00", align 1
@__PRETTY_FUNCTION__.write_delta_replacement = private unnamed_addr constant [75 x i8] c"int write_delta_replacement(pcl_Octet *, int, int, const pcl_Octet *, int)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"repcount >= 0\00", align 1
@__PRETTY_FUNCTION__.write_crdr_header = private unnamed_addr constant [60 x i8] c"int write_crdr_header(pcl_bool, pcl_Octet *, int, int, int)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pcl_compress(i32 %method, %struct.pcl_OctetString* %in, %struct.pcl_OctetString* %prev, %struct.pcl_OctetString* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %method.addr = alloca i32, align 4
  %in.addr = alloca %struct.pcl_OctetString*, align 8
  %prev.addr = alloca %struct.pcl_OctetString*, align 8
  %out.addr = alloca %struct.pcl_OctetString*, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %method, i32* %method.addr, align 4, !tbaa !1
  store %struct.pcl_OctetString* %in, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  store %struct.pcl_OctetString* %prev, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !4
  store %struct.pcl_OctetString* %out, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 -1, i32* %result, align 4, !tbaa !6
  %1 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %cmp = icmp ne %struct.pcl_OctetString* %1, null
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %2, i32 0, i32 1
  %3 = load i32, i32* %length, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %4, i32 0, i32 1
  %5 = load i32, i32* %length2, align 4, !tbaa !8
  %cmp3 = icmp sgt i32 %5, 0
  br i1 %cmp3, label %land.lhs.true.4, label %cond.false

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %str = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %6, i32 0, i32 0
  %7 = load i8*, i8** %str, align 8, !tbaa !10
  %cmp5 = icmp ne i8* %7, null
  br i1 %cmp5, label %land.lhs.true.6, label %cond.false

land.lhs.true.6:                                  ; preds = %land.lhs.true.4, %land.lhs.true
  %8 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %cmp7 = icmp ne %struct.pcl_OctetString* %8, null
  br i1 %cmp7, label %land.lhs.true.8, label %cond.false

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %9 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %length9 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %9, i32 0, i32 1
  %10 = load i32, i32* %length9, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %land.lhs.true.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.8
  %11 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %length12 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %11, i32 0, i32 1
  %12 = load i32, i32* %length12, align 4, !tbaa !8
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %land.lhs.true.14, label %cond.false

land.lhs.true.14:                                 ; preds = %lor.lhs.false.11
  %13 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %str15 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %13, i32 0, i32 0
  %14 = load i8*, i8** %str15, align 8, !tbaa !10
  %cmp16 = icmp ne i8* %14, null
  br i1 %cmp16, label %land.lhs.true.17, label %cond.false

land.lhs.true.17:                                 ; preds = %land.lhs.true.14, %land.lhs.true.8
  %15 = load i32, i32* %method.addr, align 4, !tbaa !1
  %cmp18 = icmp ne i32 %15, 3
  br i1 %cmp18, label %land.lhs.true.19, label %lor.lhs.false.21

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %16 = load i32, i32* %method.addr, align 4, !tbaa !1
  %cmp20 = icmp ne i32 %16, 9
  br i1 %cmp20, label %cond.true, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.19, %land.lhs.true.17
  %17 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !4
  %cmp22 = icmp ne %struct.pcl_OctetString* %17, null
  br i1 %cmp22, label %land.lhs.true.23, label %cond.false

land.lhs.true.23:                                 ; preds = %lor.lhs.false.21
  %18 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !4
  %length24 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %18, i32 0, i32 1
  %19 = load i32, i32* %length24, align 4, !tbaa !8
  %cmp25 = icmp eq i32 %19, 0
  br i1 %cmp25, label %cond.true, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.23
  %20 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !4
  %length27 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %20, i32 0, i32 1
  %21 = load i32, i32* %length27, align 4, !tbaa !8
  %cmp28 = icmp sgt i32 %21, 0
  br i1 %cmp28, label %land.lhs.true.29, label %cond.false

land.lhs.true.29:                                 ; preds = %lor.lhs.false.26
  %22 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !4
  %str30 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %22, i32 0, i32 0
  %23 = load i8*, i8** %str30, align 8, !tbaa !10
  %cmp31 = icmp ne i8* %23, null
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.29, %land.lhs.true.23, %land.lhs.true.19
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.29, %lor.lhs.false.26, %lor.lhs.false.21, %land.lhs.true.14, %lor.lhs.false.11, %land.lhs.true.6, %land.lhs.true.4, %lor.lhs.false, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([338 x i8], [338 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 708, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__.pcl_compress, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %24, %cond.true
  %25 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length32 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %25, i32 0, i32 1
  %26 = load i32, i32* %length32, align 4, !tbaa !8
  %cmp33 = icmp eq i32 %26, 0
  br i1 %cmp33, label %land.lhs.true.34, label %if.end

land.lhs.true.34:                                 ; preds = %cond.end
  %27 = load i32, i32* %method.addr, align 4, !tbaa !1
  %cmp35 = icmp ne i32 %27, 3
  br i1 %cmp35, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %28 = load i32, i32* %method.addr, align 4, !tbaa !1
  %cmp37 = icmp ne i32 %28, 9
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.36
  %29 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %length38 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %29, i32 0, i32 1
  store i32 0, i32* %length38, align 4, !tbaa !8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.36, %land.lhs.true.34, %cond.end
  %30 = load i32, i32* %method.addr, align 4, !tbaa !1
  switch i32 %30, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.48
    i32 2, label %sw.bb.54
    i32 3, label %sw.bb.60
    i32 9, label %sw.bb.68
  ]

sw.bb:                                            ; preds = %if.end
  %31 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %length39 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %31, i32 0, i32 1
  %32 = load i32, i32* %length39, align 4, !tbaa !8
  %33 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length40 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %33, i32 0, i32 1
  %34 = load i32, i32* %length40, align 4, !tbaa !8
  %cmp41 = icmp sle i32 %32, %34
  br i1 %cmp41, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %sw.bb
  %35 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %str43 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %35, i32 0, i32 0
  %36 = load i8*, i8** %str43, align 8, !tbaa !10
  %37 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %str44 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %37, i32 0, i32 0
  %38 = load i8*, i8** %str44, align 8, !tbaa !10
  %39 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length45 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %39, i32 0, i32 1
  %40 = load i32, i32* %length45, align 4, !tbaa !8
  %conv = sext i32 %40 to i64
  %mul = mul i64 %conv, 1
  %call = call i8* @memcpy(i8* %36, i8* %38, i64 %mul) #6
  %41 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length46 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %41, i32 0, i32 1
  %42 = load i32, i32* %length46, align 4, !tbaa !8
  store i32 %42, i32* %result, align 4, !tbaa !6
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %sw.bb
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end
  %43 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %str49 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %43, i32 0, i32 0
  %44 = load i8*, i8** %str49, align 8, !tbaa !10
  %45 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length50 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %45, i32 0, i32 1
  %46 = load i32, i32* %length50, align 4, !tbaa !8
  %47 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %str51 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %47, i32 0, i32 0
  %48 = load i8*, i8** %str51, align 8, !tbaa !10
  %49 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %length52 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %49, i32 0, i32 1
  %50 = load i32, i32* %length52, align 4, !tbaa !8
  %call53 = call i32 @compress_runlength(i8* %44, i32 %46, i8* %48, i32 %50) #7
  store i32 %call53, i32* %result, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.end
  %51 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %str55 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %51, i32 0, i32 0
  %52 = load i8*, i8** %str55, align 8, !tbaa !10
  %53 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length56 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %53, i32 0, i32 1
  %54 = load i32, i32* %length56, align 4, !tbaa !8
  %55 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %str57 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %55, i32 0, i32 0
  %56 = load i8*, i8** %str57, align 8, !tbaa !10
  %57 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %length58 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %57, i32 0, i32 1
  %58 = load i32, i32* %length58, align 4, !tbaa !8
  %call59 = call i32 @compress_tiff(i8* %52, i32 %54, i8* %56, i32 %58) #7
  store i32 %call59, i32* %result, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end
  %59 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %str61 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %59, i32 0, i32 0
  %60 = load i8*, i8** %str61, align 8, !tbaa !10
  %61 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length62 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %61, i32 0, i32 1
  %62 = load i32, i32* %length62, align 4, !tbaa !8
  %63 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !4
  %str63 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %63, i32 0, i32 0
  %64 = load i8*, i8** %str63, align 8, !tbaa !10
  %65 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !4
  %length64 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %65, i32 0, i32 1
  %66 = load i32, i32* %length64, align 4, !tbaa !8
  %67 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %str65 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %67, i32 0, i32 0
  %68 = load i8*, i8** %str65, align 8, !tbaa !10
  %69 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %length66 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %69, i32 0, i32 1
  %70 = load i32, i32* %length66, align 4, !tbaa !8
  %call67 = call i32 @compress_delta(i8* %60, i32 %62, i8* %64, i32 %66, i8* %68, i32 %70) #7
  store i32 %call67, i32* %result, align 4, !tbaa !6
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end
  %71 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %str69 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %71, i32 0, i32 0
  %72 = load i8*, i8** %str69, align 8, !tbaa !10
  %73 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %in.addr, align 8, !tbaa !4
  %length70 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %73, i32 0, i32 1
  %74 = load i32, i32* %length70, align 4, !tbaa !8
  %75 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !4
  %str71 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %75, i32 0, i32 0
  %76 = load i8*, i8** %str71, align 8, !tbaa !10
  %77 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %prev.addr, align 8, !tbaa !4
  %length72 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %77, i32 0, i32 1
  %78 = load i32, i32* %length72, align 4, !tbaa !8
  %79 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %str73 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %79, i32 0, i32 0
  %80 = load i8*, i8** %str73, align 8, !tbaa !10
  %81 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %length74 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %81, i32 0, i32 1
  %82 = load i32, i32* %length74, align 4, !tbaa !8
  %call75 = call i32 @compress_crdr(i8* %72, i32 %74, i8* %76, i32 %78, i8* %80, i32 %82) #7
  store i32 %call75, i32* %result, align 4, !tbaa !6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 738, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @__PRETTY_FUNCTION__.pcl_compress, i32 0, i32 0)) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.68, %sw.bb.60, %sw.bb.54, %sw.bb.48, %if.end.47
  %83 = load i32, i32* %result, align 4, !tbaa !6
  %cmp76 = icmp sge i32 %83, 0
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %sw.epilog
  %84 = load i32, i32* %result, align 4, !tbaa !6
  %85 = load %struct.pcl_OctetString*, %struct.pcl_OctetString** %out.addr, align 8, !tbaa !4
  %length79 = getelementptr inbounds %struct.pcl_OctetString, %struct.pcl_OctetString* %85, i32 0, i32 1
  store i32 %84, i32* %length79, align 4, !tbaa !8
  store i32 0, i32* %result, align 4, !tbaa !6
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %sw.epilog
  %86 = load i32, i32* %result, align 4, !tbaa !6
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.80, %if.then
  %87 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @compress_runlength(i8* %in, i32 %incount, i8* %out, i32 %maxoutcount) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %incount.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %maxoutcount.addr = alloca i32, align 4
  %available = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %in, i8** %in.addr, align 8, !tbaa !4
  store i32 %incount, i32* %incount.addr, align 4, !tbaa !6
  store i8* %out, i8** %out.addr, align 8, !tbaa !4
  store i32 %maxoutcount, i32* %maxoutcount.addr, align 4, !tbaa !6
  %0 = bitcast i32* %available to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  store i32 %1, i32* %available, align 4, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %2 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %available, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %3, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %count, align 4, !tbaa !6
  %6 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8, !tbaa !4
  %7 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %8 = load i8, i8* %7, align 1, !tbaa !1
  %9 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %8, i8* %9, align 1, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %land.end.10, %while.body
  %10 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr2, i8** %in.addr, align 8, !tbaa !4
  %11 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %incount.addr, align 4, !tbaa !6
  %12 = load i32, i32* %count, align 4, !tbaa !6
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count, align 4, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp3 = icmp sgt i32 %13, 0
  br i1 %cmp3, label %land.lhs.true, label %land.end.10

land.lhs.true:                                    ; preds = %do.cond
  %14 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %15 = load i8, i8* %14, align 1, !tbaa !1
  %conv = zext i8 %15 to i32
  %16 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %17 = load i8, i8* %16, align 1, !tbaa !1
  %conv4 = zext i8 %17 to i32
  %cmp5 = icmp eq i32 %conv, %conv4
  br i1 %cmp5, label %land.rhs.7, label %land.end.10

land.rhs.7:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %count, align 4, !tbaa !6
  %cmp8 = icmp slt i32 %18, 256
  br label %land.end.10

land.end.10:                                      ; preds = %land.rhs.7, %land.lhs.true, %do.cond
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp8, %land.rhs.7 ]
  br i1 %19, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.10
  %20 = load i32, i32* %count, align 4, !tbaa !6
  %sub = sub nsw i32 %20, 1
  %conv11 = trunc i32 %sub to i8
  %21 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 -1
  store i8 %conv11, i8* %add.ptr, align 1, !tbaa !1
  %22 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr12 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr12, i8** %out.addr, align 8, !tbaa !4
  %23 = load i32, i32* %available, align 4, !tbaa !6
  %sub13 = sub nsw i32 %23, 2
  store i32 %sub13, i32* %available, align 4, !tbaa !6
  %24 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %25 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp14 = icmp sgt i32 %25, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.end
  %26 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %27 = load i32, i32* %available, align 4, !tbaa !6
  %sub16 = sub nsw i32 %26, %27
  store i32 %sub16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %28 = bitcast i32* %available to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_tiff(i8* %in, i32 %incount, i8* %out, i32 %maxoutcount) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %incount.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %maxoutcount.addr = alloca i32, align 4
  %last = alloca i8, align 1
  %end = alloca i8*, align 8
  %available = alloca i32, align 4
  %repeated = alloca i32, align 4
  %stored = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %in, i8** %in.addr, align 8, !tbaa !4
  store i32 %incount, i32* %incount.addr, align 4, !tbaa !6
  store i8* %out, i8** %out.addr, align 8, !tbaa !4
  store i32 %maxoutcount, i32* %maxoutcount.addr, align 4, !tbaa !6
  call void @llvm.lifetime.start(i64 1, i8* %last) #1
  %0 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %2 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %end, align 8, !tbaa !4
  %3 = bitcast i32* %available to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  store i32 %4, i32* %available, align 4, !tbaa !6
  %5 = bitcast i32* %repeated to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %stored to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  br label %state1

state1:                                           ; preds = %if.end.91, %if.end.48, %if.then.43, %entry
  %7 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %8 = load i8*, i8** %end, align 8, !tbaa !4
  %cmp = icmp eq i8* %7, %8
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %state1
  %9 = load i32, i32* %available, align 4, !tbaa !6
  %cmp2 = icmp slt i32 %9, 2
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 0, i8* %10, align 1, !tbaa !1
  %11 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8, !tbaa !4
  %12 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %13 = load i8, i8* %12, align 1, !tbaa !1
  %14 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %13, i8* %14, align 1, !tbaa !1
  %15 = load i32, i32* %available, align 4, !tbaa !6
  %sub = sub nsw i32 %15, 2
  store i32 %sub, i32* %available, align 4, !tbaa !6
  br label %finished

if.end.4:                                         ; preds = %state1
  %16 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %17 = load i8, i8* %16, align 1, !tbaa !1
  store i8 %17, i8* %last, align 1, !tbaa !1
  %18 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr5, i8** %in.addr, align 8, !tbaa !4
  br label %state2

state2:                                           ; preds = %if.end.4
  %19 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %20 = load i8, i8* %19, align 1, !tbaa !1
  %conv = zext i8 %20 to i32
  %21 = load i8, i8* %last, align 1, !tbaa !1
  %conv6 = zext i8 %21 to i32
  %cmp7 = icmp ne i32 %conv, %conv6
  br i1 %cmp7, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %state2
  %22 = load i32, i32* %available, align 4, !tbaa !6
  %cmp10 = icmp slt i32 %22, 3
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.then.9
  %23 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr14 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr14, i8** %out.addr, align 8, !tbaa !4
  %24 = load i32, i32* %available, align 4, !tbaa !6
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %available, align 4, !tbaa !6
  store i32 0, i32* %stored, align 4, !tbaa !6
  br label %state4

if.end.15:                                        ; preds = %state2
  %25 = load i32, i32* %available, align 4, !tbaa !6
  %cmp16 = icmp slt i32 %25, 2
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.15
  store i32 2, i32* %repeated, align 4, !tbaa !6
  br label %state3

state3:                                           ; preds = %if.then.118, %if.end.84, %if.end.19
  br label %do.body

do.body:                                          ; preds = %do.cond, %state3
  %26 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %27 = load i8*, i8** %end, align 8, !tbaa !4
  %cmp20 = icmp eq i8* %26, %27
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.body
  br label %do.end

if.end.23:                                        ; preds = %do.body
  %28 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr24, i8** %in.addr, align 8, !tbaa !4
  %29 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %30 = load i8, i8* %29, align 1, !tbaa !1
  %conv25 = zext i8 %30 to i32
  %31 = load i8, i8* %last, align 1, !tbaa !1
  %conv26 = zext i8 %31 to i32
  %cmp27 = icmp ne i32 %conv25, %conv26
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.23
  br label %do.end

if.end.30:                                        ; preds = %if.end.23
  %32 = load i32, i32* %repeated, align 4, !tbaa !6
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %repeated, align 4, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %if.end.30
  %33 = load i32, i32* %repeated, align 4, !tbaa !6
  %cmp31 = icmp slt i32 %33, 128
  br i1 %cmp31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.29, %if.then.22
  %34 = load i32, i32* %repeated, align 4, !tbaa !6
  %sub33 = sub nsw i32 0, %34
  %add = add nsw i32 %sub33, 1
  %add34 = add nsw i32 256, %add
  %conv35 = trunc i32 %add34 to i8
  %35 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %conv35, i8* %35, align 1, !tbaa !1
  %36 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr36, i8** %out.addr, align 8, !tbaa !4
  %37 = load i8, i8* %last, align 1, !tbaa !1
  %38 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %37, i8* %38, align 1, !tbaa !1
  %39 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr37 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr37, i8** %out.addr, align 8, !tbaa !4
  %40 = load i32, i32* %available, align 4, !tbaa !6
  %sub38 = sub nsw i32 %40, 2
  store i32 %sub38, i32* %available, align 4, !tbaa !6
  %41 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %42 = load i8, i8* %41, align 1, !tbaa !1
  %conv39 = zext i8 %42 to i32
  %43 = load i8, i8* %last, align 1, !tbaa !1
  %conv40 = zext i8 %43 to i32
  %cmp41 = icmp ne i32 %conv39, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %do.end
  br label %state1

if.end.44:                                        ; preds = %do.end
  %44 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %45 = load i8*, i8** %end, align 8, !tbaa !4
  %cmp45 = icmp eq i8* %44, %45
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  br label %finished

if.end.48:                                        ; preds = %if.end.44
  %46 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %incdec.ptr49 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr49, i8** %in.addr, align 8, !tbaa !4
  br label %state1

state4:                                           ; preds = %if.end.129, %if.end.13
  br label %do.body.50

do.body.50:                                       ; preds = %land.end, %state4
  %47 = load i8, i8* %last, align 1, !tbaa !1
  %48 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %47, i8* %48, align 1, !tbaa !1
  %49 = load i32, i32* %stored, align 4, !tbaa !6
  %inc51 = add nsw i32 %49, 1
  store i32 %inc51, i32* %stored, align 4, !tbaa !6
  %50 = load i32, i32* %available, align 4, !tbaa !6
  %dec52 = add nsw i32 %50, -1
  store i32 %dec52, i32* %available, align 4, !tbaa !6
  %51 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr53 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr53, i8** %out.addr, align 8, !tbaa !4
  %52 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %53 = load i8*, i8** %end, align 8, !tbaa !4
  %cmp54 = icmp eq i8* %52, %53
  br i1 %cmp54, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %do.body.50
  %54 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %55 = load i8, i8* %54, align 1, !tbaa !1
  %56 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %55, i8* %56, align 1, !tbaa !1
  %57 = load i32, i32* %stored, align 4, !tbaa !6
  %inc57 = add nsw i32 %57, 1
  store i32 %inc57, i32* %stored, align 4, !tbaa !6
  %58 = load i32, i32* %available, align 4, !tbaa !6
  %dec58 = add nsw i32 %58, -1
  store i32 %dec58, i32* %available, align 4, !tbaa !6
  %59 = load i32, i32* %stored, align 4, !tbaa !6
  %sub59 = sub nsw i32 %59, 1
  %conv60 = trunc i32 %sub59 to i8
  %60 = load i32, i32* %stored, align 4, !tbaa !6
  %sub61 = sub nsw i32 0, %60
  %idxprom = sext i32 %sub61 to i64
  %61 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, i8* %61, i64 %idxprom
  store i8 %conv60, i8* %arrayidx, align 1, !tbaa !1
  br label %finished

if.end.62:                                        ; preds = %do.body.50
  %62 = load i32, i32* %available, align 4, !tbaa !6
  %cmp63 = icmp slt i32 %62, 2
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.62
  %63 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %64 = load i8, i8* %63, align 1, !tbaa !1
  store i8 %64, i8* %last, align 1, !tbaa !1
  %65 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %incdec.ptr67 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr67, i8** %in.addr, align 8, !tbaa !4
  br label %do.cond.68

do.cond.68:                                       ; preds = %if.end.66
  %66 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %67 = load i8, i8* %66, align 1, !tbaa !1
  %conv69 = zext i8 %67 to i32
  %68 = load i8, i8* %last, align 1, !tbaa !1
  %conv70 = zext i8 %68 to i32
  %cmp71 = icmp ne i32 %conv69, %conv70
  br i1 %cmp71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.68
  %69 = load i32, i32* %stored, align 4, !tbaa !6
  %cmp73 = icmp sle i32 %69, 126
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.68
  %70 = phi i1 [ false, %do.cond.68 ], [ %cmp73, %land.rhs ]
  br i1 %70, label %do.body.50, label %do.end.75

do.end.75:                                        ; preds = %land.end
  %71 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %72 = load i8, i8* %71, align 1, !tbaa !1
  %conv76 = zext i8 %72 to i32
  %73 = load i8, i8* %last, align 1, !tbaa !1
  %conv77 = zext i8 %73 to i32
  %cmp78 = icmp eq i32 %conv76, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.91

if.then.80:                                       ; preds = %do.end.75
  %74 = load i32, i32* %stored, align 4, !tbaa !6
  %cmp81 = icmp slt i32 %74, 126
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.80
  br label %state5

if.end.84:                                        ; preds = %if.then.80
  %75 = load i32, i32* %stored, align 4, !tbaa !6
  %sub85 = sub nsw i32 %75, 1
  %conv86 = trunc i32 %sub85 to i8
  %76 = load i32, i32* %stored, align 4, !tbaa !6
  %sub87 = sub nsw i32 0, %76
  %sub88 = sub nsw i32 %sub87, 1
  %idxprom89 = sext i32 %sub88 to i64
  %77 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds i8, i8* %77, i64 %idxprom89
  store i8 %conv86, i8* %arrayidx90, align 1, !tbaa !1
  store i32 2, i32* %repeated, align 4, !tbaa !6
  br label %state3

if.end.91:                                        ; preds = %do.end.75
  %78 = load i8, i8* %last, align 1, !tbaa !1
  %79 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %78, i8* %79, align 1, !tbaa !1
  %80 = load i32, i32* %stored, align 4, !tbaa !6
  %inc92 = add nsw i32 %80, 1
  store i32 %inc92, i32* %stored, align 4, !tbaa !6
  %81 = load i32, i32* %available, align 4, !tbaa !6
  %dec93 = add nsw i32 %81, -1
  store i32 %dec93, i32* %available, align 4, !tbaa !6
  %82 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr94 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr94, i8** %out.addr, align 8, !tbaa !4
  %83 = load i32, i32* %stored, align 4, !tbaa !6
  %sub95 = sub nsw i32 %83, 1
  %conv96 = trunc i32 %sub95 to i8
  %84 = load i32, i32* %stored, align 4, !tbaa !6
  %sub97 = sub nsw i32 0, %84
  %sub98 = sub nsw i32 %sub97, 1
  %idxprom99 = sext i32 %sub98 to i64
  %85 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds i8, i8* %85, i64 %idxprom99
  store i8 %conv96, i8* %arrayidx100, align 1, !tbaa !1
  br label %state1

state5:                                           ; preds = %if.then.83
  %86 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %87 = load i8*, i8** %end, align 8, !tbaa !4
  %cmp101 = icmp eq i8* %86, %87
  br i1 %cmp101, label %if.then.103, label %if.end.112

if.then.103:                                      ; preds = %state5
  %88 = load i8, i8* %last, align 1, !tbaa !1
  %89 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %88, i8* %89, align 1, !tbaa !1
  %90 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr104 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr104, i8** %out.addr, align 8, !tbaa !4
  %91 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %92 = load i8, i8* %91, align 1, !tbaa !1
  %93 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %92, i8* %93, align 1, !tbaa !1
  %94 = load i32, i32* %stored, align 4, !tbaa !6
  %add105 = add nsw i32 %94, 2
  store i32 %add105, i32* %stored, align 4, !tbaa !6
  %95 = load i32, i32* %available, align 4, !tbaa !6
  %sub106 = sub nsw i32 %95, 2
  store i32 %sub106, i32* %available, align 4, !tbaa !6
  %96 = load i32, i32* %stored, align 4, !tbaa !6
  %sub107 = sub nsw i32 %96, 1
  %conv108 = trunc i32 %sub107 to i8
  %97 = load i32, i32* %stored, align 4, !tbaa !6
  %sub109 = sub nsw i32 0, %97
  %idxprom110 = sext i32 %sub109 to i64
  %98 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %arrayidx111 = getelementptr inbounds i8, i8* %98, i64 %idxprom110
  store i8 %conv108, i8* %arrayidx111, align 1, !tbaa !1
  br label %finished

if.end.112:                                       ; preds = %state5
  %99 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %incdec.ptr113 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr113, i8** %in.addr, align 8, !tbaa !4
  %100 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %101 = load i8, i8* %100, align 1, !tbaa !1
  %conv114 = zext i8 %101 to i32
  %102 = load i8, i8* %last, align 1, !tbaa !1
  %conv115 = zext i8 %102 to i32
  %cmp116 = icmp eq i32 %conv114, %conv115
  br i1 %cmp116, label %if.then.118, label %if.end.125

if.then.118:                                      ; preds = %if.end.112
  %103 = load i32, i32* %stored, align 4, !tbaa !6
  %sub119 = sub nsw i32 %103, 1
  %conv120 = trunc i32 %sub119 to i8
  %104 = load i32, i32* %stored, align 4, !tbaa !6
  %sub121 = sub nsw i32 0, %104
  %sub122 = sub nsw i32 %sub121, 1
  %idxprom123 = sext i32 %sub122 to i64
  %105 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %arrayidx124 = getelementptr inbounds i8, i8* %105, i64 %idxprom123
  store i8 %conv120, i8* %arrayidx124, align 1, !tbaa !1
  store i32 3, i32* %repeated, align 4, !tbaa !6
  br label %state3

if.end.125:                                       ; preds = %if.end.112
  %106 = load i32, i32* %available, align 4, !tbaa !6
  %cmp126 = icmp slt i32 %106, 3
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.125
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.129:                                       ; preds = %if.end.125
  %107 = load i8, i8* %last, align 1, !tbaa !1
  %108 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %107, i8* %108, align 1, !tbaa !1
  %109 = load i32, i32* %stored, align 4, !tbaa !6
  %inc130 = add nsw i32 %109, 1
  store i32 %inc130, i32* %stored, align 4, !tbaa !6
  %110 = load i32, i32* %available, align 4, !tbaa !6
  %dec131 = add nsw i32 %110, -1
  store i32 %dec131, i32* %available, align 4, !tbaa !6
  %111 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr132 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr132, i8** %out.addr, align 8, !tbaa !4
  br label %state4

finished:                                         ; preds = %if.then.103, %if.then.56, %if.then.47, %if.end
  %112 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %113 = load i32, i32* %available, align 4, !tbaa !6
  %sub133 = sub nsw i32 %112, %113
  store i32 %sub133, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %finished, %if.then.128, %if.then.65, %if.then.18, %if.then.12, %if.then.3
  %114 = bitcast i32* %stored to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %repeated to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %available to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  call void @llvm.lifetime.end(i64 1, i8* %last) #1
  %118 = load i32, i32* %retval
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_delta(i8* %in, i32 %incount, i8* %prev, i32 %prevcount, i8* %out, i32 %maxoutcount) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %incount.addr = alloca i32, align 4
  %prev.addr = alloca i8*, align 8
  %prevcount.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %maxoutcount.addr = alloca i32, align 4
  %absoffset = alloca i32, align 4
  %mincount = alloca i32, align 4
  %opos = alloca i32, align 4
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %reloffset = alloca i32, align 4
  %written = alloca i32, align 4
  %reloffset59 = alloca i32, align 4
  %written78 = alloca i32, align 4
  %zero_block = alloca [8 x i8], align 1
  %reloffset112 = alloca i32, align 4
  %written131 = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8, !tbaa !4
  store i32 %incount, i32* %incount.addr, align 4, !tbaa !6
  store i8* %prev, i8** %prev.addr, align 8, !tbaa !4
  store i32 %prevcount, i32* %prevcount.addr, align 4, !tbaa !6
  store i8* %out, i8** %out.addr, align 8, !tbaa !4
  store i32 %maxoutcount, i32* %maxoutcount.addr, align 4, !tbaa !6
  %0 = bitcast i32* %absoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %mincount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %opos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %6 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %9 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %10 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %conv = sext i32 %10 to i64
  %call = call i32 @memcmp(i8* %8, i8* %9, i64 %conv) #8
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

if.end:                                           ; preds = %lor.lhs.false, %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

if.end.6:                                         ; preds = %entry
  %11 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %12 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %13 = load i32, i32* %incount.addr, align 4, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  %14 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, i32* %mincount, align 4, !tbaa !6
  store i32 0, i32* %pos, align 4, !tbaa !6
  store i32 0, i32* %opos, align 4, !tbaa !6
  store i32 0, i32* %absoffset, align 4, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %cond.end
  %15 = load i32, i32* %pos, align 4, !tbaa !6
  %16 = load i32, i32* %mincount, align 4, !tbaa !6
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom = sext i32 %17 to i64
  %18 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !1
  %conv11 = zext i8 %19 to i32
  %20 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom12 = sext i32 %20 to i64
  %21 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i8, i8* %21, i64 %idxprom12
  %22 = load i8, i8* %arrayidx13, align 1, !tbaa !1
  %conv14 = zext i8 %22 to i32
  %cmp15 = icmp ne i32 %conv11, %conv14
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %while.body
  %23 = bitcast i32* %reloffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %pos, align 4, !tbaa !6
  %25 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub = sub nsw i32 %24, %25
  store i32 %sub, i32* %reloffset, align 4, !tbaa !6
  %26 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %26, i32* %absoffset, align 4, !tbaa !6
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.17
  %27 = load i32, i32* %pos, align 4, !tbaa !6
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %pos, align 4, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i32, i32* %pos, align 4, !tbaa !6
  %29 = load i32, i32* %mincount, align 4, !tbaa !6
  %cmp18 = icmp slt i32 %28, %29
  br i1 %cmp18, label %land.lhs.true.20, label %land.end

land.lhs.true.20:                                 ; preds = %do.cond
  %30 = load i32, i32* %pos, align 4, !tbaa !6
  %31 = load i32, i32* %absoffset, align 4, !tbaa !6
  %add = add nsw i32 %31, 8
  %cmp21 = icmp slt i32 %30, %add
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.20
  %32 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom23 = sext i32 %32 to i64
  %33 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds i8, i8* %33, i64 %idxprom23
  %34 = load i8, i8* %arrayidx24, align 1, !tbaa !1
  %conv25 = zext i8 %34 to i32
  %35 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom26 = sext i32 %35 to i64
  %36 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds i8, i8* %36, i64 %idxprom26
  %37 = load i8, i8* %arrayidx27, align 1, !tbaa !1
  %conv28 = zext i8 %37 to i32
  %cmp29 = icmp ne i32 %conv25, %conv28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.20, %do.cond
  %38 = phi i1 [ false, %land.lhs.true.20 ], [ false, %do.cond ], [ %cmp29, %land.rhs ]
  br i1 %38, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %39 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %41 = load i32, i32* %opos, align 4, !tbaa !6
  %idx.ext = sext i32 %41 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  %42 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %43 = load i32, i32* %opos, align 4, !tbaa !6
  %sub31 = sub nsw i32 %42, %43
  %44 = load i32, i32* %reloffset, align 4, !tbaa !6
  %45 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %46 = load i32, i32* %absoffset, align 4, !tbaa !6
  %idx.ext32 = sext i32 %46 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %45, i64 %idx.ext32
  %47 = load i32, i32* %pos, align 4, !tbaa !6
  %48 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub34 = sub nsw i32 %47, %48
  %call35 = call i32 @write_delta_replacement(i8* %add.ptr, i32 %sub31, i32 %44, i8* %add.ptr33, i32 %sub34) #7
  store i32 %call35, i32* %written, align 4, !tbaa !6
  %49 = load i32, i32* %written, align 4, !tbaa !6
  %cmp36 = icmp slt i32 %49, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %do.end
  %50 = load i32, i32* %written, align 4, !tbaa !6
  %51 = load i32, i32* %opos, align 4, !tbaa !6
  %add40 = add nsw i32 %51, %50
  store i32 %add40, i32* %opos, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then.38
  %52 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %53 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %53, i32* %absoffset, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.41

cleanup.41:                                       ; preds = %cleanup.cont, %cleanup
  %54 = bitcast i32* %reloffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %cleanup.dest.42 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.42, label %cleanup.161 [
    i32 0, label %cleanup.cont.43
  ]

cleanup.cont.43:                                  ; preds = %cleanup.41
  br label %if.end.45

if.else:                                          ; preds = %while.body
  %55 = load i32, i32* %pos, align 4, !tbaa !6
  %inc44 = add nsw i32 %55, 1
  store i32 %inc44, i32* %pos, align 4, !tbaa !6
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %cleanup.cont.43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load i32, i32* %mincount, align 4, !tbaa !6
  %57 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp46 = icmp slt i32 %56, %57
  br i1 %cmp46, label %if.then.48, label %if.else.101

if.then.48:                                       ; preds = %while.end
  br label %while.cond.49

while.cond.49:                                    ; preds = %if.end.99, %if.then.48
  %58 = load i32, i32* %pos, align 4, !tbaa !6
  %59 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp50 = icmp slt i32 %58, %59
  br i1 %cmp50, label %while.body.52, label %while.end.100

while.body.52:                                    ; preds = %while.cond.49
  %60 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom53 = sext i32 %60 to i64
  %61 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %arrayidx54 = getelementptr inbounds i8, i8* %61, i64 %idxprom53
  %62 = load i8, i8* %arrayidx54, align 1, !tbaa !1
  %conv55 = zext i8 %62 to i32
  %cmp56 = icmp ne i32 %conv55, 0
  br i1 %cmp56, label %if.then.58, label %if.else.97

if.then.58:                                       ; preds = %while.body.52
  %63 = bitcast i32* %reloffset59 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load i32, i32* %pos, align 4, !tbaa !6
  %65 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub60 = sub nsw i32 %64, %65
  store i32 %sub60, i32* %reloffset59, align 4, !tbaa !6
  %66 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %66, i32* %absoffset, align 4, !tbaa !6
  br label %do.body.61

do.body.61:                                       ; preds = %land.end.76, %if.then.58
  %67 = load i32, i32* %pos, align 4, !tbaa !6
  %inc62 = add nsw i32 %67, 1
  store i32 %inc62, i32* %pos, align 4, !tbaa !6
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.body.61
  %68 = load i32, i32* %pos, align 4, !tbaa !6
  %69 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp64 = icmp slt i32 %68, %69
  br i1 %cmp64, label %land.lhs.true.66, label %land.end.76

land.lhs.true.66:                                 ; preds = %do.cond.63
  %70 = load i32, i32* %pos, align 4, !tbaa !6
  %71 = load i32, i32* %absoffset, align 4, !tbaa !6
  %add67 = add nsw i32 %71, 8
  %cmp68 = icmp slt i32 %70, %add67
  br i1 %cmp68, label %land.rhs.70, label %land.end.76

land.rhs.70:                                      ; preds = %land.lhs.true.66
  %72 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom71 = sext i32 %72 to i64
  %73 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %arrayidx72 = getelementptr inbounds i8, i8* %73, i64 %idxprom71
  %74 = load i8, i8* %arrayidx72, align 1, !tbaa !1
  %conv73 = zext i8 %74 to i32
  %cmp74 = icmp ne i32 %conv73, 0
  br label %land.end.76

land.end.76:                                      ; preds = %land.rhs.70, %land.lhs.true.66, %do.cond.63
  %75 = phi i1 [ false, %land.lhs.true.66 ], [ false, %do.cond.63 ], [ %cmp74, %land.rhs.70 ]
  br i1 %75, label %do.body.61, label %do.end.77

do.end.77:                                        ; preds = %land.end.76
  %76 = bitcast i32* %written78 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %78 = load i32, i32* %opos, align 4, !tbaa !6
  %idx.ext79 = sext i32 %78 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %77, i64 %idx.ext79
  %79 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %80 = load i32, i32* %opos, align 4, !tbaa !6
  %sub81 = sub nsw i32 %79, %80
  %81 = load i32, i32* %reloffset59, align 4, !tbaa !6
  %82 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %83 = load i32, i32* %absoffset, align 4, !tbaa !6
  %idx.ext82 = sext i32 %83 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %82, i64 %idx.ext82
  %84 = load i32, i32* %pos, align 4, !tbaa !6
  %85 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub84 = sub nsw i32 %84, %85
  %call85 = call i32 @write_delta_replacement(i8* %add.ptr80, i32 %sub81, i32 %81, i8* %add.ptr83, i32 %sub84) #7
  store i32 %call85, i32* %written78, align 4, !tbaa !6
  %86 = load i32, i32* %written78, align 4, !tbaa !6
  %cmp86 = icmp slt i32 %86, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %do.end.77
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.89:                                        ; preds = %do.end.77
  %87 = load i32, i32* %written78, align 4, !tbaa !6
  %88 = load i32, i32* %opos, align 4, !tbaa !6
  %add90 = add nsw i32 %88, %87
  store i32 %add90, i32* %opos, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.91

cleanup.91:                                       ; preds = %if.end.89, %if.then.88
  %89 = bitcast i32* %written78 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %cleanup.dest.92 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.92, label %cleanup.94 [
    i32 0, label %cleanup.cont.93
  ]

cleanup.cont.93:                                  ; preds = %cleanup.91
  %90 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %90, i32* %absoffset, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.94

cleanup.94:                                       ; preds = %cleanup.cont.93, %cleanup.91
  %91 = bitcast i32* %reloffset59 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %cleanup.dest.95 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.95, label %cleanup.161 [
    i32 0, label %cleanup.cont.96
  ]

cleanup.cont.96:                                  ; preds = %cleanup.94
  br label %if.end.99

if.else.97:                                       ; preds = %while.body.52
  %92 = load i32, i32* %pos, align 4, !tbaa !6
  %inc98 = add nsw i32 %92, 1
  store i32 %inc98, i32* %pos, align 4, !tbaa !6
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %cleanup.cont.96
  br label %while.cond.49

while.end.100:                                    ; preds = %while.cond.49
  br label %if.end.155

if.else.101:                                      ; preds = %while.end
  %93 = bitcast [8 x i8]* %zero_block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = bitcast [8 x i8]* %zero_block to i8*
  call void @llvm.memset.p0i8.i64(i8* %94, i8 0, i64 8, i32 1, i1 false)
  br label %while.cond.102

while.cond.102:                                   ; preds = %if.end.150, %if.else.101
  %95 = load i32, i32* %pos, align 4, !tbaa !6
  %96 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  %cmp103 = icmp slt i32 %95, %96
  br i1 %cmp103, label %while.body.105, label %while.end.151

while.body.105:                                   ; preds = %while.cond.102
  %97 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom106 = sext i32 %97 to i64
  %98 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %arrayidx107 = getelementptr inbounds i8, i8* %98, i64 %idxprom106
  %99 = load i8, i8* %arrayidx107, align 1, !tbaa !1
  %conv108 = zext i8 %99 to i32
  %cmp109 = icmp ne i32 0, %conv108
  br i1 %cmp109, label %if.then.111, label %if.else.148

if.then.111:                                      ; preds = %while.body.105
  %100 = bitcast i32* %reloffset112 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = load i32, i32* %pos, align 4, !tbaa !6
  %102 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub113 = sub nsw i32 %101, %102
  store i32 %sub113, i32* %reloffset112, align 4, !tbaa !6
  %103 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %103, i32* %absoffset, align 4, !tbaa !6
  br label %do.body.114

do.body.114:                                      ; preds = %land.end.129, %if.then.111
  %104 = load i32, i32* %pos, align 4, !tbaa !6
  %inc115 = add nsw i32 %104, 1
  store i32 %inc115, i32* %pos, align 4, !tbaa !6
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.114
  %105 = load i32, i32* %pos, align 4, !tbaa !6
  %106 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  %cmp117 = icmp slt i32 %105, %106
  br i1 %cmp117, label %land.lhs.true.119, label %land.end.129

land.lhs.true.119:                                ; preds = %do.cond.116
  %107 = load i32, i32* %pos, align 4, !tbaa !6
  %108 = load i32, i32* %absoffset, align 4, !tbaa !6
  %add120 = add nsw i32 %108, 8
  %cmp121 = icmp slt i32 %107, %add120
  br i1 %cmp121, label %land.rhs.123, label %land.end.129

land.rhs.123:                                     ; preds = %land.lhs.true.119
  %109 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom124 = sext i32 %109 to i64
  %110 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %arrayidx125 = getelementptr inbounds i8, i8* %110, i64 %idxprom124
  %111 = load i8, i8* %arrayidx125, align 1, !tbaa !1
  %conv126 = zext i8 %111 to i32
  %cmp127 = icmp ne i32 0, %conv126
  br label %land.end.129

land.end.129:                                     ; preds = %land.rhs.123, %land.lhs.true.119, %do.cond.116
  %112 = phi i1 [ false, %land.lhs.true.119 ], [ false, %do.cond.116 ], [ %cmp127, %land.rhs.123 ]
  br i1 %112, label %do.body.114, label %do.end.130

do.end.130:                                       ; preds = %land.end.129
  %113 = bitcast i32* %written131 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %115 = load i32, i32* %opos, align 4, !tbaa !6
  %idx.ext132 = sext i32 %115 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %114, i64 %idx.ext132
  %116 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %117 = load i32, i32* %opos, align 4, !tbaa !6
  %sub134 = sub nsw i32 %116, %117
  %118 = load i32, i32* %reloffset112, align 4, !tbaa !6
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %zero_block, i32 0, i32 0
  %119 = load i32, i32* %pos, align 4, !tbaa !6
  %120 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub135 = sub nsw i32 %119, %120
  %call136 = call i32 @write_delta_replacement(i8* %add.ptr133, i32 %sub134, i32 %118, i8* %arraydecay, i32 %sub135) #7
  store i32 %call136, i32* %written131, align 4, !tbaa !6
  %121 = load i32, i32* %written131, align 4, !tbaa !6
  %cmp137 = icmp slt i32 %121, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.end.130
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.142

if.end.140:                                       ; preds = %do.end.130
  %122 = load i32, i32* %written131, align 4, !tbaa !6
  %123 = load i32, i32* %opos, align 4, !tbaa !6
  %add141 = add nsw i32 %123, %122
  store i32 %add141, i32* %opos, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.142

cleanup.142:                                      ; preds = %if.end.140, %if.then.139
  %124 = bitcast i32* %written131 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %cleanup.dest.143 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.143, label %cleanup.145 [
    i32 0, label %cleanup.cont.144
  ]

cleanup.cont.144:                                 ; preds = %cleanup.142
  %125 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %125, i32* %absoffset, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.145

cleanup.145:                                      ; preds = %cleanup.cont.144, %cleanup.142
  %126 = bitcast i32* %reloffset112 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %cleanup.dest.146 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.146, label %cleanup.152 [
    i32 0, label %cleanup.cont.147
  ]

cleanup.cont.147:                                 ; preds = %cleanup.145
  br label %if.end.150

if.else.148:                                      ; preds = %while.body.105
  %127 = load i32, i32* %pos, align 4, !tbaa !6
  %inc149 = add nsw i32 %127, 1
  store i32 %inc149, i32* %pos, align 4, !tbaa !6
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.148, %cleanup.cont.147
  br label %while.cond.102

while.end.151:                                    ; preds = %while.cond.102
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.152

cleanup.152:                                      ; preds = %while.end.151, %cleanup.145
  %128 = bitcast [8 x i8]* %zero_block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %cleanup.dest.153 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.153, label %cleanup.161 [
    i32 0, label %cleanup.cont.154
  ]

cleanup.cont.154:                                 ; preds = %cleanup.152
  br label %if.end.155

if.end.155:                                       ; preds = %cleanup.cont.154, %while.end.100
  %129 = load i32, i32* %opos, align 4, !tbaa !6
  %130 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %cmp156 = icmp sle i32 %129, %130
  br i1 %cmp156, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %if.end.155
  br label %cond.end.160

cond.false.159:                                   ; preds = %if.end.155
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 407, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.compress_delta, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.160

cond.end.160:                                     ; preds = %131, %cond.true.158
  %132 = load i32, i32* %opos, align 4, !tbaa !6
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

cleanup.161:                                      ; preds = %cond.end.160, %cleanup.152, %cleanup.94, %cleanup.41, %if.end, %if.then.5
  %133 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %opos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %mincount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %absoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = load i32, i32* %retval
  ret i32 %137
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_crdr(i8* %in, i32 %incount, i8* %prev, i32 %prevcount, i8* %out, i32 %maxoutcount) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %incount.addr = alloca i32, align 4
  %prev.addr = alloca i8*, align 8
  %prevcount.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %maxoutcount.addr = alloca i32, align 4
  %absoffset = alloca i32, align 4
  %mincount = alloca i32, align 4
  %opos = alloca i32, align 4
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %reloffset = alloca i32, align 4
  %written = alloca i32, align 4
  %reloffset54 = alloca i32, align 4
  %written56 = alloca i32, align 4
  %reloffset101 = alloca i32, align 4
  %written103 = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8, !tbaa !4
  store i32 %incount, i32* %incount.addr, align 4, !tbaa !6
  store i8* %prev, i8** %prev.addr, align 8, !tbaa !4
  store i32 %prevcount, i32* %prevcount.addr, align 4, !tbaa !6
  store i8* %out, i8** %out.addr, align 8, !tbaa !4
  store i32 %maxoutcount, i32* %maxoutcount.addr, align 4, !tbaa !6
  %0 = bitcast i32* %absoffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %absoffset, align 4, !tbaa !6
  %1 = bitcast i32* %mincount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %3 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %incount.addr, align 4, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %mincount, align 4, !tbaa !6
  %6 = bitcast i32* %opos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %opos, align 4, !tbaa !6
  %7 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %pos, align 4, !tbaa !6
  %8 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then, label %if.end.7

if.then:                                          ; preds = %cond.end
  %9 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %10 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  %cmp2 = icmp eq i32 %9, %10
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %11 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %13 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %14 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %conv = sext i32 %14 to i64
  %call = call i32 @memcmp(i8* %12, i8* %13, i64 %conv) #8
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end:                                           ; preds = %lor.lhs.false, %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

if.end.7:                                         ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.38, %if.end.7
  %15 = load i32, i32* %pos, align 4, !tbaa !6
  %16 = load i32, i32* %mincount, align 4, !tbaa !6
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom = sext i32 %17 to i64
  %18 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !1
  %conv10 = zext i8 %19 to i32
  %20 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom11 = sext i32 %20 to i64
  %21 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i8, i8* %21, i64 %idxprom11
  %22 = load i8, i8* %arrayidx12, align 1, !tbaa !1
  %conv13 = zext i8 %22 to i32
  %cmp14 = icmp eq i32 %conv10, %conv13
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.body
  %23 = load i32, i32* %pos, align 4, !tbaa !6
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %pos, align 4, !tbaa !6
  br label %if.end.38

if.else:                                          ; preds = %while.body
  %24 = bitcast i32* %reloffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %pos, align 4, !tbaa !6
  %26 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub = sub nsw i32 %25, %26
  store i32 %sub, i32* %reloffset, align 4, !tbaa !6
  %27 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %28, i32* %absoffset, align 4, !tbaa !6
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %29 = load i32, i32* %pos, align 4, !tbaa !6
  %inc17 = add nsw i32 %29, 1
  store i32 %inc17, i32* %pos, align 4, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %30 = load i32, i32* %pos, align 4, !tbaa !6
  %31 = load i32, i32* %mincount, align 4, !tbaa !6
  %cmp18 = icmp slt i32 %30, %31
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %32 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom20 = sext i32 %32 to i64
  %33 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds i8, i8* %33, i64 %idxprom20
  %34 = load i8, i8* %arrayidx21, align 1, !tbaa !1
  %conv22 = zext i8 %34 to i32
  %35 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom23 = sext i32 %35 to i64
  %36 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds i8, i8* %36, i64 %idxprom23
  %37 = load i8, i8* %arrayidx24, align 1, !tbaa !1
  %conv25 = zext i8 %37 to i32
  %cmp26 = icmp ne i32 %conv22, %conv25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %38 = phi i1 [ false, %do.cond ], [ %cmp26, %land.rhs ]
  br i1 %38, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %39 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %40 = load i32, i32* %opos, align 4, !tbaa !6
  %idx.ext = sext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  %41 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %42 = load i32, i32* %opos, align 4, !tbaa !6
  %sub28 = sub nsw i32 %41, %42
  %43 = load i32, i32* %reloffset, align 4, !tbaa !6
  %44 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %45 = load i32, i32* %absoffset, align 4, !tbaa !6
  %idx.ext29 = sext i32 %45 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %44, i64 %idx.ext29
  %46 = load i32, i32* %pos, align 4, !tbaa !6
  %47 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub31 = sub nsw i32 %46, %47
  %call32 = call i32 @write_crdr_replacement(i8* %add.ptr, i32 %sub28, i32 %43, i8* %add.ptr30, i32 %sub31) #7
  store i32 %call32, i32* %written, align 4, !tbaa !6
  %48 = load i32, i32* %written, align 4, !tbaa !6
  %cmp33 = icmp slt i32 %48, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.end
  %49 = load i32, i32* %written, align 4, !tbaa !6
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %do.end
  %50 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %50, i32* %absoffset, align 4, !tbaa !6
  %51 = load i32, i32* %written, align 4, !tbaa !6
  %52 = load i32, i32* %opos, align 4, !tbaa !6
  %add = add nsw i32 %52, %51
  store i32 %add, i32* %opos, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.35
  %53 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %reloffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.134 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %if.then.16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %55 = load i32, i32* %mincount, align 4, !tbaa !6
  %56 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp39 = icmp slt i32 %55, %56
  br i1 %cmp39, label %if.then.41, label %if.else.88

if.then.41:                                       ; preds = %while.end
  br label %while.cond.42

while.cond.42:                                    ; preds = %if.end.86, %if.then.41
  %57 = load i32, i32* %pos, align 4, !tbaa !6
  %58 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp43 = icmp slt i32 %57, %58
  br i1 %cmp43, label %while.body.45, label %while.end.87

while.body.45:                                    ; preds = %while.cond.42
  %59 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom46 = sext i32 %59 to i64
  %60 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %arrayidx47 = getelementptr inbounds i8, i8* %60, i64 %idxprom46
  %61 = load i8, i8* %arrayidx47, align 1, !tbaa !1
  %conv48 = zext i8 %61 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %while.body.45
  %62 = load i32, i32* %pos, align 4, !tbaa !6
  %inc52 = add nsw i32 %62, 1
  store i32 %inc52, i32* %pos, align 4, !tbaa !6
  br label %if.end.86

if.else.53:                                       ; preds = %while.body.45
  %63 = bitcast i32* %reloffset54 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load i32, i32* %pos, align 4, !tbaa !6
  %65 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub55 = sub nsw i32 %64, %65
  store i32 %sub55, i32* %reloffset54, align 4, !tbaa !6
  %66 = bitcast i32* %written56 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %67, i32* %absoffset, align 4, !tbaa !6
  br label %do.body.57

do.body.57:                                       ; preds = %land.end.68, %if.else.53
  %68 = load i32, i32* %pos, align 4, !tbaa !6
  %inc58 = add nsw i32 %68, 1
  store i32 %inc58, i32* %pos, align 4, !tbaa !6
  br label %do.cond.59

do.cond.59:                                       ; preds = %do.body.57
  %69 = load i32, i32* %pos, align 4, !tbaa !6
  %70 = load i32, i32* %incount.addr, align 4, !tbaa !6
  %cmp60 = icmp slt i32 %69, %70
  br i1 %cmp60, label %land.rhs.62, label %land.end.68

land.rhs.62:                                      ; preds = %do.cond.59
  %71 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom63 = sext i32 %71 to i64
  %72 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %arrayidx64 = getelementptr inbounds i8, i8* %72, i64 %idxprom63
  %73 = load i8, i8* %arrayidx64, align 1, !tbaa !1
  %conv65 = zext i8 %73 to i32
  %cmp66 = icmp ne i32 %conv65, 0
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.62, %do.cond.59
  %74 = phi i1 [ false, %do.cond.59 ], [ %cmp66, %land.rhs.62 ]
  br i1 %74, label %do.body.57, label %do.end.69

do.end.69:                                        ; preds = %land.end.68
  %75 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %76 = load i32, i32* %opos, align 4, !tbaa !6
  %idx.ext70 = sext i32 %76 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %75, i64 %idx.ext70
  %77 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %78 = load i32, i32* %opos, align 4, !tbaa !6
  %sub72 = sub nsw i32 %77, %78
  %79 = load i32, i32* %reloffset54, align 4, !tbaa !6
  %80 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %81 = load i32, i32* %absoffset, align 4, !tbaa !6
  %idx.ext73 = sext i32 %81 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %80, i64 %idx.ext73
  %82 = load i32, i32* %pos, align 4, !tbaa !6
  %83 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub75 = sub nsw i32 %82, %83
  %call76 = call i32 @write_crdr_replacement(i8* %add.ptr71, i32 %sub72, i32 %79, i8* %add.ptr74, i32 %sub75) #7
  store i32 %call76, i32* %written56, align 4, !tbaa !6
  %84 = load i32, i32* %written56, align 4, !tbaa !6
  %cmp77 = icmp slt i32 %84, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %do.end.69
  %85 = load i32, i32* %written56, align 4, !tbaa !6
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.80:                                        ; preds = %do.end.69
  %86 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %86, i32* %absoffset, align 4, !tbaa !6
  %87 = load i32, i32* %written56, align 4, !tbaa !6
  %88 = load i32, i32* %opos, align 4, !tbaa !6
  %add81 = add nsw i32 %88, %87
  store i32 %add81, i32* %opos, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %if.end.80, %if.then.79
  %89 = bitcast i32* %written56 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %reloffset54 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %cleanup.dest.84 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.84, label %cleanup.134 [
    i32 0, label %cleanup.cont.85
  ]

cleanup.cont.85:                                  ; preds = %cleanup.82
  br label %if.end.86

if.end.86:                                        ; preds = %cleanup.cont.85, %if.then.51
  br label %while.cond.42

while.end.87:                                     ; preds = %while.cond.42
  br label %if.end.133

if.else.88:                                       ; preds = %while.end
  br label %while.cond.89

while.cond.89:                                    ; preds = %if.end.131, %if.else.88
  %91 = load i32, i32* %pos, align 4, !tbaa !6
  %92 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  %cmp90 = icmp slt i32 %91, %92
  br i1 %cmp90, label %while.body.92, label %while.end.132

while.body.92:                                    ; preds = %while.cond.89
  %93 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom93 = sext i32 %93 to i64
  %94 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds i8, i8* %94, i64 %idxprom93
  %95 = load i8, i8* %arrayidx94, align 1, !tbaa !1
  %conv95 = zext i8 %95 to i32
  %cmp96 = icmp eq i32 0, %conv95
  br i1 %cmp96, label %if.then.98, label %if.else.100

if.then.98:                                       ; preds = %while.body.92
  %96 = load i32, i32* %pos, align 4, !tbaa !6
  %inc99 = add nsw i32 %96, 1
  store i32 %inc99, i32* %pos, align 4, !tbaa !6
  br label %if.end.131

if.else.100:                                      ; preds = %while.body.92
  %97 = bitcast i32* %reloffset101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = load i32, i32* %pos, align 4, !tbaa !6
  %99 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub102 = sub nsw i32 %98, %99
  store i32 %sub102, i32* %reloffset101, align 4, !tbaa !6
  %100 = bitcast i32* %written103 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %101, i32* %absoffset, align 4, !tbaa !6
  br label %do.body.104

do.body.104:                                      ; preds = %land.end.115, %if.else.100
  %102 = load i32, i32* %pos, align 4, !tbaa !6
  %inc105 = add nsw i32 %102, 1
  store i32 %inc105, i32* %pos, align 4, !tbaa !6
  br label %do.cond.106

do.cond.106:                                      ; preds = %do.body.104
  %103 = load i32, i32* %pos, align 4, !tbaa !6
  %104 = load i32, i32* %prevcount.addr, align 4, !tbaa !6
  %cmp107 = icmp slt i32 %103, %104
  br i1 %cmp107, label %land.rhs.109, label %land.end.115

land.rhs.109:                                     ; preds = %do.cond.106
  %105 = load i32, i32* %pos, align 4, !tbaa !6
  %idxprom110 = sext i32 %105 to i64
  %106 = load i8*, i8** %prev.addr, align 8, !tbaa !4
  %arrayidx111 = getelementptr inbounds i8, i8* %106, i64 %idxprom110
  %107 = load i8, i8* %arrayidx111, align 1, !tbaa !1
  %conv112 = zext i8 %107 to i32
  %cmp113 = icmp ne i32 0, %conv112
  br label %land.end.115

land.end.115:                                     ; preds = %land.rhs.109, %do.cond.106
  %108 = phi i1 [ false, %do.cond.106 ], [ %cmp113, %land.rhs.109 ]
  br i1 %108, label %do.body.104, label %do.end.116

do.end.116:                                       ; preds = %land.end.115
  %109 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %110 = load i32, i32* %opos, align 4, !tbaa !6
  %idx.ext117 = sext i32 %110 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %109, i64 %idx.ext117
  %111 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %112 = load i32, i32* %opos, align 4, !tbaa !6
  %sub119 = sub nsw i32 %111, %112
  %113 = load i32, i32* %reloffset101, align 4, !tbaa !6
  %114 = load i32, i32* %pos, align 4, !tbaa !6
  %115 = load i32, i32* %absoffset, align 4, !tbaa !6
  %sub120 = sub nsw i32 %114, %115
  %call121 = call i32 @write_crdr_replacement(i8* %add.ptr118, i32 %sub119, i32 %113, i8* null, i32 %sub120) #7
  store i32 %call121, i32* %written103, align 4, !tbaa !6
  %116 = load i32, i32* %written103, align 4, !tbaa !6
  %cmp122 = icmp slt i32 %116, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %do.end.116
  %117 = load i32, i32* %written103, align 4, !tbaa !6
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

if.end.125:                                       ; preds = %do.end.116
  %118 = load i32, i32* %pos, align 4, !tbaa !6
  store i32 %118, i32* %absoffset, align 4, !tbaa !6
  %119 = load i32, i32* %written103, align 4, !tbaa !6
  %120 = load i32, i32* %opos, align 4, !tbaa !6
  %add126 = add nsw i32 %120, %119
  store i32 %add126, i32* %opos, align 4, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.127

cleanup.127:                                      ; preds = %if.end.125, %if.then.124
  %121 = bitcast i32* %written103 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %reloffset101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %cleanup.dest.129 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.129, label %cleanup.134 [
    i32 0, label %cleanup.cont.130
  ]

cleanup.cont.130:                                 ; preds = %cleanup.127
  br label %if.end.131

if.end.131:                                       ; preds = %cleanup.cont.130, %if.then.98
  br label %while.cond.89

while.end.132:                                    ; preds = %while.cond.89
  br label %if.end.133

if.end.133:                                       ; preds = %while.end.132, %while.end.87
  %123 = load i32, i32* %opos, align 4, !tbaa !6
  store i32 %123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.134

cleanup.134:                                      ; preds = %if.end.133, %cleanup.127, %cleanup.82, %cleanup, %if.end, %if.then.6
  %124 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %opos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %mincount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %absoffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = load i32, i32* %retval
  ret i32 %128
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @write_delta_replacement(i8* %out, i32 %available, i32 %reloffset, i8* %in, i32 %replace_count) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %available.addr = alloca i32, align 4
  %reloffset.addr = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %replace_count.addr = alloca i32, align 4
  %used = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %out, i8** %out.addr, align 8, !tbaa !4
  store i32 %available, i32* %available.addr, align 4, !tbaa !6
  store i32 %reloffset, i32* %reloffset.addr, align 4, !tbaa !6
  store i8* %in, i8** %in.addr, align 8, !tbaa !4
  store i32 %replace_count, i32* %replace_count.addr, align 4, !tbaa !6
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %replace_count.addr, align 4, !tbaa !6
  %cmp = icmp sle i32 1, %1
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %replace_count.addr, align 4, !tbaa !6
  %cmp1 = icmp sle i32 %2, 8
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 280, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.write_delta_replacement, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  store i32 1, i32* %used, align 4, !tbaa !6
  %4 = load i32, i32* %available.addr, align 4, !tbaa !6
  %5 = load i32, i32* %used, align 4, !tbaa !6
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %6 = load i32, i32* %replace_count.addr, align 4, !tbaa !6
  %sub = sub nsw i32 %6, 1
  %shl = shl i32 %sub, 5
  %conv = trunc i32 %shl to i8
  %7 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %conv, i8* %7, align 1, !tbaa !1
  %8 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %cmp3 = icmp slt i32 %8, 31
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %10 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8, !tbaa !4
  %11 = load i8, i8* %10, align 1, !tbaa !1
  %conv6 = zext i8 %11 to i32
  %add = add nsw i32 %conv6, %9
  %conv7 = trunc i32 %add to i8
  store i8 %conv7, i8* %10, align 1, !tbaa !1
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %12 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %out.addr, align 8, !tbaa !4
  %13 = load i8, i8* %12, align 1, !tbaa !1
  %conv9 = zext i8 %13 to i32
  %add10 = add nsw i32 %conv9, 31
  %conv11 = trunc i32 %add10 to i8
  store i8 %conv11, i8* %12, align 1, !tbaa !1
  %14 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %sub12 = sub nsw i32 %14, 31
  store i32 %sub12, i32* %reloffset.addr, align 4, !tbaa !6
  %15 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %div = sdiv i32 %15, 255
  %add13 = add nsw i32 %div, 1
  %16 = load i32, i32* %used, align 4, !tbaa !6
  %add14 = add nsw i32 %16, %add13
  store i32 %add14, i32* %used, align 4, !tbaa !6
  %17 = load i32, i32* %available.addr, align 4, !tbaa !6
  %18 = load i32, i32* %used, align 4, !tbaa !6
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.18
  %19 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %cmp19 = icmp sge i32 %19, 255
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr21, i8** %out.addr, align 8, !tbaa !4
  store i8 -1, i8* %20, align 1, !tbaa !1
  %21 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %sub22 = sub nsw i32 %21, 255
  store i32 %sub22, i32* %reloffset.addr, align 4, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %conv23 = trunc i32 %22 to i8
  %23 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr24, i8** %out.addr, align 8, !tbaa !4
  store i8 %conv23, i8* %23, align 1, !tbaa !1
  br label %if.end.25

if.end.25:                                        ; preds = %while.end, %if.then.5
  %24 = load i32, i32* %replace_count.addr, align 4, !tbaa !6
  %25 = load i32, i32* %used, align 4, !tbaa !6
  %add26 = add nsw i32 %25, %24
  store i32 %add26, i32* %used, align 4, !tbaa !6
  %26 = load i32, i32* %available.addr, align 4, !tbaa !6
  %27 = load i32, i32* %used, align 4, !tbaa !6
  %cmp27 = icmp slt i32 %26, %27
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.25
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.34, %if.end.30
  %28 = load i32, i32* %replace_count.addr, align 4, !tbaa !6
  %cmp32 = icmp sgt i32 %28, 0
  br i1 %cmp32, label %while.body.34, label %while.end.37

while.body.34:                                    ; preds = %while.cond.31
  %29 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %incdec.ptr35 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr35, i8** %in.addr, align 8, !tbaa !4
  %30 = load i8, i8* %29, align 1, !tbaa !1
  %31 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr36, i8** %out.addr, align 8, !tbaa !4
  store i8 %30, i8* %31, align 1, !tbaa !1
  %32 = load i32, i32* %replace_count.addr, align 4, !tbaa !6
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %replace_count.addr, align 4, !tbaa !6
  br label %while.cond.31

while.end.37:                                     ; preds = %while.cond.31
  %33 = load i32, i32* %used, align 4, !tbaa !6
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.37, %if.then.29, %if.then.17, %if.then
  %34 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @write_crdr_replacement(i8* %out, i32 %maxoutcount, i32 %reloffset, i8* %in, i32 %repcount) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %maxoutcount.addr = alloca i32, align 4
  %reloffset.addr = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %repcount.addr = alloca i32, align 4
  %final = alloca i8*, align 8
  %written = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bdup = alloca i8*, align 8
  %incount = alloca i32, align 4
  %rc = alloca i32, align 4
  %edup = alloca i8*, align 8
  %incount43 = alloca i32, align 4
  %rc44 = alloca i32, align 4
  store i8* %out, i8** %out.addr, align 8, !tbaa !4
  store i32 %maxoutcount, i32* %maxoutcount.addr, align 4, !tbaa !6
  store i32 %reloffset, i32* %reloffset.addr, align 4, !tbaa !6
  store i8* %in, i8** %in.addr, align 8, !tbaa !4
  store i32 %repcount, i32* %repcount.addr, align 4, !tbaa !6
  %0 = bitcast i8** %final to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %written, align 4, !tbaa !6
  %2 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %5 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %6 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %7 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %8 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %call = call i32 @write_crdr_uncompressed(i8* %4, i32 %5, i32 %6, i8* %7, i32 %8) #7
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end:                                           ; preds = %if.then
  %9 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %10 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %11 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %12 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %call3 = call i32 @write_crdr_compressed(i8* %9, i32 %10, i32 %11, i8 zeroext 0, i32 %12) #7
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

if.end.4:                                         ; preds = %entry
  %13 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %14 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr5, i8** %final, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.86, %if.end.4
  %15 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %cmp6 = icmp sgt i32 %15, 0
  br i1 %cmp6, label %while.body, label %while.end.87

while.body:                                       ; preds = %while.cond
  %16 = bitcast i8** %bdup to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8*, i8** %in.addr, align 8, !tbaa !4
  store i8* %17, i8** %bdup, align 8, !tbaa !4
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.13, %while.body
  %18 = load i8*, i8** %bdup, align 8, !tbaa !4
  %19 = load i8*, i8** %final, align 8, !tbaa !4
  %cmp8 = icmp ult i8* %18, %19
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.7
  %20 = load i8*, i8** %bdup, align 8, !tbaa !4
  %21 = load i8, i8* %20, align 1, !tbaa !1
  %conv = zext i8 %21 to i32
  %22 = load i8*, i8** %bdup, align 8, !tbaa !4
  %add.ptr9 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %add.ptr9, align 1, !tbaa !1
  %conv10 = zext i8 %23 to i32
  %cmp11 = icmp ne i32 %conv, %conv10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.7
  %24 = phi i1 [ false, %while.cond.7 ], [ %cmp11, %land.rhs ]
  br i1 %24, label %while.body.13, label %while.end

while.body.13:                                    ; preds = %land.end
  %25 = load i8*, i8** %bdup, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %bdup, align 8, !tbaa !4
  br label %while.cond.7

while.end:                                        ; preds = %land.end
  %26 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %27 = load i8*, i8** %bdup, align 8, !tbaa !4
  %cmp14 = icmp ult i8* %26, %27
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %28 = load i8*, i8** %bdup, align 8, !tbaa !4
  %29 = load i8*, i8** %final, align 8, !tbaa !4
  %cmp16 = icmp eq i8* %28, %29
  br i1 %cmp16, label %if.then.18, label %if.end.38

if.then.18:                                       ; preds = %lor.lhs.false, %while.end
  %30 = bitcast i32* %incount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i8*, i8** %bdup, align 8, !tbaa !4
  %32 = load i8*, i8** %final, align 8, !tbaa !4
  %cmp19 = icmp eq i8* %31, %32
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %33 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %conv21 = sext i32 %33 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  %34 = load i8*, i8** %bdup, align 8, !tbaa !4
  %35 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv21, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %conv22 = trunc i64 %cond to i32
  store i32 %conv22, i32* %incount, align 4, !tbaa !6
  %36 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %38 = load i32, i32* %written, align 4, !tbaa !6
  %idx.ext23 = sext i32 %38 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %37, i64 %idx.ext23
  %39 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %40 = load i32, i32* %written, align 4, !tbaa !6
  %sub = sub nsw i32 %39, %40
  %41 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %42 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %43 = load i32, i32* %incount, align 4, !tbaa !6
  %call25 = call i32 @write_crdr_uncompressed(i8* %add.ptr24, i32 %sub, i32 %41, i8* %42, i32 %43) #7
  store i32 %call25, i32* %rc, align 4, !tbaa !6
  %44 = load i32, i32* %rc, align 4, !tbaa !6
  %cmp26 = icmp slt i32 %44, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %cond.end
  %45 = load i32, i32* %rc, align 4, !tbaa !6
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %cond.end
  %46 = load i32, i32* %rc, align 4, !tbaa !6
  %47 = load i32, i32* %written, align 4, !tbaa !6
  %add = add nsw i32 %47, %46
  store i32 %add, i32* %written, align 4, !tbaa !6
  store i32 0, i32* %reloffset.addr, align 4, !tbaa !6
  %48 = load i32, i32* %incount, align 4, !tbaa !6
  %49 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %sub30 = sub nsw i32 %49, %48
  store i32 %sub30, i32* %repcount.addr, align 4, !tbaa !6
  %50 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %cmp31 = icmp sgt i32 %50, 0
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.29
  %51 = load i32, i32* %incount, align 4, !tbaa !6
  %52 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %idx.ext34 = sext i32 %51 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %52, i64 %idx.ext34
  store i8* %add.ptr35, i8** %in.addr, align 8, !tbaa !4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.36, %if.then.28
  %53 = bitcast i32* %rc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %incount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.84 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %lor.lhs.false
  %55 = load i8*, i8** %bdup, align 8, !tbaa !4
  %56 = load i8*, i8** %final, align 8, !tbaa !4
  %cmp39 = icmp ult i8* %55, %56
  br i1 %cmp39, label %if.then.41, label %if.end.83

if.then.41:                                       ; preds = %if.end.38
  %57 = bitcast i8** %edup to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load i8*, i8** %bdup, align 8, !tbaa !4
  %add.ptr42 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %add.ptr42, i8** %edup, align 8, !tbaa !4
  %59 = bitcast i32* %incount43 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %rc44 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  br label %while.cond.45

while.cond.45:                                    ; preds = %while.body.55, %if.then.41
  %61 = load i8*, i8** %edup, align 8, !tbaa !4
  %62 = load i8*, i8** %final, align 8, !tbaa !4
  %cmp46 = icmp ult i8* %61, %62
  br i1 %cmp46, label %land.rhs.48, label %land.end.54

land.rhs.48:                                      ; preds = %while.cond.45
  %63 = load i8*, i8** %edup, align 8, !tbaa !4
  %add.ptr49 = getelementptr inbounds i8, i8* %63, i64 1
  %64 = load i8, i8* %add.ptr49, align 1, !tbaa !1
  %conv50 = zext i8 %64 to i32
  %65 = load i8*, i8** %bdup, align 8, !tbaa !4
  %66 = load i8, i8* %65, align 1, !tbaa !1
  %conv51 = zext i8 %66 to i32
  %cmp52 = icmp eq i32 %conv50, %conv51
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.48, %while.cond.45
  %67 = phi i1 [ false, %while.cond.45 ], [ %cmp52, %land.rhs.48 ]
  br i1 %67, label %while.body.55, label %while.end.57

while.body.55:                                    ; preds = %land.end.54
  %68 = load i8*, i8** %edup, align 8, !tbaa !4
  %incdec.ptr56 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr56, i8** %edup, align 8, !tbaa !4
  br label %while.cond.45

while.end.57:                                     ; preds = %land.end.54
  %69 = load i8*, i8** %edup, align 8, !tbaa !4
  %70 = load i8*, i8** %bdup, align 8, !tbaa !4
  %sub.ptr.lhs.cast58 = ptrtoint i8* %69 to i64
  %sub.ptr.rhs.cast59 = ptrtoint i8* %70 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %add61 = add nsw i64 %sub.ptr.sub60, 1
  %conv62 = trunc i64 %add61 to i32
  store i32 %conv62, i32* %incount43, align 4, !tbaa !6
  %71 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %72 = load i32, i32* %written, align 4, !tbaa !6
  %idx.ext63 = sext i32 %72 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %71, i64 %idx.ext63
  %73 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %74 = load i32, i32* %written, align 4, !tbaa !6
  %sub65 = sub nsw i32 %73, %74
  %75 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %76 = load i8*, i8** %bdup, align 8, !tbaa !4
  %77 = load i8, i8* %76, align 1, !tbaa !1
  %78 = load i32, i32* %incount43, align 4, !tbaa !6
  %call66 = call i32 @write_crdr_compressed(i8* %add.ptr64, i32 %sub65, i32 %75, i8 zeroext %77, i32 %78) #7
  store i32 %call66, i32* %rc44, align 4, !tbaa !6
  %79 = load i32, i32* %rc44, align 4, !tbaa !6
  %cmp67 = icmp slt i32 %79, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %while.end.57
  %80 = load i32, i32* %rc44, align 4, !tbaa !6
  store i32 %80, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.70:                                        ; preds = %while.end.57
  %81 = load i32, i32* %rc44, align 4, !tbaa !6
  %82 = load i32, i32* %written, align 4, !tbaa !6
  %add71 = add nsw i32 %82, %81
  store i32 %add71, i32* %written, align 4, !tbaa !6
  store i32 0, i32* %reloffset.addr, align 4, !tbaa !6
  %83 = load i32, i32* %incount43, align 4, !tbaa !6
  %84 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %sub72 = sub nsw i32 %84, %83
  store i32 %sub72, i32* %repcount.addr, align 4, !tbaa !6
  %85 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %cmp73 = icmp sgt i32 %85, 0
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.70
  %86 = load i8*, i8** %edup, align 8, !tbaa !4
  %add.ptr76 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %add.ptr76, i8** %in.addr, align 8, !tbaa !4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.70
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.end.77, %if.then.69
  %87 = bitcast i32* %rc44 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %incount43 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i8** %edup to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %cleanup.dest.81 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.81, label %cleanup.84 [
    i32 0, label %cleanup.cont.82
  ]

cleanup.cont.82:                                  ; preds = %cleanup.78
  br label %if.end.83

if.end.83:                                        ; preds = %cleanup.cont.82, %if.end.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.84

cleanup.84:                                       ; preds = %if.end.83, %cleanup.78, %cleanup
  %90 = bitcast i8** %bdup to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %cleanup.dest.85 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.85, label %cleanup.88 [
    i32 0, label %cleanup.cont.86
  ]

cleanup.cont.86:                                  ; preds = %cleanup.84
  br label %while.cond

while.end.87:                                     ; preds = %while.cond
  %91 = load i32, i32* %written, align 4, !tbaa !6
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.88

cleanup.88:                                       ; preds = %while.end.87, %cleanup.84, %if.end, %if.then.2
  %92 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i8** %final to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal i32 @write_crdr_uncompressed(i8* %out, i32 %maxoutcount, i32 %reloffset, i8* %in, i32 %repcount) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %maxoutcount.addr = alloca i32, align 4
  %reloffset.addr = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %repcount.addr = alloca i32, align 4
  %used = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %out, i8** %out.addr, align 8, !tbaa !4
  store i32 %maxoutcount, i32* %maxoutcount.addr, align 4, !tbaa !6
  store i32 %reloffset, i32* %reloffset.addr, align 4, !tbaa !6
  store i8* %in, i8** %in.addr, align 8, !tbaa !4
  store i32 %repcount, i32* %repcount.addr, align 4, !tbaa !6
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %2 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %3 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %4 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %call = call i32 @write_crdr_header(i32 0, i8* %1, i32 %2, i32 %3, i32 %4) #7
  store i32 %call, i32* %used, align 4, !tbaa !6
  %5 = load i32, i32* %used, align 4, !tbaa !6
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %used, align 4, !tbaa !6
  %7 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %add = add nsw i32 %6, %7
  %8 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %add, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i32, i32* %used, align 4, !tbaa !6
  %10 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %out.addr, align 8, !tbaa !4
  %11 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %cmp2 = icmp eq i8* %11, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %12 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %13 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %conv = sext i32 %13 to i64
  %mul = mul i64 %conv, 1
  %call4 = call i8* @memset(i8* %12, i32 0, i64 %mul) #6
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %14 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %15 = load i8*, i8** %in.addr, align 8, !tbaa !4
  %16 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %conv5 = sext i32 %16 to i64
  %mul6 = mul i64 %conv5, 1
  %call7 = call i8* @memcpy(i8* %14, i8* %15, i64 %mul6) #6
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.3
  %17 = load i32, i32* %used, align 4, !tbaa !6
  %18 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %add9 = add nsw i32 %17, %18
  store i32 %add9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %19 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @write_crdr_compressed(i8* %out, i32 %maxoutcount, i32 %reloffset, i8 zeroext %in, i32 %repeat_count) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %maxoutcount.addr = alloca i32, align 4
  %reloffset.addr = alloca i32, align 4
  %in.addr = alloca i8, align 1
  %repeat_count.addr = alloca i32, align 4
  %used = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %out, i8** %out.addr, align 8, !tbaa !4
  store i32 %maxoutcount, i32* %maxoutcount.addr, align 4, !tbaa !6
  store i32 %reloffset, i32* %reloffset.addr, align 4, !tbaa !6
  store i8 %in, i8* %in.addr, align 1, !tbaa !1
  store i32 %repeat_count, i32* %repeat_count.addr, align 4, !tbaa !6
  %0 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %2 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %3 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %4 = load i32, i32* %repeat_count.addr, align 4, !tbaa !6
  %call = call i32 @write_crdr_header(i32 1, i8* %1, i32 %2, i32 %3, i32 %4) #7
  store i32 %call, i32* %used, align 4, !tbaa !6
  %5 = load i32, i32* %used, align 4, !tbaa !6
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %used, align 4, !tbaa !6
  %7 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %cmp1 = icmp sge i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %used, align 4, !tbaa !6
  %9 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %out.addr, align 8, !tbaa !4
  %10 = load i8, i8* %in.addr, align 1, !tbaa !1
  %11 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 %10, i8* %11, align 1, !tbaa !1
  %12 = load i32, i32* %used, align 4, !tbaa !6
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @write_crdr_header(i32 %compressed, i8* %out, i32 %maxoutcount, i32 %reloffset, i32 %repcount) #0 {
entry:
  %retval = alloca i32, align 4
  %compressed.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %maxoutcount.addr = alloca i32, align 4
  %reloffset.addr = alloca i32, align 4
  %repcount.addr = alloca i32, align 4
  %maxvalue = alloca i32, align 4
  %shift = alloca i32, align 4
  %used = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %compressed, i32* %compressed.addr, align 4, !tbaa !6
  store i8* %out, i8** %out.addr, align 8, !tbaa !4
  store i32 %maxoutcount, i32* %maxoutcount.addr, align 4, !tbaa !6
  store i32 %reloffset, i32* %reloffset.addr, align 4, !tbaa !6
  store i32 %repcount, i32* %repcount.addr, align 4, !tbaa !6
  %0 = bitcast i32* %maxvalue to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1, i32* %used, align 4, !tbaa !6
  %3 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %compressed.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 -128, i8* %5, align 1, !tbaa !1
  br label %if.end.2

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** %out.addr, align 8, !tbaa !4
  store i8 0, i8* %6, align 1, !tbaa !1
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.then.1
  %7 = load i32, i32* %compressed.addr, align 4, !tbaa !6
  %tobool3 = icmp ne i32 %7, 0
  %cond = select i1 %tobool3, i32 3, i32 15
  store i32 %cond, i32* %maxvalue, align 4, !tbaa !6
  %8 = load i32, i32* %compressed.addr, align 4, !tbaa !6
  %tobool4 = icmp ne i32 %8, 0
  %cond5 = select i1 %tobool4, i32 5, i32 3
  store i32 %cond5, i32* %shift, align 4, !tbaa !6
  %9 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %10 = load i32, i32* %maxvalue, align 4, !tbaa !6
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end.2
  %11 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %12 = load i32, i32* %shift, align 4, !tbaa !6
  %shl = shl i32 %11, %12
  %13 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %14 = load i8, i8* %13, align 1, !tbaa !1
  %conv = zext i8 %14 to i32
  %add = add nsw i32 %conv, %shl
  %conv8 = trunc i32 %add to i8
  store i8 %conv8, i8* %13, align 1, !tbaa !1
  store i32 -1, i32* %reloffset.addr, align 4, !tbaa !6
  br label %if.end.14

if.else.9:                                        ; preds = %if.end.2
  %15 = load i32, i32* %maxvalue, align 4, !tbaa !6
  %16 = load i32, i32* %shift, align 4, !tbaa !6
  %shl10 = shl i32 %15, %16
  %17 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %18 = load i8, i8* %17, align 1, !tbaa !1
  %conv11 = zext i8 %18 to i32
  %add12 = add nsw i32 %conv11, %shl10
  %conv13 = trunc i32 %add12 to i8
  store i8 %conv13, i8* %17, align 1, !tbaa !1
  %19 = load i32, i32* %maxvalue, align 4, !tbaa !6
  %20 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %sub = sub nsw i32 %20, %19
  store i32 %sub, i32* %reloffset.addr, align 4, !tbaa !6
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.7
  %21 = load i32, i32* %compressed.addr, align 4, !tbaa !6
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.end.14
  %22 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %sub17 = sub nsw i32 %22, 2
  store i32 %sub17, i32* %repcount.addr, align 4, !tbaa !6
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.14
  %23 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %repcount.addr, align 4, !tbaa !6
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.16
  %24 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %cmp20 = icmp sge i32 %24, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.19
  br label %cond.end

cond.false:                                       ; preds = %if.end.19
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 449, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.write_crdr_header, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %25, %cond.true
  %26 = load i32, i32* %compressed.addr, align 4, !tbaa !6
  %tobool22 = icmp ne i32 %26, 0
  %cond23 = select i1 %tobool22, i32 31, i32 7
  store i32 %cond23, i32* %maxvalue, align 4, !tbaa !6
  %27 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %28 = load i32, i32* %maxvalue, align 4, !tbaa !6
  %cmp24 = icmp slt i32 %27, %28
  br i1 %cmp24, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %cond.end
  %29 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %30 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %31 = load i8, i8* %30, align 1, !tbaa !1
  %conv27 = zext i8 %31 to i32
  %add28 = add nsw i32 %conv27, %29
  %conv29 = trunc i32 %add28 to i8
  store i8 %conv29, i8* %30, align 1, !tbaa !1
  store i32 -1, i32* %repcount.addr, align 4, !tbaa !6
  br label %if.end.35

if.else.30:                                       ; preds = %cond.end
  %32 = load i32, i32* %maxvalue, align 4, !tbaa !6
  %33 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %34 = load i8, i8* %33, align 1, !tbaa !1
  %conv31 = zext i8 %34 to i32
  %add32 = add nsw i32 %conv31, %32
  %conv33 = trunc i32 %add32 to i8
  store i8 %conv33, i8* %33, align 1, !tbaa !1
  %35 = load i32, i32* %maxvalue, align 4, !tbaa !6
  %36 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %sub34 = sub nsw i32 %36, %35
  store i32 %sub34, i32* %repcount.addr, align 4, !tbaa !6
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.26
  %37 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %out.addr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %cond.end.46, %if.end.35
  %38 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %cmp36 = icmp sge i32 %38, 0
  br i1 %cmp36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i32, i32* %used, align 4, !tbaa !6
  %40 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %cmp38 = icmp sge i32 %39, %40
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %while.body
  %41 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %cmp42 = icmp sge i32 %41, 255
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %if.end.41
  br label %cond.end.46

cond.false.45:                                    ; preds = %if.end.41
  %42 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.44
  %cond47 = phi i32 [ 255, %cond.true.44 ], [ %42, %cond.false.45 ]
  %conv48 = trunc i32 %cond47 to i8
  %43 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr49 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr49, i8** %out.addr, align 8, !tbaa !4
  store i8 %conv48, i8* %43, align 1, !tbaa !1
  %44 = load i32, i32* %reloffset.addr, align 4, !tbaa !6
  %sub50 = sub nsw i32 %44, 255
  store i32 %sub50, i32* %reloffset.addr, align 4, !tbaa !6
  %45 = load i32, i32* %used, align 4, !tbaa !6
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %used, align 4, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.51

while.cond.51:                                    ; preds = %cond.end.63, %while.end
  %46 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %cmp52 = icmp sge i32 %46, 0
  br i1 %cmp52, label %while.body.54, label %while.end.69

while.body.54:                                    ; preds = %while.cond.51
  %47 = load i32, i32* %used, align 4, !tbaa !6
  %48 = load i32, i32* %maxoutcount.addr, align 4, !tbaa !6
  %cmp55 = icmp sge i32 %47, %48
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %while.body.54
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %while.body.54
  %49 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %cmp59 = icmp sge i32 %49, 255
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %if.end.58
  br label %cond.end.63

cond.false.62:                                    ; preds = %if.end.58
  %50 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i32 [ 255, %cond.true.61 ], [ %50, %cond.false.62 ]
  %conv65 = trunc i32 %cond64 to i8
  %51 = load i8*, i8** %out.addr, align 8, !tbaa !4
  %incdec.ptr66 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr66, i8** %out.addr, align 8, !tbaa !4
  store i8 %conv65, i8* %51, align 1, !tbaa !1
  %52 = load i32, i32* %repcount.addr, align 4, !tbaa !6
  %sub67 = sub nsw i32 %52, 255
  store i32 %sub67, i32* %repcount.addr, align 4, !tbaa !6
  %53 = load i32, i32* %used, align 4, !tbaa !6
  %inc68 = add nsw i32 %53, 1
  store i32 %inc68, i32* %used, align 4, !tbaa !6
  br label %while.cond.51

while.end.69:                                     ; preds = %while.cond.51
  %54 = load i32, i32* %used, align 4, !tbaa !6
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end.69, %if.then.57, %if.then.40, %if.then
  %55 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %maxvalue to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noreturn nounwind }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !2, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !2, i64 0}
!8 = !{!9, !7, i64 8}
!9 = !{!"", !5, i64 0, !7, i64 8}
!10 = !{!9, !5, i64 0}
