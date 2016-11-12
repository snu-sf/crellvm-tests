; ModuleID = './app/core/gimpdashpattern.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GArray = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }

@gimp_dash_pattern_get_type.type = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpDashPattern\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"GIMP_DASH_CUSTOM passed to gimp_dash_pattern_from_preset()\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_dash_pattern_new_from_segments = private unnamed_addr constant [36 x i8] c"gimp_dash_pattern_new_from_segments\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"segments != NULL || n_segments == 0\00", align 1
@__func__.gimp_dash_pattern_fill_segments = private unnamed_addr constant [32 x i8] c"gimp_dash_pattern_fill_segments\00", align 1
@__func__.gimp_dash_pattern_from_value_array = private unnamed_addr constant [35 x i8] c"gimp_dash_pattern_from_value_array\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"G_VALUE_HOLDS_DOUBLE (item)\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_dash_pattern_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_dash_pattern_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GArray* (%struct._GArray*)* @gimp_dash_pattern_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GArray*)* @gimp_dash_pattern_free to void (i8*)*))
  store i64 %call, i64* @gimp_dash_pattern_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_dash_pattern_get_type.type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct._GArray* @gimp_dash_pattern_copy(%struct._GArray* %pattern) #2 {
entry:
  %retval = alloca %struct._GArray*, align 8
  %pattern.addr = alloca %struct._GArray*, align 8
  %copy = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  store %struct._GArray* %pattern, %struct._GArray** %pattern.addr, align 8
  %0 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %tobool = icmp ne %struct._GArray* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %1, i32 0, i32 1
  %2 = load i32, i32* %len, align 4
  %call = call %struct._GArray* @g_array_sized_new(i32 0, i32 0, i32 8, i32 %2)
  store %struct._GArray* %call, %struct._GArray** %copy, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %len1 = getelementptr inbounds %struct._GArray, %struct._GArray* %4, i32 0, i32 1
  %5 = load i32, i32* %len1, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GArray*, %struct._GArray** %copy, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to double*
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  %11 = bitcast double* %arrayidx to i8*
  %call2 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %6, i8* %11, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._GArray*, %struct._GArray** %copy, align 8
  store %struct._GArray* %13, %struct._GArray** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

return:                                           ; preds = %if.end, %for.end
  %14 = load %struct._GArray*, %struct._GArray** %retval
  ret %struct._GArray* %14
}

; Function Attrs: nounwind uwtable
define void @gimp_dash_pattern_free(%struct._GArray* %pattern) #2 {
entry:
  %pattern.addr = alloca %struct._GArray*, align 8
  store %struct._GArray* %pattern, %struct._GArray** %pattern.addr, align 8
  %0 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %tobool = icmp ne %struct._GArray* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %call = call i8* @g_array_free(%struct._GArray* %1, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GArray* @gimp_dash_pattern_new_from_preset(i32 %preset) #2 {
entry:
  %retval = alloca %struct._GArray*, align 8
  %preset.addr = alloca i32, align 4
  %pattern = alloca %struct._GArray*, align 8
  %dash = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %preset, i32* %preset.addr, align 4
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 8)
  store %struct._GArray* %call, %struct._GArray** %pattern, align 8
  %0 = load i32, i32* %preset.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.11
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.23
    i32 8, label %sw.bb.31
    i32 9, label %sw.bb.39
    i32 10, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %entry
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0))
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store double 9.000000e+00, double* %dash, align 8
  %1 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %2 = bitcast double* %dash to i8*
  %call3 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %1, i8* %2, i32 1)
  store double 3.000000e+00, double* %dash, align 8
  %3 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %4 = bitcast double* %dash to i8*
  %call4 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %3, i8* %4, i32 1)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store double 6.000000e+00, double* %dash, align 8
  %5 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %6 = bitcast double* %dash to i8*
  %call6 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %5, i8* %6, i32 1)
  store double 6.000000e+00, double* %dash, align 8
  %7 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %8 = bitcast double* %dash to i8*
  %call7 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %7, i8* %8, i32 1)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store double 3.000000e+00, double* %dash, align 8
  %9 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %10 = bitcast double* %dash to i8*
  %call9 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %9, i8* %10, i32 1)
  store double 9.000000e+00, double* %dash, align 8
  %11 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %12 = bitcast double* %dash to i8*
  %call10 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %11, i8* %12, i32 1)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.11
  %13 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %13, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store double 1.000000e+00, double* %dash, align 8
  %14 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %15 = bitcast double* %dash to i8*
  %call12 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %14, i8* %15, i32 1)
  store double 5.000000e+00, double* %dash, align 8
  %16 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %17 = bitcast double* %dash to i8*
  %call13 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %16, i8* %17, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.20, %sw.bb.14
  %19 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %19, 3
  br i1 %cmp16, label %for.body.17, label %for.end.22

