; ModuleID = './app/text/gimpfontlist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpFontListClass = type { %struct._GimpListClass }
%struct._GimpListClass = type { %struct._GimpContainerClass }
%struct._GimpContainerClass = type { %struct._GimpObjectClass, void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*, i32)*, void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i32)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpFontList = type { %struct._GimpList, double, double }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._PangoFontMap = type opaque
%struct._PangoContext = type opaque
%struct._PangoCairoFontMap = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._FcObjectSet = type { i32, i32, i8** }
%struct._FcPattern = type opaque
%struct._FcFontSet = type { i32, i32, %struct._FcPattern** }
%struct._PangoFontDescription = type opaque
%struct._FcConfig = type opaque
%struct._GimpFont = type opaque

@gimp_font_list_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpFontList\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Text\00", align 1
@__func__.gimp_font_list_new = private unnamed_addr constant [19 x i8] c"gimp_font_list_new\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"xresolution > 0.0\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"yresolution > 0.0\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@__func__.gimp_font_list_restore = private unnamed_addr constant [23 x i8] c"gimp_font_list_restore\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"GIMP_IS_FONT_LIST (list)\00", align 1
@.str.7 = private unnamed_addr constant [95 x i8] c"You are using a Pango that has been built against a cairo that lacks the Freetype font backend\00", align 1
@gimp_font_list_parent_class = internal global i8* null, align 8
@GimpFontList_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"slant\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"pango-context\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Sans\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Serif\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Monospace\00", align 1
@gimp_font_list_load_aliases.families = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)], align 16

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_font_list_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_font_list_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_font_list_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_list_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_font_list_class_intern_init to void (i8*, i8*)*), i32 88, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpFontList*)* @gimp_font_list_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_font_list_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_font_list_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_list_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_font_list_parent_class, align 8
  %1 = load i32, i32* @GimpFontList_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpFontList_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpFontListClass*
  call void @gimp_font_list_class_init(%struct._GimpFontListClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_font_list_init(%struct._GimpFontList* %list) #3 {
entry:
  %list.addr = alloca %struct._GimpFontList*, align 8
  store %struct._GimpFontList* %list, %struct._GimpFontList** %list.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_font_list_new(double %xresolution, double %yresolution) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %xresolution.addr = alloca double, align 8
  %yresolution.addr = alloca double, align 8
  %list = alloca %struct._GimpFontList*, align 8
  store double %xresolution, double* %xresolution.addr, align 8
  store double %yresolution, double* %yresolution.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load double, double* %xresolution.addr, align 8
  %cmp = fcmp ogt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_font_list_new, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load double, double* %yresolution.addr, align 8
  %cmp2 = fcmp ogt double %1, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_font_list_new, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call i64 @gimp_font_list_get_type() #6
  %call7 = call i64 @gimp_font_get_type() #6
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 %call7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* null)
  %2 = bitcast i8* %call8 to %struct._GimpFontList*
  store %struct._GimpFontList* %2, %struct._GimpFontList** %list, align 8
  %3 = load double, double* %xresolution.addr, align 8
  %4 = load %struct._GimpFontList*, %struct._GimpFontList** %list, align 8
  %xresolution9 = getelementptr inbounds %struct._GimpFontList, %struct._GimpFontList* %4, i32 0, i32 1
  store double %3, double* %xresolution9, align 8
  %5 = load double, double* %yresolution.addr, align 8
  %6 = load %struct._GimpFontList*, %struct._GimpFontList** %list, align 8
  %yresolution10 = getelementptr inbounds %struct._GimpFontList, %struct._GimpFontList* %6, i32 0, i32 2
  store double %5, double* %yresolution10, align 8
  %7 = load %struct._GimpFontList*, %struct._GimpFontList** %list, align 8
  %8 = bitcast %struct._GimpFontList* %7 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_container_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call11)
  %9 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpContainer*
  store %struct._GimpContainer* %9, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end.6, %if.else.4, %if.else
  %10 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %10
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_font_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind uwtable
define void @gimp_font_list_restore(%struct._GimpFontList* %list) #3 {
entry:
  %list.addr = alloca %struct._GimpFontList*, align 8
  %fontmap = alloca %struct._PangoFontMap*, align 8
  %context = alloca %struct._PangoContext*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpFontList* %list, %struct._GimpFontList** %list.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %1 = bitcast %struct._GimpFontList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_font_list_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_font_list_restore, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._PangoFontMap* @pango_cairo_font_map_new_for_font_type(i32 1)
  store %struct._PangoFontMap* %call11, %struct._PangoFontMap** %fontmap, align 8
  %13 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %tobool12 = icmp ne %struct._PangoFontMap* %13, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %do.end
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.end
  %14 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %15 = bitcast %struct._PangoFontMap* %14 to %struct._GTypeInstance*
  %call15 = call i64 @pango_cairo_font_map_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call15)
  %16 = bitcast %struct._GTypeInstance* %call16 to %struct._PangoCairoFontMap*
  %17 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %yresolution = getelementptr inbounds %struct._GimpFontList, %struct._GimpFontList* %17, i32 0, i32 2
  %18 = load double, double* %yresolution, align 8
  call void @pango_cairo_font_map_set_resolution(%struct._PangoCairoFontMap* %16, double %18)
  %19 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %call17 = call %struct._PangoContext* @pango_font_map_create_context(%struct._PangoFontMap* %19)
  store %struct._PangoContext* %call17, %struct._PangoContext** %context, align 8
  %20 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %21 = bitcast %struct._PangoFontMap* %20 to i8*
  call void @g_object_unref(i8* %21)
  %22 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %23 = bitcast %struct._GimpFontList* %22 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_container_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call18)
  %24 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpContainer*
  call void @gimp_container_freeze(%struct._GimpContainer* %24)
  %25 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %26 = load %struct._PangoFontMap*, %struct._PangoFontMap** %fontmap, align 8
  %27 = bitcast %struct._PangoFontMap* %26 to %struct._GTypeInstance*
  %call20 = call i64 @pango_font_map_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call20)
  %28 = bitcast %struct._GTypeInstance* %call21 to %struct._PangoFontMap*
  %29 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  call void @gimp_font_list_load_names(%struct._GimpFontList* %25, %struct._PangoFontMap* %28, %struct._PangoContext* %29)
  %30 = load %struct._PangoContext*, %struct._PangoContext** %context, align 8
  %31 = bitcast %struct._PangoContext* %30 to i8*
  call void @g_object_unref(i8* %31)
  %32 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %33 = bitcast %struct._GimpFontList* %32 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_list_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call22)
  %34 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpList*
  call void @gimp_list_sort_by_name(%struct._GimpList* %34)
  %35 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %36 = bitcast %struct._GimpFontList* %35 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_container_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call24)
  %37 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpContainer*
  call void @gimp_container_thaw(%struct._GimpContainer* %37)
  br label %return

