; ModuleID = './app/core/gimpsubprogress.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpSubProgressClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpSubProgress = type { %struct._GObject, %struct._GimpProgress*, double, double }
%struct._GimpProgress = type opaque
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._Gimp = type opaque

@gimp_sub_progress_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpSubProgress\00", align 1
@gimp_sub_progress_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_sub_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_sub_progress_new = private unnamed_addr constant [22 x i8] c"gimp_sub_progress_new\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@__func__.gimp_sub_progress_set_range = private unnamed_addr constant [28 x i8] c"gimp_sub_progress_set_range\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"GIMP_IS_SUB_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"start < end\00", align 1
@__func__.gimp_sub_progress_set_step = private unnamed_addr constant [27 x i8] c"gimp_sub_progress_set_step\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"index < num_steps && num_steps > 0\00", align 1
@gimp_sub_progress_parent_class = internal global i8* null, align 8
@GimpSubProgress_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_sub_progress_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_sub_progress_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_sub_progress_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_sub_progress_class_intern_init to void (i8*, i8*)*), i32 48, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpSubProgress*)* @gimp_sub_progress_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call7 = call i64 @gimp_progress_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call7, %struct._GInterfaceInfo* @gimp_sub_progress_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_sub_progress_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_sub_progress_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sub_progress_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_sub_progress_parent_class, align 8
  %1 = load i32, i32* @GimpSubProgress_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpSubProgress_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpSubProgressClass*
  call void @gimp_sub_progress_class_init(%struct._GimpSubProgressClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sub_progress_init(%struct._GimpSubProgress* %sub) #2 {
entry:
  %sub.addr = alloca %struct._GimpSubProgress*, align 8
  store %struct._GimpSubProgress* %sub, %struct._GimpSubProgress** %sub.addr, align 8
  %0 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub.addr, align 8
  %progress = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %0, i32 0, i32 1
  store %struct._GimpProgress* null, %struct._GimpProgress** %progress, align 8
  %1 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub.addr, align 8
  %start = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %1, i32 0, i32 2
  store double 0.000000e+00, double* %start, align 8
  %2 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub.addr, align 8
  %end = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %2, i32 0, i32 3
  store double 1.000000e+00, double* %end, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sub_progress_iface_init(%struct._GimpProgressInterface* %iface) #2 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_sub_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_sub_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_sub_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_sub_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_sub_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_sub_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_sub_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  %7 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_window_id = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %7, i32 0, i32 8
  store i32 (%struct._GimpProgress*)* @gimp_sub_progress_get_window_id, i32 (%struct._GimpProgress*)** %get_window_id, align 8
  %8 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %message = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %8, i32 0, i32 9
  store i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)* @gimp_sub_progress_message, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)** %message, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #3

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpProgress* @gimp_sub_progress_new(%struct._GimpProgress* %progress) #2 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %sub = alloca %struct._GimpSubProgress*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp = icmp eq %struct._GimpProgress* %0, null
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %1 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %2 = bitcast %struct._GimpProgress* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7, %do.body
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_sub_progress_new, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %call12 = call i64 @gimp_sub_progress_get_type() #5
  %call13 = call i8* (i64, i8*, ...) @g_object_new(i64 %call12, i8* null)
  %14 = bitcast i8* %call13 to %struct._GimpSubProgress*
  store %struct._GimpSubProgress* %14, %struct._GimpSubProgress** %sub, align 8
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool14 = icmp ne %struct._GimpProgress* %15, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %17 = bitcast %struct._GimpProgress* %16 to i8*
  %call16 = call i8* @g_object_ref(i8* %17)
  %18 = bitcast i8* %call16 to %struct._GimpProgress*
  %19 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress17 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %19, i32 0, i32 1
  store %struct._GimpProgress* %18, %struct._GimpProgress** %progress17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %do.end
  %20 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %21 = bitcast %struct._GimpSubProgress* %20 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_progress_interface_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call19)
  %22 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpProgress*
  store %struct._GimpProgress* %22, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.10
  %23 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %23
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_sub_progress_set_range(%struct._GimpSubProgress* %progress, double %start, double %end) #2 {
entry:
  %progress.addr = alloca %struct._GimpSubProgress*, align 8
  %start.addr = alloca double, align 8
  %end.addr = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSubProgress* %progress, %struct._GimpSubProgress** %progress.addr, align 8
  store double %start, double* %start.addr, align 8
  store double %end, double* %end.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpSubProgress* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_sub_progress_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_sub_progress_set_range, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load double, double* %start.addr, align 8
  %14 = load double, double* %end.addr, align 8
  %cmp12 = fcmp olt double %13, %14
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_sub_progress_set_range, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %15 = load double, double* %start.addr, align 8
  %16 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %progress.addr, align 8
  %start17 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %16, i32 0, i32 2
  store double %15, double* %start17, align 8
  %17 = load double, double* %end.addr, align 8
  %18 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %progress.addr, align 8
  %end18 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %18, i32 0, i32 3
  store double %17, double* %end18, align 8
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_sub_progress_set_step(%struct._GimpSubProgress* %progress, i32 %index, i32 %num_steps) #2 {
entry:
  %progress.addr = alloca %struct._GimpSubProgress*, align 8
  %index.addr = alloca i32, align 4
  %num_steps.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpSubProgress* %progress, %struct._GimpSubProgress** %progress.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %num_steps, i32* %num_steps.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpSubProgress* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_sub_progress_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_sub_progress_set_step, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %index.addr, align 4
  %14 = load i32, i32* %num_steps.addr, align 4
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %15 = load i32, i32* %num_steps.addr, align 4
  %cmp14 = icmp sgt i32 %15, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_sub_progress_set_step, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %16 = load i32, i32* %index.addr, align 4
  %conv = sitofp i32 %16 to double
  %17 = load i32, i32* %num_steps.addr, align 4
  %conv19 = sitofp i32 %17 to double
  %div = fdiv double %conv, %conv19
  %18 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %progress.addr, align 8
  %start = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %18, i32 0, i32 2
  store double %div, double* %start, align 8
  %19 = load i32, i32* %index.addr, align 4
  %add = add nsw i32 %19, 1
  %conv20 = sitofp i32 %add to double
  %20 = load i32, i32* %num_steps.addr, align 4
  %conv21 = sitofp i32 %20 to double
  %div22 = fdiv double %conv20, %conv21
  %21 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %progress.addr, align 8
  %end = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %21, i32 0, i32 3
  store double %div22, double* %end, align 8
  br label %return

