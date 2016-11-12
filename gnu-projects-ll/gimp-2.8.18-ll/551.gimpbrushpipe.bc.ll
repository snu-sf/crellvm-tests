; ModuleID = './app/core/gimpbrushpipe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpBrushPipeClass = type { %struct._GimpBrushClass }
%struct._GimpBrushClass = type { %struct._GimpDataClass, void (%struct._GimpBrush*)*, void (%struct._GimpBrush*)*, %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)*, void (%struct._GimpBrush*, double, double, double, i32*, i32*)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, %struct._TempBuf* (%struct._GimpBrush*, double, double, double, double)*, i8** (%struct._GimpBrush*, double, double, double, double, i32*, i32*)*, void (%struct._GimpBrush*)* }
%struct._GimpDataClass = type { %struct._GimpViewableClass, void (%struct._GimpData*)*, i32 (%struct._GimpData*, %struct._GError**)*, i8* (%struct._GimpData*)*, %struct._GimpData* (%struct._GimpData*)* }
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
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpData = type { %struct._GimpViewable }
%struct._GError = type { i32, i32, i8* }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpBrushPipe = type { %struct._GimpBrush, i32, i32*, i32*, i32*, i32*, i32, %struct._GimpBrush**, %struct._GimpBrush* }

@gimp_brush_pipe_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpBrushPipe\00", align 1
@gimp_brush_pipe_parent_class = internal global i8* null, align 8
@GimpBrushPipe_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_brush_pipe_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_brush_pipe_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_brush_pipe_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_brush_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 384, void (i8*, i8*)* bitcast (void (i8*)* @gimp_brush_pipe_class_intern_init to void (i8*, i8*)*), i32 184, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBrushPipe*)* @gimp_brush_pipe_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_brush_pipe_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_brush_pipe_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_pipe_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_brush_pipe_parent_class, align 8
  %1 = load i32, i32* @GimpBrushPipe_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpBrushPipe_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpBrushPipeClass*
  call void @gimp_brush_pipe_class_init(%struct._GimpBrushPipeClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_pipe_init(%struct._GimpBrushPipe* %pipe) #3 {
entry:
  %pipe.addr = alloca %struct._GimpBrushPipe*, align 8
  store %struct._GimpBrushPipe* %pipe, %struct._GimpBrushPipe** %pipe.addr, align 8
  %0 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe.addr, align 8
  %current = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %0, i32 0, i32 8
  store %struct._GimpBrush* null, %struct._GimpBrush** %current, align 8
  %1 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe.addr, align 8
  %dimension = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %1, i32 0, i32 1
  store i32 0, i32* %dimension, align 4
  %2 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe.addr, align 8
  %rank = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %2, i32 0, i32 2
  store i32* null, i32** %rank, align 8
  %3 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe.addr, align 8
  %stride = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %3, i32 0, i32 3
  store i32* null, i32** %stride, align 8
  %4 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe.addr, align 8
  %n_brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %4, i32 0, i32 6
  store i32 0, i32* %n_brushes, align 4
  %5 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe.addr, align 8
  %brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %5, i32 0, i32 7
  store %struct._GimpBrush** null, %struct._GimpBrush*** %brushes, align 8
  %6 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe.addr, align 8
  %select = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %6, i32 0, i32 4
  store i32* null, i32** %select, align 8
  %7 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe.addr, align 8
  %index = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %7, i32 0, i32 5
  store i32* null, i32** %index, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_pipe_class_init(%struct._GimpBrushPipeClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpBrushPipeClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %gimp_object_class = alloca %struct._GimpObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  %brush_class = alloca %struct._GimpBrushClass*, align 8
  store %struct._GimpBrushPipeClass* %klass, %struct._GimpBrushPipeClass** %klass.addr, align 8
  %0 = load %struct._GimpBrushPipeClass*, %struct._GimpBrushPipeClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBrushPipeClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBrushPipeClass*, %struct._GimpBrushPipeClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBrushPipeClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_object_get_type() #4
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpObjectClass*
  store %struct._GimpObjectClass* %5, %struct._GimpObjectClass** %gimp_object_class, align 8
  %6 = load %struct._GimpBrushPipeClass*, %struct._GimpBrushPipeClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpBrushPipeClass* %6 to %struct._GTypeClass*
  %call3 = call i64 @gimp_viewable_get_type() #4
  %call4 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 %call3)
  %8 = bitcast %struct._GTypeClass* %call4 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %8, %struct._GimpViewableClass** %viewable_class, align 8
  %9 = load %struct._GimpBrushPipeClass*, %struct._GimpBrushPipeClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpBrushPipeClass* %9 to %struct._GTypeClass*
  %call5 = call i64 @gimp_brush_get_type() #4
  %call6 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %10, i64 %call5)
  %11 = bitcast %struct._GTypeClass* %call6 to %struct._GimpBrushClass*
  store %struct._GimpBrushClass* %11, %struct._GimpBrushClass** %brush_class, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %12, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_brush_pipe_finalize, void (%struct._GObject*)** %finalize, align 8
  %13 = load %struct._GimpObjectClass*, %struct._GimpObjectClass** %gimp_object_class, align 8
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %13, i32 0, i32 3
  store i64 (%struct._GimpObject*, i64*)* @gimp_brush_pipe_get_memsize, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %14 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %get_popup_size = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %14, i32 0, i32 7
  store i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)* @gimp_brush_pipe_get_popup_size, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)** %get_popup_size, align 8
  %15 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %brush_class, align 8
  %begin_use = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %15, i32 0, i32 1
  store void (%struct._GimpBrush*)* @gimp_brush_pipe_begin_use, void (%struct._GimpBrush*)** %begin_use, align 8
  %16 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %brush_class, align 8
  %end_use = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %16, i32 0, i32 2
  store void (%struct._GimpBrush*)* @gimp_brush_pipe_end_use, void (%struct._GimpBrush*)** %end_use, align 8
  %17 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %brush_class, align 8
  %select_brush = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %17, i32 0, i32 3
  store %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)* @gimp_brush_pipe_select_brush, %struct._GimpBrush* (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)** %select_brush, align 8
  %18 = load %struct._GimpBrushClass*, %struct._GimpBrushClass** %brush_class, align 8
  %want_null_motion = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %18, i32 0, i32 4
  store i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)* @gimp_brush_pipe_want_null_motion, i32 (%struct._GimpBrush*, %struct._GimpCoords*, %struct._GimpCoords*)** %want_null_motion, align 8
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_pipe_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pipe = alloca %struct._GimpBrushPipe*, align 8
  %i = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_pipe_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushPipe*
  store %struct._GimpBrushPipe* %2, %struct._GimpBrushPipe** %pipe, align 8
  %3 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %3, i32 0, i32 2
  %4 = load i32*, i32** %rank, align 8
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank2 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %5, i32 0, i32 2
  %6 = load i32*, i32** %rank2, align 8
  %7 = bitcast i32* %6 to i8*
  call void @g_free(i8* %7)
  %8 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank3 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %8, i32 0, i32 2
  store i32* null, i32** %rank3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %stride = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %9, i32 0, i32 3
  %10 = load i32*, i32** %stride, align 8
  %tobool4 = icmp ne i32* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %11 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %stride6 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %11, i32 0, i32 3
  %12 = load i32*, i32** %stride6, align 8
  %13 = bitcast i32* %12 to i8*
  call void @g_free(i8* %13)
  %14 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %stride7 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %14, i32 0, i32 3
  store i32* null, i32** %stride7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %15 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %15, i32 0, i32 7
  %16 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes, align 8
  %tobool9 = icmp ne %struct._GimpBrush** %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %17 = load i32, i32* %i, align 4
  %18 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %18, i32 0, i32 6
  %19 = load i32, i32* %n_brushes, align 4
  %cmp = icmp slt i32 %17, %19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes11 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %21, i32 0, i32 7
  %22 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes11, align 8
  %arrayidx = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %22, i64 %idxprom
  %23 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx, align 8
  %tobool12 = icmp ne %struct._GimpBrush* %23, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %24 to i64
  %25 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes15 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %25, i32 0, i32 7
  %26 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes15, align 8
  %arrayidx16 = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %26, i64 %idxprom14
  %27 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx16, align 8
  %28 = bitcast %struct._GimpBrush* %27 to i8*
  call void @g_object_unref(i8* %28)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes18 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %30, i32 0, i32 7
  %31 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes18, align 8
  %32 = bitcast %struct._GimpBrush** %31 to i8*
  call void @g_free(i8* %32)
  %33 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes19 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %33, i32 0, i32 7
  store %struct._GimpBrush** null, %struct._GimpBrush*** %brushes19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %if.end.8
  %34 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %34, i32 0, i32 4
  %35 = load i32*, i32** %select, align 8
  %tobool21 = icmp ne i32* %35, null
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.20
  %36 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select23 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %36, i32 0, i32 4
  %37 = load i32*, i32** %select23, align 8
  %38 = bitcast i32* %37 to i8*
  call void @g_free(i8* %38)
  %39 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select24 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %39, i32 0, i32 4
  store i32* null, i32** %select24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.20
  %40 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %40, i32 0, i32 5
  %41 = load i32*, i32** %index, align 8
  %tobool26 = icmp ne i32* %41, null
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.25
  %42 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index28 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %42, i32 0, i32 5
  %43 = load i32*, i32** %index28, align 8
  %44 = bitcast i32* %43 to i8*
  call void @g_free(i8* %44)
  %45 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index29 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %45, i32 0, i32 5
  store i32* null, i32** %index29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.25
  %46 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %47 = bitcast %struct._GimpBrushPipe* %46 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_brush_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call31)
  %48 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpBrush*
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %48, i32 0, i32 1
  store %struct._TempBuf* null, %struct._TempBuf** %mask, align 8
  %49 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %50 = bitcast %struct._GimpBrushPipe* %49 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_brush_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %50, i64 %call33)
  %51 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpBrush*
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %51, i32 0, i32 2
  store %struct._TempBuf* null, %struct._TempBuf** %pixmap, align 8
  %52 = load i8*, i8** @gimp_brush_pipe_parent_class, align 8
  %53 = bitcast i8* %52 to %struct._GTypeClass*
  %call35 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %53, i64 80)
  %54 = bitcast %struct._GTypeClass* %call35 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %54, i32 0, i32 6
  %55 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %56 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %55(%struct._GObject* %56)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @gimp_brush_pipe_get_memsize(%struct._GimpObject* %object, i64* %gui_size) #3 {
