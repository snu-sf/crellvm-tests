; ModuleID = './app/core/gimppattern.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpPatternClass = type { %struct._GimpDataClass }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpTaggedInterface = type { %struct._GTypeInterface, void (%struct._GimpTagged*, %struct._GimpTag*)*, void (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, i32 (%struct._GimpTagged*, %struct._GimpTag*)*, %struct._GList* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)*, i8* (%struct._GimpTagged*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpTagged = type opaque
%struct._GimpTag = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GChecksum = type opaque

@gimp_pattern_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpPattern\00", align 1
@gimp_pattern_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpTaggedInterface*)* @gimp_pattern_tagged_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_pattern_new = private unnamed_addr constant [17 x i8] c"gimp_pattern_new\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"name[0] != '\5Cn'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@gimp_pattern_get_standard.standard_pattern = internal global %struct._GimpData* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"gimp-pattern-standard\00", align 1
@__func__.gimp_pattern_get_mask = private unnamed_addr constant [22 x i8] c"gimp_pattern_get_mask\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"GIMP_IS_PATTERN (pattern)\00", align 1
@gimp_pattern_parent_class = internal global i8* null, align 8
@GimpPattern_private_offset = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"gimp-tool-bucket-fill\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%s (%d \C3\97 %d)\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c".pat\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_pattern_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_pattern_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_pattern_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_data_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 312, void (i8*, i8*)* bitcast (void (i8*)* @gimp_pattern_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPattern*)* @gimp_pattern_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_tagged_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_pattern_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_pattern_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_pattern_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_data_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_pattern_parent_class, align 8
  %1 = load i32, i32* @GimpPattern_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPattern_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPatternClass*
  call void @gimp_pattern_class_init(%struct._GimpPatternClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_init(%struct._GimpPattern* %pattern) #3 {
entry:
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  %0 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %0, i32 0, i32 1
  store %struct._TempBuf* null, %struct._TempBuf** %mask, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_tagged_iface_init(%struct._GimpTaggedInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpTaggedInterface*, align 8
  store %struct._GimpTaggedInterface* %iface, %struct._GimpTaggedInterface** %iface.addr, align 8
  %0 = load %struct._GimpTaggedInterface*, %struct._GimpTaggedInterface** %iface.addr, align 8
  %get_checksum = getelementptr inbounds %struct._GimpTaggedInterface, %struct._GimpTaggedInterface* %0, i32 0, i32 7
  store i8* (%struct._GimpTagged*)* @gimp_pattern_get_checksum, i8* (%struct._GimpTagged*)** %get_checksum, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_tagged_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_pattern_new(%struct._GimpContext* %context, i8* %name) #3 {
entry:
  %retval = alloca %struct._GimpData*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %name.addr = alloca i8*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %data = alloca i8*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %name.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_pattern_new, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %name.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp2 = icmp ne i32 %conv, 10
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_pattern_new, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpData* null, %struct._GimpData** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %call = call i64 @gimp_pattern_get_type() #6
  %3 = load i8*, i8** %name.addr, align 8
  %call8 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %3, i8* null)
  %4 = bitcast i8* %call8 to %struct._GimpPattern*
  store %struct._GimpPattern* %4, %struct._GimpPattern** %pattern, align 8
  %call9 = call %struct._TempBuf* @temp_buf_new(i32 32, i32 32, i32 3, i32 0, i32 0, i8* null)
  %5 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %5, i32 0, i32 1
  store %struct._TempBuf* %call9, %struct._TempBuf** %mask, align 8
  %6 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask10 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %6, i32 0, i32 1
  %7 = load %struct._TempBuf*, %struct._TempBuf** %mask10, align 8
  %call11 = call i8* @temp_buf_get_data(%struct._TempBuf* %7)
  store i8* %call11, i8** %data, align 8
  store i32 0, i32* %row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %do.end.7
  %8 = load i32, i32* %row, align 4
  %9 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask12 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %9, i32 0, i32 1
  %10 = load %struct._TempBuf*, %struct._TempBuf** %mask12, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height, align 4
  %cmp13 = icmp slt i32 %8, %11
  br i1 %cmp13, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %12 = load i32, i32* %col, align 4
  %13 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask16 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %13, i32 0, i32 1
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask16, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %14, i32 0, i32 1
  %15 = load i32, i32* %width, align 4
  %cmp17 = icmp slt i32 %12, %15
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.15
  %16 = load i8*, i8** %data, align 8
  %17 = load i32, i32* %col, align 4
  %rem = srem i32 %17, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body.19
  %18 = load i32, i32* %row, align 4
  %rem20 = srem i32 %18, 2
  %tobool21 = icmp ne i32 %rem20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.19
  %19 = phi i1 [ false, %for.body.19 ], [ %tobool21, %land.rhs ]
  %cond = select i1 %19, i32 255, i32 0
  %20 = trunc i32 %cond to i8
  call void @llvm.memset.p0i8.i64(i8* %16, i8 %20, i64 3, i32 1, i1 false)
  %21 = load i8*, i8** %data, align 8
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 3
  store i8* %add.ptr, i8** %data, align 8
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %22 = load i32, i32* %col, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %col, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %23 = load i32, i32* %row, align 4
  %inc23 = add nsw i32 %23, 1
  store i32 %inc23, i32* %row, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %24 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %25 = bitcast %struct._GimpPattern* %24 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_data_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call25)
  %26 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpData*
  store %struct._GimpData* %26, %struct._GimpData** %retval
  br label %return

