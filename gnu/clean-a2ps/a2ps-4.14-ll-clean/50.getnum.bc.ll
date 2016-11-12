; ModuleID = './lib/getnum.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%d%255s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid argument `%s' for `%s'\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d <= n\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d < n\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"n <= %d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%d <= n <= %d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%d < n <= %d\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%d <= n < %d\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%d < n < %d\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [46 x i8] c"Valid arguments are integers n such that: %s\0A\00", align 1
@length_args = internal constant [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
@length_types = internal global [5 x float] [float 1.000000e+00, float 1.000000e+00, float 7.200000e+01, float 0x403C58B160000000, float 0x403C58B160000000], align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"%f%255s\00", align 1
@argmatch_die = external global void ()*, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"internal conversion\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%.1f%s <= f\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%.1f%s < f\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"f <= %.1f%s\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"%.1f%s <= f <= %.1f%s\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"%.1f%s < f <= %.1f%s\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"%.1f%s <= f < %.1f%s\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%.1f%s < f < %.1f%s\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"Valid arguments are floats f such that: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"pts\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"inchs\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"centimeters\00", align 1

; Function Attrs: nounwind uwtable
define i32 @get_integer_in_range(i8* %option, i8* %arg, i32 %min, i32 %max, i32 %range_type) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %range_type.addr = alloca i32, align 4
  %buf = alloca [256 x i8], align 16
  %res = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i32 %range_type, i32* %range_type.addr, align 4
  %0 = load i8*, i8** %arg.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32* %res, i8* %arraydecay) #4
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #4
  %1 = load i8*, i8** %arg.addr, align 8
  %call2 = call i8* @quotearg(i8* %1)
  %2 = load i8*, i8** %option.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call1, i8* %call2, i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx, align 1
  %3 = load i32, i32* %range_type.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.14
    i32 4, label %sw.bb.20
    i32 5, label %sw.bb.26
    i32 6, label %sw.bb.33
    i32 7, label %sw.bb.41
    i32 8, label %sw.bb.49
    i32 0, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end
  %4 = load i32, i32* %res, align 4
  %5 = load i32, i32* %min.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %sw.bb
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %6 = load i32, i32* %min.addr, align 4
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %6) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %sw.bb
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %7 = load i32, i32* %res, align 4
  %8 = load i32, i32* %min.addr, align 4
  %cmp9 = icmp sle i32 %7, %8
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %sw.bb.8
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %9 = load i32, i32* %min.addr, align 4
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %9) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %sw.bb.8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %10 = load i32, i32* %res, align 4
  %11 = load i32, i32* %max.addr, align 4
  %cmp15 = icmp sgt i32 %10, %11
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %sw.bb.14
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %12 = load i32, i32* %max.addr, align 4
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %12) #4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %sw.bb.14
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %13 = load i32, i32* %res, align 4
  %14 = load i32, i32* %max.addr, align 4
  %cmp21 = icmp sge i32 %13, %14
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %sw.bb.20
  %arraydecay23 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %15 = load i32, i32* %max.addr, align 4
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %15) #4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %sw.bb.20
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end
  %16 = load i32, i32* %res, align 4
  %17 = load i32, i32* %min.addr, align 4
  %cmp27 = icmp slt i32 %16, %17
  br i1 %cmp27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.26
  %18 = load i32, i32* %res, align 4
  %19 = load i32, i32* %max.addr, align 4
  %cmp28 = icmp sgt i32 %18, %19
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %lor.lhs.false, %sw.bb.26
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %20 = load i32, i32* %min.addr, align 4
  %21 = load i32, i32* %max.addr, align 4
  %call31 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %20, i32 %21) #4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %lor.lhs.false
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end
  %22 = load i32, i32* %res, align 4
  %23 = load i32, i32* %min.addr, align 4
  %cmp34 = icmp sle i32 %22, %23
  br i1 %cmp34, label %if.then.37, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %sw.bb.33
  %24 = load i32, i32* %res, align 4
  %25 = load i32, i32* %max.addr, align 4
  %cmp36 = icmp sgt i32 %24, %25
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %lor.lhs.false.35, %sw.bb.33
  %arraydecay38 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %26 = load i32, i32* %min.addr, align 4
  %27 = load i32, i32* %max.addr, align 4
  %call39 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 %26, i32 %27) #4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %lor.lhs.false.35
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end
  %28 = load i32, i32* %res, align 4
  %29 = load i32, i32* %min.addr, align 4
  %cmp42 = icmp slt i32 %28, %29
  br i1 %cmp42, label %if.then.45, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %sw.bb.41
  %30 = load i32, i32* %res, align 4
  %31 = load i32, i32* %max.addr, align 4
  %cmp44 = icmp sge i32 %30, %31
  br i1 %cmp44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %lor.lhs.false.43, %sw.bb.41
  %arraydecay46 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %32 = load i32, i32* %min.addr, align 4
  %33 = load i32, i32* %max.addr, align 4
  %call47 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 %32, i32 %33) #4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %lor.lhs.false.43
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end
  %34 = load i32, i32* %res, align 4
  %35 = load i32, i32* %min.addr, align 4
  %cmp50 = icmp slt i32 %34, %35
  br i1 %cmp50, label %if.then.53, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %sw.bb.49
  %36 = load i32, i32* %res, align 4
  %37 = load i32, i32* %max.addr, align 4
  %cmp52 = icmp sge i32 %36, %37
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %lor.lhs.false.51, %sw.bb.49
  %arraydecay54 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %38 = load i32, i32* %min.addr, align 4
  %39 = load i32, i32* %max.addr, align 4
  %call55 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 %38, i32 %39) #4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %lor.lhs.false.51
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @abort() #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.57, %if.end.56, %if.end.48, %if.end.40, %if.end.32, %if.end.25, %if.end.19, %if.end.13, %if.end.7
  %arrayidx58 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 0
  %40 = load i8, i8* %arrayidx58, align 1
  %tobool = icmp ne i8 %40, 0
  br i1 %tobool, label %if.then.59, label %if.end.65

if.then.59:                                       ; preds = %sw.epilog
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #4
  %41 = load i8*, i8** %arg.addr, align 8
  %call61 = call i8* @quotearg(i8* %41)
  %42 = load i8*, i8** %option.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call60, i8* %call61, i8* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call62 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0)) #4
  %arraydecay63 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* %call62, i8* %arraydecay63)
  call void @exit(i32 1) #5
  unreachable

if.end.65:                                        ; preds = %sw.epilog
  %44 = load i32, i32* %res, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare void @error(i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #1

declare i8* @quotearg(i8*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define float @get_length(i8* %option, i8* %arg, float %min, float %max, i8* %unit, i32 %range_type) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %min.addr = alloca float, align 4
  %max.addr = alloca float, align 4
  %unit.addr = alloca i8*, align 8
  %range_type.addr = alloca i32, align 4
  store i8* %option, i8** %option.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store float %min, float* %min.addr, align 4
  store float %max, float* %max.addr, align 4
  store i8* %unit, i8** %unit.addr, align 8
  store i32 %range_type, i32* %range_type.addr, align 4
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load float, float* %min.addr, align 4
  %3 = load float, float* %max.addr, align 4
  %4 = load i8*, i8** %unit.addr, align 8
  %5 = load i32, i32* %range_type.addr, align 4
  %call = call float @get_float_in_range(i8* %0, i8* %1, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @length_args, i32 0, i32 0), float* getelementptr inbounds ([5 x float], [5 x float]* @length_types, i32 0, i32 0), float %2, float %3, i8* %4, i32 %5)
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @get_float_in_range(i8* %option, i8* %arg, i8** %args_list, float* %types_list, float %min, float %max, i8* %unit, i32 %range_type) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %args_list.addr = alloca i8**, align 8
  %types_list.addr = alloca float*, align 8
  %min.addr = alloca float, align 4
  %max.addr = alloca float, align 4
  %unit.addr = alloca i8*, align 8
  %range_type.addr = alloca i32, align 4
  %res = alloca float, align 4
  %buf = alloca [256 x i8], align 16
  store i8* %option, i8** %option.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i8** %args_list, i8*** %args_list.addr, align 8
  store float* %types_list, float** %types_list.addr, align 8
  store float %min, float* %min.addr, align 4
  store float %max, float* %max.addr, align 4
  store i8* %unit, i8** %unit.addr, align 8
  store i32 %range_type, i32* %range_type.addr, align 4
  %0 = load i8*, i8** %arg.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), float* %res, i8* %arraydecay) #4
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %option.addr, align 8
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %2 = load i8**, i8*** %args_list.addr, align 8
  %3 = load float*, float** %types_list.addr, align 8
  %4 = bitcast float* %3 to i8*
  %5 = load void ()*, void ()** @argmatch_die, align 8
  %call2 = call i32 @__xargmatch_internal(i8* %1, i8* %arraydecay1, i8** %2, i8* %4, i64 4, i32 0, void ()* %5)
  %idxprom = sext i32 %call2 to i64
  %6 = load float*, float** %types_list.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  %7 = load float, float* %arrayidx, align 4
  %8 = load float, float* %res, align 4
  %mul = fmul float %8, %7
  store float %mul, float* %res, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #4
  %9 = load i8*, i8** %arg.addr, align 8
  %call5 = call i8* @quotearg(i8* %9)
  %10 = load i8*, i8** %option.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call4, i8* %call5, i8* %10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb
  %11 = load i8*, i8** %unit.addr, align 8
  %12 = load i8**, i8*** %args_list.addr, align 8
  %13 = load float*, float** %types_list.addr, align 8
  %14 = bitcast float* %13 to i8*
  %call6 = call i32 @__xargmatch_internal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* %11, i8** %12, i8* %14, i64 4, i32 1, void ()* @abort)
  %idxprom7 = sext i32 %call6 to i64
  %15 = load float*, float** %types_list.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %15, i64 %idxprom7
  %16 = load float, float* %arrayidx8, align 4
  %17 = load float, float* %res, align 4
  %div = fdiv float %17, %16
  store float %div, float* %res, align 4
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx9, align 1
  %18 = load i32, i32* %range_type.addr, align 4
  switch i32 %18, label %sw.default.85 [
    i32 1, label %sw.bb.10
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.21
    i32 4, label %sw.bb.29
    i32 5, label %sw.bb.37
    i32 6, label %sw.bb.48
    i32 7, label %sw.bb.60
    i32 8, label %sw.bb.72
    i32 0, label %sw.bb.84
  ]

sw.bb.10:                                         ; preds = %sw.epilog
  %19 = load float, float* %res, align 4
  %20 = load float, float* %min.addr, align 4
  %cmp = fcmp olt float %19, %20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.10
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %21 = load float, float* %min.addr, align 4
  %conv = fpext float %21 to double
  %22 = load i8*, i8** %unit.addr, align 8
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), double %conv, i8* %22) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.10
  br label %sw.epilog.86

sw.bb.13:                                         ; preds = %sw.epilog
  %23 = load float, float* %res, align 4
  %24 = load float, float* %min.addr, align 4
  %cmp14 = fcmp ole float %23, %24
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %sw.bb.13
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %25 = load float, float* %min.addr, align 4
  %conv18 = fpext float %25 to double
  %26 = load i8*, i8** %unit.addr, align 8
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), double %conv18, i8* %26) #4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %sw.bb.13
  br label %sw.epilog.86

sw.bb.21:                                         ; preds = %sw.epilog
  %27 = load float, float* %res, align 4
  %28 = load float, float* %max.addr, align 4
  %cmp22 = fcmp ogt float %27, %28
  br i1 %cmp22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %sw.bb.21
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %29 = load float, float* %max.addr, align 4
  %conv26 = fpext float %29 to double
  %30 = load i8*, i8** %unit.addr, align 8
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), double %conv26, i8* %30) #4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %sw.bb.21
  br label %sw.epilog.86

sw.bb.29:                                         ; preds = %sw.epilog
  %31 = load float, float* %res, align 4
  %32 = load float, float* %max.addr, align 4
  %cmp30 = fcmp oge float %31, %32
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %sw.bb.29
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %33 = load float, float* %max.addr, align 4
  %conv34 = fpext float %33 to double
  %34 = load i8*, i8** %unit.addr, align 8
  %call35 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), double %conv34, i8* %34) #4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %sw.bb.29
  br label %sw.epilog.86

sw.bb.37:                                         ; preds = %sw.epilog
  %35 = load float, float* %res, align 4
  %36 = load float, float* %min.addr, align 4
  %cmp38 = fcmp olt float %35, %36
  br i1 %cmp38, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.37
  %37 = load float, float* %res, align 4
  %38 = load float, float* %max.addr, align 4
  %cmp40 = fcmp ogt float %37, %38
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %lor.lhs.false, %sw.bb.37
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %39 = load float, float* %min.addr, align 4
  %conv44 = fpext float %39 to double
  %40 = load i8*, i8** %unit.addr, align 8
  %41 = load float, float* %max.addr, align 4
  %conv45 = fpext float %41 to double
  %42 = load i8*, i8** %unit.addr, align 8
  %call46 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), double %conv44, i8* %40, double %conv45, i8* %42) #4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %lor.lhs.false
  br label %sw.epilog.86

sw.bb.48:                                         ; preds = %sw.epilog
  %43 = load float, float* %res, align 4
  %44 = load float, float* %min.addr, align 4
  %cmp49 = fcmp ole float %43, %44
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %sw.bb.48
  %45 = load float, float* %res, align 4
  %46 = load float, float* %max.addr, align 4
  %cmp52 = fcmp ogt float %45, %46
  br i1 %cmp52, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %lor.lhs.false.51, %sw.bb.48
  %arraydecay55 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %47 = load float, float* %min.addr, align 4
  %conv56 = fpext float %47 to double
  %48 = load i8*, i8** %unit.addr, align 8
  %49 = load float, float* %max.addr, align 4
  %conv57 = fpext float %49 to double
  %50 = load i8*, i8** %unit.addr, align 8
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), double %conv56, i8* %48, double %conv57, i8* %50) #4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %lor.lhs.false.51
  br label %sw.epilog.86

sw.bb.60:                                         ; preds = %sw.epilog
  %51 = load float, float* %res, align 4
  %52 = load float, float* %min.addr, align 4
  %cmp61 = fcmp olt float %51, %52
  br i1 %cmp61, label %if.then.66, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %sw.bb.60
  %53 = load float, float* %res, align 4
  %54 = load float, float* %max.addr, align 4
  %cmp64 = fcmp oge float %53, %54
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %lor.lhs.false.63, %sw.bb.60
  %arraydecay67 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %55 = load float, float* %min.addr, align 4
  %conv68 = fpext float %55 to double
  %56 = load i8*, i8** %unit.addr, align 8
  %57 = load float, float* %max.addr, align 4
  %conv69 = fpext float %57 to double
  %58 = load i8*, i8** %unit.addr, align 8
  %call70 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), double %conv68, i8* %56, double %conv69, i8* %58) #4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %lor.lhs.false.63
  br label %sw.epilog.86

sw.bb.72:                                         ; preds = %sw.epilog
  %59 = load float, float* %res, align 4
  %60 = load float, float* %min.addr, align 4
  %cmp73 = fcmp ole float %59, %60
  br i1 %cmp73, label %if.then.78, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %sw.bb.72
  %61 = load float, float* %res, align 4
  %62 = load float, float* %max.addr, align 4
  %cmp76 = fcmp oge float %61, %62
  br i1 %cmp76, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %lor.lhs.false.75, %sw.bb.72
  %arraydecay79 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %63 = load float, float* %min.addr, align 4
  %conv80 = fpext float %63 to double
  %64 = load i8*, i8** %unit.addr, align 8
  %65 = load float, float* %max.addr, align 4
  %conv81 = fpext float %65 to double
  %66 = load i8*, i8** %unit.addr, align 8
  %call82 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), double %conv80, i8* %64, double %conv81, i8* %66) #4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %lor.lhs.false.75
  br label %sw.epilog.86

sw.bb.84:                                         ; preds = %sw.epilog
  br label %sw.epilog.86

sw.default.85:                                    ; preds = %sw.epilog
  call void @abort() #5
  unreachable

sw.epilog.86:                                     ; preds = %sw.bb.84, %if.end.83, %if.end.71, %if.end.59, %if.end.47, %if.end.36, %if.end.28, %if.end.20, %if.end
  %arrayidx87 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i64 0
  %67 = load i8, i8* %arrayidx87, align 1
  %tobool = icmp ne i8 %67, 0
  br i1 %tobool, label %if.then.88, label %if.end.94

if.then.88:                                       ; preds = %sw.epilog.86
  %call89 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #4
  %68 = load i8*, i8** %arg.addr, align 8
  %call90 = call i8* @quotearg(i8* %68)
  %69 = load i8*, i8** %option.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %call89, i8* %call90, i8* %69)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call91 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i32 0, i32 0)) #4
  %arraydecay92 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* %call91, i8* %arraydecay92)
  call void @exit(i32 1) #5
  unreachable

if.end.94:                                        ; preds = %sw.epilog.86
  %71 = load float, float* %res, align 4
  ret float %71
}

declare i32 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, i32, void ()*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
