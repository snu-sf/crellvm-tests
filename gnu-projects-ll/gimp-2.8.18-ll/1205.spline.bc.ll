; ModuleID = './plug-ins/selection-to-path/spline.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_coordinate_type = type { double, double }
%struct.spline_type = type { [4 x %struct.real_coordinate_type], i32, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.spline_list_type = type { %struct.spline_type*, i32 }
%struct.spline_list_array_type = type { %struct.spline_list_type*, i32 }

@new_spline.coord = private unnamed_addr constant %struct.real_coordinate_type { double -1.000000e+02, double -1.000000e+02 }, align 8
@.str = private unnamed_addr constant [27 x i8] c"(%.3f,%.3f)--(%.3f,%.3f).\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"(%.3f,%.3f)..ctrls(%.3f,%.3f)&(%.3f,%.3f)..(%.3f,%.3f).\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"l != ((void*)0)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"spline.c\00", align 1
@__PRETTY_FUNCTION__.append_spline = private unnamed_addr constant [52 x i8] c"void append_spline(spline_list_type *, spline_type)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"s1 != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.concat_spline_lists = private unnamed_addr constant [63 x i8] c"void concat_spline_lists(spline_list_type *, spline_list_type)\00", align 1

; Function Attrs: nounwind uwtable
define void @new_spline(%struct.spline_type* noalias sret %agg.result) #0 {
entry:
  %coord = alloca %struct.real_coordinate_type, align 8
  %spline = alloca %struct.spline_type, align 8
  %0 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.real_coordinate_type* @new_spline.coord to i8*), i64 16, i32 8, i1 false)
  %v = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v, i32 0, i64 0
  %v1 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v1, i32 0, i64 1
  %v3 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v3, i32 0, i64 2
  %v5 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v5, i32 0, i64 3
  %1 = bitcast %struct.real_coordinate_type* %arrayidx6 to i8*
  %2 = bitcast %struct.real_coordinate_type* %coord to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = bitcast %struct.real_coordinate_type* %arrayidx4 to i8*
  %4 = bitcast %struct.real_coordinate_type* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 16, i32 8, i1 false)
  %5 = bitcast %struct.real_coordinate_type* %arrayidx2 to i8*
  %6 = bitcast %struct.real_coordinate_type* %arrayidx4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 8, i1 false)
  %7 = bitcast %struct.real_coordinate_type* %arrayidx to i8*
  %8 = bitcast %struct.real_coordinate_type* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %degree = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 1
  store i32 -1, i32* %degree, align 4
  %linearity = getelementptr inbounds %struct.spline_type, %struct.spline_type* %spline, i32 0, i32 2
  store double 0.000000e+00, double* %linearity, align 8
  %9 = bitcast %struct.spline_type* %agg.result to i8*
  %10 = bitcast %struct.spline_type* %spline to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 80, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @print_spline(%struct._IO_FILE* %f, %struct.spline_type* byval align 8 %s) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  %degree = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 1
  %0 = load i32, i32* %degree, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %v = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v, i32 0, i64 0
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %v1 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v1, i32 0, i64 0
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %v3 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v3, i32 0, i64 3
  %x5 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx4, i32 0, i32 0
  %4 = load double, double* %x5, align 8
  %v6 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v6, i32 0, i64 3
  %y8 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx7, i32 0, i32 1
  %5 = load double, double* %y8, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), double %2, double %3, double %4, double %5)
  br label %if.end.38

if.else:                                          ; preds = %entry
  %degree9 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 1
  %6 = load i32, i32* %degree9, align 4
  %cmp10 = icmp eq i32 %6, 3
  br i1 %cmp10, label %if.then.11, label %if.else.37