for.body.17:                                      ; preds = %for.cond.15
  store double 1.000000e+00, double* %dash, align 8
  %20 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %21 = bitcast double* %dash to i8*
  %call18 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %20, i8* %21, i32 1)
  store double 3.000000e+00, double* %dash, align 8
  %22 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %23 = bitcast double* %dash to i8*
  %call19 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %22, i8* %23, i32 1)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.17
  %24 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.15

for.end.22:                                       ; preds = %for.cond.15
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.28, %sw.bb.23
  %25 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %25, 12
  br i1 %cmp25, label %for.body.26, label %for.end.30

for.body.26:                                      ; preds = %for.cond.24
  store double 1.000000e+00, double* %dash, align 8
  %26 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %27 = bitcast double* %dash to i8*
  %call27 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %26, i8* %27, i32 1)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.26
  %28 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %28, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.24

for.end.30:                                       ; preds = %for.cond.24
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.36, %sw.bb.31
  %29 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %29, 24
  br i1 %cmp33, label %for.body.34, label %for.end.38

for.body.34:                                      ; preds = %for.cond.32
  store double 5.000000e-01, double* %dash, align 8
  %30 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %31 = bitcast double* %dash to i8*
  %call35 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %30, i8* %31, i32 1)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.34
  %32 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.32

for.end.38:                                       ; preds = %for.cond.32
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  store double 7.000000e+00, double* %dash, align 8
  %33 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %34 = bitcast double* %dash to i8*
  %call40 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %33, i8* %34, i32 1)
  store double 2.000000e+00, double* %dash, align 8
  %35 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %36 = bitcast double* %dash to i8*
  %call41 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %35, i8* %36, i32 1)
  store double 1.000000e+00, double* %dash, align 8
  %37 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %38 = bitcast double* %dash to i8*
  %call42 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %37, i8* %38, i32 1)
  store double 2.000000e+00, double* %dash, align 8
  %39 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %40 = bitcast double* %dash to i8*
  %call43 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %39, i8* %40, i32 1)
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  store double 7.000000e+00, double* %dash, align 8
  %41 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %42 = bitcast double* %dash to i8*
  %call45 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %41, i8* %42, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.50, %sw.bb.44
  %43 = load i32, i32* %i, align 4
  %cmp47 = icmp slt i32 %43, 5
  br i1 %cmp47, label %for.body.48, label %for.end.52

for.body.48:                                      ; preds = %for.cond.46
  store double 1.000000e+00, double* %dash, align 8
  %44 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %45 = bitcast double* %dash to i8*
  %call49 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %44, i8* %45, i32 1)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.48
  %46 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %46, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.46

