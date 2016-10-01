; ModuleID = './MultiSource.Applications.SIBsim4/3.align.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._options_t = type { i8*, %struct._junction_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._junction_t = type { [4 x i8], [4 x i8] }
%struct._edit_script = type { %struct._edit_script*, i32, i8 }
%struct._collec_t = type { %union._collec_elt_t, i32, i32 }
%union._collec_elt_t = type { i8** }
%struct._exon_t = type { i32, i32, i32, i32, i32, i32, i64 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [49 x i8] c"align.c: warning: something wrong when aligning.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"align.c: warning: something wrong when dividing\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"align.c: Alignment fragment not found.\0A\00", align 1
@ALINE = internal global [51 x i8] zeroinitializer, align 16
@BLINE = internal global [51 x i8] zeroinitializer, align 16
@CLINE = internal global [51 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A%*u \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"    .    :\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"    .\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\0A%*u %s\0A%*s %s\0A%*u %s\0A\00", align 1
@options = external global %struct._options_t, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"TROUBLE!!! startx:  %5d,  starty:  %5d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"TROUBLE!!! x:  %5d,  y:  %5d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @align_path(i8* %seq1, i8* %seq2, i32 %i1, i32 %j1, i32 %i2, i32 %j2, i32 %dist, %struct._edit_script** %head, %struct._edit_script** %tail, i32 %M, i32 %N) #0 {
entry:
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %i1.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %j2.addr = alloca i32, align 4
  %dist.addr = alloca i32, align 4
  %head.addr = alloca %struct._edit_script**, align 8
  %tail.addr = alloca %struct._edit_script**, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %last_d = alloca i32*, align 8
  %temp_d = alloca i32*, align 8
  %rlast_d = alloca i32*, align 8
  %rtemp_d = alloca i32*, align 8
  %head1 = alloca %struct._edit_script*, align 8
  %tail1 = alloca %struct._edit_script*, align 8
  %head2 = alloca %struct._edit_script*, align 8
  %tail2 = alloca %struct._edit_script*, align 8
  %midc = alloca i32, align 4
  %rmidc = alloca i32, align 4
  %start = alloca i32, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %rstart = alloca i32, align 4
  %rlower = alloca i32, align 4
  %rupper = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  %row = alloca i32, align 4
  %mi = alloca i32, align 4
  %mj = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ll = alloca i32, align 4
  %uu = alloca i32, align 4
  %flag = alloca i8, align 1
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %j1, i32* %j1.addr, align 4
  store i32 %i2, i32* %i2.addr, align 4
  store i32 %j2, i32* %j2.addr, align 4
  store i32 %dist, i32* %dist.addr, align 4
  store %struct._edit_script** %head, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script** %tail, %struct._edit_script*** %tail.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* null, %struct._edit_script** %0, align 8
  %1 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* null, %struct._edit_script** %1, align 8
  %2 = load i32, i32* %i1.addr, align 4
  %3 = load i32, i32* %i2.addr, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %j1.addr, align 4
  %5 = load i32, i32* %j2.addr, align 4
  %cmp4 = icmp eq i32 %4, %5
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %6 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* null, %struct._edit_script** %6, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call = call i8* @xmalloc(i64 16)
  %7 = bitcast i8* %call to %struct._edit_script*
  store %struct._edit_script* %7, %struct._edit_script** %head1, align 8
  %8 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %op_type = getelementptr inbounds %struct._edit_script, %struct._edit_script* %8, i32 0, i32 2
  store i8 2, i8* %op_type, align 1
  %9 = load i32, i32* %j2.addr, align 4
  %10 = load i32, i32* %j1.addr, align 4
  %sub = sub nsw i32 %9, %10
  %11 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %num = getelementptr inbounds %struct._edit_script, %struct._edit_script* %11, i32 0, i32 1
  store i32 %sub, i32* %num, align 4
  %12 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %next = getelementptr inbounds %struct._edit_script, %struct._edit_script* %12, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %next, align 8
  %13 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %14 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %13, %struct._edit_script** %14, align 8
  %15 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* %13, %struct._edit_script** %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.466

if.end.6:                                         ; preds = %entry
  %16 = load i32, i32* %j1.addr, align 4
  %17 = load i32, i32* %j2.addr, align 4
  %cmp7 = icmp eq i32 %16, %17
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end.6
  %call9 = call i8* @xmalloc(i64 16)
  %18 = bitcast i8* %call9 to %struct._edit_script*
  store %struct._edit_script* %18, %struct._edit_script** %head1, align 8
  %19 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %op_type10 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %19, i32 0, i32 2
  store i8 1, i8* %op_type10, align 1
  %20 = load i32, i32* %i2.addr, align 4
  %21 = load i32, i32* %i1.addr, align 4
  %sub11 = sub nsw i32 %20, %21
  %22 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %num12 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %22, i32 0, i32 1
  store i32 %sub11, i32* %num12, align 4
  %23 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %next13 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %23, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %next13, align 8
  %24 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %25 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %24, %struct._edit_script** %25, align 8
  %26 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* %24, %struct._edit_script** %26, align 8
  br label %if.end.466

if.end.14:                                        ; preds = %if.end.6
  %27 = load i32, i32* %dist.addr, align 4
  %cmp15 = icmp sle i32 %27, 1
  br i1 %cmp15, label %if.then.16, label %if.end.97

if.then.16:                                       ; preds = %if.end.14
  %28 = load i32, i32* %j1.addr, align 4
  %29 = load i32, i32* %i1.addr, align 4
  %sub17 = sub nsw i32 %28, %29
  store i32 %sub17, i32* %start, align 4
  %30 = load i32, i32* %j2.addr, align 4
  %31 = load i32, i32* %i2.addr, align 4
  %sub18 = sub nsw i32 %30, %31
  %32 = load i32, i32* %j1.addr, align 4
  %33 = load i32, i32* %i1.addr, align 4
  %sub19 = sub nsw i32 %32, %33
  %cmp20 = icmp eq i32 %sub18, %sub19
  br i1 %cmp20, label %if.then.21, label %if.else.27

if.then.21:                                       ; preds = %if.then.16
  %call22 = call i8* @xmalloc(i64 16)
  %34 = bitcast i8* %call22 to %struct._edit_script*
  store %struct._edit_script* %34, %struct._edit_script** %head1, align 8
  %35 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %op_type23 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %35, i32 0, i32 2
  store i8 3, i8* %op_type23, align 1
  %36 = load i32, i32* %i2.addr, align 4
  %37 = load i32, i32* %i1.addr, align 4
  %sub24 = sub nsw i32 %36, %37
  %38 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %num25 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %38, i32 0, i32 1
  store i32 %sub24, i32* %num25, align 4
  %39 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %next26 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %39, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %next26, align 8
  %40 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %41 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %40, %struct._edit_script** %41, align 8
  %42 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* %40, %struct._edit_script** %42, align 8
  br label %if.end.96

if.else.27:                                       ; preds = %if.then.16
  %43 = load i32, i32* %j2.addr, align 4
  %44 = load i32, i32* %j1.addr, align 4
  %sub28 = sub nsw i32 %43, %44
  %45 = load i32, i32* %i2.addr, align 4
  %46 = load i32, i32* %i1.addr, align 4
  %sub29 = sub nsw i32 %45, %46
  %add = add nsw i32 %sub29, 1
  %cmp30 = icmp eq i32 %sub28, %add
  br i1 %cmp30, label %if.then.31, label %if.else.58

if.then.31:                                       ; preds = %if.else.27
  %47 = load i8*, i8** %seq1.addr, align 8
  %48 = load i8*, i8** %seq2.addr, align 8
  %49 = load i32, i32* %start, align 4
  %50 = load i32, i32* %i1.addr, align 4
  %51 = load i32, i32* %i2.addr, align 4
  %52 = load i32, i32* %j2.addr, align 4
  %call32 = call i32 @snake(i8* %47, i8* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  store i32 %call32, i32* %tmp, align 4
  %53 = load i32, i32* %tmp, align 4
  %54 = load i32, i32* %i1.addr, align 4
  %cmp33 = icmp sgt i32 %53, %54
  br i1 %cmp33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.then.31
  %call35 = call i8* @xmalloc(i64 16)
  %55 = bitcast i8* %call35 to %struct._edit_script*
  store %struct._edit_script* %55, %struct._edit_script** %head1, align 8
  %56 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %op_type36 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %56, i32 0, i32 2
  store i8 3, i8* %op_type36, align 1
  %57 = load i32, i32* %tmp, align 4
  %58 = load i32, i32* %i1.addr, align 4
  %sub37 = sub nsw i32 %57, %58
  %59 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %num38 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %59, i32 0, i32 1
  store i32 %sub37, i32* %num38, align 4
  %60 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %61 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* %60, %struct._edit_script** %61, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.then.31
  %call40 = call i8* @xmalloc(i64 16)
  %62 = bitcast i8* %call40 to %struct._edit_script*
  store %struct._edit_script* %62, %struct._edit_script** %head2, align 8
  %63 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %op_type41 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %63, i32 0, i32 2
  store i8 2, i8* %op_type41, align 1
  %64 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %num42 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %64, i32 0, i32 1
  store i32 1, i32* %num42, align 4
  %65 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  %66 = load %struct._edit_script*, %struct._edit_script** %65, align 8
  %tobool = icmp ne %struct._edit_script* %66, null
  br i1 %tobool, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.end.39
  %67 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %68 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %next44 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %68, i32 0, i32 0
  store %struct._edit_script* %67, %struct._edit_script** %next44, align 8
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.39
  %69 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %70 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* %69, %struct._edit_script** %70, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.43
  %71 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %72 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %71, %struct._edit_script** %72, align 8
  %73 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %next47 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %73, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %next47, align 8
  %74 = load i32, i32* %i2.addr, align 4
  %75 = load i32, i32* %tmp, align 4
  %sub48 = sub nsw i32 %74, %75
  %tobool49 = icmp ne i32 %sub48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.57

if.then.50:                                       ; preds = %if.end.46
  %76 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  store %struct._edit_script* %76, %struct._edit_script** %head1, align 8
  %call51 = call i8* @xmalloc(i64 16)
  %77 = bitcast i8* %call51 to %struct._edit_script*
  store %struct._edit_script* %77, %struct._edit_script** %head2, align 8
  %78 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %77, %struct._edit_script** %78, align 8
  %79 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %op_type52 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %79, i32 0, i32 2
  store i8 3, i8* %op_type52, align 1
  %80 = load i32, i32* %i2.addr, align 4
  %81 = load i32, i32* %tmp, align 4
  %sub53 = sub nsw i32 %80, %81
  %82 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %num54 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %82, i32 0, i32 1
  store i32 %sub53, i32* %num54, align 4
  %83 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %next55 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %83, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %next55, align 8
  %84 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %85 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %next56 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %85, i32 0, i32 0
  store %struct._edit_script* %84, %struct._edit_script** %next56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.50, %if.end.46
  br label %if.end.95

if.else.58:                                       ; preds = %if.else.27
  %86 = load i32, i32* %j2.addr, align 4
  %87 = load i32, i32* %j1.addr, align 4
  %sub59 = sub nsw i32 %86, %87
  %add60 = add nsw i32 %sub59, 1
  %88 = load i32, i32* %i2.addr, align 4
  %89 = load i32, i32* %i1.addr, align 4
  %sub61 = sub nsw i32 %88, %89
  %cmp62 = icmp eq i32 %add60, %sub61
  br i1 %cmp62, label %if.then.63, label %if.else.92

if.then.63:                                       ; preds = %if.else.58
  %90 = load i8*, i8** %seq1.addr, align 8
  %91 = load i8*, i8** %seq2.addr, align 8
  %92 = load i32, i32* %start, align 4
  %93 = load i32, i32* %i1.addr, align 4
  %94 = load i32, i32* %i2.addr, align 4
  %95 = load i32, i32* %j2.addr, align 4
  %call64 = call i32 @snake(i8* %90, i8* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %call64, i32* %tmp, align 4
  %96 = load i32, i32* %tmp, align 4
  %97 = load i32, i32* %i1.addr, align 4
  %cmp65 = icmp sgt i32 %96, %97
  br i1 %cmp65, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %if.then.63
  %call67 = call i8* @xmalloc(i64 16)
  %98 = bitcast i8* %call67 to %struct._edit_script*
  store %struct._edit_script* %98, %struct._edit_script** %head1, align 8
  %99 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %op_type68 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %99, i32 0, i32 2
  store i8 3, i8* %op_type68, align 1
  %100 = load i32, i32* %tmp, align 4
  %101 = load i32, i32* %i1.addr, align 4
  %sub69 = sub nsw i32 %100, %101
  %102 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %num70 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %102, i32 0, i32 1
  store i32 %sub69, i32* %num70, align 4
  %103 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %104 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* %103, %struct._edit_script** %104, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.then.63
  %call72 = call i8* @xmalloc(i64 16)
  %105 = bitcast i8* %call72 to %struct._edit_script*
  store %struct._edit_script* %105, %struct._edit_script** %head2, align 8
  %106 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %op_type73 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %106, i32 0, i32 2
  store i8 1, i8* %op_type73, align 1
  %107 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %num74 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %107, i32 0, i32 1
  store i32 1, i32* %num74, align 4
  %108 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  %109 = load %struct._edit_script*, %struct._edit_script** %108, align 8
  %tobool75 = icmp ne %struct._edit_script* %109, null
  br i1 %tobool75, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %if.end.71
  %110 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %111 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %next77 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %111, i32 0, i32 0
  store %struct._edit_script* %110, %struct._edit_script** %next77, align 8
  br label %if.end.79

if.else.78:                                       ; preds = %if.end.71
  %112 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %113 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* %112, %struct._edit_script** %113, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.76
  %114 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %115 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %114, %struct._edit_script** %115, align 8
  %116 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %next80 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %116, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %next80, align 8
  %117 = load i32, i32* %i2.addr, align 4
  %118 = load i32, i32* %tmp, align 4
  %add81 = add nsw i32 %118, 1
  %cmp82 = icmp sgt i32 %117, %add81
  br i1 %cmp82, label %if.then.83, label %if.end.91

if.then.83:                                       ; preds = %if.end.79
  %119 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  store %struct._edit_script* %119, %struct._edit_script** %head1, align 8
  %call84 = call i8* @xmalloc(i64 16)
  %120 = bitcast i8* %call84 to %struct._edit_script*
  store %struct._edit_script* %120, %struct._edit_script** %head2, align 8
  %121 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %120, %struct._edit_script** %121, align 8
  %122 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %op_type85 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %122, i32 0, i32 2
  store i8 3, i8* %op_type85, align 1
  %123 = load i32, i32* %i2.addr, align 4
  %124 = load i32, i32* %tmp, align 4
  %sub86 = sub nsw i32 %123, %124
  %sub87 = sub nsw i32 %sub86, 1
  %125 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %num88 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %125, i32 0, i32 1
  store i32 %sub87, i32* %num88, align 4
  %126 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %next89 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %126, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %next89, align 8
  %127 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %128 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %next90 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %128, i32 0, i32 0
  store %struct._edit_script* %127, %struct._edit_script** %next90, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.83, %if.end.79
  br label %if.end.94

if.else.92:                                       ; preds = %if.else.58
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0))
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.end.91
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.57
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.21
  br label %if.end.466

if.end.97:                                        ; preds = %if.end.14
  %130 = load i32, i32* %dist.addr, align 4
  %div = sdiv i32 %130, 2
  store i32 %div, i32* %midc, align 4
  %131 = load i32, i32* %dist.addr, align 4
  %132 = load i32, i32* %midc, align 4
  %sub98 = sub nsw i32 %131, %132
  store i32 %sub98, i32* %rmidc, align 4
  %133 = load i32, i32* %j1.addr, align 4
  %134 = load i32, i32* %i1.addr, align 4
  %sub99 = sub nsw i32 %133, %134
  store i32 %sub99, i32* %start, align 4
  %135 = load i32, i32* %j1.addr, align 4
  %136 = load i32, i32* %i2.addr, align 4
  %sub100 = sub nsw i32 %135, %136
  %137 = load i32, i32* %start, align 4
  %138 = load i32, i32* %midc, align 4
  %sub101 = sub nsw i32 %137, %138
  %cmp102 = icmp slt i32 %sub100, %sub101
  br i1 %cmp102, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.97
  %139 = load i32, i32* %start, align 4
  %140 = load i32, i32* %midc, align 4
  %sub103 = sub nsw i32 %139, %140
  br label %cond.end

cond.false:                                       ; preds = %if.end.97
  %141 = load i32, i32* %j1.addr, align 4
  %142 = load i32, i32* %i2.addr, align 4
  %sub104 = sub nsw i32 %141, %142
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub103, %cond.true ], [ %sub104, %cond.false ]
  store i32 %cond, i32* %lower, align 4
  %143 = load i32, i32* %j2.addr, align 4
  %144 = load i32, i32* %i1.addr, align 4
  %sub105 = sub nsw i32 %143, %144
  %145 = load i32, i32* %start, align 4
  %146 = load i32, i32* %midc, align 4
  %add106 = add nsw i32 %145, %146
  %cmp107 = icmp sgt i32 %sub105, %add106
  br i1 %cmp107, label %cond.true.108, label %cond.false.110

cond.true.108:                                    ; preds = %cond.end
  %147 = load i32, i32* %start, align 4
  %148 = load i32, i32* %midc, align 4
  %add109 = add nsw i32 %147, %148
  br label %cond.end.112

cond.false.110:                                   ; preds = %cond.end
  %149 = load i32, i32* %j2.addr, align 4
  %150 = load i32, i32* %i1.addr, align 4
  %sub111 = sub nsw i32 %149, %150
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.108
  %cond113 = phi i32 [ %add109, %cond.true.108 ], [ %sub111, %cond.false.110 ]
  store i32 %cond113, i32* %upper, align 4
  %151 = load i32, i32* %j2.addr, align 4
  %152 = load i32, i32* %i2.addr, align 4
  %sub114 = sub nsw i32 %151, %152
  store i32 %sub114, i32* %rstart, align 4
  %153 = load i32, i32* %j1.addr, align 4
  %154 = load i32, i32* %i2.addr, align 4
  %sub115 = sub nsw i32 %153, %154
  %155 = load i32, i32* %rstart, align 4
  %156 = load i32, i32* %rmidc, align 4
  %sub116 = sub nsw i32 %155, %156
  %cmp117 = icmp slt i32 %sub115, %sub116
  br i1 %cmp117, label %cond.true.118, label %cond.false.120

cond.true.118:                                    ; preds = %cond.end.112
  %157 = load i32, i32* %rstart, align 4
  %158 = load i32, i32* %rmidc, align 4
  %sub119 = sub nsw i32 %157, %158
  br label %cond.end.122

cond.false.120:                                   ; preds = %cond.end.112
  %159 = load i32, i32* %j1.addr, align 4
  %160 = load i32, i32* %i2.addr, align 4
  %sub121 = sub nsw i32 %159, %160
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.120, %cond.true.118
  %cond123 = phi i32 [ %sub119, %cond.true.118 ], [ %sub121, %cond.false.120 ]
  store i32 %cond123, i32* %rlower, align 4
  %161 = load i32, i32* %j2.addr, align 4
  %162 = load i32, i32* %i1.addr, align 4
  %sub124 = sub nsw i32 %161, %162
  %163 = load i32, i32* %rstart, align 4
  %164 = load i32, i32* %rmidc, align 4
  %add125 = add nsw i32 %163, %164
  %cmp126 = icmp sgt i32 %sub124, %add125
  br i1 %cmp126, label %cond.true.127, label %cond.false.129

cond.true.127:                                    ; preds = %cond.end.122
  %165 = load i32, i32* %rstart, align 4
  %166 = load i32, i32* %rmidc, align 4
  %add128 = add nsw i32 %165, %166
  br label %cond.end.131

cond.false.129:                                   ; preds = %cond.end.122
  %167 = load i32, i32* %j2.addr, align 4
  %168 = load i32, i32* %i1.addr, align 4
  %sub130 = sub nsw i32 %167, %168
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.129, %cond.true.127
  %cond132 = phi i32 [ %add128, %cond.true.127 ], [ %sub130, %cond.false.129 ]
  store i32 %cond132, i32* %rupper, align 4
  %169 = load i32, i32* %upper, align 4
  %170 = load i32, i32* %lower, align 4
  %sub133 = sub nsw i32 %169, %170
  %add134 = add nsw i32 %sub133, 1
  %conv = sext i32 %add134 to i64
  %mul = mul i64 %conv, 4
  %call135 = call i8* @xmalloc(i64 %mul)
  %171 = bitcast i8* %call135 to i32*
  %172 = load i32, i32* %lower, align 4
  %idx.ext = sext i32 %172 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %171, i64 %idx.neg
  store i32* %add.ptr, i32** %last_d, align 8
  %173 = load i32, i32* %upper, align 4
  %174 = load i32, i32* %lower, align 4
  %sub136 = sub nsw i32 %173, %174
  %add137 = add nsw i32 %sub136, 1
  %conv138 = sext i32 %add137 to i64
  %mul139 = mul i64 %conv138, 4
  %call140 = call i8* @xmalloc(i64 %mul139)
  %175 = bitcast i8* %call140 to i32*
  %176 = load i32, i32* %lower, align 4
  %idx.ext141 = sext i32 %176 to i64
  %idx.neg142 = sub i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i32, i32* %175, i64 %idx.neg142
  store i32* %add.ptr143, i32** %temp_d, align 8
  %177 = load i32, i32* %lower, align 4
  store i32 %177, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.131
  %178 = load i32, i32* %k, align 4
  %179 = load i32, i32* %upper, align 4
  %cmp144 = icmp sle i32 %178, %179
  br i1 %cmp144, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %180 = load i32, i32* %k, align 4
  %idxprom = sext i32 %180 to i64
  %181 = load i32*, i32** %last_d, align 8
  %arrayidx = getelementptr inbounds i32, i32* %181, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %182 = load i32, i32* %k, align 4
  %inc = add nsw i32 %182, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %183 = load i8*, i8** %seq1.addr, align 8
  %184 = load i8*, i8** %seq2.addr, align 8
  %185 = load i32, i32* %start, align 4
  %186 = load i32, i32* %i1.addr, align 4
  %187 = load i32, i32* %i2.addr, align 4
  %188 = load i32, i32* %j2.addr, align 4
  %call146 = call i32 @snake(i8* %183, i8* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %189 = load i32, i32* %start, align 4
  %idxprom147 = sext i32 %189 to i64
  %190 = load i32*, i32** %last_d, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %190, i64 %idxprom147
  store i32 %call146, i32* %arrayidx148, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.255, %for.end
  %191 = load i32, i32* %c, align 4
  %192 = load i32, i32* %midc, align 4
  %cmp150 = icmp sle i32 %191, %192
  br i1 %cmp150, label %for.body.152, label %for.end.257

for.body.152:                                     ; preds = %for.cond.149
  %193 = load i32, i32* %lower, align 4
  %194 = load i32, i32* %start, align 4
  %195 = load i32, i32* %c, align 4
  %sub153 = sub nsw i32 %194, %195
  %cmp154 = icmp slt i32 %193, %sub153
  br i1 %cmp154, label %cond.true.156, label %cond.false.158

cond.true.156:                                    ; preds = %for.body.152
  %196 = load i32, i32* %start, align 4
  %197 = load i32, i32* %c, align 4
  %sub157 = sub nsw i32 %196, %197
  br label %cond.end.159

cond.false.158:                                   ; preds = %for.body.152
  %198 = load i32, i32* %lower, align 4
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.158, %cond.true.156
  %cond160 = phi i32 [ %sub157, %cond.true.156 ], [ %198, %cond.false.158 ]
  store i32 %cond160, i32* %ll, align 4
  %199 = load i32, i32* %upper, align 4
  %200 = load i32, i32* %start, align 4
  %201 = load i32, i32* %c, align 4
  %add161 = add nsw i32 %200, %201
  %cmp162 = icmp sgt i32 %199, %add161
  br i1 %cmp162, label %cond.true.164, label %cond.false.166

cond.true.164:                                    ; preds = %cond.end.159
  %202 = load i32, i32* %start, align 4
  %203 = load i32, i32* %c, align 4
  %add165 = add nsw i32 %202, %203
  br label %cond.end.167

cond.false.166:                                   ; preds = %cond.end.159
  %204 = load i32, i32* %upper, align 4
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.166, %cond.true.164
  %cond168 = phi i32 [ %add165, %cond.true.164 ], [ %204, %cond.false.166 ]
  store i32 %cond168, i32* %uu, align 4
  %205 = load i32, i32* %ll, align 4
  store i32 %205, i32* %k, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.241, %cond.end.167
  %206 = load i32, i32* %k, align 4
  %207 = load i32, i32* %uu, align 4
  %cmp170 = icmp sle i32 %206, %207
  br i1 %cmp170, label %for.body.172, label %for.end.243

for.body.172:                                     ; preds = %for.cond.169
  %208 = load i32, i32* %k, align 4
  %209 = load i32, i32* %ll, align 4
  %cmp173 = icmp eq i32 %208, %209
  br i1 %cmp173, label %if.then.175, label %if.else.180

if.then.175:                                      ; preds = %for.body.172
  %210 = load i32, i32* %k, align 4
  %add176 = add nsw i32 %210, 1
  %idxprom177 = sext i32 %add176 to i64
  %211 = load i32*, i32** %last_d, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %211, i64 %idxprom177
  %212 = load i32, i32* %arrayidx178, align 4
  %add179 = add nsw i32 %212, 1
  store i32 %add179, i32* %row, align 4
  br label %if.end.237

if.else.180:                                      ; preds = %for.body.172
  %213 = load i32, i32* %k, align 4
  %214 = load i32, i32* %uu, align 4
  %cmp181 = icmp eq i32 %213, %214
  br i1 %cmp181, label %if.then.183, label %if.else.187

if.then.183:                                      ; preds = %if.else.180
  %215 = load i32, i32* %k, align 4
  %sub184 = sub nsw i32 %215, 1
  %idxprom185 = sext i32 %sub184 to i64
  %216 = load i32*, i32** %last_d, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %216, i64 %idxprom185
  %217 = load i32, i32* %arrayidx186, align 4
  store i32 %217, i32* %row, align 4
  br label %if.end.236

if.else.187:                                      ; preds = %if.else.180
  %218 = load i32, i32* %k, align 4
  %idxprom188 = sext i32 %218 to i64
  %219 = load i32*, i32** %last_d, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %219, i64 %idxprom188
  %220 = load i32, i32* %arrayidx189, align 4
  %221 = load i32, i32* %k, align 4
  %add190 = add nsw i32 %221, 1
  %idxprom191 = sext i32 %add190 to i64
  %222 = load i32*, i32** %last_d, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %222, i64 %idxprom191
  %223 = load i32, i32* %arrayidx192, align 4
  %cmp193 = icmp sge i32 %220, %223
  br i1 %cmp193, label %land.lhs.true, label %if.else.207

land.lhs.true:                                    ; preds = %if.else.187
  %224 = load i32, i32* %k, align 4
  %idxprom195 = sext i32 %224 to i64
  %225 = load i32*, i32** %last_d, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %225, i64 %idxprom195
  %226 = load i32, i32* %arrayidx196, align 4
  %add197 = add nsw i32 %226, 1
  %227 = load i32, i32* %k, align 4
  %sub198 = sub nsw i32 %227, 1
  %idxprom199 = sext i32 %sub198 to i64
  %228 = load i32*, i32** %last_d, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %228, i64 %idxprom199
  %229 = load i32, i32* %arrayidx200, align 4
  %cmp201 = icmp sge i32 %add197, %229
  br i1 %cmp201, label %if.then.203, label %if.else.207

if.then.203:                                      ; preds = %land.lhs.true
  %230 = load i32, i32* %k, align 4
  %idxprom204 = sext i32 %230 to i64
  %231 = load i32*, i32** %last_d, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %231, i64 %idxprom204
  %232 = load i32, i32* %arrayidx205, align 4
  %add206 = add nsw i32 %232, 1
  store i32 %add206, i32* %row, align 4
  br label %if.end.235

if.else.207:                                      ; preds = %land.lhs.true, %if.else.187
  %233 = load i32, i32* %k, align 4
  %add208 = add nsw i32 %233, 1
  %idxprom209 = sext i32 %add208 to i64
  %234 = load i32*, i32** %last_d, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %234, i64 %idxprom209
  %235 = load i32, i32* %arrayidx210, align 4
  %add211 = add nsw i32 %235, 1
  %236 = load i32, i32* %k, align 4
  %sub212 = sub nsw i32 %236, 1
  %idxprom213 = sext i32 %sub212 to i64
  %237 = load i32*, i32** %last_d, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %237, i64 %idxprom213
  %238 = load i32, i32* %arrayidx214, align 4
  %cmp215 = icmp sge i32 %add211, %238
  br i1 %cmp215, label %land.lhs.true.217, label %if.else.230

land.lhs.true.217:                                ; preds = %if.else.207
  %239 = load i32, i32* %k, align 4
  %add218 = add nsw i32 %239, 1
  %idxprom219 = sext i32 %add218 to i64
  %240 = load i32*, i32** %last_d, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %240, i64 %idxprom219
  %241 = load i32, i32* %arrayidx220, align 4
  %242 = load i32, i32* %k, align 4
  %idxprom221 = sext i32 %242 to i64
  %243 = load i32*, i32** %last_d, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %243, i64 %idxprom221
  %244 = load i32, i32* %arrayidx222, align 4
  %cmp223 = icmp sge i32 %241, %244
  br i1 %cmp223, label %if.then.225, label %if.else.230

if.then.225:                                      ; preds = %land.lhs.true.217
  %245 = load i32, i32* %k, align 4
  %add226 = add nsw i32 %245, 1
  %idxprom227 = sext i32 %add226 to i64
  %246 = load i32*, i32** %last_d, align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %246, i64 %idxprom227
  %247 = load i32, i32* %arrayidx228, align 4
  %add229 = add nsw i32 %247, 1
  store i32 %add229, i32* %row, align 4
  br label %if.end.234

if.else.230:                                      ; preds = %land.lhs.true.217, %if.else.207
  %248 = load i32, i32* %k, align 4
  %sub231 = sub nsw i32 %248, 1
  %idxprom232 = sext i32 %sub231 to i64
  %249 = load i32*, i32** %last_d, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %249, i64 %idxprom232
  %250 = load i32, i32* %arrayidx233, align 4
  store i32 %250, i32* %row, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.230, %if.then.225
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.then.203
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.183
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.then.175
  %251 = load i8*, i8** %seq1.addr, align 8
  %252 = load i8*, i8** %seq2.addr, align 8
  %253 = load i32, i32* %k, align 4
  %254 = load i32, i32* %row, align 4
  %255 = load i32, i32* %i2.addr, align 4
  %256 = load i32, i32* %j2.addr, align 4
  %call238 = call i32 @snake(i8* %251, i8* %252, i32 %253, i32 %254, i32 %255, i32 %256)
  %257 = load i32, i32* %k, align 4
  %idxprom239 = sext i32 %257 to i64
  %258 = load i32*, i32** %temp_d, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %258, i64 %idxprom239
  store i32 %call238, i32* %arrayidx240, align 4
  br label %for.inc.241

for.inc.241:                                      ; preds = %if.end.237
  %259 = load i32, i32* %k, align 4
  %inc242 = add nsw i32 %259, 1
  store i32 %inc242, i32* %k, align 4
  br label %for.cond.169

for.end.243:                                      ; preds = %for.cond.169
  %260 = load i32, i32* %ll, align 4
  store i32 %260, i32* %k, align 4
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.252, %for.end.243
  %261 = load i32, i32* %k, align 4
  %262 = load i32, i32* %uu, align 4
  %cmp245 = icmp sle i32 %261, %262
  br i1 %cmp245, label %for.body.247, label %for.end.254

for.body.247:                                     ; preds = %for.cond.244
  %263 = load i32, i32* %k, align 4
  %idxprom248 = sext i32 %263 to i64
  %264 = load i32*, i32** %temp_d, align 8
  %arrayidx249 = getelementptr inbounds i32, i32* %264, i64 %idxprom248
  %265 = load i32, i32* %arrayidx249, align 4
  %266 = load i32, i32* %k, align 4
  %idxprom250 = sext i32 %266 to i64
  %267 = load i32*, i32** %last_d, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %267, i64 %idxprom250
  store i32 %265, i32* %arrayidx251, align 4
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.body.247
  %268 = load i32, i32* %k, align 4
  %inc253 = add nsw i32 %268, 1
  store i32 %inc253, i32* %k, align 4
  br label %for.cond.244

for.end.254:                                      ; preds = %for.cond.244
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.end.254
  %269 = load i32, i32* %c, align 4
  %inc256 = add nsw i32 %269, 1
  store i32 %inc256, i32* %c, align 4
  br label %for.cond.149

for.end.257:                                      ; preds = %for.cond.149
  %270 = load i32, i32* %rupper, align 4
  %271 = load i32, i32* %rlower, align 4
  %sub258 = sub nsw i32 %270, %271
  %add259 = add nsw i32 %sub258, 1
  %conv260 = sext i32 %add259 to i64
  %mul261 = mul i64 %conv260, 4
  %call262 = call i8* @xmalloc(i64 %mul261)
  %272 = bitcast i8* %call262 to i32*
  %273 = load i32, i32* %rlower, align 4
  %idx.ext263 = sext i32 %273 to i64
  %idx.neg264 = sub i64 0, %idx.ext263
  %add.ptr265 = getelementptr inbounds i32, i32* %272, i64 %idx.neg264
  store i32* %add.ptr265, i32** %rlast_d, align 8
  %274 = load i32, i32* %rupper, align 4
  %275 = load i32, i32* %rlower, align 4
  %sub266 = sub nsw i32 %274, %275
  %add267 = add nsw i32 %sub266, 1
  %conv268 = sext i32 %add267 to i64
  %mul269 = mul i64 %conv268, 4
  %call270 = call i8* @xmalloc(i64 %mul269)
  %276 = bitcast i8* %call270 to i32*
  %277 = load i32, i32* %rlower, align 4
  %idx.ext271 = sext i32 %277 to i64
  %idx.neg272 = sub i64 0, %idx.ext271
  %add.ptr273 = getelementptr inbounds i32, i32* %276, i64 %idx.neg272
  store i32* %add.ptr273, i32** %rtemp_d, align 8
  %278 = load i32, i32* %rlower, align 4
  store i32 %278, i32* %k, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.281, %for.end.257
  %279 = load i32, i32* %k, align 4
  %280 = load i32, i32* %rupper, align 4
  %cmp275 = icmp sle i32 %279, %280
  br i1 %cmp275, label %for.body.277, label %for.end.283

for.body.277:                                     ; preds = %for.cond.274
  %281 = load i32, i32* %i2.addr, align 4
  %add278 = add nsw i32 %281, 1
  %282 = load i32, i32* %k, align 4
  %idxprom279 = sext i32 %282 to i64
  %283 = load i32*, i32** %rlast_d, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %283, i64 %idxprom279
  store i32 %add278, i32* %arrayidx280, align 4
  br label %for.inc.281

for.inc.281:                                      ; preds = %for.body.277
  %284 = load i32, i32* %k, align 4
  %inc282 = add nsw i32 %284, 1
  store i32 %inc282, i32* %k, align 4
  br label %for.cond.274

for.end.283:                                      ; preds = %for.cond.274
  %285 = load i8*, i8** %seq1.addr, align 8
  %286 = load i8*, i8** %seq2.addr, align 8
  %287 = load i32, i32* %rstart, align 4
  %288 = load i32, i32* %i2.addr, align 4
  %289 = load i32, i32* %i1.addr, align 4
  %290 = load i32, i32* %j1.addr, align 4
  %291 = load i32, i32* %M.addr, align 4
  %292 = load i32, i32* %N.addr, align 4
  %call284 = call i32 @rsnake(i8* %285, i8* %286, i32 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292)
  %293 = load i32, i32* %rstart, align 4
  %idxprom285 = sext i32 %293 to i64
  %294 = load i32*, i32** %rlast_d, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %294, i64 %idxprom285
  store i32 %call284, i32* %arrayidx286, align 4
  store i32 1, i32* %c, align 4
  br label %for.cond.287

for.cond.287:                                     ; preds = %for.inc.398, %for.end.283
  %295 = load i32, i32* %c, align 4
  %296 = load i32, i32* %rmidc, align 4
  %cmp288 = icmp sle i32 %295, %296
  br i1 %cmp288, label %for.body.290, label %for.end.400

for.body.290:                                     ; preds = %for.cond.287
  %297 = load i32, i32* %rlower, align 4
  %298 = load i32, i32* %rstart, align 4
  %299 = load i32, i32* %c, align 4
  %sub291 = sub nsw i32 %298, %299
  %cmp292 = icmp slt i32 %297, %sub291
  br i1 %cmp292, label %cond.true.294, label %cond.false.296

cond.true.294:                                    ; preds = %for.body.290
  %300 = load i32, i32* %rstart, align 4
  %301 = load i32, i32* %c, align 4
  %sub295 = sub nsw i32 %300, %301
  br label %cond.end.297

cond.false.296:                                   ; preds = %for.body.290
  %302 = load i32, i32* %rlower, align 4
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.false.296, %cond.true.294
  %cond298 = phi i32 [ %sub295, %cond.true.294 ], [ %302, %cond.false.296 ]
  store i32 %cond298, i32* %ll, align 4
  %303 = load i32, i32* %rupper, align 4
  %304 = load i32, i32* %rstart, align 4
  %305 = load i32, i32* %c, align 4
  %add299 = add nsw i32 %304, %305
  %cmp300 = icmp sgt i32 %303, %add299
  br i1 %cmp300, label %cond.true.302, label %cond.false.304

cond.true.302:                                    ; preds = %cond.end.297
  %306 = load i32, i32* %rstart, align 4
  %307 = load i32, i32* %c, align 4
  %add303 = add nsw i32 %306, %307
  br label %cond.end.305

cond.false.304:                                   ; preds = %cond.end.297
  %308 = load i32, i32* %rupper, align 4
  br label %cond.end.305

cond.end.305:                                     ; preds = %cond.false.304, %cond.true.302
  %cond306 = phi i32 [ %add303, %cond.true.302 ], [ %308, %cond.false.304 ]
  store i32 %cond306, i32* %uu, align 4
  %309 = load i32, i32* %ll, align 4
  store i32 %309, i32* %k, align 4
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.384, %cond.end.305
  %310 = load i32, i32* %k, align 4
  %311 = load i32, i32* %uu, align 4
  %cmp308 = icmp sle i32 %310, %311
  br i1 %cmp308, label %for.body.310, label %for.end.386

for.body.310:                                     ; preds = %for.cond.307
  %312 = load i32, i32* %k, align 4
  %313 = load i32, i32* %ll, align 4
  %cmp311 = icmp eq i32 %312, %313
  br i1 %cmp311, label %if.then.313, label %if.else.317

if.then.313:                                      ; preds = %for.body.310
  %314 = load i32, i32* %k, align 4
  %add314 = add nsw i32 %314, 1
  %idxprom315 = sext i32 %add314 to i64
  %315 = load i32*, i32** %rlast_d, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %315, i64 %idxprom315
  %316 = load i32, i32* %arrayidx316, align 4
  store i32 %316, i32* %row, align 4
  br label %if.end.380

if.else.317:                                      ; preds = %for.body.310
  %317 = load i32, i32* %k, align 4
  %318 = load i32, i32* %uu, align 4
  %cmp318 = icmp eq i32 %317, %318
  br i1 %cmp318, label %if.then.320, label %if.else.325

if.then.320:                                      ; preds = %if.else.317
  %319 = load i32, i32* %k, align 4
  %sub321 = sub nsw i32 %319, 1
  %idxprom322 = sext i32 %sub321 to i64
  %320 = load i32*, i32** %rlast_d, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %320, i64 %idxprom322
  %321 = load i32, i32* %arrayidx323, align 4
  %sub324 = sub nsw i32 %321, 1
  store i32 %sub324, i32* %row, align 4
  br label %if.end.379

if.else.325:                                      ; preds = %if.else.317
  %322 = load i32, i32* %k, align 4
  %idxprom326 = sext i32 %322 to i64
  %323 = load i32*, i32** %rlast_d, align 8
  %arrayidx327 = getelementptr inbounds i32, i32* %323, i64 %idxprom326
  %324 = load i32, i32* %arrayidx327, align 4
  %sub328 = sub nsw i32 %324, 1
  %325 = load i32, i32* %k, align 4
  %add329 = add nsw i32 %325, 1
  %idxprom330 = sext i32 %add329 to i64
  %326 = load i32*, i32** %rlast_d, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %326, i64 %idxprom330
  %327 = load i32, i32* %arrayidx331, align 4
  %cmp332 = icmp sle i32 %sub328, %327
  br i1 %cmp332, label %land.lhs.true.334, label %if.else.348

land.lhs.true.334:                                ; preds = %if.else.325
  %328 = load i32, i32* %k, align 4
  %idxprom335 = sext i32 %328 to i64
  %329 = load i32*, i32** %rlast_d, align 8
  %arrayidx336 = getelementptr inbounds i32, i32* %329, i64 %idxprom335
  %330 = load i32, i32* %arrayidx336, align 4
  %sub337 = sub nsw i32 %330, 1
  %331 = load i32, i32* %k, align 4
  %sub338 = sub nsw i32 %331, 1
  %idxprom339 = sext i32 %sub338 to i64
  %332 = load i32*, i32** %rlast_d, align 8
  %arrayidx340 = getelementptr inbounds i32, i32* %332, i64 %idxprom339
  %333 = load i32, i32* %arrayidx340, align 4
  %sub341 = sub nsw i32 %333, 1
  %cmp342 = icmp sle i32 %sub337, %sub341
  br i1 %cmp342, label %if.then.344, label %if.else.348

if.then.344:                                      ; preds = %land.lhs.true.334
  %334 = load i32, i32* %k, align 4
  %idxprom345 = sext i32 %334 to i64
  %335 = load i32*, i32** %rlast_d, align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %335, i64 %idxprom345
  %336 = load i32, i32* %arrayidx346, align 4
  %sub347 = sub nsw i32 %336, 1
  store i32 %sub347, i32* %row, align 4
  br label %if.end.378

if.else.348:                                      ; preds = %land.lhs.true.334, %if.else.325
  %337 = load i32, i32* %k, align 4
  %sub349 = sub nsw i32 %337, 1
  %idxprom350 = sext i32 %sub349 to i64
  %338 = load i32*, i32** %rlast_d, align 8
  %arrayidx351 = getelementptr inbounds i32, i32* %338, i64 %idxprom350
  %339 = load i32, i32* %arrayidx351, align 4
  %sub352 = sub nsw i32 %339, 1
  %340 = load i32, i32* %k, align 4
  %add353 = add nsw i32 %340, 1
  %idxprom354 = sext i32 %add353 to i64
  %341 = load i32*, i32** %rlast_d, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %341, i64 %idxprom354
  %342 = load i32, i32* %arrayidx355, align 4
  %cmp356 = icmp sle i32 %sub352, %342
  br i1 %cmp356, label %land.lhs.true.358, label %if.else.373

land.lhs.true.358:                                ; preds = %if.else.348
  %343 = load i32, i32* %k, align 4
  %sub359 = sub nsw i32 %343, 1
  %idxprom360 = sext i32 %sub359 to i64
  %344 = load i32*, i32** %rlast_d, align 8
  %arrayidx361 = getelementptr inbounds i32, i32* %344, i64 %idxprom360
  %345 = load i32, i32* %arrayidx361, align 4
  %sub362 = sub nsw i32 %345, 1
  %346 = load i32, i32* %k, align 4
  %idxprom363 = sext i32 %346 to i64
  %347 = load i32*, i32** %rlast_d, align 8
  %arrayidx364 = getelementptr inbounds i32, i32* %347, i64 %idxprom363
  %348 = load i32, i32* %arrayidx364, align 4
  %sub365 = sub nsw i32 %348, 1
  %cmp366 = icmp sle i32 %sub362, %sub365
  br i1 %cmp366, label %if.then.368, label %if.else.373

if.then.368:                                      ; preds = %land.lhs.true.358
  %349 = load i32, i32* %k, align 4
  %sub369 = sub nsw i32 %349, 1
  %idxprom370 = sext i32 %sub369 to i64
  %350 = load i32*, i32** %rlast_d, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %350, i64 %idxprom370
  %351 = load i32, i32* %arrayidx371, align 4
  %sub372 = sub nsw i32 %351, 1
  store i32 %sub372, i32* %row, align 4
  br label %if.end.377

if.else.373:                                      ; preds = %land.lhs.true.358, %if.else.348
  %352 = load i32, i32* %k, align 4
  %add374 = add nsw i32 %352, 1
  %idxprom375 = sext i32 %add374 to i64
  %353 = load i32*, i32** %rlast_d, align 8
  %arrayidx376 = getelementptr inbounds i32, i32* %353, i64 %idxprom375
  %354 = load i32, i32* %arrayidx376, align 4
  store i32 %354, i32* %row, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.else.373, %if.then.368
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.then.344
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.320
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.then.313
  %355 = load i8*, i8** %seq1.addr, align 8
  %356 = load i8*, i8** %seq2.addr, align 8
  %357 = load i32, i32* %k, align 4
  %358 = load i32, i32* %row, align 4
  %359 = load i32, i32* %i1.addr, align 4
  %360 = load i32, i32* %j1.addr, align 4
  %361 = load i32, i32* %M.addr, align 4
  %362 = load i32, i32* %N.addr, align 4
  %call381 = call i32 @rsnake(i8* %355, i8* %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361, i32 %362)
  %363 = load i32, i32* %k, align 4
  %idxprom382 = sext i32 %363 to i64
  %364 = load i32*, i32** %rtemp_d, align 8
  %arrayidx383 = getelementptr inbounds i32, i32* %364, i64 %idxprom382
  store i32 %call381, i32* %arrayidx383, align 4
  br label %for.inc.384

for.inc.384:                                      ; preds = %if.end.380
  %365 = load i32, i32* %k, align 4
  %inc385 = add nsw i32 %365, 1
  store i32 %inc385, i32* %k, align 4
  br label %for.cond.307

for.end.386:                                      ; preds = %for.cond.307
  %366 = load i32, i32* %ll, align 4
  store i32 %366, i32* %k, align 4
  br label %for.cond.387

for.cond.387:                                     ; preds = %for.inc.395, %for.end.386
  %367 = load i32, i32* %k, align 4
  %368 = load i32, i32* %uu, align 4
  %cmp388 = icmp sle i32 %367, %368
  br i1 %cmp388, label %for.body.390, label %for.end.397

for.body.390:                                     ; preds = %for.cond.387
  %369 = load i32, i32* %k, align 4
  %idxprom391 = sext i32 %369 to i64
  %370 = load i32*, i32** %rtemp_d, align 8
  %arrayidx392 = getelementptr inbounds i32, i32* %370, i64 %idxprom391
  %371 = load i32, i32* %arrayidx392, align 4
  %372 = load i32, i32* %k, align 4
  %idxprom393 = sext i32 %372 to i64
  %373 = load i32*, i32** %rlast_d, align 8
  %arrayidx394 = getelementptr inbounds i32, i32* %373, i64 %idxprom393
  store i32 %371, i32* %arrayidx394, align 4
  br label %for.inc.395

for.inc.395:                                      ; preds = %for.body.390
  %374 = load i32, i32* %k, align 4
  %inc396 = add nsw i32 %374, 1
  store i32 %inc396, i32* %k, align 4
  br label %for.cond.387

for.end.397:                                      ; preds = %for.cond.387
  br label %for.inc.398

for.inc.398:                                      ; preds = %for.end.397
  %375 = load i32, i32* %c, align 4
  %inc399 = add nsw i32 %375, 1
  store i32 %inc399, i32* %c, align 4
  br label %for.cond.287

for.end.400:                                      ; preds = %for.cond.287
  store i8 0, i8* %flag, align 1
  %376 = load i32, i32* %i1.addr, align 4
  store i32 %376, i32* %mi, align 4
  %377 = load i32, i32* %j1.addr, align 4
  store i32 %377, i32* %mj, align 4
  %378 = load i32, i32* %lower, align 4
  %379 = load i32, i32* %rlower, align 4
  %cmp401 = icmp slt i32 %378, %379
  br i1 %cmp401, label %cond.true.403, label %cond.false.404

cond.true.403:                                    ; preds = %for.end.400
  %380 = load i32, i32* %rlower, align 4
  br label %cond.end.405

cond.false.404:                                   ; preds = %for.end.400
  %381 = load i32, i32* %lower, align 4
  br label %cond.end.405

cond.end.405:                                     ; preds = %cond.false.404, %cond.true.403
  %cond406 = phi i32 [ %380, %cond.true.403 ], [ %381, %cond.false.404 ]
  store i32 %cond406, i32* %ll, align 4
  %382 = load i32, i32* %upper, align 4
  %383 = load i32, i32* %rupper, align 4
  %cmp407 = icmp sgt i32 %382, %383
  br i1 %cmp407, label %cond.true.409, label %cond.false.410

cond.true.409:                                    ; preds = %cond.end.405
  %384 = load i32, i32* %rupper, align 4
  br label %cond.end.411

cond.false.410:                                   ; preds = %cond.end.405
  %385 = load i32, i32* %upper, align 4
  br label %cond.end.411

cond.end.411:                                     ; preds = %cond.false.410, %cond.true.409
  %cond412 = phi i32 [ %384, %cond.true.409 ], [ %385, %cond.false.410 ]
  store i32 %cond412, i32* %uu, align 4
  %386 = load i32, i32* %ll, align 4
  store i32 %386, i32* %k, align 4
  br label %for.cond.413

for.cond.413:                                     ; preds = %for.inc.442, %cond.end.411
  %387 = load i32, i32* %k, align 4
  %388 = load i32, i32* %uu, align 4
  %cmp414 = icmp sle i32 %387, %388
  br i1 %cmp414, label %for.body.416, label %for.end.444

for.body.416:                                     ; preds = %for.cond.413
  %389 = load i32, i32* %k, align 4
  %idxprom417 = sext i32 %389 to i64
  %390 = load i32*, i32** %last_d, align 8
  %arrayidx418 = getelementptr inbounds i32, i32* %390, i64 %idxprom417
  %391 = load i32, i32* %arrayidx418, align 4
  %392 = load i32, i32* %k, align 4
  %idxprom419 = sext i32 %392 to i64
  %393 = load i32*, i32** %rlast_d, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %393, i64 %idxprom419
  %394 = load i32, i32* %arrayidx420, align 4
  %cmp421 = icmp sge i32 %391, %394
  br i1 %cmp421, label %if.then.423, label %if.end.441

if.then.423:                                      ; preds = %for.body.416
  %395 = load i32, i32* %k, align 4
  %idxprom424 = sext i32 %395 to i64
  %396 = load i32*, i32** %last_d, align 8
  %arrayidx425 = getelementptr inbounds i32, i32* %396, i64 %idxprom424
  %397 = load i32, i32* %arrayidx425, align 4
  %398 = load i32, i32* %i1.addr, align 4
  %sub426 = sub nsw i32 %397, %398
  %399 = load i32, i32* %i2.addr, align 4
  %400 = load i32, i32* %k, align 4
  %idxprom427 = sext i32 %400 to i64
  %401 = load i32*, i32** %rlast_d, align 8
  %arrayidx428 = getelementptr inbounds i32, i32* %401, i64 %idxprom427
  %402 = load i32, i32* %arrayidx428, align 4
  %sub429 = sub nsw i32 %399, %402
  %cmp430 = icmp sge i32 %sub426, %sub429
  br i1 %cmp430, label %if.then.432, label %if.else.436

if.then.432:                                      ; preds = %if.then.423
  %403 = load i32, i32* %k, align 4
  %idxprom433 = sext i32 %403 to i64
  %404 = load i32*, i32** %last_d, align 8
  %arrayidx434 = getelementptr inbounds i32, i32* %404, i64 %idxprom433
  %405 = load i32, i32* %arrayidx434, align 4
  store i32 %405, i32* %mi, align 4
  %406 = load i32, i32* %k, align 4
  %407 = load i32, i32* %mi, align 4
  %add435 = add nsw i32 %406, %407
  store i32 %add435, i32* %mj, align 4
  br label %if.end.440

if.else.436:                                      ; preds = %if.then.423
  %408 = load i32, i32* %k, align 4
  %idxprom437 = sext i32 %408 to i64
  %409 = load i32*, i32** %rlast_d, align 8
  %arrayidx438 = getelementptr inbounds i32, i32* %409, i64 %idxprom437
  %410 = load i32, i32* %arrayidx438, align 4
  store i32 %410, i32* %mi, align 4
  %411 = load i32, i32* %k, align 4
  %412 = load i32, i32* %mi, align 4
  %add439 = add nsw i32 %411, %412
  store i32 %add439, i32* %mj, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.else.436, %if.then.432
  store i8 1, i8* %flag, align 1
  br label %for.end.444

if.end.441:                                       ; preds = %for.body.416
  br label %for.inc.442

for.inc.442:                                      ; preds = %if.end.441
  %413 = load i32, i32* %k, align 4
  %inc443 = add nsw i32 %413, 1
  store i32 %inc443, i32* %k, align 4
  br label %for.cond.413

for.end.444:                                      ; preds = %if.end.440, %for.cond.413
  %414 = load i32*, i32** %last_d, align 8
  %415 = load i32, i32* %lower, align 4
  %idx.ext445 = sext i32 %415 to i64
  %add.ptr446 = getelementptr inbounds i32, i32* %414, i64 %idx.ext445
  %416 = bitcast i32* %add.ptr446 to i8*
  call void @free(i8* %416) #4
  %417 = load i32*, i32** %rlast_d, align 8
  %418 = load i32, i32* %rlower, align 4
  %idx.ext447 = sext i32 %418 to i64
  %add.ptr448 = getelementptr inbounds i32, i32* %417, i64 %idx.ext447
  %419 = bitcast i32* %add.ptr448 to i8*
  call void @free(i8* %419) #4
  %420 = load i32*, i32** %temp_d, align 8
  %421 = load i32, i32* %lower, align 4
  %idx.ext449 = sext i32 %421 to i64
  %add.ptr450 = getelementptr inbounds i32, i32* %420, i64 %idx.ext449
  %422 = bitcast i32* %add.ptr450 to i8*
  call void @free(i8* %422) #4
  %423 = load i32*, i32** %rtemp_d, align 8
  %424 = load i32, i32* %rlower, align 4
  %idx.ext451 = sext i32 %424 to i64
  %add.ptr452 = getelementptr inbounds i32, i32* %423, i64 %idx.ext451
  %425 = bitcast i32* %add.ptr452 to i8*
  call void @free(i8* %425) #4
  %426 = load i8, i8* %flag, align 1
  %tobool453 = icmp ne i8 %426, 0
  br i1 %tobool453, label %if.then.454, label %if.else.460

if.then.454:                                      ; preds = %for.end.444
  %427 = load i8*, i8** %seq1.addr, align 8
  %428 = load i8*, i8** %seq2.addr, align 8
  %429 = load i32, i32* %i1.addr, align 4
  %430 = load i32, i32* %j1.addr, align 4
  %431 = load i32, i32* %mi, align 4
  %432 = load i32, i32* %mj, align 4
  %433 = load i32, i32* %midc, align 4
  %434 = load i32, i32* %M.addr, align 4
  %435 = load i32, i32* %N.addr, align 4
  call void @align_path(i8* %427, i8* %428, i32 %429, i32 %430, i32 %431, i32 %432, i32 %433, %struct._edit_script** %head1, %struct._edit_script** %tail1, i32 %434, i32 %435)
  %436 = load i8*, i8** %seq1.addr, align 8
  %437 = load i8*, i8** %seq2.addr, align 8
  %438 = load i32, i32* %mi, align 4
  %439 = load i32, i32* %mj, align 4
  %440 = load i32, i32* %i2.addr, align 4
  %441 = load i32, i32* %j2.addr, align 4
  %442 = load i32, i32* %rmidc, align 4
  %443 = load i32, i32* %M.addr, align 4
  %444 = load i32, i32* %N.addr, align 4
  call void @align_path(i8* %436, i8* %437, i32 %438, i32 %439, i32 %440, i32 %441, i32 %442, %struct._edit_script** %head2, %struct._edit_script** %tail2, i32 %443, i32 %444)
  %445 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %tobool455 = icmp ne %struct._edit_script* %445, null
  br i1 %tobool455, label %if.then.456, label %if.else.458

if.then.456:                                      ; preds = %if.then.454
  %446 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %447 = load %struct._edit_script*, %struct._edit_script** %tail1, align 8
  %next457 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %447, i32 0, i32 0
  store %struct._edit_script* %446, %struct._edit_script** %next457, align 8
  br label %if.end.459

if.else.458:                                      ; preds = %if.then.454
  %448 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  store %struct._edit_script* %448, %struct._edit_script** %head1, align 8
  br label %if.end.459

if.end.459:                                       ; preds = %if.else.458, %if.then.456
  br label %if.end.462

if.else.460:                                      ; preds = %for.end.444
  %449 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call461 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %449, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0))
  store %struct._edit_script* null, %struct._edit_script** %head1, align 8
  br label %if.end.462

