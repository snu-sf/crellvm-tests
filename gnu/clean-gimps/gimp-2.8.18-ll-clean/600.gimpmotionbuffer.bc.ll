; ModuleID = './app/display/gimpmotionbuffer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpMotionBufferClass = type { %struct._GimpObjectClass, void (%struct._GimpMotionBuffer*, %struct._GimpCoords*, i32, i32)*, void (%struct._GimpMotionBuffer*, %struct._GimpCoords*, i32, i32)* }
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
%struct._GimpMotionBuffer = type { %struct._GimpObject, i32, i32, double, double, double, double, %struct._GimpCoords, %struct._GArray*, %struct._GArray*, i32, i32, i32 }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GArray = type { i8*, i32 }
%struct._GSignalInvocationHint = type { i32, i32, i32 }
%struct._GClosure = type { i32, {}*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, void (i8*, %struct._GClosure*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_motion_buffer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpMotionBuffer\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_motion_buffer_begin_stroke = private unnamed_addr constant [32 x i8] c"gimp_motion_buffer_begin_stroke\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_MOTION_BUFFER (buffer)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"last_motion != NULL\00", align 1
@__func__.gimp_motion_buffer_end_stroke = private unnamed_addr constant [30 x i8] c"gimp_motion_buffer_end_stroke\00", align 1
@__func__.gimp_motion_buffer_motion_event = private unnamed_addr constant [32 x i8] c"gimp_motion_buffer_motion_event\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"coords != NULL\00", align 1
@__func__.gimp_motion_buffer_get_last_motion_time = private unnamed_addr constant [40 x i8] c"gimp_motion_buffer_get_last_motion_time\00", align 1
@__func__.gimp_motion_buffer_request_stroke = private unnamed_addr constant [34 x i8] c"gimp_motion_buffer_request_stroke\00", align 1
@motion_buffer_signals = internal global [2 x i32] zeroinitializer, align 4
@__func__.gimp_motion_buffer_request_hover = private unnamed_addr constant [33 x i8] c"gimp_motion_buffer_request_hover\00", align 1
@gimp_motion_buffer_parent_class = internal global i8* null, align 8
@GimpMotionBuffer_private_offset = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"hover\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"gimpmotionbuffer.c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_motion_buffer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_motion_buffer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_motion_buffer_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 176, void (i8*, i8*)* bitcast (void (i8*)* @gimp_motion_buffer_class_intern_init to void (i8*, i8*)*), i32 168, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpMotionBuffer*)* @gimp_motion_buffer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_motion_buffer_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_motion_buffer_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_motion_buffer_parent_class, align 8
  %1 = load i32, i32* @GimpMotionBuffer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpMotionBuffer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpMotionBufferClass*
  call void @gimp_motion_buffer_class_init(%struct._GimpMotionBufferClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_init(%struct._GimpMotionBuffer* %buffer) #3 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 64)
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %0, i32 0, i32 8
  store %struct._GArray* %call, %struct._GArray** %event_history, align 8
  %call1 = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 64)
  %1 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %1, i32 0, i32 9
  store %struct._GArray* %call1, %struct._GArray** %event_queue, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpMotionBuffer* @gimp_motion_buffer_new() #3 {
entry:
  %call = call i64 @gimp_motion_buffer_get_type() #7
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpMotionBuffer*
  ret %struct._GimpMotionBuffer* %0
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_motion_buffer_begin_stroke(%struct._GimpMotionBuffer* %buffer, i32 %time, %struct._GimpCoords* %last_motion) #3 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %time.addr = alloca i32, align 4
  %last_motion.addr = alloca %struct._GimpCoords*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store %struct._GimpCoords* %last_motion, %struct._GimpCoords** %last_motion.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpMotionBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_motion_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_motion_buffer_begin_stroke, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %last_motion.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_motion_buffer_begin_stroke, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i32, i32* %time.addr, align 4
  %15 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_read_motion_time = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %15, i32 0, i32 1
  store i32 %14, i32* %last_read_motion_time, align 4
  %16 = load %struct._GimpCoords*, %struct._GimpCoords** %last_motion.addr, align 8
  %17 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %17, i32 0, i32 7
  %18 = bitcast %struct._GimpCoords* %16 to i8*
  %19 = bitcast %struct._GimpCoords* %last_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 64, i32 8, i1 false)
  br label %return

return:                                           ; preds = %do.end.16, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @gimp_motion_buffer_end_stroke(%struct._GimpMotionBuffer* %buffer) #3 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpMotionBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_motion_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_motion_buffer_end_stroke, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay_timeout = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %13, i32 0, i32 11
  %14 = load i32, i32* %event_delay_timeout, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay_timeout13 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %15, i32 0, i32 11
  %16 = load i32, i32* %event_delay_timeout13, align 4
  %call14 = call i32 @g_source_remove(i32 %16)
  %17 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay_timeout15 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %17, i32 0, i32 11
  store i32 0, i32* %event_delay_timeout15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %do.end
  %18 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %call17 = call i32 @gimp_motion_buffer_event_queue_timeout(%struct._GimpMotionBuffer* %18)
  br label %return

return:                                           ; preds = %if.end.16, %if.else.9
  ret void
}