return:                                           ; preds = %do.end.18, %if.else.16, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sub_progress_class_init(%struct._GimpSubProgressClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpSubProgressClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpSubProgressClass* %klass, %struct._GimpSubProgressClass** %klass.addr, align 8
  %0 = load %struct._GimpSubProgressClass*, %struct._GimpSubProgressClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpSubProgressClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_sub_progress_finalize, void (%struct._GObject*)** %finalize, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_sub_progress_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %sub = alloca %struct._GimpSubProgress*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sub_progress_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSubProgress*
  store %struct._GimpSubProgress* %2, %struct._GimpSubProgress** %sub, align 8
  %3 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %3, i32 0, i32 1
  %4 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %tobool = icmp ne %struct._GimpProgress* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress2 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %5, i32 0, i32 1
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress2, align 8
  %7 = bitcast %struct._GimpProgress* %6 to i8*
  call void @g_object_unref(i8* %7)
  %8 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress3 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %8, i32 0, i32 1
  store %struct._GimpProgress* null, %struct._GimpProgress** %progress3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** @gimp_sub_progress_parent_class, align 8
  %10 = bitcast i8* %9 to %struct._GTypeClass*
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 80)
  %11 = bitcast %struct._GTypeClass* %call4 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 6
  %12 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %12(%struct._GObject* %13)
  ret void
}

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_sub_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #2 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  ret %struct._GimpProgress* null
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sub_progress_end(%struct._GimpProgress* %progress) #2 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_sub_progress_is_active(%struct._GimpProgress* %progress) #2 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %sub = alloca %struct._GimpSubProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sub_progress_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSubProgress*
  store %struct._GimpSubProgress* %2, %struct._GimpSubProgress** %sub, align 8
  %3 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress2 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %3, i32 0, i32 1
  %4 = load %struct._GimpProgress*, %struct._GimpProgress** %progress2, align 8
  %tobool = icmp ne %struct._GimpProgress* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress3 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %5, i32 0, i32 1
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress3, align 8
  %call4 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %6)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sub_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #2 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sub_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #2 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %sub = alloca %struct._GimpSubProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sub_progress_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSubProgress*
  store %struct._GimpSubProgress* %2, %struct._GimpSubProgress** %sub, align 8
  %3 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress2 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %3, i32 0, i32 1
  %4 = load %struct._GimpProgress*, %struct._GimpProgress** %progress2, align 8
  %tobool = icmp ne %struct._GimpProgress* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress3 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %5, i32 0, i32 1
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress3, align 8
  %7 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %start = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %7, i32 0, i32 2
  %8 = load double, double* %start, align 8
  %9 = load double, double* %percentage.addr, align 8
  %10 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %end = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %10, i32 0, i32 3
  %11 = load double, double* %end, align 8
  %12 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %start4 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %12, i32 0, i32 2
  %13 = load double, double* %start4, align 8
  %sub5 = fsub double %11, %13
  %mul = fmul double %9, %sub5
  %add = fadd double %8, %mul
  call void @gimp_progress_set_value(%struct._GimpProgress* %6, double %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_sub_progress_get_value(%struct._GimpProgress* %progress) #2 {
entry:
  %retval = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %sub = alloca %struct._GimpSubProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sub_progress_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSubProgress*
  store %struct._GimpSubProgress* %2, %struct._GimpSubProgress** %sub, align 8
  %3 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress2 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %3, i32 0, i32 1
  %4 = load %struct._GimpProgress*, %struct._GimpProgress** %progress2, align 8
  %tobool = icmp ne %struct._GimpProgress* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress3 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %5, i32 0, i32 1
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress3, align 8
  %call4 = call double @gimp_progress_get_value(%struct._GimpProgress* %6)
  store double %call4, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load double, double* %retval
  ret double %7
}

