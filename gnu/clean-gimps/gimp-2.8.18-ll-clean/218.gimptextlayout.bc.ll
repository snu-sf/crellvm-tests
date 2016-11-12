; ModuleID = './app/text/gimptextlayout.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTextLayoutClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpTextLayout = type { %struct._GObject, %struct._GimpText*, double, double, %struct._PangoLayout*, %struct._PangoRectangle }
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._PangoLayout = type opaque
%struct._PangoRectangle = type { i32, i32, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._PangoContext = type opaque
%struct._PangoFontDescription = type opaque
%struct._PangoFontMap = type opaque
%struct._cairo_font_options = type opaque
%struct._PangoCairoFontMap = type opaque
%struct._PangoLanguage = type opaque
%struct._PangoAttrList = type opaque
%struct._cairo_matrix = type { double, double, double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_text_layout_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpTextLayout\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_text_layout_new = private unnamed_addr constant [21 x i8] c"gimp_text_layout_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_TEXT (text)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"font_desc != NULL\00", align 1
@__func__.gimp_text_layout_get_size = private unnamed_addr constant [26 x i8] c"gimp_text_layout_get_size\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GIMP_IS_TEXT_LAYOUT (layout)\00", align 1
@__func__.gimp_text_layout_get_offsets = private unnamed_addr constant [29 x i8] c"gimp_text_layout_get_offsets\00", align 1
@__func__.gimp_text_layout_get_resolution = private unnamed_addr constant [32 x i8] c"gimp_text_layout_get_resolution\00", align 1
@__func__.gimp_text_layout_get_text = private unnamed_addr constant [26 x i8] c"gimp_text_layout_get_text\00", align 1
@__func__.gimp_text_layout_get_pango_layout = private unnamed_addr constant [34 x i8] c"gimp_text_layout_get_pango_layout\00", align 1
@__func__.gimp_text_layout_get_transform = private unnamed_addr constant [31 x i8] c"gimp_text_layout_get_transform\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"matrix != NULL\00", align 1
@__func__.gimp_text_layout_transform_rect = private unnamed_addr constant [32 x i8] c"gimp_text_layout_transform_rect\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"rect != NULL\00", align 1
@__func__.gimp_text_layout_transform_point = private unnamed_addr constant [33 x i8] c"gimp_text_layout_transform_point\00", align 1
@__func__.gimp_text_layout_transform_distance = private unnamed_addr constant [36 x i8] c"gimp_text_layout_transform_distance\00", align 1
@__func__.gimp_text_layout_untransform_rect = private unnamed_addr constant [34 x i8] c"gimp_text_layout_untransform_rect\00", align 1
@__func__.gimp_text_layout_untransform_point = private unnamed_addr constant [35 x i8] c"gimp_text_layout_untransform_point\00", align 1
@__func__.gimp_text_layout_untransform_distance = private unnamed_addr constant [38 x i8] c"gimp_text_layout_untransform_distance\00", align 1
@gimp_text_layout_parent_class = internal global i8* null, align 8
@GimpTextLayout_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"<markup>\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"</markup>\00", align 1
@.str.10 = private unnamed_addr constant [79 x i8] c"The new text layout cannot be generated. Most likely the font size is too big.\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"<span color=\22#%02x%02x%02x\22>%s</span>\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"<span letter_spacing=\22%d\22>%s</span>\00", align 1
@.str.13 = private unnamed_addr constant [95 x i8] c"You are using a Pango that has been built against a cairo that lacks the Freetype font backend\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_text_layout_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_text_layout_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_text_layout_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_text_layout_class_intern_init to void (i8*, i8*)*), i32 72, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTextLayout*)* @gimp_text_layout_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_text_layout_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_text_layout_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layout_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_text_layout_parent_class, align 8
  %1 = load i32, i32* @GimpTextLayout_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTextLayout_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTextLayoutClass*
  call void @gimp_text_layout_class_init(%struct._GimpTextLayoutClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layout_init(%struct._GimpTextLayout* %layout) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %0, i32 0, i32 1
  store %struct._GimpText* null, %struct._GimpText** %text, align 8
  %1 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %layout1 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %1, i32 0, i32 4
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout1, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpTextLayout* @gimp_text_layout_new(%struct._GimpText* %text, double %xres, double %yres, %struct._GError** %error) #2 {
entry:
  %retval = alloca %struct._GimpTextLayout*, align 8
  %text.addr = alloca %struct._GimpText*, align 8
  %xres.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  %error.addr = alloca %struct._GError**, align 8
  %layout = alloca %struct._GimpTextLayout*, align 8
  %context = alloca %struct._PangoContext*, align 8
  %font_desc = alloca %struct._PangoFontDescription*, align 8
  %alignment = alloca i32, align 4
  %size = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store double %xres, double* %xres.addr, align 8
  store double %yres, double* %yres.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %alignment, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %1 = bitcast %struct._GimpText* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_layout_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpTextLayout* null, %struct._GimpTextLayout** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %font = getelementptr inbounds %struct._GimpText, %struct._GimpText* %13, i32 0, i32 3
  %14 = load i8*, i8** %font, align 8
  %call11 = call %struct._PangoFontDescription* @pango_font_description_from_string(i8* %14)
  store %struct._PangoFontDescription* %call11, %struct._PangoFontDescription** %font_desc, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %15 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %cmp13 = icmp ne %struct._PangoFontDescription* %15, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_text_layout_new, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpTextLayout* null, %struct._GimpTextLayout** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %16 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %font_size = getelementptr inbounds %struct._GimpText, %struct._GimpText* %16, i32 0, i32 5
  %17 = load double, double* %font_size, align 8
  %18 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %unit = getelementptr inbounds %struct._GimpText, %struct._GimpText* %18, i32 0, i32 4
  %19 = load i32, i32* %unit, align 4
  %20 = load double, double* %yres.addr, align 8
  %call18 = call double @gimp_units_to_points(double %17, i32 %19, double %20)
  %call19 = call i32 @pango_units_from_double(double %call18) #7
  store i32 %call19, i32* %size, align 4
  %21 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  %22 = load i32, i32* %size, align 4
  %cmp20 = icmp sgt i32 1, %22
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.17
  br label %cond.end

cond.false:                                       ; preds = %do.end.17
  %23 = load i32, i32* %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %23, %cond.false ]
  call void @pango_font_description_set_size(%struct._PangoFontDescription* %21, i32 %cond)
  %24 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %25 = load double, double* %xres.addr, align 8
  %26 = load double, double* %yres.addr, align 8
  %call21 = call %struct._PangoContext* @gimp_text_get_pango_context(%struct._GimpText* %24, double %25, double %26)
  store %struct._PangoContext* %call21, %struct._PangoContext** %context, align 8
  %call22 = call i64 @gimp_text_layout_get_type() #7
  %call23 = call i8* (i64, i8*, ...) @g_object_new(i64 %call22, i8* null)
  %27 = bitcast i8* %call23 to %struct._GimpTextLayout*
  store %struct._GimpTextLayout* %27, %struct._GimpTextLayout** %layout, align 8
  %28 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %29 = bitcast %struct._GimpText* %28 to i8*
  %call24 = call i8* @g_object_ref(i8* %29)
  %30 = bitcast i8* %call24 to %struct._GimpText*
  %31 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %text25 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %31, i32 0, i32 1
  store %struct._GimpText* %30, %struct._GimpText** %text25, align 8
  %32 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %call26 = call %struct._PangoLayout* @pango_layout_new(%struct._PangoContext* %32)
  %33 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout27 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %33, i32 0, i32 4
  store %struct._PangoLayout* %call26, %struct._PangoLayout** %layout27, align 8
  %34 = load double, double* %xres.addr, align 8
  %35 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %xres28 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %35, i32 0, i32 2
  store double %34, double* %xres28, align 8
  %36 = load double, double* %yres.addr, align 8
  %37 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %yres29 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %37, i32 0, i32 3
  store double %36, double* %yres29, align 8
  %38 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout30 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %38, i32 0, i32 4
  %39 = load %struct._PangoLayout*, %struct._PangoLayout** %layout30, align 8
  call void @pango_layout_set_wrap(%struct._PangoLayout* %39, i32 2)
  %40 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %41 = bitcast %struct._PangoContext* %40 to i8*
  call void @g_object_unref(i8* %41)
  %42 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout31 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %42, i32 0, i32 4
  %43 = load %struct._PangoLayout*, %struct._PangoLayout** %layout31, align 8
  %44 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_layout_set_font_description(%struct._PangoLayout* %43, %struct._PangoFontDescription* %44)
  %45 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %font_desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %45)
  %46 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %47 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  call void @gimp_text_layout_set_markup(%struct._GimpTextLayout* %46, %struct._GError** %47)
  %48 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %justify = getelementptr inbounds %struct._GimpText, %struct._GimpText* %48, i32 0, i32 13
  %49 = load i32, i32* %justify, align 4
  switch i32 %49, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.32
    i32 2, label %sw.bb.33
    i32 3, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %cond.end
  store i32 0, i32* %alignment, align 4
  br label %sw.epilog

sw.bb.32:                                         ; preds = %cond.end
  store i32 2, i32* %alignment, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %cond.end
  store i32 1, i32* %alignment, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %cond.end
  store i32 0, i32* %alignment, align 4
  %50 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout35 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %50, i32 0, i32 4
  %51 = load %struct._PangoLayout*, %struct._PangoLayout** %layout35, align 8
  call void @pango_layout_set_justify(%struct._PangoLayout* %51, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb
  %52 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout36 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %52, i32 0, i32 4
  %53 = load %struct._PangoLayout*, %struct._PangoLayout** %layout36, align 8
  %54 = load i32, i32* %alignment, align 4
  call void @pango_layout_set_alignment(%struct._PangoLayout* %53, i32 %54)
  %55 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %box_mode = getelementptr inbounds %struct._GimpText, %struct._GimpText* %55, i32 0, i32 17
  %56 = load i32, i32* %box_mode, align 4
  switch i32 %56, label %sw.epilog.42 [
    i32 0, label %sw.bb.37
    i32 1, label %sw.bb.38
  ]

sw.bb.37:                                         ; preds = %sw.epilog
  br label %sw.epilog.42

sw.bb.38:                                         ; preds = %sw.epilog
  %57 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout39 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %57, i32 0, i32 4
  %58 = load %struct._PangoLayout*, %struct._PangoLayout** %layout39, align 8
  %59 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %box_width = getelementptr inbounds %struct._GimpText, %struct._GimpText* %59, i32 0, i32 18
  %60 = load double, double* %box_width, align 8
  %61 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %box_unit = getelementptr inbounds %struct._GimpText, %struct._GimpText* %61, i32 0, i32 20
  %62 = load i32, i32* %box_unit, align 4
  %63 = load double, double* %xres.addr, align 8
  %call40 = call double @gimp_units_to_pixels(double %60, i32 %62, double %63)
  %call41 = call i32 @pango_units_from_double(double %call40) #7
  call void @pango_layout_set_width(%struct._PangoLayout* %58, i32 %call41)
  br label %sw.epilog.42

sw.epilog.42:                                     ; preds = %sw.epilog, %sw.bb.38, %sw.bb.37
  %64 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout43 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %64, i32 0, i32 4
  %65 = load %struct._PangoLayout*, %struct._PangoLayout** %layout43, align 8
  %66 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %indent = getelementptr inbounds %struct._GimpText, %struct._GimpText* %66, i32 0, i32 14
  %67 = load double, double* %indent, align 8
  %68 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %unit44 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %68, i32 0, i32 4
  %69 = load i32, i32* %unit44, align 4
  %70 = load double, double* %xres.addr, align 8
  %call45 = call double @gimp_units_to_pixels(double %67, i32 %69, double %70)
  %call46 = call i32 @pango_units_from_double(double %call45) #7
  call void @pango_layout_set_indent(%struct._PangoLayout* %65, i32 %call46)
  %71 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout47 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %71, i32 0, i32 4
  %72 = load %struct._PangoLayout*, %struct._PangoLayout** %layout47, align 8
  %73 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %line_spacing = getelementptr inbounds %struct._GimpText, %struct._GimpText* %73, i32 0, i32 15
  %74 = load double, double* %line_spacing, align 8
  %75 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %unit48 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %75, i32 0, i32 4
  %76 = load i32, i32* %unit48, align 4
  %77 = load double, double* %yres.addr, align 8
  %call49 = call double @gimp_units_to_pixels(double %74, i32 %76, double %77)
  %call50 = call i32 @pango_units_from_double(double %call49) #7
  call void @pango_layout_set_spacing(%struct._PangoLayout* %72, i32 %call50)
  %78 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  call void @gimp_text_layout_position(%struct._GimpTextLayout* %78)
  %79 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %box_mode51 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %79, i32 0, i32 17
  %80 = load i32, i32* %box_mode51, align 4
  switch i32 %80, label %sw.epilog.63 [
    i32 0, label %sw.bb.52
    i32 1, label %sw.bb.53
  ]

sw.bb.52:                                         ; preds = %sw.epilog.42
  br label %sw.epilog.63

sw.bb.53:                                         ; preds = %sw.epilog.42
  %81 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %box_width54 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %81, i32 0, i32 18
  %82 = load double, double* %box_width54, align 8
  %83 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %box_unit55 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %83, i32 0, i32 20
  %84 = load i32, i32* %box_unit55, align 4
  %85 = load double, double* %xres.addr, align 8
  %call56 = call double @gimp_units_to_pixels(double %82, i32 %84, double %85)
  %call57 = call double @ceil(double %call56) #7
  %conv = fptosi double %call57 to i32
  %86 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %extents = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %86, i32 0, i32 5
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents, i32 0, i32 2
  store i32 %conv, i32* %width, align 4
  %87 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %box_height = getelementptr inbounds %struct._GimpText, %struct._GimpText* %87, i32 0, i32 19
  %88 = load double, double* %box_height, align 8
  %89 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %box_unit58 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %89, i32 0, i32 20
  %90 = load i32, i32* %box_unit58, align 4
  %91 = load double, double* %yres.addr, align 8
  %call59 = call double @gimp_units_to_pixels(double %88, i32 %90, double %91)
  %call60 = call double @ceil(double %call59) #7
  %conv61 = fptosi double %call60 to i32
  %92 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %extents62 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %92, i32 0, i32 5
  %height = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents62, i32 0, i32 3
  store i32 %conv61, i32* %height, align 4
  br label %sw.epilog.63

sw.epilog.63:                                     ; preds = %sw.epilog.42, %sw.bb.53, %sw.bb.52
  %93 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  store %struct._GimpTextLayout* %93, %struct._GimpTextLayout** %retval
  br label %return

return:                                           ; preds = %sw.epilog.63, %if.else.15, %if.else.9
  %94 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %retval
  ret %struct._GimpTextLayout* %94
}

; Function Attrs: nounwind readnone
declare i64 @gimp_text_get_type() #3

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._PangoFontDescription* @pango_font_description_from_string(i8*) #1

; Function Attrs: nounwind readnone
declare i32 @pango_units_from_double(double) #3

declare double @gimp_units_to_points(double, i32, double) #1

declare void @pango_font_description_set_size(%struct._PangoFontDescription*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._PangoContext* @gimp_text_get_pango_context(%struct._GimpText* %text, double %xres, double %yres) #2 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  %xres.addr = alloca double, align 8
  %yres.addr = alloca double, align 8
  %context = alloca %struct._PangoContext*, align 8
  %fontmap = alloca %struct._PangoFontMap*, align 8
  %options = alloca %struct._cairo_font_options*, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  store double %xres, double* %xres.addr, align 8
  store double %yres, double* %yres.addr, align 8
  %call = call %struct._PangoFontMap* @pango_cairo_font_map_new_for_font_type(i32 1)
  store %struct._PangoFontMap* %call, %struct._PangoFontMap** %fontmap, align 8
  %0 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %tobool = icmp ne %struct._PangoFontMap* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %2 = bitcast %struct._PangoFontMap* %1 to %struct._GTypeInstance*
  %call1 = call i64 @pango_cairo_font_map_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call1)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._PangoCairoFontMap*
  %4 = load double, double* %yres.addr, align 8
  call void @pango_cairo_font_map_set_resolution(%struct._PangoCairoFontMap* %3, double %4)
  %5 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %call3 = call %struct._PangoContext* @pango_font_map_create_context(%struct._PangoFontMap* %5)
  store %struct._PangoContext* %call3, %struct._PangoContext** %context, align 8
  %6 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %7 = bitcast %struct._PangoFontMap* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %call4 = call %struct._cairo_font_options* @gimp_text_get_font_options(%struct._GimpText* %8)
  store %struct._cairo_font_options* %call4, %struct._cairo_font_options** %options, align 8
  %9 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %10 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @pango_cairo_context_set_font_options(%struct._PangoContext* %9, %struct._cairo_font_options* %10)
  %11 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_destroy(%struct._cairo_font_options* %11)
  %12 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %language = getelementptr inbounds %struct._GimpText, %struct._GimpText* %12, i32 0, i32 9
  %13 = load i8*, i8** %language, align 8
  %tobool5 = icmp ne i8* %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %14 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %15 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %language7 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %15, i32 0, i32 9
  %16 = load i8*, i8** %language7, align 8
  %call8 = call %struct._PangoLanguage* @pango_language_from_string(i8* %16)
  call void @pango_context_set_language(%struct._PangoContext* %14, %struct._PangoLanguage* %call8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %17 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %base_dir = getelementptr inbounds %struct._GimpText, %struct._GimpText* %17, i32 0, i32 10
  %18 = load i32, i32* %base_dir, align 4
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.end.9
  %19 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  call void @pango_context_set_base_dir(%struct._PangoContext* %19, i32 0)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end.9
  %20 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  call void @pango_context_set_base_dir(%struct._PangoContext* %20, i32 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.9, %sw.bb.10, %sw.bb
  %21 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  ret %struct._PangoContext* %21
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._PangoLayout* @pango_layout_new(%struct._PangoContext*) #1

declare void @pango_layout_set_wrap(%struct._PangoLayout*, i32) #1

declare void @g_object_unref(i8*) #1

declare void @pango_layout_set_font_description(%struct._PangoLayout*, %struct._PangoFontDescription*) #1

declare void @pango_font_description_free(%struct._PangoFontDescription*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layout_set_markup(%struct._GimpTextLayout* %layout, %struct._GError** %error) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %text = alloca %struct._GimpText*, align 8
  %open_tag = alloca i8*, align 8
  %content = alloca i8*, align 8
  %close_tag = alloca i8*, align 8
  %tagged = alloca i8*, align 8
  %markup = alloca i8*, align 8
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %text1 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %0, i32 0, i32 1
  %1 = load %struct._GimpText*, %struct._GimpText** %text1, align 8
  store %struct._GimpText* %1, %struct._GimpText** %text, align 8
  store i8* null, i8** %open_tag, align 8
  store i8* null, i8** %content, align 8
  store i8* null, i8** %close_tag, align 8
  %2 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup2 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %2, i32 0, i32 2
  %3 = load i8*, i8** %markup2, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %markup3 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %4, i32 0, i32 2
  %5 = load i8*, i8** %markup3, align 8
  %call = call i32 @gimp_text_layout_split_markup(i8* %5, i8** %open_tag, i8** %content, i8** %close_tag)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %call6 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call6, i8** %open_tag, align 8
  %call7 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call7, i8** %content, align 8
  %call8 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call8, i8** %close_tag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.19

if.else:                                          ; preds = %entry
  %call9 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call9, i8** %open_tag, align 8
  %call10 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call10, i8** %close_tag, align 8
  %6 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text11 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %6, i32 0, i32 1
  %7 = load i8*, i8** %text11, align 8
  %tobool12 = icmp ne i8* %7, null
  br i1 %tobool12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.else
  %8 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %text14 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %8, i32 0, i32 1
  %9 = load i8*, i8** %text14, align 8
  %call15 = call i8* @g_markup_escape_text(i8* %9, i64 -1)
  store i8* %call15, i8** %content, align 8
  br label %if.end.18

if.else.16:                                       ; preds = %if.else
  %call17 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call17, i8** %content, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %10 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %11 = load i8*, i8** %content, align 8
  %call20 = call i8* @gimp_text_layout_apply_tags(%struct._GimpTextLayout* %10, i8* %11)
  store i8* %call20, i8** %tagged, align 8
  %12 = load i8*, i8** %content, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %open_tag, align 8
  %14 = load i8*, i8** %tagged, align 8
  %15 = load i8*, i8** %close_tag, align 8
  %call21 = call noalias i8* (i8*, ...) @g_strconcat(i8* %13, i8* %14, i8* %15, i8* null)
  store i8* %call21, i8** %markup, align 8
  %16 = load i8*, i8** %open_tag, align 8
  call void @g_free(i8* %16)
  %17 = load i8*, i8** %tagged, align 8
  call void @g_free(i8* %17)
  %18 = load i8*, i8** %close_tag, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %markup, align 8
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @pango_parse_markup(i8* %19, i32 -1, i32 0, %struct._PangoAttrList** null, i8** null, i32* null, %struct._GError** %20)
  %cmp = icmp eq i32 %call22, 0
  br i1 %cmp, label %if.then.23, label %if.else.35

if.then.23:                                       ; preds = %if.end.19
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool24 = icmp ne %struct._GError** %21, null
  br i1 %tobool24, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.then.23
  %22 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %23 = load %struct._GError*, %struct._GError** %22, align 8
  %tobool25 = icmp ne %struct._GError* %23, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.34

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %25 = load %struct._GError*, %struct._GError** %24, align 8
  %domain = getelementptr inbounds %struct._GError, %struct._GError* %25, i32 0, i32 0
  %26 = load i32, i32* %domain, align 4
  %call27 = call i32 @g_markup_error_quark()
  %cmp28 = icmp eq i32 %26, %call27
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.34

land.lhs.true.29:                                 ; preds = %land.lhs.true.26
  %27 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %28 = load %struct._GError*, %struct._GError** %27, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %28, i32 0, i32 1
  %29 = load i32, i32* %code, align 4
  %cmp30 = icmp eq i32 %29, 5
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %land.lhs.true.29
  %30 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %31 = load %struct._GError*, %struct._GError** %30, align 8
  call void @g_error_free(%struct._GError* %31)
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  store %struct._GError* null, %struct._GError** %32, align 8
  %33 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call32 = call i32 @gimp_error_quark() #7
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.10, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %33, i32 %call32, i32 0, i8* %call33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %land.lhs.true.29, %land.lhs.true.26, %land.lhs.true, %if.then.23
  br label %if.end.37

if.else.35:                                       ; preds = %if.end.19
  %34 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %layout36 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %34, i32 0, i32 4
  %35 = load %struct._PangoLayout*, %struct._PangoLayout** %layout36, align 8
  %36 = load i8*, i8** %markup, align 8
  call void @pango_layout_set_markup(%struct._PangoLayout* %35, i8* %36, i32 -1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.end.34
  %37 = load i8*, i8** %markup, align 8
  call void @g_free(i8* %37)
  ret void
}

declare void @pango_layout_set_justify(%struct._PangoLayout*, i32) #1

declare void @pango_layout_set_alignment(%struct._PangoLayout*, i32) #1

declare void @pango_layout_set_width(%struct._PangoLayout*, i32) #1

declare double @gimp_units_to_pixels(double, i32, double) #1

declare void @pango_layout_set_indent(%struct._PangoLayout*, i32) #1

declare void @pango_layout_set_spacing(%struct._PangoLayout*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layout_position(%struct._GimpTextLayout* %layout) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %ink = alloca %struct._PangoRectangle, align 4
  %logical = alloca %struct._PangoRectangle, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %align = alloca i32, align 4
  %base_dir = alloca i32, align 4
  %width92 = alloca i32, align 4
  %border131 = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %0, i32 0, i32 5
  %x = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents, i32 0, i32 0
  store i32 0, i32* %x, align 4
  %1 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents1 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %1, i32 0, i32 5
  %y = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents1, i32 0, i32 1
  store i32 0, i32* %y, align 4
  %2 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents2 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %2, i32 0, i32 5
  %width = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents2, i32 0, i32 2
  store i32 0, i32* %width, align 4
  %3 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents3 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %3, i32 0, i32 5
  %height = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents3, i32 0, i32 3
  store i32 0, i32* %height, align 4
  %4 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %layout4 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %4, i32 0, i32 4
  %5 = load %struct._PangoLayout*, %struct._PangoLayout** %layout4, align 8
  call void @pango_layout_get_pixel_extents(%struct._PangoLayout* %5, %struct._PangoRectangle* %ink, %struct._PangoRectangle* %logical)
  %width5 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 2
  %6 = load i32, i32* %width5, align 4
  %conv = sitofp i32 %6 to double
  %7 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %xres = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %7, i32 0, i32 2
  %8 = load double, double* %xres, align 8
  %mul = fmul double %conv, %8
  %9 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %yres = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %9, i32 0, i32 3
  %10 = load double, double* %yres, align 8
  %div = fdiv double %mul, %10
  %call = call double @ceil(double %div) #7
  %conv6 = fptosi double %call to i32
  %width7 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 2
  store i32 %conv6, i32* %width7, align 4
  %width8 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %11 = load i32, i32* %width8, align 4
  %conv9 = sitofp i32 %11 to double
  %12 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %xres10 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %12, i32 0, i32 2
  %13 = load double, double* %xres10, align 8
  %mul11 = fmul double %conv9, %13
  %14 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %yres12 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %14, i32 0, i32 3
  %15 = load double, double* %yres12, align 8
  %div13 = fdiv double %mul11, %15
  %call14 = call double @ceil(double %div13) #7
  %conv15 = fptosi double %call14 to i32
  %width16 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  store i32 %conv15, i32* %width16, align 4
  %width17 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 2
  %16 = load i32, i32* %width17, align 4
  %cmp = icmp slt i32 %16, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %height19 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 3
  %17 = load i32, i32* %height19, align 4
  %cmp20 = icmp slt i32 %17, 1
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.149

if.end:                                           ; preds = %lor.lhs.false
  %x22 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 0
  %18 = load i32, i32* %x22, align 4
  %x23 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %19 = load i32, i32* %x23, align 4
  %cmp24 = icmp slt i32 %18, %19
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %x26 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 0
  %20 = load i32, i32* %x26, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %x27 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %21 = load i32, i32* %x27, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, i32* %x1, align 4
  %y28 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 1
  %22 = load i32, i32* %y28, align 4
  %y29 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 1
  %23 = load i32, i32* %y29, align 4
  %cmp30 = icmp slt i32 %22, %23
  br i1 %cmp30, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %cond.end
  %y33 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 1
  %24 = load i32, i32* %y33, align 4
  br label %cond.end.36

cond.false.34:                                    ; preds = %cond.end
  %y35 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 1
  %25 = load i32, i32* %y35, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.32
  %cond37 = phi i32 [ %24, %cond.true.32 ], [ %25, %cond.false.34 ]
  store i32 %cond37, i32* %y1, align 4
  %x38 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 0
  %26 = load i32, i32* %x38, align 4
  %width39 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 2
  %27 = load i32, i32* %width39, align 4
  %add = add nsw i32 %26, %27
  %x40 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %28 = load i32, i32* %x40, align 4
  %width41 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %29 = load i32, i32* %width41, align 4
  %add42 = add nsw i32 %28, %29
  %cmp43 = icmp sgt i32 %add, %add42
  br i1 %cmp43, label %cond.true.45, label %cond.false.49

cond.true.45:                                     ; preds = %cond.end.36
  %x46 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 0
  %30 = load i32, i32* %x46, align 4
  %width47 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 2
  %31 = load i32, i32* %width47, align 4
  %add48 = add nsw i32 %30, %31
  br label %cond.end.53

cond.false.49:                                    ; preds = %cond.end.36
  %x50 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 0
  %32 = load i32, i32* %x50, align 4
  %width51 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 2
  %33 = load i32, i32* %width51, align 4
  %add52 = add nsw i32 %32, %33
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.49, %cond.true.45
  %cond54 = phi i32 [ %add48, %cond.true.45 ], [ %add52, %cond.false.49 ]
  store i32 %cond54, i32* %x2, align 4
  %y55 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 1
  %34 = load i32, i32* %y55, align 4
  %height56 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 3
  %35 = load i32, i32* %height56, align 4
  %add57 = add nsw i32 %34, %35
  %y58 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 1
  %36 = load i32, i32* %y58, align 4
  %height59 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 3
  %37 = load i32, i32* %height59, align 4
  %add60 = add nsw i32 %36, %37
  %cmp61 = icmp sgt i32 %add57, %add60
  br i1 %cmp61, label %cond.true.63, label %cond.false.67

cond.true.63:                                     ; preds = %cond.end.53
  %y64 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 1
  %38 = load i32, i32* %y64, align 4
  %height65 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %ink, i32 0, i32 3
  %39 = load i32, i32* %height65, align 4
  %add66 = add nsw i32 %38, %39
  br label %cond.end.71

cond.false.67:                                    ; preds = %cond.end.53
  %y68 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 1
  %40 = load i32, i32* %y68, align 4
  %height69 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %logical, i32 0, i32 3
  %41 = load i32, i32* %height69, align 4
  %add70 = add nsw i32 %40, %41
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.67, %cond.true.63
  %cond72 = phi i32 [ %add66, %cond.true.63 ], [ %add70, %cond.false.67 ]
  store i32 %cond72, i32* %y2, align 4
  %42 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 0, %42
  %43 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents73 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %43, i32 0, i32 5
  %x74 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents73, i32 0, i32 0
  store i32 %sub, i32* %x74, align 4
  %44 = load i32, i32* %y1, align 4
  %sub75 = sub nsw i32 0, %44
  %45 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents76 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %45, i32 0, i32 5
  %y77 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents76, i32 0, i32 1
  store i32 %sub75, i32* %y77, align 4
  %46 = load i32, i32* %x2, align 4
  %47 = load i32, i32* %x1, align 4
  %sub78 = sub nsw i32 %46, %47
  %48 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents79 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %48, i32 0, i32 5
  %width80 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents79, i32 0, i32 2
  store i32 %sub78, i32* %width80, align 4
  %49 = load i32, i32* %y2, align 4
  %50 = load i32, i32* %y1, align 4
  %sub81 = sub nsw i32 %49, %50
  %51 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents82 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %51, i32 0, i32 5
  %height83 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents82, i32 0, i32 3
  store i32 %sub81, i32* %height83, align 4
  %52 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %layout84 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %52, i32 0, i32 4
  %53 = load %struct._PangoLayout*, %struct._PangoLayout** %layout84, align 8
  %call85 = call i32 @pango_layout_get_width(%struct._PangoLayout* %53)
  %cmp86 = icmp sgt i32 %call85, 0
  br i1 %cmp86, label %if.then.88, label %if.end.126

if.then.88:                                       ; preds = %cond.end.71
  %54 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %layout89 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %54, i32 0, i32 4
  %55 = load %struct._PangoLayout*, %struct._PangoLayout** %layout89, align 8
  %call90 = call i32 @pango_layout_get_alignment(%struct._PangoLayout* %55)
  store i32 %call90, i32* %align, align 4
  %56 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %56, i32 0, i32 1
  %57 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %base_dir91 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %57, i32 0, i32 10
  %58 = load i32, i32* %base_dir91, align 4
  store i32 %58, i32* %base_dir, align 4
  %59 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %layout93 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %59, i32 0, i32 4
  %60 = load %struct._PangoLayout*, %struct._PangoLayout** %layout93, align 8
  call void @pango_layout_get_pixel_size(%struct._PangoLayout* %60, i32* %width92, i32* null)
  %61 = load i32, i32* %base_dir, align 4
  %cmp94 = icmp eq i32 %61, 0
  br i1 %cmp94, label %land.lhs.true, label %lor.lhs.false.98

land.lhs.true:                                    ; preds = %if.then.88
  %62 = load i32, i32* %align, align 4
  %cmp96 = icmp eq i32 %62, 2
  br i1 %cmp96, label %if.then.104, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true, %if.then.88
  %63 = load i32, i32* %base_dir, align 4
  %cmp99 = icmp eq i32 %63, 1
  br i1 %cmp99, label %land.lhs.true.101, label %if.else

land.lhs.true.101:                                ; preds = %lor.lhs.false.98
  %64 = load i32, i32* %align, align 4
  %cmp102 = icmp eq i32 %64, 0
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %land.lhs.true.101, %land.lhs.true
  %65 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %layout105 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %65, i32 0, i32 4
  %66 = load %struct._PangoLayout*, %struct._PangoLayout** %layout105, align 8
  %call106 = call i32 @pango_layout_get_width(%struct._PangoLayout* %66)
  %add107 = add nsw i32 %call106, 512
  %shr = ashr i32 %add107, 10
  %67 = load i32, i32* %width92, align 4
  %sub108 = sub nsw i32 %shr, %67
  %68 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents109 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %68, i32 0, i32 5
  %x110 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents109, i32 0, i32 0
  %69 = load i32, i32* %x110, align 4
  %add111 = add nsw i32 %69, %sub108
  store i32 %add111, i32* %x110, align 4
  br label %if.end.125

if.else:                                          ; preds = %land.lhs.true.101, %lor.lhs.false.98
  %70 = load i32, i32* %align, align 4
  %cmp112 = icmp eq i32 %70, 1
  br i1 %cmp112, label %if.then.114, label %if.end.124

if.then.114:                                      ; preds = %if.else
  %71 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %layout115 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %71, i32 0, i32 4
  %72 = load %struct._PangoLayout*, %struct._PangoLayout** %layout115, align 8
  %call116 = call i32 @pango_layout_get_width(%struct._PangoLayout* %72)
  %add117 = add nsw i32 %call116, 512
  %shr118 = ashr i32 %add117, 10
  %73 = load i32, i32* %width92, align 4
  %sub119 = sub nsw i32 %shr118, %73
  %div120 = sdiv i32 %sub119, 2
  %74 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents121 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %74, i32 0, i32 5
  %x122 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents121, i32 0, i32 0
  %75 = load i32, i32* %x122, align 4
  %add123 = add nsw i32 %75, %div120
  store i32 %add123, i32* %x122, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.114, %if.else
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.104
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %cond.end.71
  %76 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %text127 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %76, i32 0, i32 1
  %77 = load %struct._GimpText*, %struct._GimpText** %text127, align 8
  %border = getelementptr inbounds %struct._GimpText, %struct._GimpText* %77, i32 0, i32 24
  %78 = load double, double* %border, align 8
  %cmp128 = fcmp ogt double %78, 0.000000e+00
  br i1 %cmp128, label %if.then.130, label %if.end.149

if.then.130:                                      ; preds = %if.end.126
  %79 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %text132 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %79, i32 0, i32 1
  %80 = load %struct._GimpText*, %struct._GimpText** %text132, align 8
  %border133 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %80, i32 0, i32 24
  %81 = load double, double* %border133, align 8
  %conv134 = fptosi double %81 to i32
  store i32 %conv134, i32* %border131, align 4
  %82 = load i32, i32* %border131, align 4
  %83 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents135 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %83, i32 0, i32 5
  %x136 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents135, i32 0, i32 0
  %84 = load i32, i32* %x136, align 4
  %add137 = add nsw i32 %84, %82
  store i32 %add137, i32* %x136, align 4
  %85 = load i32, i32* %border131, align 4
  %86 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents138 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %86, i32 0, i32 5
  %y139 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents138, i32 0, i32 1
  %87 = load i32, i32* %y139, align 4
  %add140 = add nsw i32 %87, %85
  store i32 %add140, i32* %y139, align 4
  %88 = load i32, i32* %border131, align 4
  %mul141 = mul nsw i32 2, %88
  %89 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents142 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %89, i32 0, i32 5
  %width143 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents142, i32 0, i32 2
  %90 = load i32, i32* %width143, align 4
  %add144 = add nsw i32 %90, %mul141
  store i32 %add144, i32* %width143, align 4
  %91 = load i32, i32* %border131, align 4
  %mul145 = mul nsw i32 2, %91
  %92 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents146 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %92, i32 0, i32 5
  %height147 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents146, i32 0, i32 3
  %93 = load i32, i32* %height147, align 4
  %add148 = add nsw i32 %93, %mul145
  store i32 %add148, i32* %height147, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then, %if.then.130, %if.end.126
  ret void
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_text_layout_get_size(%struct._GimpTextLayout* %layout, i32* %width, i32* %height) #2 {
entry:
  %retval = alloca i32, align 4
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_layout_get_size, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %width.addr, align 8
  %tobool11 = icmp ne i32* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %14, i32 0, i32 5
  %width13 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents, i32 0, i32 2
  %15 = load i32, i32* %width13, align 4
  %16 = load i32*, i32** %width.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i32*, i32** %height.addr, align 8
  %tobool15 = icmp ne i32* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %18 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents17 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %18, i32 0, i32 5
  %height18 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents17, i32 0, i32 3
  %19 = load i32, i32* %height18, align 4
  %20 = load i32*, i32** %height.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.14
  %21 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents20 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %21, i32 0, i32 5
  %width21 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents20, i32 0, i32 2
  %22 = load i32, i32* %width21, align 4
  %cmp22 = icmp sgt i32 %22, 0
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.19
  %23 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents23 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %23, i32 0, i32 5
  %height24 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents23, i32 0, i32 3
  %24 = load i32, i32* %height24, align 4
  %cmp25 = icmp sgt i32 %24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.19
  %25 = phi i1 [ false, %if.end.19 ], [ %cmp25, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_get_offsets(%struct._GimpTextLayout* %layout, i32* %x, i32* %y) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_text_layout_get_offsets, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32*, i32** %x.addr, align 8
  %tobool11 = icmp ne i32* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %14, i32 0, i32 5
  %x13 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents, i32 0, i32 0
  %15 = load i32, i32* %x13, align 4
  %16 = load i32*, i32** %x.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load i32*, i32** %y.addr, align 8
  %tobool15 = icmp ne i32* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.14
  %18 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %extents17 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %18, i32 0, i32 5
  %y18 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %extents17, i32 0, i32 1
  %19 = load i32, i32* %y18, align 4
  %20 = load i32*, i32** %y.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.then.16, %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_get_resolution(%struct._GimpTextLayout* %layout, double* %xres, double* %yres) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %xres.addr = alloca double*, align 8
  %yres.addr = alloca double*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store double* %xres, double** %xres.addr, align 8
  store double* %yres, double** %yres.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_text_layout_get_resolution, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.18

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double*, double** %xres.addr, align 8
  %tobool11 = icmp ne double* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %xres13 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %14, i32 0, i32 2
  %15 = load double, double* %xres13, align 8
  %16 = load double*, double** %xres.addr, align 8
  store double %15, double* %16, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load double*, double** %yres.addr, align 8
  %tobool15 = icmp ne double* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %18 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %yres17 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %18, i32 0, i32 3
  %19 = load double, double* %yres17, align 8
  %20 = load double*, double** %yres.addr, align 8
  store double %19, double* %20, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.9, %if.then.16, %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpText* @gimp_text_layout_get_text(%struct._GimpTextLayout* %layout) #2 {
entry:
  %retval = alloca %struct._GimpText*, align 8
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_text_layout_get_text, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  store %struct._GimpText* null, %struct._GimpText** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %text = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %13, i32 0, i32 1
  %14 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  store %struct._GimpText* %14, %struct._GimpText** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._GimpText*, %struct._GimpText** %retval
  ret %struct._GimpText* %15
}

; Function Attrs: nounwind uwtable
define %struct._PangoLayout* @gimp_text_layout_get_pango_layout(%struct._GimpTextLayout* %layout) #2 {
entry:
  %retval = alloca %struct._PangoLayout*, align 8
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_text_layout_get_pango_layout, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  store %struct._PangoLayout* null, %struct._PangoLayout** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %layout11 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %13, i32 0, i32 4
  %14 = load %struct._PangoLayout*, %struct._PangoLayout** %layout11, align 8
  store %struct._PangoLayout* %14, %struct._PangoLayout** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._PangoLayout*, %struct._PangoLayout** %retval
  ret %struct._PangoLayout* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_get_transform(%struct._GimpTextLayout* %layout, %struct._cairo_matrix* %matrix) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %matrix.addr = alloca %struct._cairo_matrix*, align 8
  %text = alloca %struct._GimpText*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  %norm = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store %struct._cairo_matrix* %matrix, %struct._cairo_matrix** %matrix.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_layout_get_transform, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._cairo_matrix*, %struct._cairo_matrix** %matrix.addr, align 8
  %cmp12 = icmp ne %struct._cairo_matrix* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_text_layout_get_transform, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %call17 = call %struct._GimpText* @gimp_text_layout_get_text(%struct._GimpTextLayout* %14)
  store %struct._GimpText* %call17, %struct._GimpText** %text, align 8
  %15 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  call void @gimp_text_layout_get_resolution(%struct._GimpTextLayout* %15, double* %xres, double* %yres)
  %16 = load double, double* %yres, align 8
  %div = fdiv double 1.000000e+00, %16
  %17 = load double, double* %xres, align 8
  %mul = fmul double %div, %17
  store double %mul, double* %norm, align 8
  %18 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %transformation = getelementptr inbounds %struct._GimpText, %struct._GimpText* %18, i32 0, i32 21
  %coeff = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %transformation, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff, i32 0, i64 0
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  %19 = load double, double* %arrayidx18, align 8
  %20 = load double, double* %norm, align 8
  %mul19 = fmul double %19, %20
  %21 = load %struct._cairo_matrix*, %struct._cairo_matrix** %matrix.addr, align 8
  %xx = getelementptr inbounds %struct._cairo_matrix, %struct._cairo_matrix* %21, i32 0, i32 0
  store double %mul19, double* %xx, align 8
  %22 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %transformation20 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %22, i32 0, i32 21
  %coeff21 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %transformation20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff21, i32 0, i64 0
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx22, i32 0, i64 1
  %23 = load double, double* %arrayidx23, align 8
  %mul24 = fmul double %23, 1.000000e+00
  %24 = load %struct._cairo_matrix*, %struct._cairo_matrix** %matrix.addr, align 8
  %xy = getelementptr inbounds %struct._cairo_matrix, %struct._cairo_matrix* %24, i32 0, i32 2
  store double %mul24, double* %xy, align 8
  %25 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %transformation25 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %25, i32 0, i32 21
  %coeff26 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %transformation25, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff26, i32 0, i64 1
  %arrayidx28 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx27, i32 0, i64 0
  %26 = load double, double* %arrayidx28, align 8
  %27 = load double, double* %norm, align 8
  %mul29 = fmul double %26, %27
  %28 = load %struct._cairo_matrix*, %struct._cairo_matrix** %matrix.addr, align 8
  %yx = getelementptr inbounds %struct._cairo_matrix, %struct._cairo_matrix* %28, i32 0, i32 1
  store double %mul29, double* %yx, align 8
  %29 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %transformation30 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %29, i32 0, i32 21
  %coeff31 = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %transformation30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff31, i32 0, i64 1
  %arrayidx33 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx32, i32 0, i64 1
  %30 = load double, double* %arrayidx33, align 8
  %mul34 = fmul double %30, 1.000000e+00
  %31 = load %struct._cairo_matrix*, %struct._cairo_matrix** %matrix.addr, align 8
  %yy = getelementptr inbounds %struct._cairo_matrix, %struct._cairo_matrix* %31, i32 0, i32 3
  store double %mul34, double* %yy, align 8
  %32 = load %struct._cairo_matrix*, %struct._cairo_matrix** %matrix.addr, align 8
  %x0 = getelementptr inbounds %struct._cairo_matrix, %struct._cairo_matrix* %32, i32 0, i32 4
  store double 0.000000e+00, double* %x0, align 8
  %33 = load %struct._cairo_matrix*, %struct._cairo_matrix** %matrix.addr, align 8
  %y0 = getelementptr inbounds %struct._cairo_matrix, %struct._cairo_matrix* %33, i32 0, i32 5
  store double 0.000000e+00, double* %y0, align 8
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_transform_rect(%struct._GimpTextLayout* %layout, %struct._PangoRectangle* %rect) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %rect.addr = alloca %struct._PangoRectangle*, align 8
  %matrix = alloca %struct._cairo_matrix, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store %struct._PangoRectangle* %rect, %struct._PangoRectangle** %rect.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_text_layout_transform_rect, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %cmp12 = icmp ne %struct._PangoRectangle* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_text_layout_transform_rect, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %x17 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %14, i32 0, i32 0
  %15 = load i32, i32* %x17, align 4
  %conv = sitofp i32 %15 to double
  store double %conv, double* %x, align 8
  %16 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %y18 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %16, i32 0, i32 1
  %17 = load i32, i32* %y18, align 4
  %conv19 = sitofp i32 %17 to double
  store double %conv19, double* %y, align 8
  %18 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %width20 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %18, i32 0, i32 2
  %19 = load i32, i32* %width20, align 4
  %conv21 = sitofp i32 %19 to double
  store double %conv21, double* %width, align 8
  %20 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %height22 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %20, i32 0, i32 3
  %21 = load i32, i32* %height22, align 4
  %conv23 = sitofp i32 %21 to double
  store double %conv23, double* %height, align 8
  %22 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  call void @gimp_text_layout_get_transform(%struct._GimpTextLayout* %22, %struct._cairo_matrix* %matrix)
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %matrix, double* %x, double* %y)
  call void @cairo_matrix_transform_distance(%struct._cairo_matrix* %matrix, double* %width, double* %height)
  %23 = load double, double* %x, align 8
  %add = fadd double %23, 5.000000e-01
  %conv24 = fptosi double %add to i32
  %24 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %x25 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %24, i32 0, i32 0
  store i32 %conv24, i32* %x25, align 4
  %25 = load double, double* %y, align 8
  %add26 = fadd double %25, 5.000000e-01
  %conv27 = fptosi double %add26 to i32
  %26 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %y28 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %26, i32 0, i32 1
  store i32 %conv27, i32* %y28, align 4
  %27 = load double, double* %width, align 8
  %add29 = fadd double %27, 5.000000e-01
  %conv30 = fptosi double %add29 to i32
  %28 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %width31 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %28, i32 0, i32 2
  store i32 %conv30, i32* %width31, align 4
  %29 = load double, double* %height, align 8
  %add32 = fadd double %29, 5.000000e-01
  %conv33 = fptosi double %add32 to i32
  %30 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %height34 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %30, i32 0, i32 3
  store i32 %conv33, i32* %height34, align 4
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

declare void @cairo_matrix_transform_point(%struct._cairo_matrix*, double*, double*) #1

declare void @cairo_matrix_transform_distance(%struct._cairo_matrix*, double*, double*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_transform_point(%struct._GimpTextLayout* %layout, double* %x, double* %y) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %matrix = alloca %struct._cairo_matrix, align 8
  %_x = alloca double, align 8
  %_y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double 0.000000e+00, double* %_x, align 8
  store double 0.000000e+00, double* %_y, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_text_layout_transform_point, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double*, double** %x.addr, align 8
  %tobool11 = icmp ne double* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %14 = load double*, double** %x.addr, align 8
  %15 = load double, double* %14, align 8
  store double %15, double* %_x, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %16 = load double*, double** %y.addr, align 8
  %tobool14 = icmp ne double* %16, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %17 = load double*, double** %y.addr, align 8
  %18 = load double, double* %17, align 8
  store double %18, double* %_y, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %19 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  call void @gimp_text_layout_get_transform(%struct._GimpTextLayout* %19, %struct._cairo_matrix* %matrix)
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %matrix, double* %_x, double* %_y)
  %20 = load double*, double** %x.addr, align 8
  %tobool17 = icmp ne double* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %21 = load double, double* %_x, align 8
  %22 = load double*, double** %x.addr, align 8
  store double %21, double* %22, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %23 = load double*, double** %y.addr, align 8
  %tobool20 = icmp ne double* %23, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %24 = load double, double* %_y, align 8
  %25 = load double*, double** %y.addr, align 8
  store double %24, double* %25, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.then.21, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_transform_distance(%struct._GimpTextLayout* %layout, double* %x, double* %y) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %matrix = alloca %struct._cairo_matrix, align 8
  %_x = alloca double, align 8
  %_y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double 0.000000e+00, double* %_x, align 8
  store double 0.000000e+00, double* %_y, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_text_layout_transform_distance, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.22

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double*, double** %x.addr, align 8
  %tobool11 = icmp ne double* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %14 = load double*, double** %x.addr, align 8
  %15 = load double, double* %14, align 8
  store double %15, double* %_x, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %16 = load double*, double** %y.addr, align 8
  %tobool14 = icmp ne double* %16, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %17 = load double*, double** %y.addr, align 8
  %18 = load double, double* %17, align 8
  store double %18, double* %_y, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %19 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  call void @gimp_text_layout_get_transform(%struct._GimpTextLayout* %19, %struct._cairo_matrix* %matrix)
  call void @cairo_matrix_transform_distance(%struct._cairo_matrix* %matrix, double* %_x, double* %_y)
  %20 = load double*, double** %x.addr, align 8
  %tobool17 = icmp ne double* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %21 = load double, double* %_x, align 8
  %22 = load double*, double** %x.addr, align 8
  store double %21, double* %22, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %23 = load double*, double** %y.addr, align 8
  %tobool20 = icmp ne double* %23, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %24 = load double, double* %_y, align 8
  %25 = load double*, double** %y.addr, align 8
  store double %24, double* %25, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.9, %if.then.21, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_untransform_rect(%struct._GimpTextLayout* %layout, %struct._PangoRectangle* %rect) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %rect.addr = alloca %struct._PangoRectangle*, align 8
  %matrix = alloca %struct._cairo_matrix, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store %struct._PangoRectangle* %rect, %struct._PangoRectangle** %rect.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_text_layout_untransform_rect, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.39

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %cmp12 = icmp ne %struct._PangoRectangle* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_text_layout_untransform_rect, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.39

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %x17 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %14, i32 0, i32 0
  %15 = load i32, i32* %x17, align 4
  %conv = sitofp i32 %15 to double
  store double %conv, double* %x, align 8
  %16 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %y18 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %16, i32 0, i32 1
  %17 = load i32, i32* %y18, align 4
  %conv19 = sitofp i32 %17 to double
  store double %conv19, double* %y, align 8
  %18 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %width20 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %18, i32 0, i32 2
  %19 = load i32, i32* %width20, align 4
  %conv21 = sitofp i32 %19 to double
  store double %conv21, double* %width, align 8
  %20 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %height22 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %20, i32 0, i32 3
  %21 = load i32, i32* %height22, align 4
  %conv23 = sitofp i32 %21 to double
  store double %conv23, double* %height, align 8
  %22 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  call void @gimp_text_layout_get_transform(%struct._GimpTextLayout* %22, %struct._cairo_matrix* %matrix)
  %call24 = call i32 @cairo_matrix_invert(%struct._cairo_matrix* %matrix)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %do.end.16
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %matrix, double* %x, double* %y)
  call void @cairo_matrix_transform_distance(%struct._cairo_matrix* %matrix, double* %width, double* %height)
  %23 = load double, double* %x, align 8
  %add = fadd double %23, 5.000000e-01
  %conv28 = fptosi double %add to i32
  %24 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %x29 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %24, i32 0, i32 0
  store i32 %conv28, i32* %x29, align 4
  %25 = load double, double* %y, align 8
  %add30 = fadd double %25, 5.000000e-01
  %conv31 = fptosi double %add30 to i32
  %26 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %y32 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %26, i32 0, i32 1
  store i32 %conv31, i32* %y32, align 4
  %27 = load double, double* %width, align 8
  %add33 = fadd double %27, 5.000000e-01
  %conv34 = fptosi double %add33 to i32
  %28 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %width35 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %28, i32 0, i32 2
  store i32 %conv34, i32* %width35, align 4
  %29 = load double, double* %height, align 8
  %add36 = fadd double %29, 5.000000e-01
  %conv37 = fptosi double %add36 to i32
  %30 = load %struct._PangoRectangle*, %struct._PangoRectangle** %rect.addr, align 8
  %height38 = getelementptr inbounds %struct._PangoRectangle, %struct._PangoRectangle* %30, i32 0, i32 3
  store i32 %conv37, i32* %height38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.9, %if.else.14, %if.then.27, %do.end.16
  ret void
}

declare i32 @cairo_matrix_invert(%struct._cairo_matrix*) #1

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_untransform_point(%struct._GimpTextLayout* %layout, double* %x, double* %y) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %matrix = alloca %struct._cairo_matrix, align 8
  %_x = alloca double, align 8
  %_y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double 0.000000e+00, double* %_x, align 8
  store double 0.000000e+00, double* %_y, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_text_layout_untransform_point, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.26

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double*, double** %x.addr, align 8
  %tobool11 = icmp ne double* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %14 = load double*, double** %x.addr, align 8
  %15 = load double, double* %14, align 8
  store double %15, double* %_x, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %16 = load double*, double** %y.addr, align 8
  %tobool14 = icmp ne double* %16, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %17 = load double*, double** %y.addr, align 8
  %18 = load double, double* %17, align 8
  store double %18, double* %_y, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %19 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  call void @gimp_text_layout_get_transform(%struct._GimpTextLayout* %19, %struct._cairo_matrix* %matrix)
  %call17 = call i32 @cairo_matrix_invert(%struct._cairo_matrix* %matrix)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %if.end.16
  call void @cairo_matrix_transform_point(%struct._cairo_matrix* %matrix, double* %_x, double* %_y)
  %20 = load double*, double** %x.addr, align 8
  %tobool20 = icmp ne double* %20, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.19
  %21 = load double, double* %_x, align 8
  %22 = load double*, double** %x.addr, align 8
  store double %21, double* %22, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.19
  %23 = load double*, double** %y.addr, align 8
  %tobool23 = icmp ne double* %23, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %24 = load double, double* %_y, align 8
  %25 = load double*, double** %y.addr, align 8
  store double %24, double* %25, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.9, %if.end.25, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_text_layout_untransform_distance(%struct._GimpTextLayout* %layout, double* %x, double* %y) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %matrix = alloca %struct._cairo_matrix, align 8
  %_x = alloca double, align 8
  %_y = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double 0.000000e+00, double* %_x, align 8
  store double 0.000000e+00, double* %_y, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %1 = bitcast %struct._GimpTextLayout* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_text_layout_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.gimp_text_layout_untransform_distance, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.26

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load double*, double** %x.addr, align 8
  %tobool11 = icmp ne double* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.end
  %14 = load double*, double** %x.addr, align 8
  %15 = load double, double* %14, align 8
  store double %15, double* %_x, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %16 = load double*, double** %y.addr, align 8
  %tobool14 = icmp ne double* %16, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %17 = load double*, double** %y.addr, align 8
  %18 = load double, double* %17, align 8
  store double %18, double* %_y, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %19 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  call void @gimp_text_layout_get_transform(%struct._GimpTextLayout* %19, %struct._cairo_matrix* %matrix)
  %call17 = call i32 @cairo_matrix_invert(%struct._cairo_matrix* %matrix)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.26

if.then.19:                                       ; preds = %if.end.16
  call void @cairo_matrix_transform_distance(%struct._cairo_matrix* %matrix, double* %_x, double* %_y)
  %20 = load double*, double** %x.addr, align 8
  %tobool20 = icmp ne double* %20, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.19
  %21 = load double, double* %_x, align 8
  %22 = load double*, double** %x.addr, align 8
  store double %21, double* %22, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.then.19
  %23 = load double*, double** %y.addr, align 8
  %tobool23 = icmp ne double* %23, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %24 = load double, double* %_y, align 8
  %25 = load double*, double** %y.addr, align 8
  store double %24, double* %25, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.9, %if.end.25, %if.end.16
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layout_class_init(%struct._GimpTextLayoutClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpTextLayoutClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpTextLayoutClass* %klass, %struct._GimpTextLayoutClass** %klass.addr, align 8
  %0 = load %struct._GimpTextLayoutClass*, %struct._GimpTextLayoutClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTextLayoutClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_text_layout_finalize, void (%struct._GObject*)** %finalize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_text_layout_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %layout = alloca %struct._GimpTextLayout*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_layout_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextLayout*
  store %struct._GimpTextLayout* %2, %struct._GimpTextLayout** %layout, align 8
  %3 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %text = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %3, i32 0, i32 1
  %4 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %tobool = icmp ne %struct._GimpText* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %text2 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %5, i32 0, i32 1
  %6 = load %struct._GimpText*, %struct._GimpText** %text2, align 8
  %7 = bitcast %struct._GimpText* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %text3 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %8, i32 0, i32 1
  store %struct._GimpText* null, %struct._GimpText** %text3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout4 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %9, i32 0, i32 4
  %10 = load %struct._PangoLayout*, %struct._PangoLayout** %layout4, align 8
  %tobool5 = icmp ne %struct._PangoLayout* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %11 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout7 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %11, i32 0, i32 4
  %12 = load %struct._PangoLayout*, %struct._PangoLayout** %layout7, align 8
  %13 = bitcast %struct._PangoLayout* %12 to i8*
  call void @g_object_unref(i8* %13)
  %14 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout, align 8
  %layout8 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %14, i32 0, i32 4
  store %struct._PangoLayout* null, %struct._PangoLayout** %layout8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  %15 = load i8*, i8** @gimp_text_layout_parent_class, align 8
  %16 = bitcast i8* %15 to %struct._GTypeClass*
  %call10 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %16, i64 80)
  %17 = bitcast %struct._GTypeClass* %call10 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %17, i32 0, i32 6
  %18 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %18(%struct._GObject* %19)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_text_layout_split_markup(i8* %markup, i8** %open_tag, i8** %content, i8** %close_tag) #2 {
entry:
  %retval = alloca i32, align 4
  %markup.addr = alloca i8*, align 8
  %open_tag.addr = alloca i8**, align 8
  %content.addr = alloca i8**, align 8
  %close_tag.addr = alloca i8**, align 8
  %p_open = alloca i8*, align 8
  %p_close = alloca i8*, align 8
  store i8* %markup, i8** %markup.addr, align 8
  store i8** %open_tag, i8*** %open_tag.addr, align 8
  store i8** %content, i8*** %content.addr, align 8
  store i8** %close_tag, i8*** %close_tag.addr, align 8
  %0 = load i8*, i8** %markup.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #8
  store i8* %call, i8** %p_open, align 8
  %1 = load i8*, i8** %p_open, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %markup.addr, align 8
  %3 = load i8*, i8** %p_open, align 8
  %4 = load i8*, i8** %markup.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add i64 %sub.ptr.sub, 8
  %call1 = call noalias i8* @g_strndup(i8* %2, i64 %add)
  %5 = load i8**, i8*** %open_tag.addr, align 8
  store i8* %call1, i8** %5, align 8
  %6 = load i8*, i8** %markup.addr, align 8
  %call2 = call i8* @g_strrstr(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call2, i8** %p_close, align 8
  %7 = load i8*, i8** %p_close, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %8 = load i8**, i8*** %open_tag.addr, align 8
  %9 = load i8*, i8** %8, align 8
  call void @g_free(i8* %9)
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %10 = load i8*, i8** %p_close, align 8
  %call6 = call noalias i8* @g_strdup(i8* %10)
  %11 = load i8**, i8*** %close_tag.addr, align 8
  store i8* %call6, i8** %11, align 8
  %12 = load i8*, i8** %p_open, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 8
  %13 = load i8*, i8** %p_close, align 8
  %cmp = icmp ult i8* %add.ptr, %13
  br i1 %cmp, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %14 = load i8*, i8** %p_open, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 8
  %15 = load i8*, i8** %p_close, align 8
  %16 = load i8*, i8** %p_open, align 8
  %sub.ptr.lhs.cast9 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i8* %16 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %sub = sub i64 %sub.ptr.sub11, 8
  %call12 = call noalias i8* @g_strndup(i8* %add.ptr8, i64 %sub)
  %17 = load i8**, i8*** %content.addr, align 8
  store i8* %call12, i8** %17, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end.5
  %call13 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0))
  %18 = load i8**, i8*** %content.addr, align 8
  store i8* %call13, i8** %18, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.4, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_markup_escape_text(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_text_layout_apply_tags(%struct._GimpTextLayout* %layout, i8* %markup) #2 {
entry:
  %layout.addr = alloca %struct._GimpTextLayout*, align 8
  %markup.addr = alloca i8*, align 8
  %text = alloca %struct._GimpText*, align 8
  %result = alloca i8*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %tmp = alloca i8*, align 8
  store %struct._GimpTextLayout* %layout, %struct._GimpTextLayout** %layout.addr, align 8
  store i8* %markup, i8** %markup.addr, align 8
  %0 = load %struct._GimpTextLayout*, %struct._GimpTextLayout** %layout.addr, align 8
  %text1 = getelementptr inbounds %struct._GimpTextLayout, %struct._GimpTextLayout* %0, i32 0, i32 1
  %1 = load %struct._GimpText*, %struct._GimpText** %text1, align 8
  store %struct._GimpText* %1, %struct._GimpText** %text, align 8
  %2 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %color = getelementptr inbounds %struct._GimpText, %struct._GimpText* %2, i32 0, i32 11
  call void @gimp_rgb_get_uchar(%struct._GimpRGB* %color, i8* %r, i8* %g, i8* %b)
  %3 = load i8, i8* %r, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8, i8* %g, align 1
  %conv2 = zext i8 %4 to i32
  %5 = load i8, i8* %b, align 1
  %conv3 = zext i8 %5 to i32
  %6 = load i8*, i8** %markup.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i32 %conv, i32 %conv2, i32 %conv3, i8* %6)
  store i8* %call, i8** %result, align 8
  %7 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %letter_spacing = getelementptr inbounds %struct._GimpText, %struct._GimpText* %7, i32 0, i32 16
  %8 = load double, double* %letter_spacing, align 8
  %call4 = call double @fabs(double %8) #7
  %cmp = fcmp ogt double %call4, 1.000000e-01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpText*, %struct._GimpText** %text, align 8
  %letter_spacing6 = getelementptr inbounds %struct._GimpText, %struct._GimpText* %9, i32 0, i32 16
  %10 = load double, double* %letter_spacing6, align 8
  %mul = fmul double %10, 1.024000e+03
  %conv7 = fptosi double %mul to i32
  %11 = load i8*, i8** %result, align 8
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0), i32 %conv7, i8* %11)
  store i8* %call8, i8** %tmp, align 8
  %12 = load i8*, i8** %result, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** %tmp, align 8
  store i8* %13, i8** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i8*, i8** %result, align 8
  ret i8* %14
}

