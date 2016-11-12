; ModuleID = './app/core/gimpdocumentlist.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDocumentListClass = type { %struct._GimpListClass }
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
%struct._GimpDocumentList = type { %struct._GimpList, %struct._Gimp* }
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }

@gimp_document_list_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpDocumentList\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_document_list_new = private unnamed_addr constant [23 x i8] c"gimp_document_list_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"document-list\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"children-type\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@__func__.gimp_document_list_add_uri = private unnamed_addr constant [27 x i8] c"gimp_document_list_add_uri\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"GIMP_IS_DOCUMENT_LIST (document_list)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@gimp_document_list_parent_class = internal global i8* null, align 8
@GimpDocumentList_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_document_list_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_document_list_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_document_list_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_list_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 248, void (i8*, i8*)* bitcast (void (i8*)* @gimp_document_list_class_intern_init to void (i8*, i8*)*), i32 80, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDocumentList*)* @gimp_document_list_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_document_list_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_document_list_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_document_list_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_document_list_parent_class, align 8
  %1 = load i32, i32* @GimpDocumentList_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDocumentList_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDocumentListClass*
  call void @gimp_document_list_class_init(%struct._GimpDocumentListClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_document_list_init(%struct._GimpDocumentList* %list) #3 {
entry:
  %list.addr = alloca %struct._GimpDocumentList*, align 8
  store %struct._GimpDocumentList* %list, %struct._GimpDocumentList** %list.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpContainer* @gimp_document_list_new(%struct._Gimp* %gimp) #3 {
entry:
  %retval = alloca %struct._GimpContainer*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %document_list = alloca %struct._GimpDocumentList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_document_list_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpContainer* null, %struct._GimpContainer** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_document_list_get_type() #5
  %call12 = call i64 @gimp_imagefile_get_type() #5
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i64 %call12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* null)
  %13 = bitcast i8* %call13 to %struct._GimpDocumentList*
  store %struct._GimpDocumentList* %13, %struct._GimpDocumentList** %document_list, align 8
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %15 = load %struct._GimpDocumentList*, %struct._GimpDocumentList** %document_list, align 8
  %gimp14 = getelementptr inbounds %struct._GimpDocumentList, %struct._GimpDocumentList* %15, i32 0, i32 1
  store %struct._Gimp* %14, %struct._Gimp** %gimp14, align 8
  %16 = load %struct._GimpDocumentList*, %struct._GimpDocumentList** %document_list, align 8
  %17 = bitcast %struct._GimpDocumentList* %16 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_container_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call15)
  %18 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpContainer*
  store %struct._GimpContainer* %18, %struct._GimpContainer** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %retval
  ret %struct._GimpContainer* %19
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_imagefile_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_get_type() #2

; Function Attrs: nounwind uwtable
define %struct._GimpImagefile* @gimp_document_list_add_uri(%struct._GimpDocumentList* %document_list, i8* %uri, i8* %mime_type) #3 {
entry:
  %retval = alloca %struct._GimpImagefile*, align 8
  %document_list.addr = alloca %struct._GimpDocumentList*, align 8
  %uri.addr = alloca i8*, align 8
  %mime_type.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDocumentList* %document_list, %struct._GimpDocumentList** %document_list.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i8* %mime_type, i8** %mime_type.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDocumentList*, %struct._GimpDocumentList** %document_list.addr, align 8
  %1 = bitcast %struct._GimpDocumentList* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_document_list_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_document_list_add_uri, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %uri.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_document_list_add_uri, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpImagefile* null, %struct._GimpImagefile** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpDocumentList*, %struct._GimpDocumentList** %document_list.addr, align 8
  %gimp17 = getelementptr inbounds %struct._GimpDocumentList, %struct._GimpDocumentList* %14, i32 0, i32 1
  %15 = load %struct._Gimp*, %struct._Gimp** %gimp17, align 8
  store %struct._Gimp* %15, %struct._Gimp** %gimp, align 8
  %16 = load %struct._GimpDocumentList*, %struct._GimpDocumentList** %document_list.addr, align 8
  %17 = bitcast %struct._GimpDocumentList* %16 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_container_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpContainer*
  store %struct._GimpContainer* %18, %struct._GimpContainer** %container, align 8
  %19 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %20 = load i8*, i8** %uri.addr, align 8
  %call20 = call %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer* %19, i8* %20)
  %21 = bitcast %struct._GimpObject* %call20 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %21, %struct._GimpImagefile** %imagefile, align 8
  %22 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool21 = icmp ne %struct._GimpImagefile* %22, null
  br i1 %tobool21, label %if.then.22, label %if.else.26

if.then.22:                                       ; preds = %do.end.16
  %23 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %24 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %25 = bitcast %struct._GimpImagefile* %24 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_object_get_type() #5
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call23)
  %26 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpObject*
  %call25 = call i32 @gimp_container_reorder(%struct._GimpContainer* %23, %struct._GimpObject* %26, i32 0)
  br label %if.end.31

if.else.26:                                       ; preds = %do.end.16
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %28 = load i8*, i8** %uri.addr, align 8
  %call27 = call %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp* %27, i8* %28)
  store %struct._GimpImagefile* %call27, %struct._GimpImagefile** %imagefile, align 8
  %29 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %30 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %31 = bitcast %struct._GimpImagefile* %30 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_object_get_type() #5
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call28)
  %32 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpObject*
  %call30 = call i32 @gimp_container_add(%struct._GimpContainer* %29, %struct._GimpObject* %32)
  %33 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %34 = bitcast %struct._GimpImagefile* %33 to i8*
  call void @g_object_unref(i8* %34)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.26, %if.then.22
  %35 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %36 = load i8*, i8** %mime_type.addr, align 8
  call void @gimp_imagefile_set_mime_type(%struct._GimpImagefile* %35, i8* %36)
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %37, i32 0, i32 1
  %38 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %save_document_history = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %38, i32 0, i32 48
  %39 = load i32, i32* %save_document_history, align 4
  %tobool32 = icmp ne i32 %39, 0
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.31
  %40 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %41 = load i8*, i8** %uri.addr, align 8
  %42 = load i8*, i8** %mime_type.addr, align 8
  %call34 = call i32 @gimp_recent_list_add_uri(%struct._Gimp* %40, i8* %41, i8* %42)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.31
  %43 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  store %struct._GimpImagefile* %43, %struct._GimpImagefile** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.else.14, %if.else.9
  %44 = load %struct._GimpImagefile*, %struct._GimpImagefile** %retval
  ret %struct._GimpImagefile* %44
}

declare %struct._GimpObject* @gimp_container_get_child_by_name(%struct._GimpContainer*, i8*) #1

declare i32 @gimp_container_reorder(%struct._GimpContainer*, %struct._GimpObject*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare %struct._GimpImagefile* @gimp_imagefile_new(%struct._Gimp*, i8*) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare void @g_object_unref(i8*) #1

declare void @gimp_imagefile_set_mime_type(%struct._GimpImagefile*, i8*) #1

declare i32 @gimp_recent_list_add_uri(%struct._Gimp*, i8*, i8*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_document_list_class_init(%struct._GimpDocumentListClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDocumentListClass*, align 8
  store %struct._GimpDocumentListClass* %klass, %struct._GimpDocumentListClass** %klass.addr, align 8
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
