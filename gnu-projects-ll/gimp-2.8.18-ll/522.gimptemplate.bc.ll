; ModuleID = './app/core/gimptemplate.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpTemplateClass = type { %struct._GimpViewableClass }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._GimpParasite = type { i8*, i32, i32, i8* }
%struct._GimpTemplatePrivate = type { i32, i32, i32, double, double, i32, i32, i32, i8*, i8*, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_template_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"GimpTemplate\00", align 1
@gimp_template_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_template_new = private unnamed_addr constant [18 x i8] c"gimp_template_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@__func__.gimp_template_set_from_image = private unnamed_addr constant [29 x i8] c"gimp_template_set_from_image\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"GIMP_IS_TEMPLATE (template)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"gimp-comment\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"xresolution\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"yresolution\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"resolution-unit\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"image-type\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@__func__.gimp_template_get_width = private unnamed_addr constant [24 x i8] c"gimp_template_get_width\00", align 1
@__func__.gimp_template_get_height = private unnamed_addr constant [25 x i8] c"gimp_template_get_height\00", align 1
@__func__.gimp_template_get_unit = private unnamed_addr constant [23 x i8] c"gimp_template_get_unit\00", align 1
@__func__.gimp_template_get_resolution_x = private unnamed_addr constant [31 x i8] c"gimp_template_get_resolution_x\00", align 1
@__func__.gimp_template_get_resolution_y = private unnamed_addr constant [31 x i8] c"gimp_template_get_resolution_y\00", align 1
@__func__.gimp_template_get_resolution_unit = private unnamed_addr constant [34 x i8] c"gimp_template_get_resolution_unit\00", align 1
@__func__.gimp_template_get_image_type = private unnamed_addr constant [29 x i8] c"gimp_template_get_image_type\00", align 1
@__func__.gimp_template_get_fill_type = private unnamed_addr constant [28 x i8] c"gimp_template_get_fill_type\00", align 1
@__func__.gimp_template_get_comment = private unnamed_addr constant [26 x i8] c"gimp_template_get_comment\00", align 1
@__func__.gimp_template_get_initial_size = private unnamed_addr constant [31 x i8] c"gimp_template_get_initial_size\00", align 1
@gimp_template_parent_class = internal global i8* null, align 8
@GimpTemplate_private_offset = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"gimp-template\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"The unit used for coordinate display when not in dot-for-dot mode.\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"The horizontal image resolution.\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"The vertical image resolution.\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"fill-type\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"gimptemplate.c\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"stock-id\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_template_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_template_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_template_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_template_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpTemplate*)* @gimp_template_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_template_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_template_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_template_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_template_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_template_parent_class, align 8
  %1 = load i32, i32* @GimpTemplate_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpTemplate_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpTemplateClass*
  call void @gimp_template_class_init(%struct._GimpTemplateClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_template_init(%struct._GimpTemplate* %template) #3 {
entry:
  %template.addr = alloca %struct._GimpTemplate*, align 8
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpTemplate* @gimp_template_new(i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpTemplate*, align 8
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_template_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpTemplate* null, %struct._GimpTemplate** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i64 @gimp_template_get_type() #6
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %1, i8* null)
  %2 = bitcast i8* %call1 to %struct._GimpTemplate*
  store %struct._GimpTemplate* %2, %struct._GimpTemplate** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %3 = load %struct._GimpTemplate*, %struct._GimpTemplate** %retval
  ret %struct._GimpTemplate* %3
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_template_set_from_image(%struct._GimpTemplate* %template, %struct._GimpImage* %image) #3 {
entry:
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %xresolution = alloca double, align 8
  %yresolution = alloca double, align 8
  %image_type = alloca i32, align 4
  %parasite = alloca %struct._GimpParasite*, align 8
  %comment = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* null, i8** %comment, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_template_set_from_image, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.55

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #6
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #7
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_template_set_from_image, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.55

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %26, double* %xresolution, double* %yresolution)
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call39 = call i32 @gimp_image_base_type(%struct._GimpImage* %27)
  store i32 %call39, i32* %image_type, align 4
  %28 = load i32, i32* %image_type, align 4
  %cmp40 = icmp eq i32 %28, 2
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.38
  store i32 0, i32* %image_type, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.end.38
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call43 = call %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpParasite* %call43, %struct._GimpParasite** %parasite, align 8
  %30 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %tobool44 = icmp ne %struct._GimpParasite* %30, null
  br i1 %tobool44, label %if.then.45, label %if.end.49

if.then.45:                                       ; preds = %if.end.42
  %31 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call46 = call i8* @gimp_parasite_data(%struct._GimpParasite* %31)
  %32 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call47 = call i64 @gimp_parasite_data_size(%struct._GimpParasite* %32)
  %call48 = call noalias i8* @g_strndup(i8* %call46, i64 %call47)
  store i8* %call48, i8** %comment, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.45, %if.end.42
  %33 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %34 = bitcast %struct._GimpTemplate* %33 to i8*
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call50 = call i32 @gimp_image_get_width(%struct._GimpImage* %35)
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call51 = call i32 @gimp_image_get_height(%struct._GimpImage* %36)
  %37 = load double, double* %xresolution, align 8
  %38 = load double, double* %yresolution, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call52 = call i32 @gimp_image_get_unit(%struct._GimpImage* %39)
  %40 = load i32, i32* %image_type, align 4
  %41 = load i8*, i8** %comment, align 8
  call void (i8*, i8*, ...) @g_object_set(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %call50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %call51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), double %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), double %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 %call52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* %41, i8* null)
  %42 = load i8*, i8** %comment, align 8
  %tobool53 = icmp ne i8* %42, null
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.49
  %43 = load i8*, i8** %comment, align 8
  call void @g_free(i8* %43)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.9, %if.else.36, %if.then.54, %if.end.49
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare i32 @gimp_image_base_type(%struct._GimpImage*) #1

