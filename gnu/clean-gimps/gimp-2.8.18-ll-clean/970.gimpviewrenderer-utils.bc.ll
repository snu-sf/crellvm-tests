; ModuleID = './app/widgets/gimpviewrenderer-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_view_renderer_type_from_viewable_type = private unnamed_addr constant [43 x i8] c"gimp_view_renderer_type_from_viewable_type\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"g_type_is_a (viewable_type, GIMP_TYPE_VIEWABLE)\00", align 1

; Function Attrs: nounwind uwtable
define i64 @gimp_view_renderer_type_from_viewable_type(i64 %viewable_type) #0 {
entry:
  %retval = alloca i64, align 8
  %viewable_type.addr = alloca i64, align 8
  %type = alloca i64, align 8
  store i64 %viewable_type, i64* %viewable_type.addr, align 8
  %call = call i64 @gimp_view_renderer_get_type() #3
  store i64 %call, i64* %type, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %viewable_type.addr, align 8
  %call1 = call i64 @gimp_viewable_get_type() #3
  %call2 = call i32 @g_type_is_a(i64 %0, i64 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__func__.gimp_view_renderer_type_from_viewable_type, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0))
  store i64 4, i64* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i64, i64* %viewable_type.addr, align 8
  %call3 = call i64 @gimp_brush_get_type() #3
  %call4 = call i32 @g_type_is_a(i64 %1, i64 %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %do.end
  %call7 = call i64 @gimp_view_renderer_brush_get_type() #3
  store i64 %call7, i64* %type, align 8
  br label %if.end.64

if.else.8:                                        ; preds = %do.end
  %2 = load i64, i64* %viewable_type.addr, align 8
  %call9 = call i64 @gimp_buffer_get_type() #3
  %call10 = call i32 @g_type_is_a(i64 %2, i64 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.8
  %call13 = call i64 @gimp_view_renderer_buffer_get_type() #3
  store i64 %call13, i64* %type, align 8
  br label %if.end.63

if.else.14:                                       ; preds = %if.else.8
  %3 = load i64, i64* %viewable_type.addr, align 8
  %call15 = call i64 @gimp_image_get_type() #3
  %call16 = call i32 @g_type_is_a(i64 %3, i64 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.14
  %call19 = call i64 @gimp_view_renderer_image_get_type() #3
  store i64 %call19, i64* %type, align 8
  br label %if.end.62

if.else.20:                                       ; preds = %if.else.14
  %4 = load i64, i64* %viewable_type.addr, align 8
  %call21 = call i64 @gimp_layer_get_type() #3
  %call22 = call i32 @g_type_is_a(i64 %4, i64 %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else.20
  %call25 = call i64 @gimp_view_renderer_layer_get_type() #3
  store i64 %call25, i64* %type, align 8
  br label %if.end.61

if.else.26:                                       ; preds = %if.else.20
  %5 = load i64, i64* %viewable_type.addr, align 8
  %call27 = call i64 @gimp_drawable_get_type() #3
  %call28 = call i32 @g_type_is_a(i64 %5, i64 %call27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.else.26
  %call31 = call i64 @gimp_view_renderer_drawable_get_type() #3
  store i64 %call31, i64* %type, align 8
  br label %if.end.60

if.else.32:                                       ; preds = %if.else.26
  %6 = load i64, i64* %viewable_type.addr, align 8
  %call33 = call i64 @gimp_gradient_get_type() #3
  %call34 = call i32 @g_type_is_a(i64 %6, i64 %call33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.else.32
  %call37 = call i64 @gimp_view_renderer_gradient_get_type() #3
  store i64 %call37, i64* %type, align 8
  br label %if.end.59

if.else.38:                                       ; preds = %if.else.32
  %7 = load i64, i64* %viewable_type.addr, align 8
  %call39 = call i64 @gimp_vectors_get_type() #3
  %call40 = call i32 @g_type_is_a(i64 %7, i64 %call39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.else.38
  %call43 = call i64 @gimp_view_renderer_vectors_get_type() #3
  store i64 %call43, i64* %type, align 8
  br label %if.end.58

if.else.44:                                       ; preds = %if.else.38
  %8 = load i64, i64* %viewable_type.addr, align 8
  %call45 = call i64 @gimp_imagefile_get_type() #3
  %call46 = call i32 @g_type_is_a(i64 %8, i64 %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else.50

if.then.48:                                       ; preds = %if.else.44
  %call49 = call i64 @gimp_view_renderer_imagefile_get_type() #3
  store i64 %call49, i64* %type, align 8
  br label %if.end.57

if.else.50:                                       ; preds = %if.else.44
  %9 = load i64, i64* %viewable_type.addr, align 8
  %call51 = call i64 @gimp_palette_get_type() #3
  %call52 = call i32 @g_type_is_a(i64 %9, i64 %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.else.50
  %call55 = call i64 @gimp_view_renderer_palette_get_type() #3
  store i64 %call55, i64* %type, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.else.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.48
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.42
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.36
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.30
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.24
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.18
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.12
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.6
  %10 = load i64, i64* %type, align 8
  store i64 %10, i64* %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.else
  %11 = load i64, i64* %retval
  ret i64 %11
}

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_get_type() #1

declare i32 @g_type_is_a(i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_brush_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_buffer_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_image_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_layer_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_drawable_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_gradient_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_vectors_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_imagefile_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_imagefile_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_renderer_palette_get_type() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