if.end.462:                                       ; preds = %if.else.460, %if.end.459
  %450 = load %struct._edit_script*, %struct._edit_script** %head1, align 8
  %451 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script* %450, %struct._edit_script** %451, align 8
  %452 = load %struct._edit_script*, %struct._edit_script** %head2, align 8
  %tobool463 = icmp ne %struct._edit_script* %452, null
  br i1 %tobool463, label %if.then.464, label %if.else.465

if.then.464:                                      ; preds = %if.end.462
  %453 = load %struct._edit_script*, %struct._edit_script** %tail2, align 8
  %454 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %453, %struct._edit_script** %454, align 8
  br label %if.end.466

if.else.465:                                      ; preds = %if.end.462
  %455 = load %struct._edit_script*, %struct._edit_script** %tail1, align 8
  %456 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %455, %struct._edit_script** %456, align 8
  br label %if.end.466

if.end.466:                                       ; preds = %if.end, %if.then.8, %if.end.96, %if.else.465, %if.then.464
  ret void
}

declare i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @snake(i8* %seq1, i8* %seq2, i32 %k, i32 %x, i32 %endx, i32 %endy) #0 {
entry:
  %retval = alloca i32, align 4
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %k.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %endx.addr = alloca i32, align 4
  %endy.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %endx, i32* %endx.addr, align 4
  store i32 %endy, i32* %endy.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %k.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %y, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %endx.addr, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %endy.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8*, i8** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %11 = load i32, i32* %y, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load i8*, i8** %seq2.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %idxprom3
  %13 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %13 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %x.addr, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %x.addr, align 4
  %16 = load i32, i32* %y, align 4
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, i32* %y, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %x.addr, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @rsnake(i8* %seq1, i8* %seq2, i32 %k, i32 %x, i32 %startx, i32 %starty, i32 %M, i32 %N) #0 {
entry:
  %retval = alloca i32, align 4
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %k.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %M.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %startx.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %starty.addr, align 4
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %startx.addr, align 4
  %7 = load i32, i32* %starty.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i32 %6, i32 %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %lor.lhs.false
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %k.addr, align 4
  %add = add nsw i32 %8, %9
  %10 = load i32, i32* %N.addr, align 4
  %cmp5 = icmp sgt i32 %add, %10
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %k.addr, align 4
  %add7 = add nsw i32 %13, %14
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %12, i32 %add7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.4
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %k.addr, align 4
  %add10 = add nsw i32 %15, %16
  store i32 %add10, i32* %y, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.9
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %startx.addr, align 4
  %cmp11 = icmp sgt i32 %17, %18
  br i1 %cmp11, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* %starty.addr, align 4
  %cmp12 = icmp sgt i32 %19, %20
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %21 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom = sext i32 %sub to i64
  %22 = load i8*, i8** %seq1.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  %23 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %23 to i32
  %24 = load i32, i32* %y, align 4
  %sub13 = sub nsw i32 %24, 1
  %idxprom14 = sext i32 %sub13 to i64
  %25 = load i8*, i8** %seq2.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %25, i64 %idxprom14
  %26 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %26 to i32
  %cmp17 = icmp eq i32 %conv, %conv16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %27 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i32, i32* %x.addr, align 4
  %sub19 = sub nsw i32 %28, 1
  store i32 %sub19, i32* %x.addr, align 4
  %29 = load i32, i32* %y, align 4
  %sub20 = sub nsw i32 %29, 1
  store i32 %sub20, i32* %y, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %30 = load i32, i32* %x.addr, align 4
  store i32 %30, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @align_get_dist(i8* %seq1, i8* %seq2, i32 %i1, i32 %j1, i32 %i2, i32 %j2, i32 %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %seq1.addr = alloca i8*, align 8
  %seq2.addr = alloca i8*, align 8
  %i1.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %j2.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %last_d = alloca i32*, align 8
  %temp_d = alloca i32*, align 8
  %goal_diag = alloca i32, align 4
  %ll = alloca i32, align 4
  %uu = alloca i32, align 4
  %c = alloca i32, align 4
  %k = alloca i32, align 4
  %row = alloca i32, align 4
  %start = alloca i32, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  store i8* %seq1, i8** %seq1.addr, align 8
  store i8* %seq2, i8** %seq2.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %j1, i32* %j1.addr, align 4
  store i32 %i2, i32* %i2.addr, align 4
  store i32 %j2, i32* %j2.addr, align 4
  store i32 %limit, i32* %limit.addr, align 4
  %0 = load i32, i32* %j1.addr, align 4
  %1 = load i32, i32* %i1.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, i32* %start, align 4
  %2 = load i32, i32* %j1.addr, align 4
  %3 = load i32, i32* %i2.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  %4 = load i32, i32* %start, align 4
  %5 = load i32, i32* %limit.addr, align 4
  %sub2 = sub nsw i32 %4, %5
  %cmp = icmp slt i32 %sub1, %sub2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %start, align 4
  %7 = load i32, i32* %limit.addr, align 4
  %sub3 = sub nsw i32 %6, %7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %j1.addr, align 4
  %9 = load i32, i32* %i2.addr, align 4
  %sub4 = sub nsw i32 %8, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub3, %cond.true ], [ %sub4, %cond.false ]
  store i32 %cond, i32* %lower, align 4
  %10 = load i32, i32* %j2.addr, align 4
  %11 = load i32, i32* %i1.addr, align 4
  %sub5 = sub nsw i32 %10, %11
  %12 = load i32, i32* %start, align 4
  %13 = load i32, i32* %limit.addr, align 4
  %add = add nsw i32 %12, %13
  %cmp6 = icmp sgt i32 %sub5, %add
  br i1 %cmp6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.end
  %14 = load i32, i32* %start, align 4
  %15 = load i32, i32* %limit.addr, align 4
  %add8 = add nsw i32 %14, %15
  br label %cond.end.11