if.then.11:                                       ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %v12 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v12, i32 0, i64 0
  %x14 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx13, i32 0, i32 0
  %8 = load double, double* %x14, align 8
  %v15 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v15, i32 0, i64 0
  %y17 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx16, i32 0, i32 1
  %9 = load double, double* %y17, align 8
  %v18 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v18, i32 0, i64 1
  %x20 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx19, i32 0, i32 0
  %10 = load double, double* %x20, align 8
  %v21 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v21, i32 0, i64 1
  %y23 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx22, i32 0, i32 1
  %11 = load double, double* %y23, align 8
  %v24 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v24, i32 0, i64 2
  %x26 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx25, i32 0, i32 0
  %12 = load double, double* %x26, align 8
  %v27 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v27, i32 0, i64 2
  %y29 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx28, i32 0, i32 1
  %13 = load double, double* %y29, align 8
  %v30 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v30, i32 0, i64 3
  %x32 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx31, i32 0, i32 0
  %14 = load double, double* %x32, align 8
  %v33 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v33, i32 0, i64 3
  %y35 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx34, i32 0, i32 1
  %15 = load double, double* %y35, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), double %8, double %9, double %10, double %11, double %12, double %13, double %14, double %15)
  br label %if.end

if.else.37:                                       ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else.37, %if.then.11
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define { double, double } @evaluate_spline(%struct.spline_type* byval align 8 %s, double %t) #0 {
entry:
  %retval = alloca %struct.real_coordinate_type, align 8
  %t.addr = alloca double, align 8
  %V = alloca [4 x %struct.spline_type], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %one_minus_t = alloca double, align 8
  %degree = alloca i32, align 4
  %t1 = alloca %struct.real_coordinate_type, align 8
  %t2 = alloca %struct.real_coordinate_type, align 8
  %.compoundliteral = alloca %struct.real_coordinate_type, align 8
  store double %t, double* %t.addr, align 8
  %0 = load double, double* %t.addr, align 8
  %sub = fsub double 1.000000e+00, %0
  store double %sub, double* %one_minus_t, align 8
  %degree1 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 1
  %1 = load i32, i32* %degree1, align 4
  store i32 %1, i32* %degree, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %degree, align 4
  %cmp = icmp ule i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.spline_type], [4 x %struct.spline_type]* %V, i32 0, i64 0
  %v = getelementptr inbounds %struct.spline_type, %struct.spline_type* %arrayidx, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v, i32 0, i64 %idxprom
  %5 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %5 to i64
  %v4 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %s, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v4, i32 0, i64 %idxprom3
  %6 = bitcast %struct.real_coordinate_type* %arrayidx2 to i8*
  %7 = bitcast %struct.real_coordinate_type* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.63, %for.end
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %degree, align 4
  %cmp7 = icmp ule i32 %9, %10
  br i1 %cmp7, label %for.body.8, label %for.end.65

for.body.8:                                       ; preds = %for.cond.6
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.60, %for.body.8
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %degree, align 4
  %13 = load i32, i32* %j, align 4
  %sub10 = sub i32 %12, %13
  %cmp11 = icmp ule i32 %11, %sub10
  br i1 %cmp11, label %for.body.12, label %for.end.62