return:                                           ; preds = %if.end.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare %struct._PangoFontMap* @pango_cairo_font_map_new_for_font_type(i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #3 {
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
declare i64 @pango_cairo_font_map_get_type() #2

declare %struct._PangoContext* @pango_font_map_create_context(%struct._PangoFontMap*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_container_freeze(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_list_load_names(%struct._GimpFontList* %list, %struct._PangoFontMap* %fontmap, %struct._PangoContext* %context) #3 {
entry:
  %list.addr = alloca %struct._GimpFontList*, align 8
  %fontmap.addr = alloca %struct._PangoFontMap*, align 8
  %context.addr = alloca %struct._PangoContext*, align 8
  %os = alloca %struct._FcObjectSet*, align 8
  %pat = alloca %struct._FcPattern*, align 8
  %fontset = alloca %struct._FcFontSet*, align 8
  %i = alloca i32, align 4
  %desc = alloca %struct._PangoFontDescription*, align 8
  store %struct._GimpFontList* %list, %struct._GimpFontList** %list.addr, align 8
  store %struct._PangoFontMap* %fontmap, %struct._PangoFontMap** %fontmap.addr, align 8
  store %struct._PangoContext* %context, %struct._PangoContext** %context.addr, align 8
  %call = call %struct._FcObjectSet* (i8*, ...) @FcObjectSetBuild(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* null)
  store %struct._FcObjectSet* %call, %struct._FcObjectSet** %os, align 8
  %call1 = call %struct._FcPattern* @FcPatternCreate()
  store %struct._FcPattern* %call1, %struct._FcPattern** %pat, align 8
  %0 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  %1 = load %struct._FcObjectSet*, %struct._FcObjectSet** %os, align 8
  %call2 = call %struct._FcFontSet* @FcFontList(%struct._FcConfig* null, %struct._FcPattern* %0, %struct._FcObjectSet* %1)
  store %struct._FcFontSet* %call2, %struct._FcFontSet** %fontset, align 8
  %2 = load %struct._FcPattern*, %struct._FcPattern** %pat, align 8
  call void @FcPatternDestroy(%struct._FcPattern* %2)
  %3 = load %struct._FcObjectSet*, %struct._FcObjectSet** %os, align 8
  call void @FcObjectSetDestroy(%struct._FcObjectSet* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %nfont = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %5, i32 0, i32 0
  %6 = load i32, i32* %nfont, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %fonts = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %8, i32 0, i32 2
  %9 = load %struct._FcPattern**, %struct._FcPattern*** %fonts, align 8
  %arrayidx = getelementptr inbounds %struct._FcPattern*, %struct._FcPattern** %9, i64 %idxprom
  %10 = load %struct._FcPattern*, %struct._FcPattern** %arrayidx, align 8
  %call3 = call %struct._PangoFontDescription* @pango_fc_font_description_from_pattern(%struct._FcPattern* %10, i32 0)
  store %struct._PangoFontDescription* %call3, %struct._PangoFontDescription** %desc, align 8
  %11 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %12 = load %struct._PangoContext*, %struct._PangoContext** %context.addr, align 8
  %13 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  call void @gimp_font_list_add_font(%struct._GimpFontList* %11, %struct._PangoContext* %12, %struct._PangoFontDescription* %13)
  %14 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  %nfont4 = getelementptr inbounds %struct._FcFontSet, %struct._FcFontSet* %16, i32 0, i32 0
  %17 = load i32, i32* %nfont4, align 4
  %cmp5 = icmp sgt i32 %17, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %18 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %19 = load %struct._PangoContext*, %struct._PangoContext** %context.addr, align 8
  call void @gimp_font_list_load_aliases(%struct._GimpFontList* %18, %struct._PangoContext* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %20 = load %struct._FcFontSet*, %struct._FcFontSet** %fontset, align 8
  call void @FcFontSetDestroy(%struct._FcFontSet* %20)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @pango_font_map_get_type() #2

declare void @gimp_list_sort_by_name(%struct._GimpList*) #1

declare void @gimp_container_thaw(%struct._GimpContainer*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_list_class_init(%struct._GimpFontListClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpFontListClass*, align 8
  store %struct._GimpFontListClass* %klass, %struct._GimpFontListClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._FcObjectSet* @FcObjectSetBuild(i8*, ...) #1

declare %struct._FcPattern* @FcPatternCreate() #1

declare %struct._FcFontSet* @FcFontList(%struct._FcConfig*, %struct._FcPattern*, %struct._FcObjectSet*) #1

declare void @FcPatternDestroy(%struct._FcPattern*) #1

declare void @FcObjectSetDestroy(%struct._FcObjectSet*) #1

declare %struct._PangoFontDescription* @pango_fc_font_description_from_pattern(%struct._FcPattern*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_list_add_font(%struct._GimpFontList* %list, %struct._PangoContext* %context, %struct._PangoFontDescription* %desc) #3 {
entry:
  %list.addr = alloca %struct._GimpFontList*, align 8
  %context.addr = alloca %struct._PangoContext*, align 8
  %desc.addr = alloca %struct._PangoFontDescription*, align 8
  %name = alloca i8*, align 8
  %font = alloca %struct._GimpFont*, align 8
  store %struct._GimpFontList* %list, %struct._GimpFontList** %list.addr, align 8
  store %struct._PangoContext* %context, %struct._PangoContext** %context.addr, align 8
  store %struct._PangoFontDescription* %desc, %struct._PangoFontDescription** %desc.addr, align 8
  %0 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc.addr, align 8
  %tobool = icmp ne %struct._PangoFontDescription* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc.addr, align 8
  %call = call i8* @pango_font_description_to_string(%struct._PangoFontDescription* %1)
  store i8* %call, i8** %name, align 8
  %2 = load i8*, i8** %name, align 8
  %call1 = call i32 @g_utf8_validate(i8* %2, i64 -1, i8** null)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %if.end
  %call4 = call i64 @gimp_font_get_type() #6
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct._PangoContext*, %struct._PangoContext** %context.addr, align 8
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), %struct._PangoContext* %4, i8* null)
  %5 = bitcast i8* %call5 to %struct._GimpFont*
  store %struct._GimpFont* %5, %struct._GimpFont** %font, align 8
  %6 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %7 = bitcast %struct._GimpFontList* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_container_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpContainer*
  %9 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %10 = bitcast %struct._GimpFont* %9 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_object_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call8)
  %11 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpObject*
  %call10 = call i32 @gimp_container_add(%struct._GimpContainer* %8, %struct._GimpObject* %11)
  %12 = load %struct._GimpFont*, %struct._GimpFont** %font, align 8
  %13 = bitcast %struct._GimpFont* %12 to i8*
  call void @g_object_unref(i8* %13)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.3, %if.end
  %14 = load i8*, i8** %name, align 8
  call void @g_free(i8* %14)
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  ret void
}

declare void @pango_font_description_free(%struct._PangoFontDescription*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_font_list_load_aliases(%struct._GimpFontList* %list, %struct._PangoContext* %context) #3 {
entry:
  %list.addr = alloca %struct._GimpFontList*, align 8
  %context.addr = alloca %struct._PangoContext*, align 8
  %families = alloca [3 x i8*], align 16
  %i = alloca i32, align 4
  store %struct._GimpFontList* %list, %struct._GimpFontList** %list.addr, align 8
  store %struct._PangoContext* %context, %struct._PangoContext** %context.addr, align 8
  %0 = bitcast [3 x i8*]* %families to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @gimp_font_list_load_aliases.families to i8*), i64 24, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %3 = load %struct._PangoContext*, %struct._PangoContext** %context.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %families, i32 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  call void @gimp_font_list_make_alias(%struct._GimpFontList* %2, %struct._PangoContext* %3, i8* %5, i32 0, i32 0)
  %6 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %7 = load %struct._PangoContext*, %struct._PangoContext** %context.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [3 x i8*], [3 x i8*]* %families, i32 0, i64 %idxprom1
  %9 = load i8*, i8** %arrayidx2, align 8
  call void @gimp_font_list_make_alias(%struct._GimpFontList* %6, %struct._PangoContext* %7, i8* %9, i32 1, i32 0)
  %10 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %11 = load %struct._PangoContext*, %struct._PangoContext** %context.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds [3 x i8*], [3 x i8*]* %families, i32 0, i64 %idxprom3
  %13 = load i8*, i8** %arrayidx4, align 8
  call void @gimp_font_list_make_alias(%struct._GimpFontList* %10, %struct._PangoContext* %11, i8* %13, i32 0, i32 1)
  %14 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %15 = load %struct._PangoContext*, %struct._PangoContext** %context.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds [3 x i8*], [3 x i8*]* %families, i32 0, i64 %idxprom5
  %17 = load i8*, i8** %arrayidx6, align 8
  call void @gimp_font_list_make_alias(%struct._GimpFontList* %14, %struct._PangoContext* %15, i8* %17, i32 1, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @FcFontSetDestroy(%struct._FcFontSet*) #1

declare i8* @pango_font_description_to_string(%struct._PangoFontDescription*) #1

declare i32 @g_utf8_validate(i8*, i64, i8**) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal void @gimp_font_list_make_alias(%struct._GimpFontList* %list, %struct._PangoContext* %context, i8* %family, i32 %bold, i32 %italic) #3 {
entry:
  %list.addr = alloca %struct._GimpFontList*, align 8
  %context.addr = alloca %struct._PangoContext*, align 8
  %family.addr = alloca i8*, align 8
  %bold.addr = alloca i32, align 4
  %italic.addr = alloca i32, align 4
  %desc = alloca %struct._PangoFontDescription*, align 8
  store %struct._GimpFontList* %list, %struct._GimpFontList** %list.addr, align 8
  store %struct._PangoContext* %context, %struct._PangoContext** %context.addr, align 8
  store i8* %family, i8** %family.addr, align 8
  store i32 %bold, i32* %bold.addr, align 4
  store i32 %italic, i32* %italic.addr, align 4
  %call = call %struct._PangoFontDescription* @pango_font_description_new()
  store %struct._PangoFontDescription* %call, %struct._PangoFontDescription** %desc, align 8
  %0 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  %1 = load i8*, i8** %family.addr, align 8
  call void @pango_font_description_set_family(%struct._PangoFontDescription* %0, i8* %1)
  %2 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  %3 = load i32, i32* %italic.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 2, i32 0
  call void @pango_font_description_set_style(%struct._PangoFontDescription* %2, i32 %cond)
  %4 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  call void @pango_font_description_set_variant(%struct._PangoFontDescription* %4, i32 0)
  %5 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  %6 = load i32, i32* %bold.addr, align 4
  %tobool1 = icmp ne i32 %6, 0
  %cond2 = select i1 %tobool1, i32 700, i32 400
  call void @pango_font_description_set_weight(%struct._PangoFontDescription* %5, i32 %cond2)
  %7 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  call void @pango_font_description_set_stretch(%struct._PangoFontDescription* %7, i32 4)
  %8 = load %struct._GimpFontList*, %struct._GimpFontList** %list.addr, align 8
  %9 = load %struct._PangoContext*, %struct._PangoContext** %context.addr, align 8
  %10 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  call void @gimp_font_list_add_font(%struct._GimpFontList* %8, %struct._PangoContext* %9, %struct._PangoFontDescription* %10)
  %11 = load %struct._PangoFontDescription*, %struct._PangoFontDescription** %desc, align 8
  call void @pango_font_description_free(%struct._PangoFontDescription* %11)
  ret void
}

declare %struct._PangoFontDescription* @pango_font_description_new() #1

declare void @pango_font_description_set_family(%struct._PangoFontDescription*, i8*) #1

declare void @pango_font_description_set_style(%struct._PangoFontDescription*, i32) #1

declare void @pango_font_description_set_variant(%struct._PangoFontDescription*, i32) #1

declare void @pango_font_description_set_weight(%struct._PangoFontDescription*, i32) #1

declare void @pango_font_description_set_stretch(%struct._PangoFontDescription*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