cond.false.9:                                     ; preds = %cond.end
  %16 = load i32, i32* %j2.addr, align 4
  %17 = load i32, i32* %i1.addr, align 4
  %sub10 = sub nsw i32 %16, %17
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.9, %cond.true.7
  %cond12 = phi i32 [ %add8, %cond.true.7 ], [ %sub10, %cond.false.9 ]
  store i32 %cond12, i32* %upper, align 4
  %18 = load i32, i32* %j2.addr, align 4
  %19 = load i32, i32* %i2.addr, align 4
  %sub13 = sub nsw i32 %18, %19
  store i32 %sub13, i32* %goal_diag, align 4
  %20 = load i32, i32* %goal_diag, align 4
  %21 = load i32, i32* %upper, align 4
  %cmp14 = icmp sgt i32 %20, %21
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.11
  %22 = load i32, i32* %goal_diag, align 4
  %23 = load i32, i32* %lower, align 4
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end.11
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %24 = load i32, i32* %upper, align 4
  %25 = load i32, i32* %lower, align 4
  %sub16 = sub nsw i32 %24, %25
  %add17 = add nsw i32 %sub16, 1
  %conv = sext i32 %add17 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @xmalloc(i64 %mul)
  %26 = bitcast i8* %call to i32*
  %27 = load i32, i32* %lower, align 4
  %idx.ext = sext i32 %27 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %26, i64 %idx.neg
  store i32* %add.ptr, i32** %last_d, align 8
  %28 = load i32, i32* %upper, align 4
  %29 = load i32, i32* %lower, align 4
  %sub18 = sub nsw i32 %28, %29
  %add19 = add nsw i32 %sub18, 1
  %conv20 = sext i32 %add19 to i64
  %mul21 = mul i64 %conv20, 4
  %call22 = call i8* @xmalloc(i64 %mul21)
  %30 = bitcast i8* %call22 to i32*
  %31 = load i32, i32* %lower, align 4
  %idx.ext23 = sext i32 %31 to i64
  %idx.neg24 = sub i64 0, %idx.ext23
  %add.ptr25 = getelementptr inbounds i32, i32* %30, i64 %idx.neg24
  store i32* %add.ptr25, i32** %temp_d, align 8
  %32 = load i32, i32* %lower, align 4
  store i32 %32, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %33 = load i32, i32* %k, align 4
  %34 = load i32, i32* %upper, align 4
  %cmp26 = icmp sle i32 %33, %34
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %k, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load i32*, i32** %last_d, align 8
  %arrayidx = getelementptr inbounds i32, i32* %36, i64 %idxprom
  store i32 -2147483648, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %k, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i8*, i8** %seq1.addr, align 8
  %39 = load i8*, i8** %seq2.addr, align 8
  %40 = load i32, i32* %start, align 4
  %41 = load i32, i32* %i1.addr, align 4
  %42 = load i32, i32* %i2.addr, align 4
  %43 = load i32, i32* %j2.addr, align 4
  %call28 = call i32 @snake(i8* %38, i8* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %44 = load i32, i32* %start, align 4
  %idxprom29 = sext i32 %44 to i64
  %45 = load i32*, i32** %last_d, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %45, i64 %idxprom29
  store i32 %call28, i32* %arrayidx30, align 4
  %46 = load i32, i32* %goal_diag, align 4
  %idxprom31 = sext i32 %46 to i64
  %47 = load i32*, i32** %last_d, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %47, i64 %idxprom31
  %48 = load i32, i32* %arrayidx32, align 4
  %49 = load i32, i32* %i2.addr, align 4
  %cmp33 = icmp sge i32 %48, %49
  br i1 %cmp33, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %for.end
  %50 = load i32*, i32** %last_d, align 8
  %51 = load i32, i32* %lower, align 4
  %idx.ext36 = sext i32 %51 to i64
  %add.ptr37 = getelementptr inbounds i32, i32* %50, i64 %idx.ext36
  %52 = bitcast i32* %add.ptr37 to i8*
  call void @free(i8* %52) #4
  %53 = load i32*, i32** %temp_d, align 8
  %54 = load i32, i32* %lower, align 4
  %idx.ext38 = sext i32 %54 to i64
  %add.ptr39 = getelementptr inbounds i32, i32* %53, i64 %idx.ext38
  %55 = bitcast i32* %add.ptr39 to i8*
  call void @free(i8* %55) #4
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %for.end
  store i32 1, i32* %c, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.156, %if.end.40
  %56 = load i32, i32* %c, align 4
  %57 = load i32, i32* %limit.addr, align 4
  %cmp42 = icmp sle i32 %56, %57
  br i1 %cmp42, label %for.body.44, label %for.end.158

for.body.44:                                      ; preds = %for.cond.41
  %58 = load i32, i32* %lower, align 4
  %59 = load i32, i32* %start, align 4
  %60 = load i32, i32* %c, align 4
  %sub45 = sub nsw i32 %59, %60
  %cmp46 = icmp slt i32 %58, %sub45
  br i1 %cmp46, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %for.body.44
  %61 = load i32, i32* %start, align 4
  %62 = load i32, i32* %c, align 4
  %sub49 = sub nsw i32 %61, %62
  br label %cond.end.51

cond.false.50:                                    ; preds = %for.body.44
  %63 = load i32, i32* %lower, align 4
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.48
  %cond52 = phi i32 [ %sub49, %cond.true.48 ], [ %63, %cond.false.50 ]
  store i32 %cond52, i32* %ll, align 4
  %64 = load i32, i32* %upper, align 4
  %65 = load i32, i32* %start, align 4
  %66 = load i32, i32* %c, align 4
  %add53 = add nsw i32 %65, %66
  %cmp54 = icmp sgt i32 %64, %add53
  br i1 %cmp54, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.end.51
  %67 = load i32, i32* %start, align 4
  %68 = load i32, i32* %c, align 4
  %add57 = add nsw i32 %67, %68
  br label %cond.end.59

cond.false.58:                                    ; preds = %cond.end.51
  %69 = load i32, i32* %upper, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.56
  %cond60 = phi i32 [ %add57, %cond.true.56 ], [ %69, %cond.false.58 ]
  store i32 %cond60, i32* %uu, align 4
  %70 = load i32, i32* %ll, align 4
  store i32 %70, i32* %k, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.132, %cond.end.59
  %71 = load i32, i32* %k, align 4
  %72 = load i32, i32* %uu, align 4
  %cmp62 = icmp sle i32 %71, %72
  br i1 %cmp62, label %for.body.64, label %for.end.134

for.body.64:                                      ; preds = %for.cond.61
  %73 = load i32, i32* %k, align 4
  %74 = load i32, i32* %ll, align 4
  %cmp65 = icmp eq i32 %73, %74
  br i1 %cmp65, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %for.body.64
  %75 = load i32, i32* %k, align 4
  %add68 = add nsw i32 %75, 1
  %idxprom69 = sext i32 %add68 to i64
  %76 = load i32*, i32** %last_d, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %76, i64 %idxprom69
  %77 = load i32, i32* %arrayidx70, align 4
  %add71 = add nsw i32 %77, 1
  store i32 %add71, i32* %row, align 4
  br label %if.end.128

if.else:                                          ; preds = %for.body.64
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* %uu, align 4
  %cmp72 = icmp eq i32 %78, %79
  br i1 %cmp72, label %if.then.74, label %if.else.78

if.then.74:                                       ; preds = %if.else
  %80 = load i32, i32* %k, align 4
  %sub75 = sub nsw i32 %80, 1
  %idxprom76 = sext i32 %sub75 to i64
  %81 = load i32*, i32** %last_d, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %81, i64 %idxprom76
  %82 = load i32, i32* %arrayidx77, align 4
  store i32 %82, i32* %row, align 4
  br label %if.end.127

if.else.78:                                       ; preds = %if.else
  %83 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %83 to i64
  %84 = load i32*, i32** %last_d, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %84, i64 %idxprom79
  %85 = load i32, i32* %arrayidx80, align 4
  %86 = load i32, i32* %k, align 4
  %add81 = add nsw i32 %86, 1
  %idxprom82 = sext i32 %add81 to i64
  %87 = load i32*, i32** %last_d, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %87, i64 %idxprom82
  %88 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp sge i32 %85, %88
  br i1 %cmp84, label %land.lhs.true, label %if.else.98

land.lhs.true:                                    ; preds = %if.else.78
  %89 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %89 to i64
  %90 = load i32*, i32** %last_d, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %90, i64 %idxprom86
  %91 = load i32, i32* %arrayidx87, align 4
  %add88 = add nsw i32 %91, 1
  %92 = load i32, i32* %k, align 4
  %sub89 = sub nsw i32 %92, 1
  %idxprom90 = sext i32 %sub89 to i64
  %93 = load i32*, i32** %last_d, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %93, i64 %idxprom90
  %94 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp sge i32 %add88, %94
  br i1 %cmp92, label %if.then.94, label %if.else.98

if.then.94:                                       ; preds = %land.lhs.true
  %95 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %95 to i64
  %96 = load i32*, i32** %last_d, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %96, i64 %idxprom95
  %97 = load i32, i32* %arrayidx96, align 4
  %add97 = add nsw i32 %97, 1
  store i32 %add97, i32* %row, align 4
  br label %if.end.126

if.else.98:                                       ; preds = %land.lhs.true, %if.else.78
  %98 = load i32, i32* %k, align 4
  %add99 = add nsw i32 %98, 1
  %idxprom100 = sext i32 %add99 to i64
  %99 = load i32*, i32** %last_d, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %99, i64 %idxprom100
  %100 = load i32, i32* %arrayidx101, align 4
  %add102 = add nsw i32 %100, 1
  %101 = load i32, i32* %k, align 4
  %sub103 = sub nsw i32 %101, 1
  %idxprom104 = sext i32 %sub103 to i64
  %102 = load i32*, i32** %last_d, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %102, i64 %idxprom104
  %103 = load i32, i32* %arrayidx105, align 4
  %cmp106 = icmp sge i32 %add102, %103
  br i1 %cmp106, label %land.lhs.true.108, label %if.else.121

land.lhs.true.108:                                ; preds = %if.else.98
  %104 = load i32, i32* %k, align 4
  %add109 = add nsw i32 %104, 1
  %idxprom110 = sext i32 %add109 to i64
  %105 = load i32*, i32** %last_d, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %105, i64 %idxprom110
  %106 = load i32, i32* %arrayidx111, align 4
  %107 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %107 to i64
  %108 = load i32*, i32** %last_d, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %108, i64 %idxprom112
  %109 = load i32, i32* %arrayidx113, align 4
  %cmp114 = icmp sge i32 %106, %109
  br i1 %cmp114, label %if.then.116, label %if.else.121

if.then.116:                                      ; preds = %land.lhs.true.108
  %110 = load i32, i32* %k, align 4
  %add117 = add nsw i32 %110, 1
  %idxprom118 = sext i32 %add117 to i64
  %111 = load i32*, i32** %last_d, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %111, i64 %idxprom118
  %112 = load i32, i32* %arrayidx119, align 4
  %add120 = add nsw i32 %112, 1
  store i32 %add120, i32* %row, align 4
  br label %if.end.125

if.else.121:                                      ; preds = %land.lhs.true.108, %if.else.98
  %113 = load i32, i32* %k, align 4
  %sub122 = sub nsw i32 %113, 1
  %idxprom123 = sext i32 %sub122 to i64
  %114 = load i32*, i32** %last_d, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %114, i64 %idxprom123
  %115 = load i32, i32* %arrayidx124, align 4
  store i32 %115, i32* %row, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.121, %if.then.116
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.94
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.74
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.67
  %116 = load i8*, i8** %seq1.addr, align 8
  %117 = load i8*, i8** %seq2.addr, align 8
  %118 = load i32, i32* %k, align 4
  %119 = load i32, i32* %row, align 4
  %120 = load i32, i32* %i2.addr, align 4
  %121 = load i32, i32* %j2.addr, align 4
  %call129 = call i32 @snake(i8* %116, i8* %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %122 = load i32, i32* %k, align 4
  %idxprom130 = sext i32 %122 to i64
  %123 = load i32*, i32** %temp_d, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %123, i64 %idxprom130
  store i32 %call129, i32* %arrayidx131, align 4
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.128
  %124 = load i32, i32* %k, align 4
  %inc133 = add nsw i32 %124, 1
  store i32 %inc133, i32* %k, align 4
  br label %for.cond.61

for.end.134:                                      ; preds = %for.cond.61
  %125 = load i32, i32* %ll, align 4
  store i32 %125, i32* %k, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.143, %for.end.134
  %126 = load i32, i32* %k, align 4
  %127 = load i32, i32* %uu, align 4
  %cmp136 = icmp sle i32 %126, %127
  br i1 %cmp136, label %for.body.138, label %for.end.145

for.body.138:                                     ; preds = %for.cond.135
  %128 = load i32, i32* %k, align 4
  %idxprom139 = sext i32 %128 to i64
  %129 = load i32*, i32** %temp_d, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %129, i64 %idxprom139
  %130 = load i32, i32* %arrayidx140, align 4
  %131 = load i32, i32* %k, align 4
  %idxprom141 = sext i32 %131 to i64
  %132 = load i32*, i32** %last_d, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %132, i64 %idxprom141
  store i32 %130, i32* %arrayidx142, align 4
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.138
  %133 = load i32, i32* %k, align 4
  %inc144 = add nsw i32 %133, 1
  store i32 %inc144, i32* %k, align 4
  br label %for.cond.135

for.end.145:                                      ; preds = %for.cond.135
  %134 = load i32, i32* %goal_diag, align 4
  %idxprom146 = sext i32 %134 to i64
  %135 = load i32*, i32** %last_d, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %135, i64 %idxprom146
  %136 = load i32, i32* %arrayidx147, align 4
  %137 = load i32, i32* %i2.addr, align 4
  %cmp148 = icmp sge i32 %136, %137
  br i1 %cmp148, label %if.then.150, label %if.end.155

if.then.150:                                      ; preds = %for.end.145
  %138 = load i32*, i32** %last_d, align 8
  %139 = load i32, i32* %lower, align 4
  %idx.ext151 = sext i32 %139 to i64
  %add.ptr152 = getelementptr inbounds i32, i32* %138, i64 %idx.ext151
  %140 = bitcast i32* %add.ptr152 to i8*
  call void @free(i8* %140) #4
  %141 = load i32*, i32** %temp_d, align 8
  %142 = load i32, i32* %lower, align 4
  %idx.ext153 = sext i32 %142 to i64
  %add.ptr154 = getelementptr inbounds i32, i32* %141, i64 %idx.ext153
  %143 = bitcast i32* %add.ptr154 to i8*
  call void @free(i8* %143) #4
  %144 = load i32, i32* %c, align 4
  store i32 %144, i32* %retval
  br label %return

if.end.155:                                       ; preds = %for.end.145
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %145 = load i32, i32* %c, align 4
  %inc157 = add nsw i32 %145, 1
  store i32 %inc157, i32* %c, align 4
  br label %for.cond.41

for.end.158:                                      ; preds = %for.cond.41
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.158, %if.then.150, %if.then.35, %if.then
  %146 = load i32, i32* %retval
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define void @Condense_both_Ends(%struct._edit_script** %head, %struct._edit_script** %tail, %struct._edit_script** %prev) #0 {
entry:
  %head.addr = alloca %struct._edit_script**, align 8
  %tail.addr = alloca %struct._edit_script**, align 8
  %prev.addr = alloca %struct._edit_script**, align 8
  %tp = alloca %struct._edit_script*, align 8
  %tp1 = alloca %struct._edit_script*, align 8
  store %struct._edit_script** %head, %struct._edit_script*** %head.addr, align 8
  store %struct._edit_script** %tail, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script** %prev, %struct._edit_script*** %prev.addr, align 8
  %0 = load %struct._edit_script**, %struct._edit_script*** %head.addr, align 8
  %1 = load %struct._edit_script*, %struct._edit_script** %0, align 8
  store %struct._edit_script* %1, %struct._edit_script** %tp, align 8
  %2 = load %struct._edit_script**, %struct._edit_script*** %prev.addr, align 8
  store %struct._edit_script* null, %struct._edit_script** %2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %cmp = icmp ne %struct._edit_script* %3, null
  br i1 %cmp, label %while.body, label %while.end.14

while.body:                                       ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %while.body.7, %while.body
  %4 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %next = getelementptr inbounds %struct._edit_script, %struct._edit_script* %4, i32 0, i32 0
  %5 = load %struct._edit_script*, %struct._edit_script** %next, align 8
  store %struct._edit_script* %5, %struct._edit_script** %tp1, align 8
  %cmp2 = icmp ne %struct._edit_script* %5, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.1
  %6 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %op_type = getelementptr inbounds %struct._edit_script, %struct._edit_script* %6, i32 0, i32 2
  %7 = load i8, i8* %op_type, align 1
  %conv = sext i8 %7 to i32
  %8 = load %struct._edit_script*, %struct._edit_script** %tp1, align 8
  %op_type3 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %8, i32 0, i32 2
  %9 = load i8, i8* %op_type3, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.1
  %10 = phi i1 [ false, %while.cond.1 ], [ %cmp5, %land.rhs ]
  br i1 %10, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %land.end
  %11 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %num = getelementptr inbounds %struct._edit_script, %struct._edit_script* %11, i32 0, i32 1
  %12 = load i32, i32* %num, align 4
  %13 = load %struct._edit_script*, %struct._edit_script** %tp1, align 8
  %num8 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %13, i32 0, i32 1
  %14 = load i32, i32* %num8, align 4
  %add = add nsw i32 %12, %14
  %15 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %num9 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %15, i32 0, i32 1
  store i32 %add, i32* %num9, align 4
  %16 = load %struct._edit_script*, %struct._edit_script** %tp1, align 8
  %next10 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %16, i32 0, i32 0
  %17 = load %struct._edit_script*, %struct._edit_script** %next10, align 8
  %18 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %next11 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %18, i32 0, i32 0
  store %struct._edit_script* %17, %struct._edit_script** %next11, align 8
  %19 = load %struct._edit_script*, %struct._edit_script** %tp1, align 8
  %20 = bitcast %struct._edit_script* %19 to i8*
  call void @free(i8* %20) #4
  br label %while.cond.1

while.end:                                        ; preds = %land.end
  %21 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %next12 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %21, i32 0, i32 0
  %22 = load %struct._edit_script*, %struct._edit_script** %next12, align 8
  %tobool = icmp ne %struct._edit_script* %22, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %23 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %24 = load %struct._edit_script**, %struct._edit_script*** %prev.addr, align 8
  store %struct._edit_script* %23, %struct._edit_script** %24, align 8
  br label %if.end

if.else:                                          ; preds = %while.end
  %25 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %26 = load %struct._edit_script**, %struct._edit_script*** %tail.addr, align 8
  store %struct._edit_script* %25, %struct._edit_script** %26, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %next13 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %27, i32 0, i32 0
  %28 = load %struct._edit_script*, %struct._edit_script** %next13, align 8
  store %struct._edit_script* %28, %struct._edit_script** %tp, align 8
  br label %while.cond

while.end.14:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @S2A(%struct._edit_script* %head, i32* %S, i32 %flag) #0 {
entry:
  %head.addr = alloca %struct._edit_script*, align 8
  %S.addr = alloca i32*, align 8
  %flag.addr = alloca i32, align 4
  %tp = alloca %struct._edit_script*, align 8
  %lastS = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct._edit_script* %head, %struct._edit_script** %head.addr, align 8
  store i32* %S, i32** %S.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load %struct._edit_script*, %struct._edit_script** %head.addr, align 8
  store %struct._edit_script* %0, %struct._edit_script** %tp, align 8
  %1 = load i32*, i32** %S.addr, align 8
  store i32* %1, i32** %lastS, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %entry
  %2 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %cmp = icmp ne %struct._edit_script* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %op_type = getelementptr inbounds %struct._edit_script, %struct._edit_script* %3, i32 0, i32 2
  %4 = load i8, i8* %op_type, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %num = getelementptr inbounds %struct._edit_script, %struct._edit_script* %6, i32 0, i32 1
  %7 = load i32, i32* %num, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32*, i32** %lastS, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr, i32** %lastS, align 8
  store i32 0, i32* %8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.23

if.else:                                          ; preds = %while.body
  %10 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %op_type5 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %10, i32 0, i32 2
  %11 = load i8, i8* %op_type5, align 1
  %conv6 = sext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 2
  br i1 %cmp7, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else
  %12 = load i32, i32* %flag.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.9
  %13 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %num10 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %13, i32 0, i32 1
  %14 = load i32, i32* %num10, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %15 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %num11 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %15, i32 0, i32 1
  %16 = load i32, i32* %num11, align 4
  %sub = sub nsw i32 0, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %sub, %cond.false ]
  %17 = load i32*, i32** %lastS, align 8
  %incdec.ptr12 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr12, i32** %lastS, align 8
  store i32 %cond, i32* %17, align 4
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %18 = load i32, i32* %flag.addr, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %cond.false.18, label %cond.true.15

cond.true.15:                                     ; preds = %if.else.13
  %19 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %num16 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %19, i32 0, i32 1
  %20 = load i32, i32* %num16, align 4
  %sub17 = sub nsw i32 0, %20
  br label %cond.end.20

cond.false.18:                                    ; preds = %if.else.13
  %21 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %num19 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %21, i32 0, i32 1
  %22 = load i32, i32* %num19, align 4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.15
  %cond21 = phi i32 [ %sub17, %cond.true.15 ], [ %22, %cond.false.18 ]
  %23 = load i32*, i32** %lastS, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %incdec.ptr22, i32** %lastS, align 8
  store i32 %cond21, i32* %23, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.20, %cond.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %for.end
  %24 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %next = getelementptr inbounds %struct._edit_script, %struct._edit_script* %24, i32 0, i32 0
  %25 = load %struct._edit_script*, %struct._edit_script** %next, align 8
  store %struct._edit_script* %25, %struct._edit_script** %tp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i32*, i32** %lastS, align 8
  %27 = load i32*, i32** %S.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv24 = trunc i64 %sub.ptr.div to i32
  %28 = load i32*, i32** %S.addr, align 8
  %add.ptr = getelementptr inbounds i32, i32* %28, i64 -1
  store i32 %conv24, i32* %add.ptr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @IDISPLAY(i8* %A, i8* %B, i32 %M, i32 %N, i32* %S, i32 %AP, i32 %BP, %struct._collec_t* %eCol, i32 %direction) #0 {
entry:
  %A.addr = alloca i8*, align 8
  %B.addr = alloca i8*, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %S.addr = alloca i32*, align 8
  %AP.addr = alloca i32, align 4
  %BP.addr = alloca i32, align 4
  %eCol.addr = alloca %struct._collec_t*, align 8
  %direction.addr = alloca i32, align 4
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %c = alloca i8*, align 8
  %sign = alloca i8, align 1
  %op = alloca i32, align 4
  %index = alloca i32, align 4
  %starti = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lines = alloca i32, align 4
  %ap = alloca i32, align 4
  %bp = alloca i32, align 4
  %pWidth = alloca i32, align 4
  %ii = alloca i32, align 4
  %ep = alloca %struct._exon_t*, align 8
  store i8* %A, i8** %A.addr, align 8
  store i8* %B, i8** %B.addr, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32* %S, i32** %S.addr, align 8
  store i32 %AP, i32* %AP.addr, align 4
  store i32 %BP, i32* %BP.addr, align 4
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  store i32 %direction, i32* %direction.addr, align 4
  store i32 0, i32* %ii, align 4
  %0 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %call = call i32 @get_pos_width(%struct._collec_t* %0)
  store i32 %call, i32* %pWidth, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %ii, align 4
  %2 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %2, i32 0, i32 1
  %3 = load i32, i32* %nb, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %ii, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %5, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %6 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %6, i64 %idxprom
  %7 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  store %struct._exon_t* %7, %struct._exon_t** %ep, align 8
  %from1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %7, i32 0, i32 0
  %8 = load i32, i32* %from1, align 4
  %9 = load i32, i32* %AP.addr, align 4
  %cmp1 = icmp ne i32 %8, %9
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load %struct._exon_t*, %struct._exon_t** %ep, align 8
  %from2 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %10, i32 0, i32 1
  %11 = load i32, i32* %from2, align 4
  %12 = load i32, i32* %BP.addr, align 4
  %cmp2 = icmp ne i32 %11, %12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %13, %lor.end ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, i32* %ii, align 4
  %add = add i32 %15, 1
  store i32 %add, i32* %ii, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i32, i32* %ii, align 4
  %17 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb3 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %17, i32 0, i32 1
  %18 = load i32, i32* %nb3, align 4
  %cmp4 = icmp uge i32 %16, %18
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %while.end
  store i32 0, i32* %index, align 4
  store i32 0, i32* %lines, align 4
  store i32 0, i32* %op, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  store i8 42, i8* %sign, align 1
  %19 = load i32, i32* %AP.addr, align 4
  store i32 %19, i32* %ap, align 4
  %20 = load i32, i32* %BP.addr, align 4
  store i32 %20, i32* %bp, align 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i32 0), i8** %a, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i32 0, i32 0), i8** %b, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i32 0, i32 0), i8** %c, align 8
  %21 = load i32, i32* %ii, align 4
  %22 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb5 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %22, i32 0, i32 1
  %23 = load i32, i32* %nb5, align 4
  %sub = sub i32 %23, 1
  %cmp6 = icmp ult i32 %21, %sub
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %24 = load %struct._exon_t*, %struct._exon_t** %ep, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %24, i32 0, i32 2
  %25 = load i32, i32* %to1, align 4
  %add7 = add nsw i32 %25, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add7, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %starti, align 4
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.168, %cond.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %M.addr, align 4
  %cmp9 = icmp ult i32 %26, %27
  br i1 %cmp9, label %lor.end.12, label %lor.rhs.10

