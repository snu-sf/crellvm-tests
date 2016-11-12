; ModuleID = './plug-ins/imagemap/imap_cmd_insert_point.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandClass_t = type { void (%struct.Command_t*)*, i32 (%struct.Command_t*)*, void (%struct.Command_t*)*, void (%struct.Command_t*)* }
%struct.Command_t = type { %struct.CommandClass_t*, %struct.CommandList_t*, i8*, i32 }
%struct.CommandList_t = type { %struct.CommandList_t*, i32, %struct._GList*, %struct._GList*, %struct._GList*, %struct.CommandListCallback_t }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.CommandListCallback_t = type { %struct._GList* }
%struct.Object_t = type { %struct.ObjectClass_t*, %struct.ObjectList_t*, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ObjectClass_t = type { i8*, %struct.AreaInfoDialog_t*, %struct._GdkDrawable*, %struct._GdkDrawable*, i32 (%struct.Object_t*)*, void (%struct.Object_t*)*, %struct.Object_t* (%struct.Object_t*)*, void (%struct.Object_t*, %struct.Object_t*)*, void (%struct.Object_t*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, %struct._cairo*)*, void (%struct.Object_t*, i32, i32)* (%struct.Object_t*, i32, i32)*, i32 (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32*, i32*, i32*, i32*)*, void (%struct.Object_t*, i32, i32)*, void (%struct.Object_t*, i32, i32)*, i8* (%struct._GtkWidget*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, i8*, void (i8*, i8*, ...)*)*, void (%struct.Object_t*, %struct._GdkEventButton*)*, i8* ()* }
%struct.AreaInfoDialog_t = type { %struct.DefaultDialog_t*, %struct.Object_t*, %struct.Object_t*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8* }
%struct.DefaultDialog_t = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, void (i8*)*, i8*, void (i8*)*, i8*, void (i8*)*, i8* }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._PangoFontDescription = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._cairo = type opaque
%struct._GdkEventButton = type { i32, %struct._GdkDrawable*, i8, i32, double, double, double*, i32, i32, %struct._GdkDevice*, double, double }
%struct._GdkDevice = type { %struct._GObject, i8*, i32, i32, i32, i32, %struct._GdkDeviceAxis*, i32, %struct._GdkDeviceKey* }
%struct._GdkDeviceAxis = type { i32, double, double }
%struct._GdkDeviceKey = type { i32, i32 }
%struct.ObjectList_t = type { %struct._GList*, i32, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t, %struct.ObjectListCallback_t }
%struct.ObjectListCallback_t = type { %struct._GList* }
%struct.InsertPointCommand_t = type { %struct.Command_t, %struct.Polygon_t*, i32, i32, i32, i32 }
%struct.Polygon_t = type { %struct.Object_t, %struct._GList* }
%struct._GdkPoint = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Insert Point\00", align 1
@insert_point_command_class = internal global %struct.CommandClass_t { void (%struct.Command_t*)* null, i32 (%struct.Command_t*)* @insert_point_command_execute, void (%struct.Command_t*)* @insert_point_command_undo, void (%struct.Command_t*)* null }, align 8

; Function Attrs: nounwind uwtable
define %struct.Command_t* @insert_point_command_new(%struct.Object_t* %obj, i32 %x, i32 %y, i32 %edge) #0 {
entry:
  %obj.addr = alloca %struct.Object_t*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %edge.addr = alloca i32, align 4
  %command = alloca %struct.InsertPointCommand_t*, align 8
  store %struct.Object_t* %obj, %struct.Object_t** %obj.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %edge, i32* %edge.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 56)
  %0 = bitcast i8* %call to %struct.InsertPointCommand_t*
  store %struct.InsertPointCommand_t* %0, %struct.InsertPointCommand_t** %command, align 8
  %1 = load %struct.Object_t*, %struct.Object_t** %obj.addr, align 8
  %2 = bitcast %struct.Object_t* %1 to %struct.Polygon_t*
  %3 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %polygon = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %3, i32 0, i32 1
  store %struct.Polygon_t* %2, %struct.Polygon_t** %polygon, align 8
  %4 = load i32, i32* %x.addr, align 4
  %5 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %x1 = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %5, i32 0, i32 2
  store i32 %4, i32* %x1, align 4
  %6 = load i32, i32* %y.addr, align 4
  %7 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %y2 = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %7, i32 0, i32 3
  store i32 %6, i32* %y2, align 4
  %8 = load i32, i32* %edge.addr, align 4
  %9 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %edge3 = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %9, i32 0, i32 4
  store i32 %8, i32* %edge3, align 4
  %10 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %parent = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %10, i32 0, i32 0
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #3
  %call5 = call %struct.Command_t* @command_init(%struct.Command_t* %parent, i8* %call4, %struct.CommandClass_t* @insert_point_command_class)
  ret %struct.Command_t* %call5
}

declare noalias i8* @g_malloc_n(i64, i64) #1