for.end.52:                                       ; preds = %for.cond.46
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.52, %sw.bb.39, %for.end.38, %for.end.30, %for.end.22, %for.end, %sw.bb.8, %sw.bb.5, %sw.bb.2, %sw.bb.1, %sw.bb
  %47 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %47, i32 0, i32 1
  %48 = load i32, i32* %len, align 4
  %cmp53 = icmp ult i32 %48, 2
  br i1 %cmp53, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %49 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  call void @gimp_dash_pattern_free(%struct._GArray* %49)
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %50 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  store %struct._GArray* %50, %struct._GArray** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %51 = load %struct._GArray*, %struct._GArray** %retval
  ret %struct._GArray* %51
}

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GArray* @gimp_dash_pattern_new_from_segments(i32* %segments, i32 %n_segments, double %dash_length) #2 {
entry:
  %retval = alloca %struct._GArray*, align 8
  %segments.addr = alloca i32*, align 8
  %n_segments.addr = alloca i32, align 4
  %dash_length.addr = alloca double, align 8
  %pattern = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %state = alloca i32, align 4
  %l = alloca double, align 8
  store i32* %segments, i32** %segments.addr, align 8
  store i32 %n_segments, i32* %n_segments.addr, align 4
  store double %dash_length, double* %dash_length.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32*, i32** %segments.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i32, i32* %n_segments.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_dash_pattern_new_from_segments, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 8)
  store %struct._GArray* %call, %struct._GArray** %pattern, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %count, align 4
  store i32 1, i32* %state, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_segments.addr, align 4
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_segments.addr, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %segments.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %state, align 4
  %cmp4 = icmp eq i32 %8, %9
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* %count, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.9

if.else.6:                                        ; preds = %land.lhs.true, %for.body
  %11 = load double, double* %dash_length.addr, align 8
  %12 = load i32, i32* %count, align 4
  %conv = sitofp i32 %12 to double
  %mul = fmul double %11, %conv
  %13 = load i32, i32* %n_segments.addr, align 4
  %conv7 = sitofp i32 %13 to double
  %div = fdiv double %mul, %conv7
  store double %div, double* %l, align 8
  %14 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %15 = bitcast double* %l to i8*
  %call8 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %14, i8* %15, i32 1)
  store i32 1, i32* %count, align 4
  %16 = load i32, i32* %state, align 4
  %tobool = icmp ne i32 %16, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %state, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.6, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %17 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %18, i32 0, i32 1
  %19 = load i32, i32* %len, align 4
  %cmp11 = icmp ult i32 %19, 2
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  %20 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  call void @gimp_dash_pattern_free(%struct._GArray* %20)
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.end.14:                                        ; preds = %for.end
  %21 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  store %struct._GArray* %21, %struct._GArray** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else
  %22 = load %struct._GArray*, %struct._GArray** %retval
  ret %struct._GArray* %22
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_dash_pattern_fill_segments(%struct._GArray* %pattern, i32* %segments, i32 %n_segments) #2 {
entry:
  %pattern.addr = alloca %struct._GArray*, align 8
  %segments.addr = alloca i32*, align 8
  %n_segments.addr = alloca i32, align 4
  %factor = alloca double, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %paint = alloca i32, align 4
  store %struct._GArray* %pattern, %struct._GArray** %pattern.addr, align 8
  store i32* %segments, i32** %segments.addr, align 8
  store i32 %n_segments, i32* %n_segments.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32*, i32** %segments.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load i32, i32* %n_segments.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_dash_pattern_fill_segments, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  br label %for.end.40

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %cmp2 = icmp eq %struct._GArray* %2, null
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %do.end
  %3 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %3, i32 0, i32 1
  %4 = load i32, i32* %len, align 4
  %cmp4 = icmp ule i32 %4, 1
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %lor.lhs.false.3, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n_segments.addr, align 4
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %segments.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.end.40

if.end.7:                                         ; preds = %lor.lhs.false.3
  store i32 0, i32* %i, align 4
  store double 0.000000e+00, double* %sum, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.14, %if.end.7
  %10 = load i32, i32* %i, align 4
  %11 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %len9 = getelementptr inbounds %struct._GArray, %struct._GArray* %11, i32 0, i32 1
  %12 = load i32, i32* %len9, align 4
  %cmp10 = icmp ult i32 %10, %12
  br i1 %cmp10, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.8
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = bitcast i8* %15 to double*
  %arrayidx13 = getelementptr inbounds double, double* %16, i64 %idxprom12
  %17 = load double, double* %arrayidx13, align 8
  %18 = load double, double* %sum, align 8
  %add = fadd double %18, %17
  store double %add, double* %sum, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %19 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %19, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.8