lor.rhs.10:                                       ; preds = %while.cond.8
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %N.addr, align 4
  %cmp11 = icmp ult i32 %28, %29
  br label %lor.end.12

lor.end.12:                                       ; preds = %lor.rhs.10, %while.cond.8
  %30 = phi i1 [ true, %while.cond.8 ], [ %cmp11, %lor.rhs.10 ]
  br i1 %30, label %while.body.13, label %while.end.169

while.body.13:                                    ; preds = %lor.end.12
  %31 = load i32, i32* %op, align 4
  %cmp14 = icmp eq i32 %31, 0
  br i1 %cmp14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body.13
  %32 = load i32*, i32** %S.addr, align 8
  %33 = load i32, i32* %32, align 4
  %cmp15 = icmp eq i32 %33, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  %34 = load i32*, i32** %S.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %incdec.ptr, i32** %S.addr, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %op, align 4
  %36 = load i32, i32* %i, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %i, align 4
  %idxprom17 = zext i32 %inc to i64
  %37 = load i8*, i8** %A.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %37, i64 %idxprom17
  %38 = load i8, i8* %arrayidx18, align 1
  %39 = load i8*, i8** %a, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %j, align 4
  %inc19 = add i32 %40, 1
  store i32 %inc19, i32* %j, align 4
  %idxprom20 = zext i32 %inc19 to i64
  %41 = load i8*, i8** %B.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %41, i64 %idxprom20
  %42 = load i8, i8* %arrayidx21, align 1
  %43 = load i8*, i8** %b, align 8
  store i8 %42, i8* %43, align 1
  %44 = load i8*, i8** %a, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr22, i8** %a, align 8
  %45 = load i8, i8* %44, align 1
  %conv = zext i8 %45 to i32
  %46 = load i8*, i8** %b, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr23, i8** %b, align 8
  %47 = load i8, i8* %46, align 1
  %conv24 = zext i8 %47 to i32
  %cmp25 = icmp eq i32 %conv, %conv24
  %cond27 = select i1 %cmp25, i32 124, i32 32
  %conv28 = trunc i32 %cond27 to i8
  %48 = load i8*, i8** %c, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr29, i8** %c, align 8
  store i8 %conv28, i8* %48, align 1
  br label %if.end.143