return:                                           ; preds = %for.end.24, %if.else.5, %if.else
  %27 = load %struct._GimpData*, %struct._GimpData** %retval
  ret %struct._GimpData* %27
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #1

declare i8* @temp_buf_get_data(%struct._TempBuf*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpData* @gimp_pattern_get_standard(%struct._GimpContext* %context) #3 {
entry:
  %context.addr = alloca %struct._GimpContext*, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  %0 = load %struct._GimpData*, %struct._GimpData** @gimp_pattern_get_standard.standard_pattern, align 8
  %tobool = icmp ne %struct._GimpData* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %call = call %struct._GimpData* @gimp_pattern_new(%struct._GimpContext* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GimpData* %call, %struct._GimpData** @gimp_pattern_get_standard.standard_pattern, align 8
  %2 = load %struct._GimpData*, %struct._GimpData** @gimp_pattern_get_standard.standard_pattern, align 8
  call void @gimp_data_clean(%struct._GimpData* %2)
  %3 = load %struct._GimpData*, %struct._GimpData** @gimp_pattern_get_standard.standard_pattern, align 8
  call void @gimp_data_make_internal(%struct._GimpData* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  %4 = load %struct._GimpData*, %struct._GimpData** @gimp_pattern_get_standard.standard_pattern, align 8
  %5 = bitcast %struct._GimpData* %4 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_add_weak_pointer(%struct._GObject* %6, i8** bitcast (%struct._GimpData** @gimp_pattern_get_standard.standard_pattern to i8**))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpData*, %struct._GimpData** @gimp_pattern_get_standard.standard_pattern, align 8
  ret %struct._GimpData* %7
}

declare void @gimp_data_clean(%struct._GimpData*) #1

declare void @gimp_data_make_internal(%struct._GimpData*, i8*) #1

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_pattern_get_mask(%struct._GimpPattern* %pattern) #3 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %1 = bitcast %struct._GimpPattern* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pattern_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pattern_get_mask, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  store %struct._TempBuf* null, %struct._TempBuf** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %13, i32 0, i32 1
  %14 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  store %struct._TempBuf* %14, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %15
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_class_init(%struct._GimpPatternClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPatternClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %data_class = alloca %struct._GimpDataClass*, align 8
  store %struct._GimpPatternClass* %klass, %struct._GimpPatternClass** %klass.addr, align 8
  %0 = load %struct._GimpPatternClass*, %struct._GimpPatternClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPatternClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpPatternClass*, %struct._GimpPatternClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpPatternClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpPatternClass*, %struct._GimpPatternClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpPatternClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpPatternClass*, %struct._GimpPatternClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpPatternClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_data_get_type() #6
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpDataClass*
  store %struct._GimpDataClass* %11, %struct._GimpDataClass** %data_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_pattern_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_pattern_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8** %default_stock_id, align 8
  %15 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %15, i32 0, i32 5
  store i32 (%struct._GimpViewable*, i32*, i32*)* @gimp_pattern_get_size, i32 (%struct._GimpViewable*, i32*, i32*)** %get_size, align 8
  %16 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_new_preview = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %16, i32 0, i32 9
  store %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)* @gimp_pattern_get_new_preview, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)** %get_new_preview, align 8
  %17 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_description = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %17, i32 0, i32 12
  store i8* (%struct._GimpViewable*, i8**)* @gimp_pattern_get_description, i8* (%struct._GimpViewable*, i8**)** %get_description, align 8
  %18 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %get_extension = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %18, i32 0, i32 3
  store i8* (%struct._GimpData*)* @gimp_pattern_get_extension, i8* (%struct._GimpData*)** %get_extension, align 8
  %19 = load %struct._GimpDataClass*, %struct._GimpDataClass** %data_class, align 8
  %duplicate = getelementptr inbounds %struct._GimpDataClass, %struct._GimpDataClass* %19, i32 0, i32 4
  store %struct._GimpData* (%struct._GimpData*)* @gimp_pattern_duplicate, %struct._GimpData* (%struct._GimpData*)** %duplicate, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_pattern_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pattern_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPattern*
  store %struct._GimpPattern* %2, %struct._GimpPattern** %pattern, align 8
  %3 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask2 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %5, i32 0, i32 1
  %6 = load %struct._TempBuf*, %struct._TempBuf** %mask2, align 8
  call void @temp_buf_free(%struct._TempBuf* %6)
  %7 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask3 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %7, i32 0, i32 1
  store %struct._TempBuf* null, %struct._TempBuf** %mask3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_pattern_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_pattern_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %memsize = alloca i64, align 8
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pattern_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPattern*
  store %struct._GimpPattern* %2, %struct._GimpPattern** %pattern, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %call2 = call i64 @temp_buf_get_memsize(%struct._TempBuf* %4)
  %5 = load i64, i64* %memsize, align 8
  %add = add i64 %5, %call2
  store i64 %add, i64* %memsize, align 8
  %6 = load i64, i64* %memsize, align 8
  %7 = load i8*, i8** @gimp_pattern_parent_class, align 8
  %8 = bitcast i8* %7 to %struct._GTypeClass*
  %call3 = call i64 @gimp_object_get_type() #6
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %8, i64 %call3)
  %9 = bitcast %struct._GTypeClass* %call4 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %9, i32 0, i32 3
  %10 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %11 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %12 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 %10(%struct._GimpObject* %11, i64* %12)
  %add6 = add nsw i64 %6, %call5
  ret i64 %add6
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_pattern_get_size(%struct._GimpViewable* %viewable, i32* %width, i32* %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pattern_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPattern*
  store %struct._GimpPattern* %2, %struct._GimpPattern** %pattern, align 8
  %3 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 1
  %5 = load i32, i32* %width2, align 4
  %6 = load i32*, i32** %width.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask3 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %7, i32 0, i32 1
  %8 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %height4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %8, i32 0, i32 2
  %9 = load i32, i32* %height4, align 4
  %10 = load i32*, i32** %height.addr, align 8
  store i32 %9, i32* %10, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal %struct._TempBuf* @gimp_pattern_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %pattern = alloca %struct._GimpPattern*, align 8
  %temp_buf = alloca %struct._TempBuf*, align 8
  %copy_width = alloca i32, align 4
  %copy_height = alloca i32, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pattern_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPattern*
  store %struct._GimpPattern* %2, %struct._GimpPattern** %pattern, align 8
  %3 = load i32, i32* %width.addr, align 4
  %4 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %4, i32 0, i32 1
  %5 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %5, i32 0, i32 1
  %6 = load i32, i32* %width2, align 4
  %cmp = icmp slt i32 %3, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask3 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %8, i32 0, i32 1
  %9 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %width4 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 1
  %10 = load i32, i32* %width4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, i32* %copy_width, align 4
  %11 = load i32, i32* %height.addr, align 4
  %12 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask5 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %12, i32 0, i32 1
  %13 = load %struct._TempBuf*, %struct._TempBuf** %mask5, align 8
  %height6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %13, i32 0, i32 2
  %14 = load i32, i32* %height6, align 4
  %cmp7 = icmp slt i32 %11, %14
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  %15 = load i32, i32* %height.addr, align 4
  br label %cond.end.12

cond.false.9:                                     ; preds = %cond.end
  %16 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask10 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %16, i32 0, i32 1
  %17 = load %struct._TempBuf*, %struct._TempBuf** %mask10, align 8
  %height11 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %17, i32 0, i32 2
  %18 = load i32, i32* %height11, align 4
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.9, %cond.true.8
  %cond13 = phi i32 [ %15, %cond.true.8 ], [ %18, %cond.false.9 ]
  store i32 %cond13, i32* %copy_height, align 4
  %19 = load i32, i32* %copy_width, align 4
  %20 = load i32, i32* %copy_height, align 4
  %21 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask14 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %21, i32 0, i32 1
  %22 = load %struct._TempBuf*, %struct._TempBuf** %mask14, align 8
  %bytes = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %22, i32 0, i32 0
  %23 = load i32, i32* %bytes, align 4
  %call15 = call %struct._TempBuf* @temp_buf_new(i32 %19, i32 %20, i32 %23, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call15, %struct._TempBuf** %temp_buf, align 8
  %24 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask16 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %24, i32 0, i32 1
  %25 = load %struct._TempBuf*, %struct._TempBuf** %mask16, align 8
  %26 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  %27 = load i32, i32* %copy_width, align 4
  %28 = load i32, i32* %copy_height, align 4
  %call17 = call %struct._TempBuf* @temp_buf_copy_area(%struct._TempBuf* %25, %struct._TempBuf* %26, i32 0, i32 0, i32 %27, i32 %28, i32 0, i32 0)
  %29 = load %struct._TempBuf*, %struct._TempBuf** %temp_buf, align 8
  ret %struct._TempBuf* %29
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_pattern_get_description(%struct._GimpViewable* %viewable, i8** %tooltip) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %tooltip.addr = alloca i8**, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8** %tooltip, i8*** %tooltip.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pattern_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPattern*
  store %struct._GimpPattern* %2, %struct._GimpPattern** %pattern, align 8
  %3 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %4 = bitcast %struct._GimpPattern* %3 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %4)
  %5 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %5, i32 0, i32 1
  %6 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 1
  %7 = load i32, i32* %width, align 4
  %8 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask3 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %8, i32 0, i32 1
  %9 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 2
  %10 = load i32, i32* %height, align 4
  %call4 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* %call2, i32 %7, i32 %10)
  ret i8* %call4
}

