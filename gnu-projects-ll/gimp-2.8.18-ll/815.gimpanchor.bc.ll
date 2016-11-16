; ModuleID = './app/vectors/gimpanchor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }

@gimp_anchor_get_type.anchor_type = internal global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GimpAnchor\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1
@__func__.gimp_anchor_copy = private unnamed_addr constant [17 x i8] c"gimp_anchor_copy\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"anchor != NULL\00", align 1
@__func__.gimp_anchor_free = private unnamed_addr constant [17 x i8] c"gimp_anchor_free\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_anchor_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_anchor_get_type.anchor_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_boxed_type_register_static(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* (i8*)* bitcast (%struct._GimpAnchor* (%struct._GimpAnchor*)* @gimp_anchor_copy to i8* (i8*)*), void (i8*)* bitcast (void (%struct._GimpAnchor*)* @gimp_anchor_free to void (i8*)*))
  store i64 %call, i64* @gimp_anchor_get_type.anchor_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_anchor_get_type.anchor_type, align 8
  ret i64 %1
}

declare i64 @g_boxed_type_register_static(i8*, i8* (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpAnchor* @gimp_anchor_copy(%struct._GimpAnchor* %anchor) #2 {
entry:
  %retval = alloca %struct._GimpAnchor*, align 8
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %cmp = icmp ne %struct._GimpAnchor* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_anchor_copy, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpAnchor* null, %struct._GimpAnchor** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %2 = bitcast %struct._GimpAnchor* %1 to i8*
  %call = call noalias i8* @g_slice_copy(i64 72, i8* %2)
  %3 = bitcast i8* %call to %struct._GimpAnchor*
  store %struct._GimpAnchor* %3, %struct._GimpAnchor** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %4 = load %struct._GimpAnchor*, %struct._GimpAnchor** %retval
  ret %struct._GimpAnchor* %4
}

; Function Attrs: nounwind uwtable
define void @gimp_anchor_free(%struct._GimpAnchor* %anchor) #2 {
entry:
  %anchor.addr = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpAnchor* %anchor, %struct._GimpAnchor** %anchor.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %cmp = icmp ne %struct._GimpAnchor* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_anchor_free, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor.addr, align 8
  %2 = bitcast %struct._GimpAnchor* %1 to i8*
  call void @g_slice_free1(i64 72, i8* %2)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpAnchor* @gimp_anchor_new(i32 %type, %struct._GimpCoords* %position) #2 {
entry:
  %type.addr = alloca i32, align 4
  %position.addr = alloca %struct._GimpCoords*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct._GimpCoords* %position, %struct._GimpCoords** %position.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 72)
  %0 = bitcast i8* %call to %struct._GimpAnchor*
  store %struct._GimpAnchor* %0, %struct._GimpAnchor** %anchor, align 8
  %1 = load i32, i32* %type.addr, align 4
  %2 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %type1 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %2, i32 0, i32 1
  store i32 %1, i32* %type1, align 4
  %3 = load %struct._GimpCoords*, %struct._GimpCoords** %position.addr, align 8
  %tobool = icmp ne %struct._GimpCoords* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position2 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %4, i32 0, i32 0
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %position.addr, align 8
  %6 = bitcast %struct._GimpCoords* %position2 to i8*
  %7 = bitcast %struct._GimpCoords* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 64, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  ret %struct._GimpAnchor* %8
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_slice_copy(i64, i8*) #1

declare void @g_slice_free1(i64, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