if.else:                                          ; preds = %land.lhs.true, %while.body.13
  %49 = load i32, i32* %op, align 4
  %cmp30 = icmp eq i32 %49, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.else
  %50 = load i32*, i32** %S.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %incdec.ptr33, i32** %S.addr, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %op, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.else
  %52 = load i32, i32* %op, align 4
  %cmp35 = icmp sgt i32 %52, 0
  br i1 %cmp35, label %if.then.37, label %if.else.44

if.then.37:                                       ; preds = %if.end.34
  %53 = load i8*, i8** %a, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr38, i8** %a, align 8
  store i8 32, i8* %53, align 1
  %54 = load i32, i32* %j, align 4
  %inc39 = add i32 %54, 1
  store i32 %inc39, i32* %j, align 4
  %idxprom40 = zext i32 %inc39 to i64
  %55 = load i8*, i8** %B.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %55, i64 %idxprom40
  %56 = load i8, i8* %arrayidx41, align 1
  %57 = load i8*, i8** %b, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr42, i8** %b, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i8*, i8** %c, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr43, i8** %c, align 8
  store i8 45, i8* %58, align 1
  %59 = load i32, i32* %op, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %op, align 4
  br label %if.end.142

if.else.44:                                       ; preds = %if.end.34
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %AP.addr, align 4
  %add45 = add i32 %60, %61
  %62 = load i32, i32* %starti, align 4
  %cmp46 = icmp eq i32 %add45, %62
  br i1 %cmp46, label %if.then.48, label %if.else.90