; Function Attrs: nounwind uwtable
define internal i8* @gimp_pattern_get_extension(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpData* @gimp_pattern_duplicate(%struct._GimpData* %data) #3 {
entry:
  %data.addr = alloca %struct._GimpData*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  store %struct._GimpData* %data, %struct._GimpData** %data.addr, align 8
  %call = call i64 @gimp_pattern_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpPattern*
  store %struct._GimpPattern* %0, %struct._GimpPattern** %pattern, align 8
  %1 = load %struct._GimpData*, %struct._GimpData** %data.addr, align 8
  %2 = bitcast %struct._GimpData* %1 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_pattern_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call2)
  %3 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpPattern*
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %call4 = call %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %4, %struct._TempBuf* null)
  %5 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask5 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %5, i32 0, i32 1
  store %struct._TempBuf* %call4, %struct._TempBuf** %mask5, align 8
  %6 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %7 = bitcast %struct._GimpPattern* %6 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_data_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call6)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpData*
  ret %struct._GimpData* %8
}

declare void @temp_buf_free(%struct._TempBuf*) #1

declare i64 @temp_buf_get_memsize(%struct._TempBuf*) #1

declare %struct._TempBuf* @temp_buf_copy_area(%struct._TempBuf*, %struct._TempBuf*, i32, i32, i32, i32, i32, i32) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare i8* @gimp_object_get_name(i8*) #1