declare i32 @g_source_remove(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_motion_buffer_event_queue_timeout(%struct._GimpMotionBuffer* %buffer) #3 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %last_coords = alloca %struct._GimpCoords, align 8
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %0, i32 0, i32 10
  store i32 0, i32* %event_delay, align 4
  %1 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay_timeout = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %1, i32 0, i32 11
  store i32 0, i32* %event_delay_timeout, align 4
  %2 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %2, i32 0, i32 9
  %3 = load %struct._GArray*, %struct._GArray** %event_queue, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %3, i32 0, i32 1
  %4 = load i32, i32* %len, align 4
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue1 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %5, i32 0, i32 9
  %6 = load %struct._GArray*, %struct._GArray** %event_queue1, align 8
  %len2 = getelementptr inbounds %struct._GArray, %struct._GArray* %6, i32 0, i32 1
  %7 = load i32, i32* %len2, align 4
  %sub = sub i32 %7, 1
  %idxprom = zext i32 %sub to i64
  %8 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue3 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %8, i32 0, i32 9
  %9 = load %struct._GArray*, %struct._GArray** %event_queue3, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = bitcast i8* %10 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %11, i64 %idxprom
  %12 = bitcast %struct._GimpCoords* %last_coords to i8*
  %13 = bitcast %struct._GimpCoords* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 64, i32 8, i1 false)
  %14 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  call void @gimp_motion_buffer_push_event_history(%struct._GimpMotionBuffer* %14, %struct._GimpCoords* %last_coords)
  %15 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %16 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_active_state = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %16, i32 0, i32 12
  %17 = load i32, i32* %last_active_state, align 4
  %18 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_read_motion_time = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %18, i32 0, i32 1
  %19 = load i32, i32* %last_read_motion_time, align 4
  call void @gimp_motion_buffer_request_stroke(%struct._GimpMotionBuffer* %15, i32 %17, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gimp_motion_buffer_motion_event(%struct._GimpMotionBuffer* %buffer, %struct._GimpCoords* %coords, i32 %time, double %scale_x, double %scale_y, i32 %event_fill) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %time.addr = alloca i32, align 4
  %scale_x.addr = alloca double, align 8
  %scale_y.addr = alloca double, align 8
  %event_fill.addr = alloca i32, align 4
  %delta_time = alloca double, align 8
  %delta_x = alloca double, align 8
  %delta_y = alloca double, align 8
  %distance = alloca double, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %last_dir_event = alloca %struct._GimpCoords, align 8
  %filter = alloca double, align 8
  %dist = alloca double, align 8
  %delta_dir = alloca double, align 8
  %dir_delta_x = alloca double, align 8
  %dir_delta_y = alloca double, align 8
  %screen_distance = alloca double, align 8
  %x130 = alloca i32, align 4
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %time, i32* %time.addr, align 4
  store double %scale_x, double* %scale_x.addr, align 8
  store double %scale_y, double* %scale_y.addr, align 8
  store i32 %event_fill, i32* %event_fill.addr, align 4
  store double 1.000000e-03, double* %delta_time, align 8
  store double 0.000000e+00, double* %delta_x, align 8
  store double 0.000000e+00, double* %delta_y, align 8
  store double 1.000000e+00, double* %distance, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpMotionBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_motion_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_motion_buffer_motion_event, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %cmp12 = icmp ne %struct._GimpCoords* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_motion_buffer_motion_event, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i32, i32* %time.addr, align 4
  %15 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_read_motion_time = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %15, i32 0, i32 1
  store i32 %14, i32* %last_read_motion_time, align 4
  %16 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_motion_delta_time = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %16, i32 0, i32 3
  %17 = load double, double* %last_motion_delta_time, align 8
  %mul = fmul double %17, 7.000000e-01
  %18 = load i32, i32* %time.addr, align 4
  %19 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_motion_time = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %19, i32 0, i32 2
  %20 = load i32, i32* %last_motion_time, align 4
  %sub = sub i32 %18, %20
  %conv = uitofp i32 %sub to double
  %mul17 = fmul double %conv, 3.000000e-01
  %add = fadd double %mul, %mul17
  store double %add, double* %delta_time, align 8
  %21 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_motion_time18 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %21, i32 0, i32 2
  %22 = load i32, i32* %last_motion_time18, align 4
  %cmp19 = icmp eq i32 %22, 0
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.end.16
  %23 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %23, i32 0, i32 6
  store double 1.000000e+00, double* %velocity, align 8
  br label %if.end.259

if.else.22:                                       ; preds = %do.end.16
  %24 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %24, i32 0, i32 7
  %25 = bitcast %struct._GimpCoords* %last_dir_event to i8*
  %26 = bitcast %struct._GimpCoords* %last_coords to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 64, i32 8, i1 false)
  store double 0.000000e+00, double* %dir_delta_x, align 8
  store double 0.000000e+00, double* %dir_delta_y, align 8
  %x = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_dir_event, i32 0, i32 0
  %27 = load double, double* %x, align 8
  %28 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %28, i32 0, i32 0
  %29 = load double, double* %x29, align 8
  %sub30 = fsub double %27, %29
  store double %sub30, double* %delta_x, align 8
  %y = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_dir_event, i32 0, i32 1
  %30 = load double, double* %y, align 8
  %31 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y31 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %31, i32 0, i32 1
  %32 = load double, double* %y31, align 8
  %sub32 = fsub double %30, %32
  store double %sub32, double* %delta_y, align 8
  %33 = load double, double* %scale_x.addr, align 8
  %div = fdiv double 1.000000e+00, %33
  %34 = load double, double* %scale_y.addr, align 8
  %div33 = fdiv double 1.000000e+00, %34
  %cmp34 = fcmp olt double %div, %div33
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.22
  %35 = load double, double* %scale_x.addr, align 8
  %div36 = fdiv double 1.000000e+00, %35
  br label %cond.end

cond.false:                                       ; preds = %if.else.22
  %36 = load double, double* %scale_y.addr, align 8
  %div37 = fdiv double 1.000000e+00, %36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div36, %cond.true ], [ %div37, %cond.false ]
  %div38 = fdiv double %cond, 2.000000e+00
  store double %div38, double* %filter, align 8
  %37 = load double, double* %delta_x, align 8
  %call39 = call double @fabs(double %37) #7
  %38 = load double, double* %filter, align 8
  %cmp40 = fcmp olt double %call39, %38
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.47

land.lhs.true.42:                                 ; preds = %cond.end
  %39 = load double, double* %delta_y, align 8
  %call43 = call double @fabs(double %39) #7
  %40 = load double, double* %filter, align 8
  %cmp44 = fcmp olt double %call43, %40
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.42
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.42, %cond.end
  %41 = load double, double* %delta_x, align 8
  %42 = load double, double* %delta_x, align 8
  %mul48 = fmul double %41, %42
  %43 = load double, double* %delta_y, align 8
  %44 = load double, double* %delta_y, align 8
  %mul49 = fmul double %43, %44
  %add50 = fadd double %mul48, %mul49
  %call51 = call double @sqrt(double %add50) #5
  store double %call51, double* %dist, align 8
  store double %call51, double* %distance, align 8
  %45 = load double, double* %delta_time, align 8
  %cmp52 = fcmp oeq double %45, 0.000000e+00
  br i1 %cmp52, label %if.then.54, label %if.else.58