if.then.48:                                       ; preds = %if.else.44
  %63 = load %struct._exon_t*, %struct._exon_t** %ep, align 8
  %type = getelementptr inbounds %struct._exon_t, %struct._exon_t* %63, i32 0, i32 6
  %bf.load = load i64, i64* %type, align 4
  %bf.ashr = ashr i64 %bf.load, 56
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp49 = icmp slt i32 %bf.cast, 0
  br i1 %cmp49, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.48
  %64 = load i32, i32* %direction.addr, align 4
  %cmp51 = icmp eq i32 %64, 0
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %lor.lhs.false, %if.then.48
  store i8 61, i8* %sign, align 1
  br label %if.end.60

if.else.54:                                       ; preds = %lor.lhs.false
  %65 = load i32, i32* %direction.addr, align 4
  %cmp55 = icmp sgt i32 %65, 0
  br i1 %cmp55, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %if.else.54
  store i8 62, i8* %sign, align 1
  br label %if.end.59

if.else.58:                                       ; preds = %if.else.54
  store i8 60, i8* %sign, align 1
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.53
  %66 = load i32, i32* %ii, align 4
  %add61 = add i32 %66, 1
  store i32 %add61, i32* %ii, align 4
  %67 = load i32, i32* %ii, align 4
  %68 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb62 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %68, i32 0, i32 1
  %69 = load i32, i32* %nb62, align 4
  %cmp63 = icmp ult i32 %67, %69
  br i1 %cmp63, label %cond.true.65, label %cond.false.70