declare %struct._GimpParasite* @gimp_image_parasite_find(%struct._GimpImage*, i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @gimp_parasite_data(%struct._GimpParasite*) #1

declare i64 @gimp_parasite_data_size(%struct._GimpParasite*) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_image_get_unit(%struct._GimpImage*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_template_get_width(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca i32, align 4
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_template_get_width, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %width = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 0
  %16 = load i32, i32* %width, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_template_get_height(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca i32, align 4
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_template_get_height, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %height = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 1
  %16 = load i32, i32* %height, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_template_get_unit(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca i32, align 4
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_template_get_unit, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %unit = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 2
  %16 = load i32, i32* %unit, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define double @gimp_template_get_resolution_x(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca double, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_template_get_resolution_x, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %xresolution = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 3
  %16 = load double, double* %xresolution, align 8
  store double %16, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load double, double* %retval
  ret double %17
}

; Function Attrs: nounwind uwtable
define double @gimp_template_get_resolution_y(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca double, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_template_get_resolution_y, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store double 1.000000e+00, double* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %yresolution = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 4
  %16 = load double, double* %yresolution, align 8
  store double %16, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load double, double* %retval
  ret double %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_template_get_resolution_unit(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca i32, align 4
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_template_get_resolution_unit, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %resolution_unit = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 5
  %16 = load i32, i32* %resolution_unit, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_template_get_image_type(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca i32, align 4
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_template_get_image_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %image_type = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 6
  %16 = load i32, i32* %image_type, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gimp_template_get_fill_type(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca i32, align 4
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_template_get_fill_type, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i32 5, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %fill_type = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 7
  %16 = load i32, i32* %fill_type, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i8* @gimp_template_get_comment(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca i8*, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_template_get_comment, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %comment = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 8
  %16 = load i8*, i8** %comment, align 8
  store i8* %16, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define i64 @gimp_template_get_initial_size(%struct._GimpTemplate* %template) #3 {
entry:
  %retval = alloca i64, align 8
  %template.addr = alloca %struct._GimpTemplate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpTemplate* %template, %struct._GimpTemplate** %template.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %1 = bitcast %struct._GimpTemplate* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_template_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_template_get_initial_size, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store i64 0, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template.addr, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_template_get_type() #6
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpTemplatePrivate*
  %initial_size = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 10
  %16 = load i64, i64* %initial_size, align 8
  store i64 %16, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i64, i64* %retval
  ret i64 %17
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_template_class_init(%struct._GimpTemplateClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpTemplateClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpTemplateClass* %klass, %struct._GimpTemplateClass** %klass.addr, align 8
  %0 = load %struct._GimpTemplateClass*, %struct._GimpTemplateClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpTemplateClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpTemplateClass*, %struct._GimpTemplateClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpTemplateClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_viewable_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %5, %struct._GimpViewableClass** %viewable_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_template_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_template_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_template_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %notify = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 8
  store void (%struct._GObject*, %struct._GParamSpec*)* @gimp_template_notify, void (%struct._GObject*, %struct._GParamSpec*)** %notify, align 8
  %10 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i8** %default_stock_id, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 1, i32 262144, i32 640, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 1, %struct._GParamSpec* %call3)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i32 1, i32 262144, i32 400, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 2, %struct._GParamSpec* %call4)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 0, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call5)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), double 5.000000e-03, double 6.553600e+04, double 7.200000e+01, i32 66023)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 4, %struct._GParamSpec* %call6)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0), double 5.000000e-03, double 6.553600e+04, double 7.200000e+01, i32 66023)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 5, %struct._GParamSpec* %call7)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_unit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i32 0, i32 0, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 6, %struct._GParamSpec* %call8)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call i64 @gimp_image_base_type_get_type() #6
  %call10 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i64 %call9, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 7, %struct._GParamSpec* %call10)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call i64 @gimp_fill_type_get_type() #6
  %call12 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* null, i64 %call11, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 8, %struct._GParamSpec* %call12)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i8* null, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 9, %struct._GParamSpec* %call13)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* null, i8* null, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 10, %struct._GParamSpec* %call14)
  %21 = load %struct._GimpTemplateClass*, %struct._GimpTemplateClass** %klass.addr, align 8
  %22 = bitcast %struct._GimpTemplateClass* %21 to i8*
  call void @g_type_class_add_private(i8* %22, i64 72)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_template_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %private = alloca %struct._GimpTemplatePrivate*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplatePrivate*
  store %struct._GimpTemplatePrivate* %2, %struct._GimpTemplatePrivate** %private, align 8
  %3 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %comment = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %3, i32 0, i32 8
  %4 = load i8*, i8** %comment, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %comment2 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %5, i32 0, i32 8
  %6 = load i8*, i8** %comment2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %comment3 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %7, i32 0, i32 8
  store i8* null, i8** %comment3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %8, i32 0, i32 9
  %9 = load i8*, i8** %filename, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %filename6 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %10, i32 0, i32 9
  %11 = load i8*, i8** %filename6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %filename7 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %12, i32 0, i32 9
  store i8* null, i8** %filename7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_template_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_template_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpTemplatePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplatePrivate*
  store %struct._GimpTemplatePrivate* %2, %struct._GimpTemplatePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.15
    i32 9, label %sw.bb.17
    i32 10, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_int(%struct._GValue* %4)
  %5 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %5, i32 0, i32 0
  store i32 %call2, i32* %width, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %6)
  %7 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %7, i32 0, i32 1
  store i32 %call4, i32* %height, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %8)
  %9 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %unit = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %9, i32 0, i32 2
  store i32 %call6, i32* %unit, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call double @g_value_get_double(%struct._GValue* %10)
  %11 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %xresolution = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %11, i32 0, i32 3
  store double %call8, double* %xresolution, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call double @g_value_get_double(%struct._GValue* %12)
  %13 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %yresolution = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %13, i32 0, i32 4
  store double %call10, double* %yresolution, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_int(%struct._GValue* %14)
  %15 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %resolution_unit = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 5
  store i32 %call12, i32* %resolution_unit, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_enum(%struct._GValue* %16)
  %17 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %image_type = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %17, i32 0, i32 6
  store i32 %call14, i32* %image_type, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_enum(%struct._GValue* %18)
  %19 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %fill_type = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %19, i32 0, i32 7
  store i32 %call16, i32* %fill_type, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %20 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %comment = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %20, i32 0, i32 8
  %21 = load i8*, i8** %comment, align 8
  %tobool = icmp ne i8* %21, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.17
  %22 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %comment18 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %22, i32 0, i32 8
  %23 = load i8*, i8** %comment18, align 8
  call void @g_free(i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.17
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call19 = call i8* @g_value_dup_string(%struct._GValue* %24)
  %25 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %comment20 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %25, i32 0, i32 8
  store i8* %call19, i8** %comment20, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %26 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %26, i32 0, i32 9
  %27 = load i8*, i8** %filename, align 8
  %tobool22 = icmp ne i8* %27, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %sw.bb.21
  %28 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %filename24 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %28, i32 0, i32 9
  %29 = load i8*, i8** %filename24, align 8
  call void @g_free(i8* %29)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %sw.bb.21
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call26 = call i8* @g_value_dup_string(%struct._GValue* %30)
  %31 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %filename27 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %31, i32 0, i32 9
  store i8* %call26, i8** %filename27, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %32, %struct._GObject** %_glib__object, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %33, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = load i32, i32* %property_id.addr, align 4
  store i32 %34, i32* %_glib__property_id, align 4
  %35 = load i32, i32* %_glib__property_id, align 4
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %39 = bitcast %struct._GParamSpec* %38 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type, align 8
  %call28 = call i8* @g_type_name(i64 %41)
  %42 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %43 = bitcast %struct._GObject* %42 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type30 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type30, align 8
  %call31 = call i8* @g_type_name(i64 %45)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %35, i8* %37, i8* %call28, i8* %call31)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end.25, %if.end, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_template_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpTemplatePrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplatePrivate*
  store %struct._GimpTemplatePrivate* %2, %struct._GimpTemplatePrivate** %private, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %5, i32 0, i32 0
  %6 = load i32, i32* %width, align 4
  call void @g_value_set_int(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %8, i32 0, i32 1
  %9 = load i32, i32* %height, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %unit = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %11, i32 0, i32 2
  %12 = load i32, i32* %unit, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %xresolution = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %14, i32 0, i32 3
  %15 = load double, double* %xresolution, align 8
  call void @g_value_set_double(%struct._GValue* %13, double %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %yresolution = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %17, i32 0, i32 4
  %18 = load double, double* %yresolution, align 8
  call void @g_value_set_double(%struct._GValue* %16, double %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %resolution_unit = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %20, i32 0, i32 5
  %21 = load i32, i32* %resolution_unit, align 4
  call void @g_value_set_int(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %image_type = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %23, i32 0, i32 6
  %24 = load i32, i32* %image_type, align 4
  call void @g_value_set_enum(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %fill_type = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %26, i32 0, i32 7
  %27 = load i32, i32* %fill_type, align 4
  call void @g_value_set_enum(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %comment = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %29, i32 0, i32 8
  %30 = load i8*, i8** %comment, align 8
  call void @g_value_set_string(%struct._GValue* %28, i8* %30)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %filename = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %32, i32 0, i32 9
  %33 = load i8*, i8** %filename, align 8
  call void @g_value_set_string(%struct._GValue* %31, i8* %33)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %34 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %34, %struct._GObject** %_glib__object, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %35, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = load i32, i32* %property_id.addr, align 4
  store i32 %36, i32* %_glib__property_id, align 4
  %37 = load i32, i32* %_glib__property_id, align 4
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %38, i32 0, i32 1
  %39 = load i8*, i8** %name, align 8
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %41 = bitcast %struct._GParamSpec* %40 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %41, i32 0, i32 0
  %42 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %42, i32 0, i32 0
  %43 = load i64, i64* %g_type, align 8
  %call11 = call i8* @g_type_name(i64 %43)
  %44 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %45 = bitcast %struct._GObject* %44 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %45, i32 0, i32 0
  %46 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %g_type13 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %46, i32 0, i32 0
  %47 = load i64, i64* %g_type13, align 8
  %call14 = call i8* @g_type_name(i64 %47)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %37, i8* %39, i8* %call11, i8* %call14)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_template_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %private = alloca %struct._GimpTemplatePrivate*, align 8
  %channels = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_template_get_type() #6
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpTemplatePrivate*
  store %struct._GimpTemplatePrivate* %2, %struct._GimpTemplatePrivate** %private, align 8
  %3 = load i8*, i8** @gimp_template_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %notify = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 8
  %6 = load void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*, %struct._GParamSpec*)** %notify, align 8
  %tobool = icmp ne void (%struct._GObject*, %struct._GParamSpec*)* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** @gimp_template_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 80)
  %9 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %notify4 = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 8
  %10 = load void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*, %struct._GParamSpec*)** %notify4, align 8
  %11 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  call void %10(%struct._GObject* %11, %struct._GParamSpec* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %image_type = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %13, i32 0, i32 6
  %14 = load i32, i32* %image_type, align 4
  %cmp = icmp eq i32 %14, 0
  %cond = select i1 %cmp, i32 3, i32 1
  %15 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %fill_type = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %15, i32 0, i32 7
  %16 = load i32, i32* %fill_type, align 4
  %cmp5 = icmp eq i32 %16, 3
  %conv = zext i1 %cmp5 to i32
  %add = add nsw i32 %cond, %conv
  %add6 = add nsw i32 %add, 1
  store i32 %add6, i32* %channels, align 4
  %17 = load i32, i32* %channels, align 4
  %conv7 = sext i32 %17 to i64
  %18 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %width = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %18, i32 0, i32 0
  %19 = load i32, i32* %width, align 4
  %conv8 = sext i32 %19 to i64
  %mul = mul i64 %conv7, %conv8
  %20 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %height = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %20, i32 0, i32 1
  %21 = load i32, i32* %height, align 4
  %conv9 = sext i32 %21 to i64
  %mul10 = mul i64 %mul, %conv9
  %22 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %initial_size = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %22, i32 0, i32 10
  store i64 %mul10, i64* %initial_size, align 8
  %23 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %image_type11 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %23, i32 0, i32 6
  %24 = load i32, i32* %image_type11, align 4
  %25 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %width12 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %25, i32 0, i32 0
  %26 = load i32, i32* %width12, align 4
  %27 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %height13 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %27, i32 0, i32 1
  %28 = load i32, i32* %height13, align 4
  %call14 = call i64 @gimp_projection_estimate_memsize(i32 %24, i32 %26, i32 %28)
  %29 = load %struct._GimpTemplatePrivate*, %struct._GimpTemplatePrivate** %private, align 8
  %initial_size15 = getelementptr inbounds %struct._GimpTemplatePrivate, %struct._GimpTemplatePrivate* %29, i32 0, i32 10
  %30 = load i64, i64* %initial_size15, align 8
  %add16 = add i64 %30, %call14
  store i64 %add16, i64* %initial_size15, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %31, i32 0, i32 1
  %32 = load i8*, i8** %name, align 8
  %call17 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)) #7
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.22, label %if.then.19

if.then.19:                                       ; preds = %if.end
  %33 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %34 = bitcast %struct._GObject* %33 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_viewable_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call20)
  %35 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpViewable*
  call void @gimp_viewable_invalidate_preview(%struct._GimpViewable* %35)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_unit(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_base_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_fill_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare i64 @gimp_projection_estimate_memsize(i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @gimp_viewable_invalidate_preview(%struct._GimpViewable*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

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