if.then.54:                                       ; preds = %if.end.47
  %46 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords55 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %46, i32 0, i32 7
  %velocity56 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords55, i32 0, i32 6
  %47 = load double, double* %velocity56, align 8
  %48 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity57 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %48, i32 0, i32 6
  store double %47, double* %velocity57, align 8
  br label %if.end.103

if.else.58:                                       ; preds = %if.end.47
  %49 = load double, double* %distance, align 8
  %50 = load double, double* %scale_x.addr, align 8
  %51 = load double, double* %scale_y.addr, align 8
  %cmp60 = fcmp olt double %50, %51
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %if.else.58
  %52 = load double, double* %scale_x.addr, align 8
  br label %cond.end.64

cond.false.63:                                    ; preds = %if.else.58
  %53 = load double, double* %scale_y.addr, align 8
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.62
  %cond65 = phi double [ %52, %cond.true.62 ], [ %53, %cond.false.63 ]
  %mul66 = fmul double %49, %cond65
  store double %mul66, double* %screen_distance, align 8
  %54 = load double, double* %screen_distance, align 8
  %55 = load double, double* %delta_time, align 8
  %div67 = fdiv double %54, %55
  %div68 = fdiv double %div67, 3.000000e+00
  %56 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity69 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %56, i32 0, i32 6
  store double %div68, double* %velocity69, align 8
  %57 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords70 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %57, i32 0, i32 7
  %velocity71 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords70, i32 0, i32 6
  %58 = load double, double* %velocity71, align 8
  %59 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity72 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %59, i32 0, i32 6
  %60 = load double, double* %velocity72, align 8
  %cmp73 = fcmp olt double 3.000000e-01, %60
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.end.64
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.end.64
  %61 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity77 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %61, i32 0, i32 6
  %62 = load double, double* %velocity77, align 8
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.75
  %cond79 = phi double [ 3.000000e-01, %cond.true.75 ], [ %62, %cond.false.76 ]
  %sub80 = fsub double 1.000000e+00, %cond79
  %mul81 = fmul double %58, %sub80
  %63 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity82 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %63, i32 0, i32 6
  %64 = load double, double* %velocity82, align 8
  %65 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity83 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %65, i32 0, i32 6
  %66 = load double, double* %velocity83, align 8
  %cmp84 = fcmp olt double 3.000000e-01, %66
  br i1 %cmp84, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %cond.end.78
  br label %cond.end.89

cond.false.87:                                    ; preds = %cond.end.78
  %67 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity88 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %67, i32 0, i32 6
  %68 = load double, double* %velocity88, align 8
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.87, %cond.true.86
  %cond90 = phi double [ 3.000000e-01, %cond.true.86 ], [ %68, %cond.false.87 ]
  %mul91 = fmul double %64, %cond90
  %add92 = fadd double %mul81, %mul91
  %69 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity93 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %69, i32 0, i32 6
  store double %add92, double* %velocity93, align 8
  %70 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity94 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %70, i32 0, i32 6
  %71 = load double, double* %velocity94, align 8
  %cmp95 = fcmp olt double %71, 1.000000e+00
  br i1 %cmp95, label %cond.true.97, label %cond.false.99

cond.true.97:                                     ; preds = %cond.end.89
  %72 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity98 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %72, i32 0, i32 6
  %73 = load double, double* %velocity98, align 8
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.end.89
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.97
  %cond101 = phi double [ %73, %cond.true.97 ], [ 1.000000e+00, %cond.false.99 ]
  %74 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %velocity102 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %74, i32 0, i32 6
  store double %cond101, double* %velocity102, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %cond.end.100, %if.then.54
  %75 = load double, double* %delta_x, align 8
  %call104 = call double @fabs(double %75) #7
  %76 = load double, double* %scale_x.addr, align 8
  %77 = load double, double* %scale_y.addr, align 8
  %cmp105 = fcmp ogt double %76, %77
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %if.end.103
  %78 = load double, double* %scale_x.addr, align 8
  br label %cond.end.109

cond.false.108:                                   ; preds = %if.end.103
  %79 = load double, double* %scale_y.addr, align 8
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.107
  %cond110 = phi double [ %78, %cond.true.107 ], [ %79, %cond.false.108 ]
  %div111 = fdiv double 1.500000e+00, %cond110
  %cmp112 = fcmp ogt double %call104, %div111
  br i1 %cmp112, label %land.lhs.true.114, label %lor.lhs.false

land.lhs.true.114:                                ; preds = %cond.end.109
  %80 = load double, double* %delta_y, align 8
  %call115 = call double @fabs(double %80) #7
  %81 = load double, double* %scale_x.addr, align 8
  %82 = load double, double* %scale_y.addr, align 8
  %cmp116 = fcmp ogt double %81, %82
  br i1 %cmp116, label %cond.true.118, label %cond.false.119

cond.true.118:                                    ; preds = %land.lhs.true.114
  %83 = load double, double* %scale_x.addr, align 8
  br label %cond.end.120

cond.false.119:                                   ; preds = %land.lhs.true.114
  %84 = load double, double* %scale_y.addr, align 8
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.119, %cond.true.118
  %cond121 = phi double [ %83, %cond.true.118 ], [ %84, %cond.false.119 ]
  %div122 = fdiv double 1.500000e+00, %cond121
  %cmp123 = fcmp ogt double %call115, %div122
  br i1 %cmp123, label %if.then.127, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.120, %cond.end.109
  %85 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %85, i32 0, i32 8
  %86 = load %struct._GArray*, %struct._GArray** %event_history, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %86, i32 0, i32 1
  %87 = load i32, i32* %len, align 4
  %cmp125 = icmp ult i32 %87, 4
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %lor.lhs.false, %cond.end.120
  %88 = load double, double* %delta_x, align 8
  store double %88, double* %dir_delta_x, align 8
  %89 = load double, double* %delta_y, align 8
  store double %89, double* %dir_delta_y, align 8
  br label %if.end.161