entry:
  %object.addr = alloca %struct._GimpObject*, align 8
  %gui_size.addr = alloca i64*, align 8
  %pipe = alloca %struct._GimpBrushPipe*, align 8
  %memsize = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct._GimpObject* %object, %struct._GimpObject** %object.addr, align 8
  store i64* %gui_size, i64** %gui_size.addr, align 8
  %0 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %1 = bitcast %struct._GimpObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_pipe_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushPipe*
  store %struct._GimpBrushPipe* %2, %struct._GimpBrushPipe** %pipe, align 8
  store i64 0, i64* %memsize, align 8
  %3 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %3, i32 0, i32 1
  %4 = load i32, i32* %dimension, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 12
  %5 = load i64, i64* %memsize, align 8
  %add = add i64 %5, %mul
  store i64 %add, i64* %memsize, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %7, i32 0, i32 6
  %8 = load i32, i32* %n_brushes, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %10, i32 0, i32 7
  %11 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes, align 8
  %arrayidx = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %11, i64 %idxprom
  %12 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx, align 8
  %13 = bitcast %struct._GimpBrush* %12 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_object_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call3)
  %14 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpObject*
  %15 = load i64*, i64** %gui_size.addr, align 8
  %call5 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %14, i64* %15)
  %16 = load i64, i64* %memsize, align 8
  %add6 = add nsw i64 %16, %call5
  store i64 %add6, i64* %memsize, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %memsize, align 8
  %19 = load i8*, i8** @gimp_brush_pipe_parent_class, align 8
  %20 = bitcast i8* %19 to %struct._GTypeClass*
  %call7 = call i64 @gimp_object_get_type() #4
  %call8 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %20, i64 %call7)
  %21 = bitcast %struct._GTypeClass* %call8 to %struct._GimpObjectClass*
  %get_memsize = getelementptr inbounds %struct._GimpObjectClass, %struct._GimpObjectClass* %21, i32 0, i32 3
  %22 = load i64 (%struct._GimpObject*, i64*)*, i64 (%struct._GimpObject*, i64*)** %get_memsize, align 8
  %23 = load %struct._GimpObject*, %struct._GimpObject** %object.addr, align 8
  %24 = load i64*, i64** %gui_size.addr, align 8
  %call9 = call i64 %22(%struct._GimpObject* %23, i64* %24)
  %add10 = add nsw i64 %18, %call9
  ret i64 %add10
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_brush_pipe_get_popup_size(%struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %dot_for_dot, i32* %popup_width, i32* %popup_height) #3 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %popup_width.addr = alloca i32*, align 8
  %popup_height.addr = alloca i32*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %popup_width, i32** %popup_width.addr, align 8
  store i32* %popup_height, i32** %popup_height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = load i32*, i32** %popup_width.addr, align 8
  %2 = load i32*, i32** %popup_height.addr, align 8
  %call = call i32 @gimp_viewable_get_size(%struct._GimpViewable* %0, i32* %1, i32* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_pipe_begin_use(%struct._GimpBrush* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %pipe = alloca %struct._GimpBrushPipe*, align 8
  %i = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_pipe_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushPipe*
  store %struct._GimpBrushPipe* %2, %struct._GimpBrushPipe** %pipe, align 8
  %3 = load i8*, i8** @gimp_brush_pipe_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_brush_get_type() #4
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpBrushClass*
  %begin_use = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %5, i32 0, i32 1
  %6 = load void (%struct._GimpBrush*)*, void (%struct._GimpBrush*)** %begin_use, align 8
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  call void %6(%struct._GimpBrush* %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %9, i32 0, i32 6
  %10 = load i32, i32* %n_brushes, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %12, i32 0, i32 7
  %13 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes, align 8
  %arrayidx = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %13, i64 %idxprom
  %14 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx, align 8
  %tobool = icmp ne %struct._GimpBrush* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes5 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %16, i32 0, i32 7
  %17 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes5, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %17, i64 %idxprom4
  %18 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx6, align 8
  call void @gimp_brush_begin_use(%struct._GimpBrush* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_pipe_end_use(%struct._GimpBrush* %brush) #3 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %pipe = alloca %struct._GimpBrushPipe*, align 8
  %i = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_pipe_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushPipe*
  store %struct._GimpBrushPipe* %2, %struct._GimpBrushPipe** %pipe, align 8
  %3 = load i8*, i8** @gimp_brush_pipe_parent_class, align 8
  %4 = bitcast i8* %3 to %struct._GTypeClass*
  %call2 = call i64 @gimp_brush_get_type() #4
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call2)
  %5 = bitcast %struct._GTypeClass* %call3 to %struct._GimpBrushClass*
  %end_use = getelementptr inbounds %struct._GimpBrushClass, %struct._GimpBrushClass* %5, i32 0, i32 2
  %6 = load void (%struct._GimpBrush*)*, void (%struct._GimpBrush*)** %end_use, align 8
  %7 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  call void %6(%struct._GimpBrush* %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %9, i32 0, i32 6
  %10 = load i32, i32* %n_brushes, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %12, i32 0, i32 7
  %13 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes, align 8
  %arrayidx = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %13, i64 %idxprom
  %14 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx, align 8
  %tobool = icmp ne %struct._GimpBrush* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes5 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %16, i32 0, i32 7
  %17 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes5, align 8
  %arrayidx6 = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %17, i64 %idxprom4
  %18 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx6, align 8
  call void @gimp_brush_end_use(%struct._GimpBrush* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpBrush* @gimp_brush_pipe_select_brush(%struct._GimpBrush* %brush, %struct._GimpCoords* %last_coords, %struct._GimpCoords* %current_coords) #3 {
entry:
  %retval = alloca %struct._GimpBrush*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %last_coords.addr = alloca %struct._GimpCoords*, align 8
  %current_coords.addr = alloca %struct._GimpCoords*, align 8
  %pipe = alloca %struct._GimpBrushPipe*, align 8
  %i = alloca i32, align 4
  %brushix = alloca i32, align 4
  %ix = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpCoords* %last_coords, %struct._GimpCoords** %last_coords.addr, align 8
  store %struct._GimpCoords* %current_coords, %struct._GimpCoords** %current_coords.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_pipe_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushPipe*
  store %struct._GimpBrushPipe* %2, %struct._GimpBrushPipe** %pipe, align 8
  %3 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %3, i32 0, i32 6
  %4 = load i32, i32* %n_brushes, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %current = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %5, i32 0, i32 8
  %6 = load %struct._GimpBrush*, %struct._GimpBrush** %current, align 8
  %7 = bitcast %struct._GimpBrush* %6 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_brush_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call2)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpBrush*
  store %struct._GimpBrush* %8, %struct._GimpBrush** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %brushix, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %10, i32 0, i32 1
  %11 = load i32, i32* %dimension, align 4
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %13, i32 0, i32 4
  %14 = load i32*, i32** %select, align 8
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  switch i32 %15, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.9
    i32 3, label %sw.bb.20
    i32 4, label %sw.bb.28
    i32 5, label %sw.bb.33
    i32 6, label %sw.bb.42
    i32 7, label %sw.bb.56
    i32 0, label %sw.bb.71
  ]

sw.bb:                                            ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %17, i32 0, i32 5
  %18 = load i32*, i32** %index, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %18, i64 %idxprom5
  %19 = load i32, i32* %arrayidx6, align 4
  %add = add nsw i32 %19, 1
  %20 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %20 to i64
  %21 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %21, i32 0, i32 2
  %22 = load i32*, i32** %rank, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %22, i64 %idxprom7
  %23 = load i32, i32* %arrayidx8, align 4
  %rem = srem i32 %add, %23
  store i32 %rem, i32* %ix, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body
  %24 = load %struct._GimpCoords*, %struct._GimpCoords** %current_coords.addr, align 8
  %direction = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %24, i32 0, i32 7
  %25 = load double, double* %direction, align 8
  %sub = fsub double 1.000000e+00, %25
  %add10 = fadd double %sub, 2.500000e-01
  %26 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %26 to i64
  %27 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank12 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %27, i32 0, i32 2
  %28 = load i32*, i32** %rank12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %28, i64 %idxprom11
  %29 = load i32, i32* %arrayidx13, align 4
  %conv = sitofp i32 %29 to double
  %mul = fmul double %add10, %conv
  %call14 = call double @rint(double %mul) #4
  %conv15 = fptosi double %call14 to i32
  %30 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %31 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank17 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %31, i32 0, i32 2
  %32 = load i32*, i32** %rank17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %32, i64 %idxprom16
  %33 = load i32, i32* %arrayidx18, align 4
  %rem19 = srem i32 %conv15, %33
  store i32 %rem19, i32* %ix, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %for.body
  %34 = load %struct._GimpCoords*, %struct._GimpCoords** %current_coords.addr, align 8
  %velocity = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %34, i32 0, i32 6
  %35 = load double, double* %velocity, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %36 to i64
  %37 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank22 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %37, i32 0, i32 2
  %38 = load i32*, i32** %rank22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %38, i64 %idxprom21
  %39 = load i32, i32* %arrayidx23, align 4
  %conv24 = sitofp i32 %39 to double
  %mul25 = fmul double %35, %conv24
  %add26 = fadd double %mul25, 5.000000e-01
  %conv27 = fptosi double %add26 to i32
  store i32 %conv27, i32* %ix, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %40 to i64
  %41 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank30 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %41, i32 0, i32 2
  %42 = load i32*, i32** %rank30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %42, i64 %idxprom29
  %43 = load i32, i32* %arrayidx31, align 4
  %call32 = call i32 @g_random_int_range(i32 0, i32 %43)
  store i32 %call32, i32* %ix, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %for.body
  %44 = load %struct._GimpCoords*, %struct._GimpCoords** %current_coords.addr, align 8
  %pressure = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %44, i32 0, i32 2
  %45 = load double, double* %pressure, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %46 to i64
  %47 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank35 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %47, i32 0, i32 2
  %48 = load i32*, i32** %rank35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %48, i64 %idxprom34
  %49 = load i32, i32* %arrayidx36, align 4
  %sub37 = sub nsw i32 %49, 1
  %conv38 = sitofp i32 %sub37 to double
  %mul39 = fmul double %45, %conv38
  %call40 = call double @rint(double %mul39) #4
  %conv41 = fptosi double %call40 to i32
  store i32 %conv41, i32* %ix, align 4
  br label %sw.epilog

sw.bb.42:                                         ; preds = %for.body
  %50 = load %struct._GimpCoords*, %struct._GimpCoords** %current_coords.addr, align 8
  %xtilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %50, i32 0, i32 3
  %51 = load double, double* %xtilt, align 8
  %div = fdiv double %51, 2.000000e+00
  %52 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %52 to i64
  %53 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank44 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %53, i32 0, i32 2
  %54 = load i32*, i32** %rank44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %54, i64 %idxprom43
  %55 = load i32, i32* %arrayidx45, align 4
  %conv46 = sitofp i32 %55 to double
  %mul47 = fmul double %div, %conv46
  %call48 = call double @rint(double %mul47) #4
  %56 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %56 to i64
  %57 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank50 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %57, i32 0, i32 2
  %58 = load i32*, i32** %rank50, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %58, i64 %idxprom49
  %59 = load i32, i32* %arrayidx51, align 4
  %div52 = sdiv i32 %59, 2
  %conv53 = sitofp i32 %div52 to double
  %add54 = fadd double %call48, %conv53
  %conv55 = fptosi double %add54 to i32
  store i32 %conv55, i32* %ix, align 4
  br label %sw.epilog

sw.bb.56:                                         ; preds = %for.body
  %60 = load %struct._GimpCoords*, %struct._GimpCoords** %current_coords.addr, align 8
  %ytilt = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %60, i32 0, i32 4
  %61 = load double, double* %ytilt, align 8
  %div57 = fdiv double %61, 2.000000e+00
  %62 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %62 to i64
  %63 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank59 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %63, i32 0, i32 2
  %64 = load i32*, i32** %rank59, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %64, i64 %idxprom58
  %65 = load i32, i32* %arrayidx60, align 4
  %conv61 = sitofp i32 %65 to double
  %mul62 = fmul double %div57, %conv61
  %call63 = call double @rint(double %mul62) #4
  %66 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %66 to i64
  %67 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank65 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %67, i32 0, i32 2
  %68 = load i32*, i32** %rank65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %68, i64 %idxprom64
  %69 = load i32, i32* %arrayidx66, align 4
  %div67 = sdiv i32 %69, 2
  %conv68 = sitofp i32 %div67 to double
  %add69 = fadd double %call63, %conv68
  %conv70 = fptosi double %add69 to i32
  store i32 %conv70, i32* %ix, align 4
  br label %sw.epilog

sw.bb.71:                                         ; preds = %for.body
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb.71
  %70 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %70 to i64
  %71 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index73 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %71, i32 0, i32 5
  %72 = load i32*, i32** %index73, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %72, i64 %idxprom72
  %73 = load i32, i32* %arrayidx74, align 4
  store i32 %73, i32* %ix, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.56, %sw.bb.42, %sw.bb.33, %sw.bb.28, %sw.bb.20, %sw.bb.9, %sw.bb
  %74 = load i32, i32* %ix, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %75 to i64
  %76 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank76 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %76, i32 0, i32 2
  %77 = load i32*, i32** %rank76, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %77, i64 %idxprom75
  %78 = load i32, i32* %arrayidx77, align 4
  %sub78 = sub nsw i32 %78, 1
  %cmp79 = icmp sgt i32 %74, %sub78
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %79 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %79 to i64
  %80 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %rank82 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %80, i32 0, i32 2
  %81 = load i32*, i32** %rank82, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %81, i64 %idxprom81
  %82 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %82, 1
  br label %cond.end.89

cond.false:                                       ; preds = %sw.epilog
  %83 = load i32, i32* %ix, align 4
  %cmp85 = icmp slt i32 %83, 0
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.false
  br label %cond.end

cond.false.88:                                    ; preds = %cond.false
  %84 = load i32, i32* %ix, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.88, %cond.true.87
  %cond = phi i32 [ 0, %cond.true.87 ], [ %84, %cond.false.88 ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end, %cond.true
  %cond90 = phi i32 [ %sub84, %cond.true ], [ %cond, %cond.end ]
  %85 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %85 to i64
  %86 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index92 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %86, i32 0, i32 5
  %87 = load i32*, i32** %index92, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %87, i64 %idxprom91
  store i32 %cond90, i32* %arrayidx93, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %88 to i64
  %89 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %stride = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %89, i32 0, i32 3
  %90 = load i32*, i32** %stride, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %90, i64 %idxprom94
  %91 = load i32, i32* %arrayidx95, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %92 to i64
  %93 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %index97 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %93, i32 0, i32 5
  %94 = load i32*, i32** %index97, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %94, i64 %idxprom96
  %95 = load i32, i32* %arrayidx98, align 4
  %mul99 = mul nsw i32 %91, %95
  %96 = load i32, i32* %brushix, align 4
  %add100 = add nsw i32 %96, %mul99
  store i32 %add100, i32* %brushix, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.89
  %97 = load i32, i32* %i, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %98 = load i32, i32* %brushix, align 4
  %99 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes101 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %99, i32 0, i32 6
  %100 = load i32, i32* %n_brushes101, align 4
  %sub102 = sub nsw i32 %100, 1
  %cmp103 = icmp sgt i32 %98, %sub102
  br i1 %cmp103, label %cond.true.105, label %cond.false.108

cond.true.105:                                    ; preds = %for.end
  %101 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes106 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %101, i32 0, i32 6
  %102 = load i32, i32* %n_brushes106, align 4
  %sub107 = sub nsw i32 %102, 1
  br label %cond.end.115

cond.false.108:                                   ; preds = %for.end
  %103 = load i32, i32* %brushix, align 4
  %cmp109 = icmp slt i32 %103, 0
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %cond.false.108
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.false.108
  %104 = load i32, i32* %brushix, align 4
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.111
  %cond114 = phi i32 [ 0, %cond.true.111 ], [ %104, %cond.false.112 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end.113, %cond.true.105
  %cond116 = phi i32 [ %sub107, %cond.true.105 ], [ %cond114, %cond.end.113 ]
  store i32 %cond116, i32* %brushix, align 4
  %105 = load i32, i32* %brushix, align 4
  %idxprom117 = sext i32 %105 to i64
  %106 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %106, i32 0, i32 7
  %107 = load %struct._GimpBrush**, %struct._GimpBrush*** %brushes, align 8
  %arrayidx118 = getelementptr inbounds %struct._GimpBrush*, %struct._GimpBrush** %107, i64 %idxprom117
  %108 = load %struct._GimpBrush*, %struct._GimpBrush** %arrayidx118, align 8
  %109 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %current119 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %109, i32 0, i32 8
  store %struct._GimpBrush* %108, %struct._GimpBrush** %current119, align 8
  %110 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %current120 = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %110, i32 0, i32 8
  %111 = load %struct._GimpBrush*, %struct._GimpBrush** %current120, align 8
  %112 = bitcast %struct._GimpBrush* %111 to %struct._GTypeInstance*
  %call121 = call i64 @gimp_brush_get_type() #4
  %call122 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call121)
  %113 = bitcast %struct._GTypeInstance* %call122 to %struct._GimpBrush*
  store %struct._GimpBrush* %113, %struct._GimpBrush** %retval
  br label %return

return:                                           ; preds = %cond.end.115, %if.then
  %114 = load %struct._GimpBrush*, %struct._GimpBrush** %retval
  ret %struct._GimpBrush* %114
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_brush_pipe_want_null_motion(%struct._GimpBrush* %brush, %struct._GimpCoords* %last_coords, %struct._GimpCoords* %current_coords) #3 {
entry:
  %retval = alloca i32, align 4
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %last_coords.addr = alloca %struct._GimpCoords*, align 8
  %current_coords.addr = alloca %struct._GimpCoords*, align 8
  %pipe = alloca %struct._GimpBrushPipe*, align 8
  %i = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store %struct._GimpCoords* %last_coords, %struct._GimpCoords** %last_coords.addr, align 8
  store %struct._GimpCoords* %current_coords, %struct._GimpCoords** %current_coords.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = bitcast %struct._GimpBrush* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_brush_pipe_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBrushPipe*
  store %struct._GimpBrushPipe* %2, %struct._GimpBrushPipe** %pipe, align 8
  %3 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %n_brushes = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %3, i32 0, i32 6
  %4 = load i32, i32* %n_brushes, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %dimension = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %6, i32 0, i32 1
  %7 = load i32, i32* %dimension, align 4
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._GimpBrushPipe*, %struct._GimpBrushPipe** %pipe, align 8
  %select = getelementptr inbounds %struct._GimpBrushPipe, %struct._GimpBrushPipe* %9, i32 0, i32 4
  %10 = load i32*, i32** %select, align 8
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp eq i32 %11, 2
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare void @g_object_unref(i8*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

declare i32 @gimp_viewable_get_size(%struct._GimpViewable*, i32*, i32*) #1

declare void @gimp_brush_begin_use(%struct._GimpBrush*) #1

declare void @gimp_brush_end_use(%struct._GimpBrush*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #2

declare i32 @g_random_int_range(i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
