; ModuleID = './app/pdb/internal-procs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPDB = type { %struct._GimpObject, %struct._Gimp*, %struct._GHashTable*, %struct._GHashTable* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GHashTable = type opaque

@.str = private unnamed_addr constant [9 x i8] c"Gimp-PDB\00", align 1
@__func__.internal_procs_init = private unnamed_addr constant [20 x i8] c"internal_procs_init\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"GIMP_IS_PDB (pdb)\00", align 1

; Function Attrs: nounwind uwtable
define void @internal_procs_init(%struct._GimpPDB* %pdb) #0 {
entry:
  %pdb.addr = alloca %struct._GimpPDB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpPDB* %pdb, %struct._GimpPDB** %pdb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  %1 = bitcast %struct._GimpPDB* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pdb_get_type() #4
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.internal_procs_init, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_brush_procs(%struct._GimpPDB* %13)
  %14 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_brush_select_procs(%struct._GimpPDB* %14)
  %15 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_brushes_procs(%struct._GimpPDB* %15)
  %16 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_buffer_procs(%struct._GimpPDB* %16)
  %17 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_channel_procs(%struct._GimpPDB* %17)
  %18 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_color_procs(%struct._GimpPDB* %18)
  %19 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_context_procs(%struct._GimpPDB* %19)
  %20 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_convert_procs(%struct._GimpPDB* %20)
  %21 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_display_procs(%struct._GimpPDB* %21)
  %22 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_drawable_procs(%struct._GimpPDB* %22)
  %23 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_drawable_transform_procs(%struct._GimpPDB* %23)
  %24 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_dynamics_procs(%struct._GimpPDB* %24)
  %25 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_edit_procs(%struct._GimpPDB* %25)
  %26 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_fileops_procs(%struct._GimpPDB* %26)
  %27 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_floating_sel_procs(%struct._GimpPDB* %27)
  %28 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_font_select_procs(%struct._GimpPDB* %28)
  %29 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_fonts_procs(%struct._GimpPDB* %29)
  %30 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_gimp_procs(%struct._GimpPDB* %30)
  %31 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_gimprc_procs(%struct._GimpPDB* %31)
  %32 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_gradient_procs(%struct._GimpPDB* %32)
  %33 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_gradient_select_procs(%struct._GimpPDB* %33)
  %34 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_gradients_procs(%struct._GimpPDB* %34)
  %35 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_grid_procs(%struct._GimpPDB* %35)
  %36 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_guides_procs(%struct._GimpPDB* %36)
  %37 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_help_procs(%struct._GimpPDB* %37)
  %38 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_image_procs(%struct._GimpPDB* %38)
  %39 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_image_select_procs(%struct._GimpPDB* %39)
  %40 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_item_procs(%struct._GimpPDB* %40)
  %41 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_item_transform_procs(%struct._GimpPDB* %41)
  %42 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_layer_procs(%struct._GimpPDB* %42)
  %43 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_message_procs(%struct._GimpPDB* %43)
  %44 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_paint_tools_procs(%struct._GimpPDB* %44)
  %45 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_palette_procs(%struct._GimpPDB* %45)
  %46 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_palette_select_procs(%struct._GimpPDB* %46)
  %47 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_palettes_procs(%struct._GimpPDB* %47)
  %48 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_paths_procs(%struct._GimpPDB* %48)
  %49 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_pattern_procs(%struct._GimpPDB* %49)
  %50 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_pattern_select_procs(%struct._GimpPDB* %50)
  %51 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_patterns_procs(%struct._GimpPDB* %51)
  %52 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_plug_in_procs(%struct._GimpPDB* %52)
  %53 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_procedural_db_procs(%struct._GimpPDB* %53)
  %54 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_progress_procs(%struct._GimpPDB* %54)
  %55 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_selection_procs(%struct._GimpPDB* %55)
  %56 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_selection_tools_procs(%struct._GimpPDB* %56)
  %57 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_text_layer_procs(%struct._GimpPDB* %57)
  %58 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_text_tool_procs(%struct._GimpPDB* %58)
  %59 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_transform_tools_procs(%struct._GimpPDB* %59)
  %60 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_undo_procs(%struct._GimpPDB* %60)
  %61 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_unit_procs(%struct._GimpPDB* %61)
  %62 = load %struct._GimpPDB*, %struct._GimpPDB** %pdb.addr, align 8
  call void @register_vectors_procs(%struct._GimpPDB* %62)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pdb_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare void @register_brush_procs(%struct._GimpPDB*) #3