if.else.128:                                      ; preds = %lor.lhs.false
  store i32 3, i32* %x130, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.128
  %90 = load double, double* %dir_delta_x, align 8
  %call131 = call double @fabs(double %90) #7
  %91 = load double, double* %scale_x.addr, align 8
  %92 = load double, double* %scale_y.addr, align 8
  %cmp132 = fcmp ogt double %91, %92
  br i1 %cmp132, label %cond.true.134, label %cond.false.135

cond.true.134:                                    ; preds = %while.cond
  %93 = load double, double* %scale_x.addr, align 8
  br label %cond.end.136

cond.false.135:                                   ; preds = %while.cond
  %94 = load double, double* %scale_y.addr, align 8
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.134
  %cond137 = phi double [ %93, %cond.true.134 ], [ %94, %cond.false.135 ]
  %div138 = fdiv double 1.500000e+00, %cond137
  %cmp139 = fcmp olt double %call131, %div138
  br i1 %cmp139, label %land.rhs, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %cond.end.136
  %95 = load double, double* %dir_delta_y, align 8
  %call142 = call double @fabs(double %95) #7
  %96 = load double, double* %scale_x.addr, align 8
  %97 = load double, double* %scale_y.addr, align 8
  %cmp143 = fcmp ogt double %96, %97
  br i1 %cmp143, label %cond.true.145, label %cond.false.146

cond.true.145:                                    ; preds = %lor.lhs.false.141
  %98 = load double, double* %scale_x.addr, align 8
  br label %cond.end.147

cond.false.146:                                   ; preds = %lor.lhs.false.141
  %99 = load double, double* %scale_y.addr, align 8
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.true.145
  %cond148 = phi double [ %98, %cond.true.145 ], [ %99, %cond.false.146 ]
  %div149 = fdiv double 1.500000e+00, %cond148
  %cmp150 = fcmp olt double %call142, %div149
  br i1 %cmp150, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.147, %cond.end.136
  %100 = load i32, i32* %x130, align 4
  %cmp152 = icmp sge i32 %100, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.147
  %101 = phi i1 [ false, %cond.end.147 ], [ %cmp152, %land.rhs ]
  br i1 %101, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %102 = load i32, i32* %x130, align 4
  %idxprom = sext i32 %102 to i64
  %103 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history154 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %103, i32 0, i32 8
  %104 = load %struct._GArray*, %struct._GArray** %event_history154, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %104, i32 0, i32 0
  %105 = load i8*, i8** %data, align 8
  %106 = bitcast i8* %105 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %106, i64 %idxprom
  %107 = bitcast %struct._GimpCoords* %last_dir_event to i8*
  %108 = bitcast %struct._GimpCoords* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 64, i32 8, i1 false)
  %x155 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_dir_event, i32 0, i32 0
  %109 = load double, double* %x155, align 8
  %110 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %x156 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %110, i32 0, i32 0
  %111 = load double, double* %x156, align 8
  %sub157 = fsub double %109, %111
  store double %sub157, double* %dir_delta_x, align 8
  %y158 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_dir_event, i32 0, i32 1
  %112 = load double, double* %y158, align 8
  %113 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %y159 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %113, i32 0, i32 1
  %114 = load double, double* %y159, align 8
  %sub160 = fsub double %112, %114
  store double %sub160, double* %dir_delta_y, align 8
  %115 = load i32, i32* %x130, align 4
  %dec = add nsw i32 %115, -1
  store i32 %dec, i32* %x130, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.161

if.end.161:                                       ; preds = %while.end, %if.then.127
  %116 = load double, double* %dir_delta_x, align 8
  %call162 = call double @fabs(double %116) #7
  %117 = load double, double* %scale_x.addr, align 8
  %118 = load double, double* %scale_y.addr, align 8
  %cmp163 = fcmp ogt double %117, %118
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %if.end.161
  %119 = load double, double* %scale_x.addr, align 8
  br label %cond.end.167

cond.false.166:                                   ; preds = %if.end.161
  %120 = load double, double* %scale_y.addr, align 8
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.166, %cond.true.165
  %cond168 = phi double [ %119, %cond.true.165 ], [ %120, %cond.false.166 ]
  %div169 = fdiv double 1.500000e+00, %cond168
  %cmp170 = fcmp olt double %call162, %div169
  br i1 %cmp170, label %if.then.183, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %cond.end.167
  %121 = load double, double* %dir_delta_y, align 8
  %call173 = call double @fabs(double %121) #7
  %122 = load double, double* %scale_x.addr, align 8
  %123 = load double, double* %scale_y.addr, align 8
  %cmp174 = fcmp ogt double %122, %123
  br i1 %cmp174, label %cond.true.176, label %cond.false.177

cond.true.176:                                    ; preds = %lor.lhs.false.172
  %124 = load double, double* %scale_x.addr, align 8
  br label %cond.end.178

cond.false.177:                                   ; preds = %lor.lhs.false.172
  %125 = load double, double* %scale_y.addr, align 8
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.177, %cond.true.176
  %cond179 = phi double [ %124, %cond.true.176 ], [ %125, %cond.false.177 ]
  %div180 = fdiv double 1.500000e+00, %cond179
  %cmp181 = fcmp olt double %call173, %div180
  br i1 %cmp181, label %if.then.183, label %if.else.186

if.then.183:                                      ; preds = %cond.end.178, %cond.end.167
  %126 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords184 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %126, i32 0, i32 7
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords184, i32 0, i32 7
  %127 = load double, double* %direction, align 8
  %128 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction185 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %128, i32 0, i32 7
  store double %127, double* %direction185, align 8
  br label %if.end.189