; Function Attrs: nounwind uwtable
define internal void @gimp_sub_progress_pulse(%struct._GimpProgress* %progress) #2 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %sub = alloca %struct._GimpSubProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sub_progress_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSubProgress*
  store %struct._GimpSubProgress* %2, %struct._GimpSubProgress** %sub, align 8
  %3 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress2 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %3, i32 0, i32 1
  %4 = load %struct._GimpProgress*, %struct._GimpProgress** %progress2, align 8
  %tobool = icmp ne %struct._GimpProgress* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress3 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %5, i32 0, i32 1
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress3, align 8
  call void @gimp_progress_pulse(%struct._GimpProgress* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_sub_progress_get_window_id(%struct._GimpProgress* %progress) #2 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %sub = alloca %struct._GimpSubProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sub_progress_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSubProgress*
  store %struct._GimpSubProgress* %2, %struct._GimpSubProgress** %sub, align 8
  %3 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress2 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %3, i32 0, i32 1
  %4 = load %struct._GimpProgress*, %struct._GimpProgress** %progress2, align 8
  %tobool = icmp ne %struct._GimpProgress* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress3 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %5, i32 0, i32 1
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress3, align 8
  %call4 = call i32 @gimp_progress_get_window_id(%struct._GimpProgress* %6)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_sub_progress_message(%struct._GimpProgress* %progress, %struct._Gimp* %gimp, i32 %severity, i8* %domain, i8* %message) #2 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %sub = alloca %struct._GimpSubProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_sub_progress_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpSubProgress*
  store %struct._GimpSubProgress* %2, %struct._GimpSubProgress** %sub, align 8
  %3 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress2 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %3, i32 0, i32 1
  %4 = load %struct._GimpProgress*, %struct._GimpProgress** %progress2, align 8
  %tobool = icmp ne %struct._GimpProgress* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpSubProgress*, %struct._GimpSubProgress** %sub, align 8
  %progress3 = getelementptr inbounds %struct._GimpSubProgress, %struct._GimpSubProgress* %5, i32 0, i32 1
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress3, align 8
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load i32, i32* %severity.addr, align 4
  %9 = load i8*, i8** %domain.addr, align 8
  %10 = load i8*, i8** %message.addr, align 8
  %call4 = call i32 @gimp_progress_message(%struct._GimpProgress* %6, %struct._Gimp* %7, i32 %8, i8* %9, i8* %10)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @gimp_progress_is_active(%struct._GimpProgress*) #1

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #1

declare double @gimp_progress_get_value(%struct._GimpProgress*) #1

declare void @gimp_progress_pulse(%struct._GimpProgress*) #1

declare i32 @gimp_progress_get_window_id(%struct._GimpProgress*) #1

declare i32 @gimp_progress_message(%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