for.body.12:                                      ; preds = %for.cond.9
  %x = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %t1, i32 0, i32 0
  %14 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %14 to i64
  %15 = load i32, i32* %j, align 4
  %sub14 = sub i32 %15, 1
  %idxprom15 = zext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [4 x %struct.spline_type], [4 x %struct.spline_type]* %V, i32 0, i64 %idxprom15
  %v17 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %arrayidx16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v17, i32 0, i64 %idxprom13
  %x19 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx18, i32 0, i32 0
  %16 = load double, double* %x19, align 8
  %17 = load double, double* %one_minus_t, align 8
  %mul = fmul double %16, %17
  store double %mul, double* %x, align 8
  %y = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %t1, i32 0, i32 1
  %18 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %18 to i64
  %19 = load i32, i32* %j, align 4
  %sub21 = sub i32 %19, 1
  %idxprom22 = zext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [4 x %struct.spline_type], [4 x %struct.spline_type]* %V, i32 0, i64 %idxprom22
  %v24 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %arrayidx23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v24, i32 0, i64 %idxprom20
  %y26 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx25, i32 0, i32 1
  %20 = load double, double* %y26, align 8
  %21 = load double, double* %one_minus_t, align 8
  %mul27 = fmul double %20, %21
  store double %mul27, double* %y, align 8
  %x28 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %t2, i32 0, i32 0
  %22 = load i32, i32* %i, align 4
  %add = add i32 %22, 1
  %idxprom29 = zext i32 %add to i64
  %23 = load i32, i32* %j, align 4
  %sub30 = sub i32 %23, 1
  %idxprom31 = zext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [4 x %struct.spline_type], [4 x %struct.spline_type]* %V, i32 0, i64 %idxprom31
  %v33 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %arrayidx32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v33, i32 0, i64 %idxprom29
  %x35 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx34, i32 0, i32 0
  %24 = load double, double* %x35, align 8
  %25 = load double, double* %t.addr, align 8
  %mul36 = fmul double %24, %25
  store double %mul36, double* %x28, align 8
  %y37 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %t2, i32 0, i32 1
  %26 = load i32, i32* %i, align 4
  %add38 = add i32 %26, 1
  %idxprom39 = zext i32 %add38 to i64
  %27 = load i32, i32* %j, align 4
  %sub40 = sub i32 %27, 1
  %idxprom41 = zext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [4 x %struct.spline_type], [4 x %struct.spline_type]* %V, i32 0, i64 %idxprom41
  %v43 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %arrayidx42, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v43, i32 0, i64 %idxprom39
  %y45 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %arrayidx44, i32 0, i32 1
  %28 = load double, double* %y45, align 8
  %29 = load double, double* %t.addr, align 8
  %mul46 = fmul double %28, %29
  store double %mul46, double* %y37, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom47 = zext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom48 = zext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [4 x %struct.spline_type], [4 x %struct.spline_type]* %V, i32 0, i64 %idxprom48
  %v50 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %arrayidx49, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v50, i32 0, i64 %idxprom47
  %x52 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %.compoundliteral, i32 0, i32 0
  %x53 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %t1, i32 0, i32 0
  %32 = load double, double* %x53, align 8
  %x54 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %t2, i32 0, i32 0
  %33 = load double, double* %x54, align 8
  %add55 = fadd double %32, %33
  store double %add55, double* %x52, align 8
  %y56 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %.compoundliteral, i32 0, i32 1
  %y57 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %t1, i32 0, i32 1
  %34 = load double, double* %y57, align 8
  %y58 = getelementptr inbounds %struct.real_coordinate_type, %struct.real_coordinate_type* %t2, i32 0, i32 1
  %35 = load double, double* %y58, align 8
  %add59 = fadd double %34, %35
  store double %add59, double* %y56, align 8
  %36 = bitcast %struct.real_coordinate_type* %arrayidx51 to i8*
  %37 = bitcast %struct.real_coordinate_type* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false)
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.12
  %38 = load i32, i32* %i, align 4
  %inc61 = add i32 %38, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.9

for.end.62:                                       ; preds = %for.cond.9
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %39 = load i32, i32* %j, align 4
  %inc64 = add i32 %39, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond.6

for.end.65:                                       ; preds = %for.cond.6
  %40 = load i32, i32* %degree, align 4
  %idxprom66 = zext i32 %40 to i64
  %arrayidx67 = getelementptr inbounds [4 x %struct.spline_type], [4 x %struct.spline_type]* %V, i32 0, i64 %idxprom66
  %v68 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %arrayidx67, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [4 x %struct.real_coordinate_type], [4 x %struct.real_coordinate_type]* %v68, i32 0, i64 0
  %41 = bitcast %struct.real_coordinate_type* %retval to i8*
  %42 = bitcast %struct.real_coordinate_type* %arrayidx69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 16, i32 8, i1 false)
  %43 = bitcast %struct.real_coordinate_type* %retval to { double, double }*
  %44 = load { double, double }, { double, double }* %43, align 8
  ret { double, double } %44
}