if.else.186:                                      ; preds = %cond.end.178
  %129 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %call187 = call double @gimp_coords_direction(%struct._GimpCoords* %last_dir_event, %struct._GimpCoords* %129)
  %130 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction188 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %130, i32 0, i32 7
  store double %call187, double* %direction188, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.186, %if.then.183
  %131 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction190 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %131, i32 0, i32 7
  %132 = load double, double* %direction190, align 8
  %133 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction191 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %133, i32 0, i32 7
  %134 = load double, double* %direction191, align 8
  %call192 = call double @floor(double %134) #7
  %sub193 = fsub double %132, %call192
  %135 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction194 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %135, i32 0, i32 7
  store double %sub193, double* %direction194, align 8
  %136 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction195 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %136, i32 0, i32 7
  %137 = load double, double* %direction195, align 8
  %138 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords196 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %138, i32 0, i32 7
  %direction197 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords196, i32 0, i32 7
  %139 = load double, double* %direction197, align 8
  %sub198 = fsub double %137, %139
  store double %sub198, double* %delta_dir, align 8
  %140 = load double, double* %delta_dir, align 8
  %cmp199 = fcmp olt double %140, -5.000000e-01
  br i1 %cmp199, label %if.then.201, label %if.else.210

if.then.201:                                      ; preds = %if.end.189
  %141 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction202 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %141, i32 0, i32 7
  %142 = load double, double* %direction202, align 8
  %mul203 = fmul double 5.000000e-01, %142
  %143 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords204 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %143, i32 0, i32 7
  %direction205 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords204, i32 0, i32 7
  %144 = load double, double* %direction205, align 8
  %sub206 = fsub double %144, 1.000000e+00
  %mul207 = fmul double 5.000000e-01, %sub206
  %add208 = fadd double %mul203, %mul207
  %145 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction209 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %145, i32 0, i32 7
  store double %add208, double* %direction209, align 8
  br label %if.end.231

if.else.210:                                      ; preds = %if.end.189
  %146 = load double, double* %delta_dir, align 8
  %cmp211 = fcmp ogt double %146, 5.000000e-01
  br i1 %cmp211, label %if.then.213, label %if.else.222

if.then.213:                                      ; preds = %if.else.210
  %147 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction214 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %147, i32 0, i32 7
  %148 = load double, double* %direction214, align 8
  %mul215 = fmul double 5.000000e-01, %148
  %149 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords216 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %149, i32 0, i32 7
  %direction217 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords216, i32 0, i32 7
  %150 = load double, double* %direction217, align 8
  %add218 = fadd double %150, 1.000000e+00
  %mul219 = fmul double 5.000000e-01, %add218
  %add220 = fadd double %mul215, %mul219
  %151 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction221 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %151, i32 0, i32 7
  store double %add220, double* %direction221, align 8
  br label %if.end.230

if.else.222:                                      ; preds = %if.else.210
  %152 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction223 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %152, i32 0, i32 7
  %153 = load double, double* %direction223, align 8
  %mul224 = fmul double 5.000000e-01, %153
  %154 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords225 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %154, i32 0, i32 7
  %direction226 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %last_coords225, i32 0, i32 7
  %155 = load double, double* %direction226, align 8
  %mul227 = fmul double 5.000000e-01, %155
  %add228 = fadd double %mul224, %mul227
  %156 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction229 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %156, i32 0, i32 7
  store double %add228, double* %direction229, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.222, %if.then.213
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.201
  %157 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction232 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %157, i32 0, i32 7
  %158 = load double, double* %direction232, align 8
  %159 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction233 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %159, i32 0, i32 7
  %160 = load double, double* %direction233, align 8
  %call234 = call double @floor(double %160) #7
  %sub235 = fsub double %158, %call234
  %161 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %direction236 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %161, i32 0, i32 7
  store double %sub235, double* %direction236, align 8
  %162 = load double, double* %distance, align 8
  %cmp237 = fcmp oge double %162, 6.000000e+00
  br i1 %cmp237, label %land.lhs.true.239, label %if.else.252

land.lhs.true.239:                                ; preds = %if.end.231
  %163 = load i32, i32* %event_fill.addr, align 4
  %tobool240 = icmp ne i32 %163, 0
  br i1 %tobool240, label %land.lhs.true.241, label %if.else.252

land.lhs.true.241:                                ; preds = %land.lhs.true.239
  %164 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history242 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %164, i32 0, i32 8
  %165 = load %struct._GArray*, %struct._GArray** %event_history242, align 8
  %len243 = getelementptr inbounds %struct._GArray, %struct._GArray* %165, i32 0, i32 1
  %166 = load i32, i32* %len243, align 4
  %cmp244 = icmp uge i32 %166, 2
  br i1 %cmp244, label %if.then.246, label %if.else.252

if.then.246:                                      ; preds = %land.lhs.true.241
  %167 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %167, i32 0, i32 10
  %168 = load i32, i32* %event_delay, align 4
  %tobool247 = icmp ne i32 %168, 0
  br i1 %tobool247, label %if.then.248, label %if.else.249

if.then.248:                                      ; preds = %if.then.246
  %169 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %170 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_motion_buffer_interpolate_stroke(%struct._GimpMotionBuffer* %169, %struct._GimpCoords* %170)
  br label %if.end.251

if.else.249:                                      ; preds = %if.then.246
  %171 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay250 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %171, i32 0, i32 10
  store i32 1, i32* %event_delay250, align 4
  %172 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %173 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_motion_buffer_push_event_history(%struct._GimpMotionBuffer* %172, %struct._GimpCoords* %173)
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.249, %if.then.248
  br label %if.end.258

if.else.252:                                      ; preds = %land.lhs.true.241, %land.lhs.true.239, %if.end.231
  %174 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay253 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %174, i32 0, i32 10
  %175 = load i32, i32* %event_delay253, align 4
  %tobool254 = icmp ne i32 %175, 0
  br i1 %tobool254, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %if.else.252
  %176 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay256 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %176, i32 0, i32 10
  store i32 0, i32* %event_delay256, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %if.else.252
  %177 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %178 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_motion_buffer_push_event_history(%struct._GimpMotionBuffer* %177, %struct._GimpCoords* %178)
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.end.251
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.21
  %179 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %179, i32 0, i32 9
  %180 = load %struct._GArray*, %struct._GArray** %event_queue, align 8
  %181 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %182 = bitcast %struct._GimpCoords* %181 to i8*
  %call260 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %180, i8* %182, i32 1)
  %183 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_coords261 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %183, i32 0, i32 7
  %184 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %185 = bitcast %struct._GimpCoords* %last_coords261 to i8*
  %186 = bitcast %struct._GimpCoords* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* %186, i64 64, i32 8, i1 false)
  %187 = load i32, i32* %time.addr, align 4
  %188 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_motion_time262 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %188, i32 0, i32 2
  store i32 %187, i32* %last_motion_time262, align 4
  %189 = load double, double* %delta_time, align 8
  %190 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_motion_delta_time263 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %190, i32 0, i32 3
  store double %189, double* %last_motion_delta_time263, align 8
  %191 = load double, double* %delta_x, align 8
  %192 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_motion_delta_x = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %192, i32 0, i32 4
  store double %191, double* %last_motion_delta_x, align 8
  %193 = load double, double* %delta_y, align 8
  %194 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_motion_delta_y = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %194, i32 0, i32 5
  store double %193, double* %last_motion_delta_y, align 8
  %195 = load double, double* %distance, align 8
  %196 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_motion_distance = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %196, i32 0, i32 6
  store double %195, double* %last_motion_distance, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.259, %if.then.46, %if.else.14, %if.else.9
  %197 = load i32, i32* %retval
  ret i32 %197
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #6