cond.true.65:                                     ; preds = %if.end.60
  %70 = load i32, i32* %ii, align 4
  %idxprom66 = zext i32 %70 to i64
  %71 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e67 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %71, i32 0, i32 0
  %exon68 = bitcast %union._collec_elt_t* %e67 to %struct._exon_t***
  %72 = load %struct._exon_t**, %struct._exon_t*** %exon68, align 8
  %arrayidx69 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %72, i64 %idxprom66
  %73 = load %struct._exon_t*, %struct._exon_t** %arrayidx69, align 8
  br label %cond.end.71

cond.false.70:                                    ; preds = %if.end.60
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.65
  %cond72 = phi %struct._exon_t* [ %73, %cond.true.65 ], [ null, %cond.false.70 ]
  store %struct._exon_t* %cond72, %struct._exon_t** %ep, align 8
  %74 = load i32, i32* %ii, align 4
  %75 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb73 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %75, i32 0, i32 1
  %76 = load i32, i32* %nb73, align 4
  %sub74 = sub i32 %76, 1
  %cmp75 = icmp ult i32 %74, %sub74
  br i1 %cmp75, label %cond.true.77, label %cond.false.80

cond.true.77:                                     ; preds = %cond.end.71
  %77 = load %struct._exon_t*, %struct._exon_t** %ep, align 8
  %to178 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %77, i32 0, i32 2
  %78 = load i32, i32* %to178, align 4
  %add79 = add nsw i32 %78, 1
  br label %cond.end.81

