; ModuleID = './app/widgets/gimptexttag.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._PangoFontDescription = type opaque
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GimpRGB = type { double, double, double, double }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1
@__func__.gimp_text_tag_get_size = private unnamed_addr constant [23 x i8] c"gimp_text_tag_get_size\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GTK_IS_TEXT_TAG (tag)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rise\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"foreground-gdk\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_text_tag_get_size(%struct._GtkTextTag* %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca %struct._GtkTextTag*, align 8
  %size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkTextTag* %tag, %struct._GtkTextTag** %tag.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %1 = bitcast %struct._GtkTextTag* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gtk_text_tag_get_type() #4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_text_tag_get_size, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %14 = bitcast %struct._GtkTextTag* %13 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32* %size, i8* null)
  %15 = load i32, i32* %size, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind readnone
declare i64 @gtk_text_tag_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @g_object_get(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_text_tag_get_baseline(%struct._GtkTextTag* %tag) #0 {
entry:
  %tag.addr = alloca %struct._GtkTextTag*, align 8
  %baseline = alloca i32, align 4
  store %struct._GtkTextTag* %tag, %struct._GtkTextTag** %tag.addr, align 8
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %1 = bitcast %struct._GtkTextTag* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32* %baseline, i8* null)
  %2 = load i32, i32* %baseline, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @gimp_text_tag_get_kerning(%struct._GtkTextTag* %tag) #0 {
entry:
  %tag.addr = alloca %struct._GtkTextTag*, align 8
  %kerning = alloca i32, align 4
  store %struct._GtkTextTag* %tag, %struct._GtkTextTag** %tag.addr, align 8
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %1 = bitcast %struct._GtkTextTag* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32* %kerning, i8* null)
  %2 = load i32, i32* %kerning, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i8* @gimp_text_tag_get_font(%struct._GtkTextTag* %tag) #0 {
entry:
  %tag.addr = alloca %struct._GtkTextTag*, align 8
  %font = alloca i8*, align 8
  store %struct._GtkTextTag* %tag, %struct._GtkTextTag** %tag.addr, align 8
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %1 = bitcast %struct._GtkTextTag* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %font, i8* null)
  %2 = load i8*, i8** %font, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define void @gimp_text_tag_get_color(%struct._GtkTextTag* %tag, %struct._GimpRGB* %color) #0 {
entry:
  %tag.addr = alloca %struct._GtkTextTag*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %gdk_color = alloca %struct._GdkColor*, align 8
  store %struct._GtkTextTag* %tag, %struct._GtkTextTag** %tag.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load %struct._GtkTextTag*, %struct._GtkTextTag** %tag.addr, align 8
  %1 = bitcast %struct._GtkTextTag* %0 to i8*
  call void (i8*, i8*, ...) @g_object_get(i8* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), %struct._GdkColor** %gdk_color, i8* null)
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %3 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color, align 8
  call void @gimp_rgb_set_gdk_color(%struct._GimpRGB* %2, %struct._GdkColor* %3)
  %4 = load %struct._GdkColor*, %struct._GdkColor** %gdk_color, align 8
  call void @gdk_color_free(%struct._GdkColor* %4)
  ret void
}

declare void @gimp_rgb_set_gdk_color(%struct._GimpRGB*, %struct._GdkColor*) #3

declare void @gdk_color_free(%struct._GdkColor*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
