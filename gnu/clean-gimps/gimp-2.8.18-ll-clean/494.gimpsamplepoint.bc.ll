; ModuleID = './app/core/gimpsamplepoint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpSamplePoint = type { i32, i32, i32, i32 }

@gimp_sample_point_get_type.type = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpSamplePoint\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_sample_point_ref = private unnamed_addr constant [22 x i8] c"gimp_sample_point_ref\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sample_point != NULL\00", align 1
@__func__.gimp_sample_point_unref = private unnamed_addr constant [24 x i8] c"gimp_sample_point_unref\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_sample_point_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_sample_point_get_type.type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpSamplePoint* (%struct._GimpSamplePoint*)* @gimp_sample_point_ref to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpSamplePoint*)* @gimp_sample_point_unref to void (i8*)*))
  store i64 %call, i64* @gimp_sample_point_get_type.type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_sample_point_get_type.type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpSamplePoint* @gimp_sample_point_ref(%struct._GimpSamplePoint* %sample_point) #2 {
entry:
  %retval = alloca %struct._GimpSamplePoint*, align 8
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %cmp = icmp ne %struct._GimpSamplePoint* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_sample_point_ref, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpSamplePoint* null, %struct._GimpSamplePoint** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %1, i32 0, i32 0
  %2 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %ref_count, align 4
  %3 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  store %struct._GimpSamplePoint* %3, %struct._GimpSamplePoint** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %4 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %retval
  ret %struct._GimpSamplePoint* %4
}

; Function Attrs: nounwind uwtable
define void @gimp_sample_point_unref(%struct._GimpSamplePoint* %sample_point) #2 {
entry:
  %sample_point.addr = alloca %struct._GimpSamplePoint*, align 8
  store %struct._GimpSamplePoint* %sample_point, %struct._GimpSamplePoint** %sample_point.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %cmp = icmp ne %struct._GimpSamplePoint* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_sample_point_unref, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.6

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %ref_count = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %1, i32 0, i32 0
  %2 = load i32, i32* %ref_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %ref_count, align 4
  %3 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %ref_count1 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %3, i32 0, i32 0
  %4 = load i32, i32* %ref_count1, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %do.end
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %5 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point.addr, align 8
  %6 = bitcast %struct._GimpSamplePoint* %5 to i8*
  call void @g_slice_free1(i64 16, i8* %6)
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %do.end.5, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpSamplePoint* @gimp_sample_point_new(i32 %sample_point_ID) #2 {
entry:
  %sample_point_ID.addr = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  store i32 %sample_point_ID, i32* %sample_point_ID.addr, align 4
  %call = call noalias i8* @g_slice_alloc0(i64 16)
  %0 = bitcast i8* %call to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %0, %struct._GimpSamplePoint** %sample_point, align 8
  %1 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %ref_count = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %1, i32 0, i32 0
  store i32 1, i32* %ref_count, align 4
  %2 = load i32, i32* %sample_point_ID.addr, align 4
  %3 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %sample_point_ID1 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %3, i32 0, i32 1
  store i32 %2, i32* %sample_point_ID1, align 4
  %4 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %4, i32 0, i32 2
  store i32 -1, i32* %x, align 4
  %5 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %5, i32 0, i32 3
  store i32 -1, i32* %y, align 4
  %6 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  ret %struct._GimpSamplePoint* %6
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_slice_free1(i64, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