declare double @gimp_coords_direction(%struct._GimpCoords*, %struct._GimpCoords*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_interpolate_stroke(%struct._GimpMotionBuffer* %buffer, %struct._GimpCoords* %coords) #3 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %ret_coords = alloca %struct._GArray*, align 8
  %i = alloca i32, align 4
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %0, i32 0, i32 8
  %1 = load %struct._GArray*, %struct._GArray** %event_history, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %1, i32 0, i32 1
  %2 = load i32, i32* %len, align 4
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %i, align 4
  %call = call %struct._GArray* @g_array_new(i32 0, i32 0, i32 64)
  store %struct._GArray* %call, %struct._GArray** %ret_coords, align 8
  %3 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub1 to i64
  %4 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history2 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %4, i32 0, i32 8
  %5 = load %struct._GArray*, %struct._GArray** %event_history2, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = bitcast i8* %6 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %7, i64 %idxprom
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history4 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %9, i32 0, i32 8
  %10 = load %struct._GArray*, %struct._GArray** %event_history4, align 8
  %data5 = getelementptr inbounds %struct._GArray, %struct._GArray* %10, i32 0, i32 0
  %11 = load i8*, i8** %data5, align 8
  %12 = bitcast i8* %11 to %struct._GimpCoords*
  %arrayidx6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %12, i64 %idxprom3
  %13 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %13, i32 0, i32 9
  %14 = load %struct._GArray*, %struct._GArray** %event_queue, align 8
  %data7 = getelementptr inbounds %struct._GArray, %struct._GArray* %14, i32 0, i32 0
  %15 = load i8*, i8** %data7, align 8
  %16 = bitcast i8* %15 to %struct._GimpCoords*
  %arrayidx8 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %16, i64 0
  %17 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  call void @gimp_coords_interpolate_catmull(%struct._GimpCoords* byval align 8 %arrayidx, %struct._GimpCoords* byval align 8 %arrayidx6, %struct._GimpCoords* byval align 8 %arrayidx8, %struct._GimpCoords* byval align 8 %17, double 3.000000e+00, %struct._GArray** %ret_coords, %struct._GArray** null)
  %18 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %19 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue9 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %19, i32 0, i32 9
  %20 = load %struct._GArray*, %struct._GArray** %event_queue9, align 8
  %data10 = getelementptr inbounds %struct._GArray, %struct._GArray* %20, i32 0, i32 0
  %21 = load i8*, i8** %data10, align 8
  %22 = bitcast i8* %21 to %struct._GimpCoords*
  %arrayidx11 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %22, i64 0
  call void @gimp_motion_buffer_push_event_history(%struct._GimpMotionBuffer* %18, %struct._GimpCoords* %arrayidx11)
  %23 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue12 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %23, i32 0, i32 9
  %24 = load %struct._GArray*, %struct._GArray** %event_queue12, align 8
  %call13 = call %struct._GArray* @g_array_set_size(%struct._GArray* %24, i32 0)
  %25 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue14 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %25, i32 0, i32 9
  %26 = load %struct._GArray*, %struct._GArray** %event_queue14, align 8
  %27 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %data15 = getelementptr inbounds %struct._GArray, %struct._GArray* %27, i32 0, i32 0
  %28 = load i8*, i8** %data15, align 8
  %29 = bitcast i8* %28 to %struct._GimpCoords*
  %arrayidx16 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %29, i64 0
  %30 = bitcast %struct._GimpCoords* %arrayidx16 to i8*
  %31 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %len17 = getelementptr inbounds %struct._GArray, %struct._GArray* %31, i32 0, i32 1
  %32 = load i32, i32* %len17, align 4
  %call18 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %26, i8* %30, i32 %32)
  %33 = load %struct._GArray*, %struct._GArray** %ret_coords, align 8
  %call19 = call i8* @g_array_free(%struct._GArray* %33, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_push_event_history(%struct._GimpMotionBuffer* %buffer, %struct._GimpCoords* %coords) #3 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %0, i32 0, i32 8
  %1 = load %struct._GArray*, %struct._GArray** %event_history, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %1, i32 0, i32 1
  %2 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history1 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %3, i32 0, i32 8
  %4 = load %struct._GArray*, %struct._GArray** %event_history1, align 8
  %call = call %struct._GArray* @g_array_remove_index(%struct._GArray* %4, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_history2 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %5, i32 0, i32 8
  %6 = load %struct._GArray*, %struct._GArray** %event_history2, align 8
  %7 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %8 = bitcast %struct._GimpCoords* %7 to i8*
  %call3 = call %struct._GArray* @g_array_append_vals(%struct._GArray* %6, i8* %8, i32 1)
  ret void
}

declare %struct._GArray* @g_array_append_vals(%struct._GArray*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_motion_buffer_get_last_motion_time(%struct._GimpMotionBuffer* %buffer) #3 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpMotionBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_motion_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_motion_buffer_get_last_motion_time, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_read_motion_time = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %13, i32 0, i32 1
  %14 = load i32, i32* %last_read_motion_time, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define void @gimp_motion_buffer_request_stroke(%struct._GimpMotionBuffer* %buffer, i32 %state, i32 %time) #3 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %state.addr = alloca i32, align 4
  %time.addr = alloca i32, align 4
  %event_state = alloca i32, align 4
  %keep = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %buf_coords = alloca %struct._GimpCoords, align 8
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %time, i32* %time.addr, align 4
  store i32 0, i32* %keep, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpMotionBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_motion_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_motion_buffer_request_stroke, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.29

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %13, i32 0, i32 10
  %14 = load i32, i32* %event_delay, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_active_state = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %15, i32 0, i32 12
  %16 = load i32, i32* %last_active_state, align 4
  store i32 %16, i32* %event_state, align 4
  store i32 1, i32* %keep, align 4
  br label %if.end.14

if.else.13:                                       ; preds = %do.end
  %17 = load i32, i32* %state.addr, align 4
  store i32 %17, i32* %event_state, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %18 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay_timeout = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %18, i32 0, i32 11
  %19 = load i32, i32* %event_delay_timeout, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.14
  %20 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay_timeout17 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %20, i32 0, i32 11
  %21 = load i32, i32* %event_delay_timeout17, align 4
  %call18 = call i32 @g_source_remove(i32 %21)
  %22 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay_timeout19 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %22, i32 0, i32 11
  store i32 0, i32* %event_delay_timeout19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.14
  %23 = load i32, i32* %state.addr, align 4
  %24 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %last_active_state21 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %24, i32 0, i32 12
  store i32 %23, i32* %last_active_state21, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.20
  %25 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %25, i32 0, i32 9
  %26 = load %struct._GArray*, %struct._GArray** %event_queue, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %26, i32 0, i32 1
  %27 = load i32, i32* %len, align 4
  %28 = load i32, i32* %keep, align 4
  %cmp22 = icmp ugt i32 %27, %28
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  call void @gimp_motion_buffer_pop_event_queue(%struct._GimpMotionBuffer* %29, %struct._GimpCoords* %buf_coords)
  %30 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %31 = bitcast %struct._GimpMotionBuffer* %30 to i8*
  %32 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @motion_buffer_signals, i32 0, i64 0), align 4
  %33 = load i32, i32* %time.addr, align 4
  %34 = load i32, i32* %event_state, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %31, i32 %32, i32 0, %struct._GimpCoords* %buf_coords, i32 %33, i32 %34)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay24 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %35, i32 0, i32 10
  %36 = load i32, i32* %event_delay24, align 4
  %tobool25 = icmp ne i32 %36, 0
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %while.end
  %37 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %38 = bitcast %struct._GimpMotionBuffer* %37 to i8*
  %call27 = call i32 @g_timeout_add(i32 50, i32 (i8*)* bitcast (i32 (%struct._GimpMotionBuffer*)* @gimp_motion_buffer_event_queue_timeout to i32 (i8*)*), i8* %38)
  %39 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_delay_timeout28 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %39, i32 0, i32 11
  store i32 %call27, i32* %event_delay_timeout28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.9, %if.then.26, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_pop_event_queue(%struct._GimpMotionBuffer* %buffer, %struct._GimpCoords* %coords) #3 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %coords.addr = alloca %struct._GimpCoords*, align 8
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %1 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %1, i32 0, i32 9
  %2 = load %struct._GArray*, %struct._GArray** %event_queue, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %4, i64 0
  %5 = bitcast %struct._GimpCoords* %0 to i8*
  %6 = bitcast %struct._GimpCoords* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 64, i32 8, i1 false)
  %7 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue1 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %7, i32 0, i32 9
  %8 = load %struct._GArray*, %struct._GArray** %event_queue1, align 8
  %call = call %struct._GArray* @g_array_remove_index(%struct._GArray* %8, i32 0)
  ret void
}