for.end.16:                                       ; preds = %for.cond.8
  %20 = load i32, i32* %n_segments.addr, align 4
  %conv = sitofp i32 %20 to double
  %21 = load double, double* %sum, align 8
  %div = fdiv double %conv, %21
  store double %div, double* %factor, align 8
  store i32 0, i32* %j, align 4
  %22 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %data18 = getelementptr inbounds %struct._GArray, %struct._GArray* %23, i32 0, i32 0
  %24 = load i8*, i8** %data18, align 8
  %25 = bitcast i8* %24 to double*
  %arrayidx19 = getelementptr inbounds double, double* %25, i64 %idxprom17
  %26 = load double, double* %arrayidx19, align 8
  %27 = load double, double* %factor, align 8
  %mul = fmul double %26, %27
  store double %mul, double* %sum, align 8
  store i32 1, i32* %paint, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.38, %for.end.16
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %n_segments.addr, align 4
  %cmp21 = icmp slt i32 %28, %29
  br i1 %cmp21, label %for.body.23, label %for.end.40

for.body.23:                                      ; preds = %for.cond.20
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.23
  %30 = load i32, i32* %j, align 4
  %31 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %len24 = getelementptr inbounds %struct._GArray, %struct._GArray* %31, i32 0, i32 1
  %32 = load i32, i32* %len24, align 4
  %cmp25 = icmp ult i32 %30, %32
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %33 = load double, double* %sum, align 8
  %34 = load i32, i32* %i, align 4
  %conv27 = sitofp i32 %34 to double
  %cmp28 = fcmp ole double %33, %conv27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %cmp28, %land.rhs ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %36 = load i32, i32* %paint, align 4
  %tobool = icmp ne i32 %36, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %paint, align 4
  %37 = load i32, i32* %j, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %j, align 4
  %38 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %38 to i64
  %39 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %data32 = getelementptr inbounds %struct._GArray, %struct._GArray* %39, i32 0, i32 0
  %40 = load i8*, i8** %data32, align 8
  %41 = bitcast i8* %40 to double*
  %arrayidx33 = getelementptr inbounds double, double* %41, i64 %idxprom31
  %42 = load double, double* %arrayidx33, align 8
  %43 = load double, double* %factor, align 8
  %mul34 = fmul double %42, %43
  %44 = load double, double* %sum, align 8
  %add35 = fadd double %44, %mul34
  store double %add35, double* %sum, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %45 = load i32, i32* %paint, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %46 to i64
  %47 = load i32*, i32** %segments.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %47, i64 %idxprom36
  store i32 %45, i32* %arrayidx37, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %while.end
  %48 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %48, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.20

for.end.40:                                       ; preds = %if.else, %for.end, %for.cond.20
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GArray* @gimp_dash_pattern_from_value_array(%struct._GValueArray* %value_array) #2 {
entry:
  %retval = alloca %struct._GArray*, align 8
  %value_array.addr = alloca %struct._GValueArray*, align 8
  %pattern = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  %item = alloca %struct._GValue*, align 8
  %val = alloca double, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GValueArray* %value_array, %struct._GValueArray** %value_array.addr, align 8
  %0 = load %struct._GValueArray*, %struct._GValueArray** %value_array.addr, align 8
  %cmp = icmp eq %struct._GValueArray* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._GValueArray*, %struct._GValueArray** %value_array.addr, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %1, i32 0, i32 0
  %2 = load i32, i32* %n_values, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct._GValueArray*, %struct._GValueArray** %value_array.addr, align 8
  %n_values2 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %3, i32 0, i32 0
  %4 = load i32, i32* %n_values2, align 4
  %call = call %struct._GArray* @g_array_sized_new(i32 0, i32 0, i32 8, i32 %4)
  store %struct._GArray* %call, %struct._GArray** %pattern, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._GValueArray*, %struct._GValueArray** %value_array.addr, align 8
  %n_values3 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %6, i32 0, i32 0
  %7 = load i32, i32* %n_values3, align 4
  %cmp4 = icmp ult i32 %5, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GValueArray*, %struct._GValueArray** %value_array.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call5 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %8, i32 %9)
  store %struct._GValue* %call5, %struct._GValue** %item, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %10 = load %struct._GValue*, %struct._GValue** %item, align 8
  store %struct._GValue* %10, %struct._GValue** %__val, align 8
  store i64 60, i64* %__t, align 8
  %11 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %11, null
  br i1 %tobool, label %if.else.7, label %if.then.6