declare %struct._TempBuf* @temp_buf_copy(%struct._TempBuf*, %struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_pattern_get_checksum(%struct._GimpTagged* %tagged) #3 {
entry:
  %tagged.addr = alloca %struct._GimpTagged*, align 8
  %pattern = alloca %struct._GimpPattern*, align 8
  %checksum_string = alloca i8*, align 8
  %checksum = alloca %struct._GChecksum*, align 8
  store %struct._GimpTagged* %tagged, %struct._GimpTagged** %tagged.addr, align 8
  %0 = load %struct._GimpTagged*, %struct._GimpTagged** %tagged.addr, align 8
  %1 = bitcast %struct._GimpTagged* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_pattern_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPattern*
  store %struct._GimpPattern* %2, %struct._GimpPattern** %pattern, align 8
  store i8* null, i8** %checksum_string, align 8
  %3 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %struct._GChecksum* @g_checksum_new(i32 0)
  store %struct._GChecksum* %call2, %struct._GChecksum** %checksum, align 8
  %5 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %6 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask3 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %6, i32 0, i32 1
  %7 = load %struct._TempBuf*, %struct._TempBuf** %mask3, align 8
  %call4 = call i8* @temp_buf_get_data(%struct._TempBuf* %7)
  %8 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern, align 8
  %mask5 = getelementptr inbounds %struct._GimpPattern, %struct._GimpPattern* %8, i32 0, i32 1
  %9 = load %struct._TempBuf*, %struct._TempBuf** %mask5, align 8
  %call6 = call i64 @temp_buf_get_data_size(%struct._TempBuf* %9)
  call void @g_checksum_update(%struct._GChecksum* %5, i8* %call4, i64 %call6)
  %10 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %call7 = call i8* @g_checksum_get_string(%struct._GChecksum* %10)
  %call8 = call noalias i8* @g_strdup(i8* %call7)
  store i8* %call8, i8** %checksum_string, align 8
  %11 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  call void @g_checksum_free(%struct._GChecksum* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8*, i8** %checksum_string, align 8
  ret i8* %12
}

declare %struct._GChecksum* @g_checksum_new(i32) #1

declare void @g_checksum_update(%struct._GChecksum*, i8*, i64) #1

declare i64 @temp_buf_get_data_size(%struct._TempBuf*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_checksum_get_string(%struct._GChecksum*) #1

declare void @g_checksum_free(%struct._GChecksum*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