declare void @g_signal_emit(i8*, i32, i32, ...) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_motion_buffer_request_hover(%struct._GimpMotionBuffer* %buffer, i32 %state, i32 %proximity) #3 {
entry:
  %buffer.addr = alloca %struct._GimpMotionBuffer*, align 8
  %state.addr = alloca i32, align 4
  %proximity.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %buf_coords = alloca %struct._GimpCoords, align 8
  store %struct._GimpMotionBuffer* %buffer, %struct._GimpMotionBuffer** %buffer.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 %proximity, i32* %proximity.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %1 = bitcast %struct._GimpMotionBuffer* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_motion_buffer_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_motion_buffer_request_hover, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.19

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %13, i32 0, i32 9
  %14 = load %struct._GArray*, %struct._GArray** %event_queue, align 8
  %len = getelementptr inbounds %struct._GArray, %struct._GArray* %14, i32 0, i32 1
  %15 = load i32, i32* %len, align 4
  %cmp11 = icmp ugt i32 %15, 0
  br i1 %cmp11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %do.end
  %16 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue14 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %16, i32 0, i32 9
  %17 = load %struct._GArray*, %struct._GArray** %event_queue14, align 8
  %len15 = getelementptr inbounds %struct._GArray, %struct._GArray* %17, i32 0, i32 1
  %18 = load i32, i32* %len15, align 4
  %sub = sub i32 %18, 1
  %idxprom = zext i32 %sub to i64
  %19 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue16 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %19, i32 0, i32 9
  %20 = load %struct._GArray*, %struct._GArray** %event_queue16, align 8
  %data = getelementptr inbounds %struct._GArray, %struct._GArray* %20, i32 0, i32 0
  %21 = load i8*, i8** %data, align 8
  %22 = bitcast i8* %21 to %struct._GimpCoords*
  %arrayidx = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %22, i64 %idxprom
  %23 = bitcast %struct._GimpCoords* %buf_coords to i8*
  %24 = bitcast %struct._GimpCoords* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 64, i32 8, i1 false)
  %25 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %26 = bitcast %struct._GimpMotionBuffer* %25 to i8*
  %27 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @motion_buffer_signals, i32 0, i64 1), align 4
  %28 = load i32, i32* %state.addr, align 4
  %29 = load i32, i32* %proximity.addr, align 4
  call void (i8*, i32, i32, ...) @g_signal_emit(i8* %26, i32 %27, i32 0, %struct._GimpCoords* %buf_coords, i32 %28, i32 %29)
  %30 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer.addr, align 8
  %event_queue17 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %30, i32 0, i32 9
  %31 = load %struct._GArray*, %struct._GArray** %event_queue17, align 8
  %call18 = call %struct._GArray* @g_array_set_size(%struct._GArray* %31, i32 0)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare %struct._GArray* @g_array_set_size(%struct._GArray*, i32) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_class_init(%struct._GimpMotionBufferClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpMotionBufferClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpMotionBufferClass* %klass, %struct._GimpMotionBufferClass** %klass.addr, align 8
  %0 = load %struct._GimpMotionBufferClass*, %struct._GimpMotionBufferClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpMotionBufferClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpMotionBufferClass*, %struct._GimpMotionBufferClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpMotionBufferClass* %3 to %struct._GTypeClass*
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %4, i32 0, i32 0
  %5 = load i64, i64* %g_type, align 8
  %call1 = call i64 @gdk_modifier_type_get_type() #7
  %call2 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i64 %5, i32 1, i32 160, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__POINTER_UINT_FLAGS, i64 4, i32 3, i64 68, i64 28, i64 %call1)
  store i32 %call2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @motion_buffer_signals, i32 0, i64 0), align 4
  %6 = load %struct._GimpMotionBufferClass*, %struct._GimpMotionBufferClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpMotionBufferClass* %6 to %struct._GTypeClass*
  %g_type3 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type3, align 8
  %call4 = call i64 @gdk_modifier_type_get_type() #7
  %call5 = call i32 (i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) @g_signal_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i64 %8, i32 1, i32 168, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)* null, i8* null, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)* @gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN, i64 4, i32 3, i64 68, i64 %call4, i64 20)
  store i32 %call5, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @motion_buffer_signals, i32 0, i64 1), align 4
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %9, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_motion_buffer_dispose, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_motion_buffer_finalize, void (%struct._GObject*)** %finalize, align 8
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %11, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_motion_buffer_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_motion_buffer_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare i32 @g_signal_new(i8*, i64, i32, i32, i32 (%struct._GSignalInvocationHint*, %struct._GValue*, %struct._GValue*, i8*)*, i8*, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i64, i32, ...) #1