if.then.6:                                        ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.12

if.else.7:                                        ; preds = %do.body
  %12 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %12, i32 0, i32 0
  %13 = load i64, i64* %g_type, align 8
  %14 = load i64, i64* %__t, align 8
  %cmp8 = icmp eq i64 %13, %14
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.7
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.10:                                       ; preds = %if.else.7
  %15 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %16 = load i64, i64* %__t, align 8
  %call11 = call i32 @g_type_check_value_holds(%struct._GValue* %15, i64 %16) #5
  store i32 %call11, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  %17 = load i32, i32* %__r, align 4
  store i32 %17, i32* %tmp
  %18 = load i32, i32* %tmp
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.12
  br label %if.end.16

if.else.15:                                       ; preds = %if.end.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_dash_pattern_from_value_array, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GArray* null, %struct._GArray** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %19 = load %struct._GValue*, %struct._GValue** %item, align 8
  %call17 = call double @g_value_get_double(%struct._GValue* %19)
  store double %call17, double* %val, align 8
  %20 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  %21 = bitcast double* %val to i8*
  %call18 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %20, i8* %21, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GArray*, %struct._GArray** %pattern, align 8
  store %struct._GArray* %23, %struct._GArray** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.15, %if.then
  %24 = load %struct._GArray*, %struct._GArray** %retval
  ret %struct._GArray* %24
}

declare %struct._GArray* @g_array_sized_new(i32, i32, i32, i32) #1

declare %struct._GValue* @g_value_array_get_nth(%struct._GValueArray*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #3

declare double @g_value_get_double(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define %struct._GValueArray* @gimp_dash_pattern_to_value_array(%struct._GArray* %pattern) #2 {
entry:
  %retval = alloca %struct._GValueArray*, align 8
  %pattern.addr = alloca %struct._GArray*, align 8
  %value_array = alloca %struct._GValueArray*, align 8
  %item = alloca %struct._GValue, align 8
  %i = alloca i32, align 4
  store %struct._GArray* %pattern, %struct._GArray** %pattern.addr, align 8
  %0 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %cmp = icmp eq %struct._GArray* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %1, i32 0, i32 1
  %2 = load i32, i32* %len, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._GValueArray* null, %struct._GValueArray** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %len2 = getelementptr inbounds %struct._GArray, %struct._GArray* %3, i32 0, i32 1
  %4 = load i32, i32* %len2, align 4
  %call = call %struct._GValueArray* @g_value_array_new(i32 %4)
  store %struct._GValueArray* %call, %struct._GValueArray** %value_array, align 8
  %5 = bitcast %struct._GValue* %item to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 24, i32 8, i1 false)
  %call3 = call %struct._GValue* @g_value_init(%struct._GValue* %item, i64 60)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %len4 = getelementptr inbounds %struct._GArray, %struct._GArray* %7, i32 0, i32 1
  %8 = load i32, i32* %len4, align 4
  %cmp5 = icmp ult i32 %6, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._GArray*, %struct._GArray** %pattern.addr, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %10, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8
  %12 = bitcast i8* %11 to double*
  %arrayidx = getelementptr inbounds double, double* %12, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8
  call void @g_value_set_double(%struct._GValue* %item, double %13)
  %14 = load %struct._GValueArray*, %struct._GValueArray** %value_array, align 8
  %call6 = call %struct._GValueArray* @g_value_array_append(%struct._GValueArray* %14, %struct._GValue* %item)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @g_value_unset(%struct._GValue* %item)
  %16 = load %struct._GValueArray*, %struct._GValueArray** %value_array, align 8
  store %struct._GValueArray* %16, %struct._GValueArray** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load %struct._GValueArray*, %struct._GValueArray** %retval
  ret %struct._GValueArray* %17
}

declare %struct._GValueArray* @g_value_array_new(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare %struct._GValueArray* @g_value_array_append(%struct._GValueArray*, %struct._GValue*) #1

declare void @g_value_unset(%struct._GValue*) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
