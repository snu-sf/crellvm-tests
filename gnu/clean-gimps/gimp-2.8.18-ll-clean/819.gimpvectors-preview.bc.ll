; ModuleID = './app/vectors/gimpvectors-preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpContext = type opaque
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GArray = type { i8*, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque

@gimp_vectors_get_new_preview.white = private unnamed_addr constant [1 x i8] c"\FF", align 1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_vectors_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #0 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %vectors = alloca %struct._GimpVectors*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %cur_stroke = alloca %struct._GimpStroke*, align 8
  %xscale = alloca double, align 8
  %yscale = alloca double, align 8
  %data = alloca i8*, align 8
  %temp_buf = alloca %struct._TempBuf*, align 8
  %white = alloca [1 x i8], align 1
  %coords = alloca %struct._GArray*, align 8
  %closed = alloca i32, align 4
  %i = alloca i32, align 4
  %point = alloca %struct._GimpCoords, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = bitcast [1 x i8]* %white to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @gimp_vectors_get_new_preview.white, i32 0, i32 0), i64 1, i32 1, i1 false)
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_vectors_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpVectors*
  store %struct._GimpVectors* %3, %struct._GimpVectors** %vectors, align 8
  %4 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %5 = bitcast %struct._GimpViewable* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_item_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpItem*
  store %struct._GimpItem* %6, %struct._GimpItem** %item, align 8
  %7 = load i32, i32* %width.addr, align 4
  %conv = sitofp i32 %7 to double
  %8 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call4 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %8)
  %call5 = call i32 @gimp_image_get_width(%struct._GimpImage* %call4)
  %conv6 = sitofp i32 %call5 to double
  %div = fdiv double %conv, %conv6
  store double %div, double* %xscale, align 8
  %9 = load i32, i32* %height.addr, align 4
  %conv7 = sitofp i32 %9 to double
  %10 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call8 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %10)
  %call9 = call i32 @gimp_image_get_height(%struct._GimpImage* %call8)
  %conv10 = sitofp i32 %call9 to double
  %div11 = fdiv double %conv7, %conv10
  store double %div11, double* %yscale, align 8
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %white, i32 0, i32 0
  %call12 = call %struct._TempBuf* @temp_buf_new(i32 %11, i32 %12, i32 1, i32 0, i32 0, i8* %arraydecay)
  store %struct._TempBuf* %call12, %struct._TempBuf** %temp_buf, align 8
  %13 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %call13 = call i8* @temp_buf_get_data(%struct._TempBuf* %13)
  store i8* %call13, i8** %data, align 8
  %14 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %call14 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %14, %struct._GimpStroke* null)
  store %struct._GimpStroke* %call14, %struct._GimpStroke** %cur_stroke, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %entry
  %15 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %tobool = icmp ne %struct._GimpStroke* %15, null
  br i1 %tobool, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  %16 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call15 = call %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke* %16, double 5.000000e-01, i32* %closed)
  store %struct._GArray* %call15, %struct._GArray** %coords, align 8
  %17 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %tobool16 = icmp ne %struct._GArray* %17, null
  br i1 %tobool16, label %if.then, label %if.end.43

if.then:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.then
  %18 = load i32, i32* %i, align 4
  %19 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %19, i32 0, i32 1
  %20 = load i32, i32* %len, align 4
  %cmp = icmp ult i32 %18, %20
  br i1 %cmp, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %data20 = getelementptr inbounds %struct._GArray, %struct._GArray* %22, i32 0, i32 0
  %23 = load i8*, i8** %data20, align 8
  %24 = bitcast i8* %23 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i64 %idxprom
  %25 = bitcast %struct._GimpCoords* %point to i8*
  %26 = bitcast %struct._GimpCoords* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 64, i32 8, i1 false)
  %x21 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 0
  %27 = load double, double* %x21, align 8
  %28 = load double, double* %xscale, align 8
  %mul = fmul double %27, %28
  %add = fadd double %mul, 5.000000e-01
  %conv22 = fptosi double %add to i32
  store i32 %conv22, i32* %x, align 4
  %y23 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point, i32 0, i32 1
  %29 = load double, double* %y23, align 8
  %30 = load double, double* %yscale, align 8
  %mul24 = fmul double %29, %30
  %add25 = fadd double %mul24, 5.000000e-01
  %conv26 = fptosi double %add25 to i32
  store i32 %conv26, i32* %y, align 4
  %31 = load i32, i32* %x, align 4
  %cmp27 = icmp sge i32 %31, 0
  br i1 %cmp27, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.19
  %32 = load i32, i32* %y, align 4
  %cmp29 = icmp sge i32 %32, 0
  br i1 %cmp29, label %land.lhs.true.31, label %if.end

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %33 = load i32, i32* %x, align 4
  %34 = load i32, i32* %width.addr, align 4
  %cmp32 = icmp slt i32 %33, %34
  br i1 %cmp32, label %land.lhs.true.34, label %if.end

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %height.addr, align 4
  %cmp35 = icmp slt i32 %35, %36
  br i1 %cmp35, label %if.then.37, label %if.end

if.then.37:                                       ; preds = %land.lhs.true.34
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* %width.addr, align 4
  %mul38 = mul nsw i32 %37, %38
  %39 = load i32, i32* %x, align 4
  %add39 = add nsw i32 %mul38, %39
  %idxprom40 = sext i32 %add39 to i64
  %40 = load i8*, i8** %data, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %40, i64 %idxprom40
  store i8 0, i8* %arrayidx41, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.37, %land.lhs.true.34, %land.lhs.true.31, %land.lhs.true, %for.body.19
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  %42 = load %struct._GArray*, %struct._GArray** %coords, align 8
  %call42 = call i8* @g_array_free(%struct._GArray* %42, i32 1)
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %for.body
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %43 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors, align 8
  %44 = load %struct._GimpStroke*, %struct._GimpStroke** %cur_stroke, align 8
  %call45 = call %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors* %43, %struct._GimpStroke* %44)
  store %struct._GimpStroke* %call45, %struct._GimpStroke** %cur_stroke, align 8
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  %45 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  ret %struct._TempBuf* %45
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #2

declare i32 @gimp_image_get_height(%struct._GimpImage*) #2

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #2

declare i8* @temp_buf_get_data(%struct._TempBuf*) #2

declare %struct._GimpStroke* @gimp_vectors_stroke_get_next(%struct._GimpVectors*, %struct._GimpStroke*) #2

declare %struct._GArray* @gimp_stroke_interpolate(%struct._GimpStroke*, double, i32*) #2

declare i8* @g_array_free(%struct._GArray*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