; Function Attrs: nounwind uwtable
define %struct.spline_list_type* @new_spline_list() #0 {
entry:
  %answer = alloca %struct.spline_list_type*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %0 = bitcast i8* %call to %struct.spline_list_type*
  store %struct.spline_list_type* %0, %struct.spline_list_type** %answer, align 8
  %1 = load %struct.spline_list_type*, %struct.spline_list_type** %answer, align 8
  %data = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %1, i32 0, i32 0
  store %struct.spline_type* null, %struct.spline_type** %data, align 8
  %2 = load %struct.spline_list_type*, %struct.spline_list_type** %answer, align 8
  %length = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %2, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %3 = load %struct.spline_list_type*, %struct.spline_list_type** %answer, align 8
  ret %struct.spline_list_type* %3
}

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define %struct.spline_list_type* @init_spline_list(%struct.spline_type* byval align 8 %spline) #0 {
entry:
  %answer = alloca %struct.spline_list_type*, align 8
  %call = call noalias i8* @g_malloc_n(i64 1, i64 16)
  %0 = bitcast i8* %call to %struct.spline_list_type*
  store %struct.spline_list_type* %0, %struct.spline_list_type** %answer, align 8
  %call1 = call noalias i8* @g_malloc_n(i64 1, i64 80)
  %1 = bitcast i8* %call1 to %struct.spline_type*
  %2 = load %struct.spline_list_type*, %struct.spline_list_type** %answer, align 8
  %data = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %2, i32 0, i32 0
  store %struct.spline_type* %1, %struct.spline_type** %data, align 8
  %3 = load %struct.spline_list_type*, %struct.spline_list_type** %answer, align 8
  %data2 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %3, i32 0, i32 0
  %4 = load %struct.spline_type*, %struct.spline_type** %data2, align 8
  %arrayidx = getelementptr inbounds %struct.spline_type, %struct.spline_type* %4, i64 0
  %5 = bitcast %struct.spline_type* %arrayidx to i8*
  %6 = bitcast %struct.spline_type* %spline to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 80, i32 8, i1 false)
  %7 = load %struct.spline_list_type*, %struct.spline_list_type** %answer, align 8
  %length = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %7, i32 0, i32 1
  store i32 1, i32* %length, align 4
  %8 = load %struct.spline_list_type*, %struct.spline_list_type** %answer, align 8
  ret %struct.spline_list_type* %8
}

; Function Attrs: nounwind uwtable
define void @free_spline_list(%struct.spline_list_type* %spline_list) #0 {
entry:
  %spline_list.addr = alloca %struct.spline_list_type*, align 8
  store %struct.spline_list_type* %spline_list, %struct.spline_list_type** %spline_list.addr, align 8
  %0 = load %struct.spline_list_type*, %struct.spline_list_type** %spline_list.addr, align 8
  %data = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %0, i32 0, i32 0
  %1 = load %struct.spline_type*, %struct.spline_type** %data, align 8
  %cmp = icmp ne %struct.spline_type* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.spline_list_type*, %struct.spline_list_type** %spline_list.addr, align 8
  %data1 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %2, i32 0, i32 0
  %3 = bitcast %struct.spline_type** %data1 to i8**
  call void @safe_free(i8** %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @safe_free(i8**) #2

; Function Attrs: nounwind uwtable
define void @append_spline(%struct.spline_list_type* %l, %struct.spline_type* byval align 8 %s) #0 {
entry:
  %l.addr = alloca %struct.spline_list_type*, align 8
  store %struct.spline_list_type* %l, %struct.spline_list_type** %l.addr, align 8
  %0 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %cmp = icmp ne %struct.spline_list_type* %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 162, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.append_spline, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %length = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %2, i32 0, i32 1
  %3 = load i32, i32* %length, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %length, align 4
  %4 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %data = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %4, i32 0, i32 0
  %5 = load %struct.spline_type*, %struct.spline_type** %data, align 8
  %6 = bitcast %struct.spline_type* %5 to i8*
  %7 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %length1 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %7, i32 0, i32 1
  %8 = load i32, i32* %length1, align 4
  %conv = zext i32 %8 to i64
  %mul = mul i64 %conv, 80
  %call = call i8* @g_realloc(i8* %6, i64 %mul)
  %9 = bitcast i8* %call to %struct.spline_type*
  %10 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %data2 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %10, i32 0, i32 0
  store %struct.spline_type* %9, %struct.spline_type** %data2, align 8
  %11 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %length3 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %11, i32 0, i32 1
  %12 = load i32, i32* %length3, align 4
  %sub = sub i32 %12, 1
  %idxprom = zext i32 %sub to i64
  %13 = load %struct.spline_list_type*, %struct.spline_list_type** %l.addr, align 8
  %data4 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %13, i32 0, i32 0
  %14 = load %struct.spline_type*, %struct.spline_type** %data4, align 8
  %arrayidx = getelementptr inbounds %struct.spline_type, %struct.spline_type* %14, i64 %idxprom
  %15 = bitcast %struct.spline_type* %arrayidx to i8*
  %16 = bitcast %struct.spline_type* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 80, i32 8, i1 false)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare i8* @g_realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @concat_spline_lists(%struct.spline_list_type* %s1, %struct.spline_type* %s2.coerce0, i32 %s2.coerce1) #0 {