declare void @gimp_marshal_VOID__POINTER_UINT_FLAGS(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gdk_modifier_type_get_type() #2

declare void @gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN(%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %buffer = alloca %struct._GimpMotionBuffer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_motion_buffer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMotionBuffer*
  store %struct._GimpMotionBuffer* %2, %struct._GimpMotionBuffer** %buffer, align 8
  %3 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer, align 8
  %event_delay_timeout = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %3, i32 0, i32 11
  %4 = load i32, i32* %event_delay_timeout, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer, align 8
  %event_delay_timeout2 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %5, i32 0, i32 11
  %6 = load i32, i32* %event_delay_timeout2, align 4
  %call3 = call i32 @g_source_remove(i32 %6)
  %7 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer, align 8
  %event_delay_timeout4 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %7, i32 0, i32 11
  store i32 0, i32* %event_delay_timeout4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i8*, i8** @gimp_motion_buffer_parent_class, align 8
  %9 = bitcast i8* %8 to %struct._GTypeClass*
  %call5 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call5 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 5
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %buffer = alloca %struct._GimpMotionBuffer*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_motion_buffer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpMotionBuffer*
  store %struct._GimpMotionBuffer* %2, %struct._GimpMotionBuffer** %buffer, align 8
  %3 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer, align 8
  %event_history = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %3, i32 0, i32 8
  %4 = load %struct._GArray*, %struct._GArray** %event_history, align 8
  %tobool = icmp ne %struct._GArray* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer, align 8
  %event_history2 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %5, i32 0, i32 8
  %6 = load %struct._GArray*, %struct._GArray** %event_history2, align 8
  %call3 = call i8* @g_array_free(%struct._GArray* %6, i32 1)
  %7 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer, align 8
  %event_history4 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %7, i32 0, i32 8
  store %struct._GArray* null, %struct._GArray** %event_history4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer, align 8
  %event_queue = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %8, i32 0, i32 9
  %9 = load %struct._GArray*, %struct._GArray** %event_queue, align 8
  %tobool5 = icmp ne %struct._GArray* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %10 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer, align 8
  %event_queue7 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %10, i32 0, i32 9
  %11 = load %struct._GArray*, %struct._GArray** %event_queue7, align 8
  %call8 = call i8* @g_array_free(%struct._GArray* %11, i32 1)
  %12 = load %struct._GimpMotionBuffer*, %struct._GimpMotionBuffer** %buffer, align 8
  %event_queue9 = getelementptr inbounds %struct._GimpMotionBuffer, %struct._GimpMotionBuffer* %12, i32 0, i32 9
  store %struct._GArray* null, %struct._GArray** %event_queue9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %13 = load i8*, i8** @gimp_motion_buffer_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call11 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call11 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_motion_buffer_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load i32, i32* %property_id.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %1 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %1, %struct._GObject** %_glib__object, align 8
  %2 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %2, %struct._GParamSpec** %_glib__pspec, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  store i32 %3, i32* %_glib__property_id, align 4
  %4 = load i32, i32* %_glib__property_id, align 4
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 1
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %8 = bitcast %struct._GParamSpec* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %call = call i8* @g_type_name(i64 %10)
  %11 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %12 = bitcast %struct._GObject* %11 to %struct._GTypeInstance*
  %g_class1 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %12, i32 0, i32 0
  %13 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class1, align 8
  %g_type2 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %13, i32 0, i32 0
  %14 = load i64, i64* %g_type2, align 8
  %call3 = call i8* @g_type_name(i64 %14)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %4, i8* %6, i8* %call, i8* %call3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_array_free(%struct._GArray*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare %struct._GArray* @g_array_new(i32, i32, i32) #1

declare %struct._GArray* @g_array_remove_index(%struct._GArray*, i32) #1

declare void @gimp_coords_interpolate_catmull(%struct._GimpCoords* byval align 8, %struct._GimpCoords* byval align 8, %struct._GimpCoords* byval align 8, %struct._GimpCoords* byval align 8, double, %struct._GArray**, %struct._GArray**) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
