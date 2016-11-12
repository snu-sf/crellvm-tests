; ModuleID = './libgimp/gimppattern_pdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [22 x i8] c"gimp-pattern-get-info\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gimp-pattern-get-pixels\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_pattern_get_info(i8* %name, i32* %width, i32* %height, i32* %bpp) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %bpp.addr = alloca i32*, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %bpp, i32** %bpp.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %width.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i32*, i32** %height.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load i32*, i32** %bpp.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %4, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %5 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %7, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %8 = load i32, i32* %d_int32, align 4
  %9 = load i32*, i32** %width.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %10, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %11 = load i32, i32* %d_int325, align 4
  %12 = load i32*, i32** %height.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %13, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %14 = load i32, i32* %d_int328, align 4
  %15 = load i32*, i32** %bpp.addr, align 8
  store i32 %14, i32* %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %17 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %16, i32 %17)
  %18 = load i32, i32* %success, align 4
  ret i32 %18
}

declare %struct._GimpParam* @gimp_run_procedure(i8*, i32*, ...) #1

declare void @gimp_destroy_params(%struct._GimpParam*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_pattern_get_pixels(i8* %name, i32* %width, i32* %height, i32* %bpp, i32* %num_color_bytes, i8** %color_bytes) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %bpp.addr = alloca i32*, align 8
  %num_color_bytes.addr = alloca i32*, align 8
  %color_bytes.addr = alloca i8**, align 8
  %return_vals = alloca %struct._GimpParam*, align 8
  %nreturn_vals = alloca i32, align 4
  %success = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %bpp, i32** %bpp.addr, align 8
  store i32* %num_color_bytes, i32** %num_color_bytes.addr, align 8
  store i8** %color_bytes, i8*** %color_bytes.addr, align 8
  store i32 1, i32* %success, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParam* (i8*, i32*, ...) @gimp_run_procedure(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32* %nreturn_vals, i32 4, i8* %0, i32 22)
  store %struct._GimpParam* %call, %struct._GimpParam** %return_vals, align 8
  %1 = load i32*, i32** %width.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i32*, i32** %height.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load i32*, i32** %bpp.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %num_color_bytes.addr, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8**, i8*** %color_bytes.addr, align 8
  store i8* null, i8** %5, align 8
  %6 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %6, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_status = bitcast %union._GimpParamData* %data to i32*
  %7 = load i32, i32* %d_status, align 4
  %cmp = icmp eq i32 %7, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %8 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx1 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %9, i64 1
  %data2 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx1, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data2 to i32*
  %10 = load i32, i32* %d_int32, align 4
  %11 = load i32*, i32** %width.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx3 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %12, i64 2
  %data4 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx3, i32 0, i32 1
  %d_int325 = bitcast %union._GimpParamData* %data4 to i32*
  %13 = load i32, i32* %d_int325, align 4
  %14 = load i32*, i32** %height.addr, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %15, i64 3
  %data7 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx6, i32 0, i32 1
  %d_int328 = bitcast %union._GimpParamData* %data7 to i32*
  %16 = load i32, i32* %d_int328, align 4
  %17 = load i32*, i32** %bpp.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx9 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %18, i64 4
  %data10 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx9, i32 0, i32 1
  %d_int3211 = bitcast %union._GimpParamData* %data10 to i32*
  %19 = load i32, i32* %d_int3211, align 4
  %20 = load i32*, i32** %num_color_bytes.addr, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %num_color_bytes.addr, align 8
  %22 = load i32, i32* %21, align 4
  %conv12 = sext i32 %22 to i64
  %call13 = call noalias i8* @g_malloc_n(i64 %conv12, i64 1)
  %23 = load i8**, i8*** %color_bytes.addr, align 8
  store i8* %call13, i8** %23, align 8
  %24 = load i8**, i8*** %color_bytes.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %arrayidx14 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %26, i64 5
  %data15 = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx14, i32 0, i32 1
  %d_int8array = bitcast %union._GimpParamData* %data15 to i8**
  %27 = load i8*, i8** %d_int8array, align 8
  %28 = load i32*, i32** %num_color_bytes.addr, align 8
  %29 = load i32, i32* %28, align 4
  %conv16 = sext i32 %29 to i64
  %mul = mul i64 %conv16, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %27, i64 %mul, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = load %struct._GimpParam*, %struct._GimpParam** %return_vals, align 8
  %31 = load i32, i32* %nreturn_vals, align 4
  call void @gimp_destroy_params(%struct._GimpParam* %30, i32 %31)
  %32 = load i32, i32* %success, align 4
  ret i32 %32
}

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