declare void @g_free(i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i32 @pango_parse_markup(i8*, i32, i32, %struct._PangoAttrList**, i8**, i32*, %struct._GError**) #1

declare i32 @g_markup_error_quark() #1

declare void @g_error_free(%struct._GError*) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_error_quark() #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare void @pango_layout_set_markup(%struct._PangoLayout*, i8*, i32) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @g_strrstr(i8*, i8*) #1

declare void @gimp_rgb_get_uchar(%struct._GimpRGB*, i8*, i8*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @pango_layout_get_pixel_extents(%struct._PangoLayout*, %struct._PangoRectangle*, %struct._PangoRectangle*) #1

declare i32 @pango_layout_get_width(%struct._PangoLayout*) #1

declare i32 @pango_layout_get_alignment(%struct._PangoLayout*) #1

declare void @pango_layout_get_pixel_size(%struct._PangoLayout*, i32*, i32*) #1

declare %struct._PangoFontMap* @pango_cairo_font_map_new_for_font_type(i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare void @pango_cairo_font_map_set_resolution(%struct._PangoCairoFontMap*, double) #1

; Function Attrs: nounwind readnone
declare i64 @pango_cairo_font_map_get_type() #3

declare %struct._PangoContext* @pango_font_map_create_context(%struct._PangoFontMap*) #1

; Function Attrs: nounwind uwtable
define internal %struct._cairo_font_options* @gimp_text_get_font_options(%struct._GimpText* %text) #2 {
entry:
  %text.addr = alloca %struct._GimpText*, align 8
  %options = alloca %struct._cairo_font_options*, align 8
  store %struct._GimpText* %text, %struct._GimpText** %text.addr, align 8
  %call = call %struct._cairo_font_options* @cairo_font_options_create()
  store %struct._cairo_font_options* %call, %struct._cairo_font_options** %options, align 8
  %0 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  %1 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %antialias = getelementptr inbounds %struct._GimpText, %struct._GimpText* %1, i32 0, i32 6
  %2 = load i32, i32* %antialias, align 4
  %tobool = icmp ne i32 %2, 0
  %cond = select i1 %tobool, i32 0, i32 1
  call void @cairo_font_options_set_antialias(%struct._cairo_font_options* %0, i32 %cond)
  %3 = load %struct._GimpText*, %struct._GimpText** %text.addr, align 8
  %hint_style = getelementptr inbounds %struct._GimpText, %struct._GimpText* %3, i32 0, i32 7
  %4 = load i32, i32* %hint_style, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_hint_style(%struct._cairo_font_options* %5, i32 1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_hint_style(%struct._cairo_font_options* %6, i32 2)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_hint_style(%struct._cairo_font_options* %7, i32 3)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  call void @cairo_font_options_set_hint_style(%struct._cairo_font_options* %8, i32 4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load %struct._cairo_font_options*, %struct._cairo_font_options** %options, align 8
  ret %struct._cairo_font_options* %9
}

declare void @pango_cairo_context_set_font_options(%struct._PangoContext*, %struct._cairo_font_options*) #1

declare void @cairo_font_options_destroy(%struct._cairo_font_options*) #1

declare void @pango_context_set_language(%struct._PangoContext*, %struct._PangoLanguage*) #1

declare %struct._PangoLanguage* @pango_language_from_string(i8*) #1

declare void @pango_context_set_base_dir(%struct._PangoContext*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare %struct._cairo_font_options* @cairo_font_options_create() #1

declare void @cairo_font_options_set_antialias(%struct._cairo_font_options*, i32) #1

declare void @cairo_font_options_set_hint_style(%struct._cairo_font_options*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