entry:
  %s2 = alloca %struct.spline_list_type, align 8
  %s1.addr = alloca %struct.spline_list_type*, align 8
  %this_spline = alloca i32, align 4
  %new_length = alloca i32, align 4
  %0 = bitcast %struct.spline_list_type* %s2 to { %struct.spline_type*, i32 }*
  %1 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %0, i32 0, i32 0
  store %struct.spline_type* %s2.coerce0, %struct.spline_type** %1
  %2 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %0, i32 0, i32 1
  store i32 %s2.coerce1, i32* %2
  store %struct.spline_list_type* %s1, %struct.spline_list_type** %s1.addr, align 8
  %3 = load %struct.spline_list_type*, %struct.spline_list_type** %s1.addr, align 8
  %cmp = icmp ne %struct.spline_list_type* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 180, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.concat_spline_lists, i32 0, i32 0)) #4
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load %struct.spline_list_type*, %struct.spline_list_type** %s1.addr, align 8
  %length = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %5, i32 0, i32 1
  %6 = load i32, i32* %length, align 4
  %length1 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %s2, i32 0, i32 1
  %7 = load i32, i32* %length1, align 4
  %add = add i32 %6, %7
  store i32 %add, i32* %new_length, align 4
  %8 = load %struct.spline_list_type*, %struct.spline_list_type** %s1.addr, align 8
  %data = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %8, i32 0, i32 0
  %9 = load %struct.spline_type*, %struct.spline_type** %data, align 8
  %10 = bitcast %struct.spline_type* %9 to i8*
  %11 = load i32, i32* %new_length, align 4
  %conv = zext i32 %11 to i64
  %mul = mul i64 %conv, 80
  %call = call i8* @g_realloc(i8* %10, i64 %mul)
  %12 = bitcast i8* %call to %struct.spline_type*
  %13 = load %struct.spline_list_type*, %struct.spline_list_type** %s1.addr, align 8
  %data2 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %13, i32 0, i32 0
  store %struct.spline_type* %12, %struct.spline_type** %data2, align 8
  store i32 0, i32* %this_spline, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32, i32* %this_spline, align 4
  %length3 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %s2, i32 0, i32 1
  %15 = load i32, i32* %length3, align 4
  %cmp4 = icmp ult i32 %14, %15
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.spline_list_type*, %struct.spline_list_type** %s1.addr, align 8
  %length6 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %16, i32 0, i32 1
  %17 = load i32, i32* %length6, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %length6, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.spline_list_type*, %struct.spline_list_type** %s1.addr, align 8
  %data7 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %18, i32 0, i32 0
  %19 = load %struct.spline_type*, %struct.spline_type** %data7, align 8
  %arrayidx = getelementptr inbounds %struct.spline_type, %struct.spline_type* %19, i64 %idxprom
  %20 = load i32, i32* %this_spline, align 4
  %idxprom8 = zext i32 %20 to i64
  %data9 = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %s2, i32 0, i32 0
  %21 = load %struct.spline_type*, %struct.spline_type** %data9, align 8
  %arrayidx10 = getelementptr inbounds %struct.spline_type, %struct.spline_type* %21, i64 %idxprom8
  %22 = bitcast %struct.spline_type* %arrayidx to i8*
  %23 = bitcast %struct.spline_type* %arrayidx10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 80, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %this_spline, align 4
  %inc11 = add i32 %24, 1
  store i32 %inc11, i32* %this_spline, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define { %struct.spline_list_type*, i32 } @new_spline_list_array() #0 {
entry:
  %retval = alloca %struct.spline_list_array_type, align 8
  %answer = alloca %struct.spline_list_array_type, align 8
  %data = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %answer, i32 0, i32 0
  store %struct.spline_list_type* null, %struct.spline_list_type** %data, align 8
  %length = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %answer, i32 0, i32 1
  store i32 0, i32* %length, align 4
  %0 = bitcast %struct.spline_list_array_type* %retval to i8*
  %1 = bitcast %struct.spline_list_array_type* %answer to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 16, i32 8, i1 false)
  %2 = bitcast %struct.spline_list_array_type* %retval to { %struct.spline_list_type*, i32 }*
  %3 = load { %struct.spline_list_type*, i32 }, { %struct.spline_list_type*, i32 }* %2, align 8
  ret { %struct.spline_list_type*, i32 } %3
}