cond.false.80:                                    ; preds = %cond.end.71
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.77
  %cond82 = phi i32 [ %add79, %cond.true.77 ], [ -1, %cond.false.80 ]
  store i32 %cond82, i32* %starti, align 4
  store i32 1, i32* %index, align 4
  %79 = load i8, i8* %sign, align 1
  %80 = load i8*, i8** %c, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr83, i8** %c, align 8
  store i8 %79, i8* %80, align 1
  %81 = load i32, i32* %i, align 4
  %inc84 = add i32 %81, 1
  store i32 %inc84, i32* %i, align 4
  %idxprom85 = zext i32 %inc84 to i64
  %82 = load i8*, i8** %A.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %82, i64 %idxprom85
  %83 = load i8, i8* %arrayidx86, align 1
  %84 = load i8*, i8** %a, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr87, i8** %a, align 8
  store i8 %83, i8* %84, align 1
  %85 = load i8*, i8** %b, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr88, i8** %b, align 8
  store i8 32, i8* %85, align 1
  %86 = load i32, i32* %op, align 4
  %inc89 = add nsw i32 %86, 1
  store i32 %inc89, i32* %op, align 4
  br label %if.end.141

if.else.90:                                       ; preds = %if.else.44
  %87 = load i32, i32* %index, align 4
  %tobool = icmp ne i32 %87, 0
  br i1 %tobool, label %if.else.99, label %if.then.91

if.then.91:                                       ; preds = %if.else.90
  %88 = load i8*, i8** %c, align 8
  %incdec.ptr92 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr92, i8** %c, align 8
  store i8 45, i8* %88, align 1
  %89 = load i32, i32* %i, align 4
  %inc93 = add i32 %89, 1
  store i32 %inc93, i32* %i, align 4
  %idxprom94 = zext i32 %inc93 to i64
  %90 = load i8*, i8** %A.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %90, i64 %idxprom94
  %91 = load i8, i8* %arrayidx95, align 1
  %92 = load i8*, i8** %a, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr96, i8** %a, align 8
  store i8 %91, i8* %92, align 1
  %93 = load i8*, i8** %b, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr97, i8** %b, align 8
  store i8 32, i8* %93, align 1
  %94 = load i32, i32* %op, align 4
  %inc98 = add nsw i32 %94, 1
  store i32 %inc98, i32* %op, align 4
  br label %if.end.140

if.else.99:                                       ; preds = %if.else.90
  %95 = load i32, i32* %index, align 4
  switch i32 %95, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb.108
    i32 4, label %sw.bb.108
    i32 5, label %sw.bb.115
    i32 6, label %sw.bb.123
    i32 7, label %sw.bb.123
    i32 8, label %sw.bb.132
  ]

sw.bb:                                            ; preds = %if.else.99, %if.else.99, %if.else.99
  %96 = load i32, i32* %i, align 4
  %inc100 = add i32 %96, 1
  store i32 %inc100, i32* %i, align 4
  %idxprom101 = zext i32 %inc100 to i64
  %97 = load i8*, i8** %A.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %97, i64 %idxprom101
  %98 = load i8, i8* %arrayidx102, align 1
  %99 = load i8*, i8** %a, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr103, i8** %a, align 8
  store i8 %98, i8* %99, align 1
  %100 = load i8*, i8** %b, align 8
  %incdec.ptr104 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr104, i8** %b, align 8
  store i8 32, i8* %100, align 1
  %101 = load i8, i8* %sign, align 1
  %102 = load i8*, i8** %c, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr105, i8** %c, align 8
  store i8 %101, i8* %102, align 1
  %103 = load i32, i32* %op, align 4
  %inc106 = add nsw i32 %103, 1
  store i32 %inc106, i32* %op, align 4
  %104 = load i32, i32* %index, align 4
  %inc107 = add nsw i32 %104, 1
  store i32 %inc107, i32* %index, align 4
  br label %sw.epilog

sw.bb.108:                                        ; preds = %if.else.99, %if.else.99
  %105 = load i8*, i8** %a, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %incdec.ptr109, i8** %a, align 8
  store i8 46, i8* %105, align 1
  %106 = load i8*, i8** %b, align 8
  %incdec.ptr110 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr110, i8** %b, align 8
  store i8 32, i8* %106, align 1
  %107 = load i8*, i8** %c, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr111, i8** %c, align 8
  store i8 46, i8* %107, align 1
  %108 = load i32, i32* %i, align 4
  %inc112 = add i32 %108, 1
  store i32 %inc112, i32* %i, align 4
  %109 = load i32, i32* %op, align 4
  %inc113 = add nsw i32 %109, 1
  store i32 %inc113, i32* %op, align 4
  %110 = load i32, i32* %index, align 4
  %inc114 = add nsw i32 %110, 1
  store i32 %inc114, i32* %index, align 4
  br label %sw.epilog

sw.bb.115:                                        ; preds = %if.else.99
  %111 = load i8*, i8** %a, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr116, i8** %a, align 8
  store i8 46, i8* %111, align 1
  %112 = load i8*, i8** %b, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr117, i8** %b, align 8
  store i8 32, i8* %112, align 1
  %113 = load i8*, i8** %c, align 8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr118, i8** %c, align 8
  store i8 46, i8* %113, align 1
  %114 = load i32, i32* %op, align 4
  %sub119 = sub nsw i32 0, %114
  %sub120 = sub nsw i32 %sub119, 3
  %115 = load i32, i32* %i, align 4
  %add121 = add i32 %115, %sub120
  store i32 %add121, i32* %i, align 4
  store i32 -3, i32* %op, align 4
  %116 = load i32, i32* %index, align 4
  %inc122 = add nsw i32 %116, 1
  store i32 %inc122, i32* %index, align 4
  br label %sw.epilog

sw.bb.123:                                        ; preds = %if.else.99, %if.else.99
  %117 = load i32, i32* %i, align 4
  %inc124 = add i32 %117, 1
  store i32 %inc124, i32* %i, align 4
  %idxprom125 = zext i32 %inc124 to i64
  %118 = load i8*, i8** %A.addr, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %118, i64 %idxprom125
  %119 = load i8, i8* %arrayidx126, align 1
  %120 = load i8*, i8** %a, align 8
  %incdec.ptr127 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr127, i8** %a, align 8
  store i8 %119, i8* %120, align 1
  %121 = load i8*, i8** %b, align 8
  %incdec.ptr128 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr128, i8** %b, align 8
  store i8 32, i8* %121, align 1
  %122 = load i8, i8* %sign, align 1
  %123 = load i8*, i8** %c, align 8
  %incdec.ptr129 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr129, i8** %c, align 8
  store i8 %122, i8* %123, align 1
  %124 = load i32, i32* %op, align 4
  %inc130 = add nsw i32 %124, 1
  store i32 %inc130, i32* %op, align 4
  %125 = load i32, i32* %index, align 4
  %inc131 = add nsw i32 %125, 1
  store i32 %inc131, i32* %index, align 4
  br label %sw.epilog

sw.bb.132:                                        ; preds = %if.else.99
  %126 = load i32, i32* %i, align 4
  %inc133 = add i32 %126, 1
  store i32 %inc133, i32* %i, align 4
  %idxprom134 = zext i32 %inc133 to i64
  %127 = load i8*, i8** %A.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %127, i64 %idxprom134
  %128 = load i8, i8* %arrayidx135, align 1
  %129 = load i8*, i8** %a, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr136, i8** %a, align 8
  store i8 %128, i8* %129, align 1
  %130 = load i8*, i8** %b, align 8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr137, i8** %b, align 8
  store i8 32, i8* %130, align 1
  %131 = load i8, i8* %sign, align 1
  %132 = load i8*, i8** %c, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr138, i8** %c, align 8
  store i8 %131, i8* %132, align 1
  %133 = load i32, i32* %op, align 4
  %inc139 = add nsw i32 %133, 1
  store i32 %inc139, i32* %op, align 4
  store i32 0, i32* %index, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.99, %sw.bb.132, %sw.bb.123, %sw.bb.115, %sw.bb.108, %sw.bb
  br label %if.end.140

if.end.140:                                       ; preds = %sw.epilog, %if.then.91
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %cond.end.81
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.37
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.16
  %134 = load i8*, i8** %a, align 8
  %cmp144 = icmp uge i8* %134, getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i64 50)
  br i1 %cmp144, label %if.then.152, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %if.end.143
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* %M.addr, align 4
  %cmp147 = icmp uge i32 %135, %136
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.168

land.lhs.true.149:                                ; preds = %lor.lhs.false.146
  %137 = load i32, i32* %j, align 4
  %138 = load i32, i32* %N.addr, align 4
  %cmp150 = icmp uge i32 %137, %138
  br i1 %cmp150, label %if.then.152, label %if.end.168

if.then.152:                                      ; preds = %land.lhs.true.149, %if.end.143
  %139 = load i8*, i8** %c, align 8
  store i8 0, i8* %139, align 1
  %140 = load i8*, i8** %b, align 8
  store i8 0, i8* %140, align 1
  %141 = load i8*, i8** %a, align 8
  store i8 0, i8* %141, align 1
  %142 = load i32, i32* %pWidth, align 4
  %143 = load i32, i32* %lines, align 4
  %inc153 = add i32 %143, 1
  store i32 %inc153, i32* %lines, align 4
  %mul = mul i32 50, %143
  %call154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 %142, i32 %mul)
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i64 10), i8** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.152
  %144 = load i8*, i8** %b, align 8
  %145 = load i8*, i8** %a, align 8
  %cmp155 = icmp ule i8* %144, %145
  br i1 %cmp155, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %146 = load i8*, i8** %b, align 8
  %add.ptr = getelementptr inbounds i8, i8* %146, i64 10
  store i8* %add.ptr, i8** %b, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %147 = load i8*, i8** %b, align 8
  %148 = load i8*, i8** %a, align 8
  %add.ptr158 = getelementptr inbounds i8, i8* %148, i64 5
  %cmp159 = icmp ule i8* %147, %add.ptr158
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %for.end
  %call162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %for.end
  %149 = load i32, i32* %pWidth, align 4
  %150 = load i32, i32* %ap, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add164 = add i32 %150, %151
  %152 = load i32, i32* %pWidth, align 4
  %153 = load i32, i32* %pWidth, align 4
  %154 = load i32, i32* %bp, align 4
  %call165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 %149, i32 %add164, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i32 0), i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i32 0, i32 0), i32 %153, i32 %154, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i32 0, i32 0))
  %155 = load i32, i32* %AP.addr, align 4
  %156 = load i32, i32* %i, align 4
  %add166 = add i32 %155, %156
  store i32 %add166, i32* %ap, align 4
  %157 = load i32, i32* %BP.addr, align 4
  %158 = load i32, i32* %j, align 4
  %add167 = add i32 %157, %158
  store i32 %add167, i32* %bp, align 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i32 0, i32 0), i8** %a, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i32 0, i32 0), i8** %b, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i32 0, i32 0), i8** %c, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.163, %land.lhs.true.149, %lor.lhs.false.146
  br label %while.cond.8

while.end.169:                                    ; preds = %lor.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_pos_width(%struct._collec_t* %eCol) #0 {
entry:
  %eCol.addr = alloca %struct._collec_t*, align 8
  %last = alloca i32, align 4
  %w = alloca i32, align 4
  store %struct._collec_t* %eCol, %struct._collec_t** %eCol.addr, align 8
  %0 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %nb = getelementptr inbounds %struct._collec_t, %struct._collec_t* %0, i32 0, i32 1
  %1 = load i32, i32* %nb, align 4
  %sub = sub i32 %1, 1
  %idxprom = zext i32 %sub to i64
  %2 = load %struct._collec_t*, %struct._collec_t** %eCol.addr, align 8
  %e = getelementptr inbounds %struct._collec_t, %struct._collec_t* %2, i32 0, i32 0
  %exon = bitcast %union._collec_elt_t* %e to %struct._exon_t***
  %3 = load %struct._exon_t**, %struct._exon_t*** %exon, align 8
  %arrayidx = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %3, i64 %idxprom
  %4 = load %struct._exon_t*, %struct._exon_t** %arrayidx, align 8
  %to1 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %4, i32 0, i32 2
  %5 = load i32, i32* %to1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %add = add i32 %5, %6
  store i32 %add, i32* %last, align 4
  store i32 1, i32* %w, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load i32, i32* %last, align 4
  %div = udiv i32 %7, 10
  store i32 %div, i32* %last, align 4
  %cmp = icmp ugt i32 %div, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %w, align 4
  %add1 = add i32 %8, 1
  store i32 %add1, i32* %w, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %w, align 4
  %cmp2 = icmp ult i32 %9, 7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 7, i32* %w, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %10 = load i32, i32* %w, align 4
  ret i32 %10
}

; Function Attrs: noreturn
declare void @fatal(i8*, ...) #3

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Free_script(%struct._edit_script* %head) #0 {
entry:
  %head.addr = alloca %struct._edit_script*, align 8
  %tp = alloca %struct._edit_script*, align 8
  %tp1 = alloca %struct._edit_script*, align 8
  store %struct._edit_script* %head, %struct._edit_script** %head.addr, align 8
  %0 = load %struct._edit_script*, %struct._edit_script** %head.addr, align 8
  store %struct._edit_script* %0, %struct._edit_script** %tp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %cmp = icmp ne %struct._edit_script* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %next = getelementptr inbounds %struct._edit_script, %struct._edit_script* %2, i32 0, i32 0
  %3 = load %struct._edit_script*, %struct._edit_script** %next, align 8
  store %struct._edit_script* %3, %struct._edit_script** %tp1, align 8
  %4 = load %struct._edit_script*, %struct._edit_script** %tp, align 8
  %5 = bitcast %struct._edit_script* %4 to i8*
  call void @free(i8* %5) #4
  %6 = load %struct._edit_script*, %struct._edit_script** %tp1, align 8
  store %struct._edit_script* %6, %struct._edit_script** %tp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