declare void @register_brush_select_procs(%struct._GimpPDB*) #3

declare void @register_brushes_procs(%struct._GimpPDB*) #3

declare void @register_buffer_procs(%struct._GimpPDB*) #3

declare void @register_channel_procs(%struct._GimpPDB*) #3

declare void @register_color_procs(%struct._GimpPDB*) #3

declare void @register_context_procs(%struct._GimpPDB*) #3

declare void @register_convert_procs(%struct._GimpPDB*) #3

declare void @register_display_procs(%struct._GimpPDB*) #3

declare void @register_drawable_procs(%struct._GimpPDB*) #3

declare void @register_drawable_transform_procs(%struct._GimpPDB*) #3

declare void @register_dynamics_procs(%struct._GimpPDB*) #3

declare void @register_edit_procs(%struct._GimpPDB*) #3

declare void @register_fileops_procs(%struct._GimpPDB*) #3

declare void @register_floating_sel_procs(%struct._GimpPDB*) #3

declare void @register_font_select_procs(%struct._GimpPDB*) #3

declare void @register_fonts_procs(%struct._GimpPDB*) #3

declare void @register_gimp_procs(%struct._GimpPDB*) #3

declare void @register_gimprc_procs(%struct._GimpPDB*) #3

declare void @register_gradient_procs(%struct._GimpPDB*) #3

declare void @register_gradient_select_procs(%struct._GimpPDB*) #3

declare void @register_gradients_procs(%struct._GimpPDB*) #3

declare void @register_grid_procs(%struct._GimpPDB*) #3

declare void @register_guides_procs(%struct._GimpPDB*) #3

declare void @register_help_procs(%struct._GimpPDB*) #3

declare void @register_image_procs(%struct._GimpPDB*) #3

declare void @register_image_select_procs(%struct._GimpPDB*) #3

declare void @register_item_procs(%struct._GimpPDB*) #3

declare void @register_item_transform_procs(%struct._GimpPDB*) #3

declare void @register_layer_procs(%struct._GimpPDB*) #3

declare void @register_message_procs(%struct._GimpPDB*) #3

declare void @register_paint_tools_procs(%struct._GimpPDB*) #3

declare void @register_palette_procs(%struct._GimpPDB*) #3

declare void @register_palette_select_procs(%struct._GimpPDB*) #3

declare void @register_palettes_procs(%struct._GimpPDB*) #3

declare void @register_paths_procs(%struct._GimpPDB*) #3

declare void @register_pattern_procs(%struct._GimpPDB*) #3

declare void @register_pattern_select_procs(%struct._GimpPDB*) #3

declare void @register_patterns_procs(%struct._GimpPDB*) #3

declare void @register_plug_in_procs(%struct._GimpPDB*) #3

declare void @register_procedural_db_procs(%struct._GimpPDB*) #3

declare void @register_progress_procs(%struct._GimpPDB*) #3

declare void @register_selection_procs(%struct._GimpPDB*) #3

declare void @register_selection_tools_procs(%struct._GimpPDB*) #3

declare void @register_text_layer_procs(%struct._GimpPDB*) #3

declare void @register_text_tool_procs(%struct._GimpPDB*) #3

declare void @register_transform_tools_procs(%struct._GimpPDB*) #3

declare void @register_undo_procs(%struct._GimpPDB*) #3

declare void @register_unit_procs(%struct._GimpPDB*) #3

declare void @register_vectors_procs(%struct._GimpPDB*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