; Function Attrs: nounwind uwtable
define void @free_spline_list_array(%struct.spline_list_array_type* %spline_list_array) #0 {
entry:
  %spline_list_array.addr = alloca %struct.spline_list_array_type*, align 8
  %this_list = alloca i32, align 4
  store %struct.spline_list_array_type* %spline_list_array, %struct.spline_list_array_type** %spline_list_array.addr, align 8
  store i32 0, i32* %this_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %this_list, align 4
  %1 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %spline_list_array.addr, align 8
  %length = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %this_list, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %spline_list_array.addr, align 8
  %data = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %4, i32 0, i32 0
  %5 = load %struct.spline_list_type*, %struct.spline_list_type** %data, align 8
  %arrayidx = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %5, i64 %idxprom
  call void @free_spline_list(%struct.spline_list_type* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %this_list, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %this_list, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %spline_list_array.addr, align 8
  %data1 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %7, i32 0, i32 0
  %8 = load %struct.spline_list_type*, %struct.spline_list_type** %data1, align 8
  %cmp2 = icmp ne %struct.spline_list_type* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %spline_list_array.addr, align 8
  %data3 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %9, i32 0, i32 0
  %10 = bitcast %struct.spline_list_type** %data3 to i8**
  call void @safe_free(i8** %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @append_spline_list(%struct.spline_list_array_type* %l, %struct.spline_type* %s.coerce0, i32 %s.coerce1) #0 {
entry:
  %s = alloca %struct.spline_list_type, align 8
  %l.addr = alloca %struct.spline_list_array_type*, align 8
  %0 = bitcast %struct.spline_list_type* %s to { %struct.spline_type*, i32 }*
  %1 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %0, i32 0, i32 0
  store %struct.spline_type* %s.coerce0, %struct.spline_type** %1
  %2 = getelementptr { %struct.spline_type*, i32 }, { %struct.spline_type*, i32 }* %0, i32 0, i32 1
  store i32 %s.coerce1, i32* %2
  store %struct.spline_list_array_type* %l, %struct.spline_list_array_type** %l.addr, align 8
  %3 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %l.addr, align 8
  %length = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %3, i32 0, i32 1
  %4 = load i32, i32* %length, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %length, align 4
  %5 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %l.addr, align 8
  %data = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %5, i32 0, i32 0
  %6 = load %struct.spline_list_type*, %struct.spline_list_type** %data, align 8
  %7 = bitcast %struct.spline_list_type* %6 to i8*
  %8 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %l.addr, align 8
  %length1 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %8, i32 0, i32 1
  %9 = load i32, i32* %length1, align 4
  %conv = zext i32 %9 to i64
  %mul = mul i64 %conv, 16
  %call = call i8* @g_realloc(i8* %7, i64 %mul)
  %10 = bitcast i8* %call to %struct.spline_list_type*
  %11 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %l.addr, align 8
  %data2 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %11, i32 0, i32 0
  store %struct.spline_list_type* %10, %struct.spline_list_type** %data2, align 8
  %12 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %l.addr, align 8
  %length3 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %12, i32 0, i32 1
  %13 = load i32, i32* %length3, align 4
  %sub = sub i32 %13, 1
  %idxprom = zext i32 %sub to i64
  %14 = load %struct.spline_list_array_type*, %struct.spline_list_array_type** %l.addr, align 8
  %data4 = getelementptr inbounds %struct.spline_list_array_type, %struct.spline_list_array_type* %14, i32 0, i32 0
  %15 = load %struct.spline_list_type*, %struct.spline_list_type** %data4, align 8
  %arrayidx = getelementptr inbounds %struct.spline_list_type, %struct.spline_list_type* %15, i64 %idxprom
  %16 = bitcast %struct.spline_list_type* %arrayidx to i8*
  %17 = bitcast %struct.spline_list_type* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
