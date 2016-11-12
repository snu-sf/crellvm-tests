; ModuleID = './app/display/gimpmultiwindowstrategy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpMultiWindowStrategyClass = type { %struct._GimpObjectClass }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpMultiWindowStrategy = type { %struct._GimpObject }
%struct._GimpWindowStrategyInterface = type { %struct._GTypeInterface, %struct._GtkWidget* (%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpWindowStrategy = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque

@gimp_multi_window_strategy_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GimpMultiWindowStrategy\00", align 1
@gimp_multi_window_strategy_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpWindowStrategyInterface*)* @gimp_multi_window_strategy_window_strategy_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@gimp_multi_window_strategy_get_singleton.singleton = internal global %struct._GimpObject* null, align 8
@gimp_multi_window_strategy_parent_class = internal global i8* null, align 8
@GimpMultiWindowStrategy_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_multi_window_strategy_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_multi_window_strategy_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_multi_window_strategy_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_object_get_type() #4
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_multi_window_strategy_class_intern_init to void (i8*, i8*)*), i32 32, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpMultiWindowStrategy*)* @gimp_multi_window_strategy_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_window_strategy_interface_get_type() #4
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_multi_window_strategy_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_multi_window_strategy_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_multi_window_strategy_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_multi_window_strategy_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_multi_window_strategy_parent_class, align 8
  %1 = load i32, i32* @GimpMultiWindowStrategy_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpMultiWindowStrategy_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpMultiWindowStrategyClass*
  call void @gimp_multi_window_strategy_class_init(%struct._GimpMultiWindowStrategyClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_multi_window_strategy_init(%struct._GimpMultiWindowStrategy* %strategy) #3 {
entry:
  %strategy.addr = alloca %struct._GimpMultiWindowStrategy*, align 8
  store %struct._GimpMultiWindowStrategy* %strategy, %struct._GimpMultiWindowStrategy** %strategy.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_multi_window_strategy_window_strategy_iface_init(%struct._GimpWindowStrategyInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpWindowStrategyInterface*, align 8
  store %struct._GimpWindowStrategyInterface* %iface, %struct._GimpWindowStrategyInterface** %iface.addr, align 8
  %0 = load %struct._GimpWindowStrategyInterface*, %struct._GimpWindowStrategyInterface** %iface.addr, align 8
  %show_dockable_dialog = getelementptr inbounds %struct._GimpWindowStrategyInterface, %struct._GimpWindowStrategyInterface* %0, i32 0, i32 1
  store %struct._GtkWidget* (%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*)* @gimp_multi_window_strategy_show_dockable_dialog, %struct._GtkWidget* (%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*)** %show_dockable_dialog, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpObject* @gimp_multi_window_strategy_get_singleton() #3 {
entry:
  %0 = load %struct._GimpObject*, %struct._GimpObject** @gimp_multi_window_strategy_get_singleton.singleton, align 8
  %tobool = icmp ne %struct._GimpObject* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @gimp_multi_window_strategy_get_type() #4
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %1 = bitcast i8* %call1 to %struct._GimpObject*
  store %struct._GimpObject* %1, %struct._GimpObject** @gimp_multi_window_strategy_get_singleton.singleton, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpObject*, %struct._GimpObject** @gimp_multi_window_strategy_get_singleton.singleton, align 8
  ret %struct._GimpObject* %2
}

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_multi_window_strategy_class_init(%struct._GimpMultiWindowStrategyClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpMultiWindowStrategyClass*, align 8
  store %struct._GimpMultiWindowStrategyClass* %klass, %struct._GimpMultiWindowStrategyClass** %klass.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @gimp_multi_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %strategy, %struct._Gimp* %gimp, %struct._GimpDialogFactory* %factory, %struct._GdkScreen* %screen, i8* %identifiers) #3 {
entry:
  %strategy.addr = alloca %struct._GimpWindowStrategy*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %screen.addr = alloca %struct._GdkScreen*, align 8
  %identifiers.addr = alloca i8*, align 8
  store %struct._GimpWindowStrategy* %strategy, %struct._GimpWindowStrategy** %strategy.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpDialogFactory* %factory, %struct._GimpDialogFactory** %factory.addr, align 8
  store %struct._GdkScreen* %screen, %struct._GdkScreen** %screen.addr, align 8
  store i8* %identifiers, i8** %identifiers.addr, align 8
  %0 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %factory.addr, align 8
  %1 = load %struct._GdkScreen*, %struct._GdkScreen** %screen.addr, align 8
  %2 = load i8*, i8** %identifiers.addr, align 8
  %call = call %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory* %0, %struct._GdkScreen* %1, i8* %2, i32 -1)
  ret %struct._GtkWidget* %call
}

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory*, %struct._GdkScreen*, i8*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
