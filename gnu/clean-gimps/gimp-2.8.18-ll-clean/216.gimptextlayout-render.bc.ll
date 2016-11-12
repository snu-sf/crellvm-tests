; ModuleID = './app/text/gimptextlayout-render.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpTextLayout = type opaque
%struct._cairo = type opaque
%struct._PangoLayout = type opaque
%struct._cairo_matrix = type { double, double, double, double, double, double }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_text_layout_render = private unnamed_addr constant [24 x i8] c"gimp_text_layout_render\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GIMP_IS_TEXT_LAYOUT (layout)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cr != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_render(%struct._GimpTextLayout* %layout, %struct._cairo* %cr, i32 %base_dir, i32 %path) #0 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %cr.addr = alloca %struct._cairo*, align 8
  %base_dir.addr = alloca i32, align 4
  %path.addr = alloca i32, align 4
  %pango_layout = alloca %struct._PangoLayout*, align 8
  %trafo = alloca %struct._cairo_matrix, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i32 %base_dir, i32* %base_dir.addr, align 4
  store i32 %path, i32* %path.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #4
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_text_layout_render, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cmp12 = icmp ne %struct._cairo* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_text_layout_render, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %14)
  %15 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  call void @gimp_text_layout_get_offsets(%struct._GimpTextLayout* %15, i32* %x, i32* %y)
  %16 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %17 = load i32, i32* %x, align 4
  %conv = sitofp i32 %17 to double
  %18 = load i32, i32* %y, align 4
  %conv17 = sitofp i32 %18 to double
  call void @cairo_translate(%struct._cairo* %16, double %conv, double %conv17)
  %19 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  call void @gimp_text_layout_get_transform(%struct._GimpTextLayout* %19, %struct._cairo_matrix* %trafo)
  %20 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_transform(%struct._cairo* %20, %struct._cairo_matrix* %trafo)
  %21 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %call18 = call %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout* %21)
  store %struct._PangoLayout* %call18, %struct._PangoLayout** %pango_layout, align 8
  %22 = load i32, i32* %path.addr, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.end.16
  %23 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %24 = load %struct._PangoLayout*, %struct._PangoLayout** %pango_layout, align 8
  call void @pango_cairo_layout_path(%struct._cairo* %23, %struct._PangoLayout* %24)
  br label %if.end.22

if.else.21:                                       ; preds = %do.end.16
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %26 = load %struct._PangoLayout*, %struct._PangoLayout** %pango_layout, align 8
  call void @pango_cairo_show_layout(%struct._cairo* %25, %struct._PangoLayout* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  %27 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %27)
  br label %return

return:                                           ; preds = %if.end.22, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layout_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @cairo_save(%struct._cairo*) #3

declare void @gimp_text_layout_get_offsets(%struct._GimpTextLayout*, i32*, i32*) #3

declare void @cairo_translate(%struct._cairo*, double, double) #3

declare void @gimp_text_layout_get_transform(%struct._GimpTextLayout*, %struct._cairo_matrix*) #3

declare void @cairo_transform(%struct._cairo*, %struct._cairo_matrix*) #3

declare %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout*) #3

declare void @pango_cairo_layout_path(%struct._cairo*, %struct._PangoLayout*) #3

declare void @pango_cairo_show_layout(%struct._cairo*, %struct._PangoLayout*) #3

declare void @cairo_restore(%struct._cairo*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