declare %struct.Command_t* @command_init(%struct.Command_t*, i8*, %struct.CommandClass_t*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @insert_point_command_execute(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.InsertPointCommand_t*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %point = alloca %struct._GdkPoint*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.InsertPointCommand_t*
  store %struct.InsertPointCommand_t* %1, %struct.InsertPointCommand_t** %command, align 8
  %2 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %polygon1 = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %2, i32 0, i32 1
  %3 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon1, align 8
  store %struct.Polygon_t* %3, %struct.Polygon_t** %polygon, align 8
  %4 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %x = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %4, i32 0, i32 2
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %y = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %6, i32 0, i32 3
  %7 = load i32, i32* %y, align 4
  %call = call %struct._GdkPoint* @new_point(i32 %5, i32 %7)
  store %struct._GdkPoint* %call, %struct._GdkPoint** %point, align 8
  %8 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %points, align 8
  %call2 = call i32 @g_list_length(%struct._GList* %9)
  %10 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %edge = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %10, i32 0, i32 4
  %11 = load i32, i32* %edge, align 4
  %sub = sub nsw i32 %11, 1
  %cmp = icmp eq i32 %call2, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points3 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %12, i32 0, i32 1
  %13 = load %struct._GList*, %struct._GList** %points3, align 8
  %14 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %15 = bitcast %struct._GdkPoint* %14 to i8*
  %call4 = call %struct._GList* @g_list_append(%struct._GList* %13, i8* %15)
  %16 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points5 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %16, i32 0, i32 1
  store %struct._GList* %call4, %struct._GList** %points5, align 8
  %17 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %edge6 = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %17, i32 0, i32 4
  %18 = load i32, i32* %edge6, align 4
  %sub7 = sub nsw i32 %18, 1
  %19 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %position = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %19, i32 0, i32 5
  store i32 %sub7, i32* %position, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points8 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %20, i32 0, i32 1
  %21 = load %struct._GList*, %struct._GList** %points8, align 8
  %22 = load %struct._GdkPoint*, %struct._GdkPoint** %point, align 8
  %23 = bitcast %struct._GdkPoint* %22 to i8*
  %24 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %edge9 = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %24, i32 0, i32 4
  %25 = load i32, i32* %edge9, align 4
  %call10 = call %struct._GList* @g_list_insert(%struct._GList* %21, i8* %23, i32 %25)
  %26 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points11 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %26, i32 0, i32 1
  store %struct._GList* %call10, %struct._GList** %points11, align 8
  %27 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %edge12 = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %27, i32 0, i32 4
  %28 = load i32, i32* %edge12, align 4
  %29 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %position13 = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %29, i32 0, i32 5
  store i32 %28, i32* %position13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @preview_redraw()
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @insert_point_command_undo(%struct.Command_t* %parent) #0 {
entry:
  %parent.addr = alloca %struct.Command_t*, align 8
  %command = alloca %struct.InsertPointCommand_t*, align 8
  %polygon = alloca %struct.Polygon_t*, align 8
  %p = alloca %struct._GList*, align 8
  store %struct.Command_t* %parent, %struct.Command_t** %parent.addr, align 8
  %0 = load %struct.Command_t*, %struct.Command_t** %parent.addr, align 8
  %1 = bitcast %struct.Command_t* %0 to %struct.InsertPointCommand_t*
  store %struct.InsertPointCommand_t* %1, %struct.InsertPointCommand_t** %command, align 8
  %2 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %polygon1 = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %2, i32 0, i32 1
  %3 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon1, align 8
  store %struct.Polygon_t* %3, %struct.Polygon_t** %polygon, align 8
  %4 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %points, align 8
  %6 = load %struct.InsertPointCommand_t*, %struct.InsertPointCommand_t** %command, align 8
  %position = getelementptr inbounds %struct.InsertPointCommand_t, %struct.InsertPointCommand_t* %6, i32 0, i32 5
  %7 = load i32, i32* %position, align 4
  %call = call %struct._GList* @g_list_nth(%struct._GList* %5, i32 %7)
  store %struct._GList* %call, %struct._GList** %p, align 8
  %8 = load %struct._GList*, %struct._GList** %p, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  call void @g_free(i8* %9)
  %10 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points2 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %points2, align 8
  %12 = load %struct._GList*, %struct._GList** %p, align 8
  %call3 = call %struct._GList* @g_list_remove_link(%struct._GList* %11, %struct._GList* %12)
  %13 = load %struct.Polygon_t*, %struct.Polygon_t** %polygon, align 8
  %points4 = getelementptr inbounds %struct.Polygon_t, %struct.Polygon_t* %13, i32 0, i32 1
  store %struct._GList* %call3, %struct._GList** %points4, align 8
  call void @preview_redraw()
  ret void
}

declare %struct._GdkPoint* @new_point(i32, i32) #1

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare %struct._GList* @g_list_insert(%struct._GList*, i8*, i32) #1

declare void @preview_redraw() #1

declare %struct._GList* @g_list_nth(%struct._GList*, i32) #1

declare void @g_free(i8*) #1

declare %struct._GList* @g_list_remove_link(%struct._GList*, %struct._GList*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
