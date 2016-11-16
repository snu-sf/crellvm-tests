; ModuleID = './libgimp/gimpimage.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParasite = type { i8*, i32, i32, i8* }

; Function Attrs: nounwind uwtable
define i8* @gimp_image_get_colormap(i32 %image_ID, i32* %num_colors) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_colors.addr = alloca i32*, align 8
  %num_bytes = alloca i32, align 4
  %cmap = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %num_colors, i32** %num_colors.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %call = call i8* @_gimp_image_get_colormap(i32 %0, i32* %num_bytes)
  store i8* %call, i8** %cmap, align 8
  %1 = load i32*, i32** %num_colors.addr, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %num_bytes, align 4
  %div = sdiv i32 %2, 3
  %3 = load i32*, i32** %num_colors.addr, align 8
  store i32 %div, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %cmap, align 8
  ret i8* %4
}

declare hidden i8* @_gimp_image_get_colormap(i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_colormap(i32 %image_ID, i8* %colormap, i32 %num_colors) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %colormap.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %colormap, i8** %colormap.addr, align 8
  store i32 %num_colors, i32* %num_colors.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %num_colors.addr, align 4
  %mul = mul nsw i32 %1, 3
  %2 = load i8*, i8** %colormap.addr, align 8
  %call = call i32 @_gimp_image_set_colormap(i32 %0, i32 %mul, i8* %2)
  ret i32 %call
}

declare hidden i32 @_gimp_image_set_colormap(i32, i32, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_image_get_thumbnail_data(i32 %image_ID, i32* %width, i32* %height, i32* %bpp) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %bpp.addr = alloca i32*, align 8
  %ret_width = alloca i32, align 4
  %ret_height = alloca i32, align 4
  %image_data = alloca i8*, align 8
  %data_size = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  store i32* %bpp, i32** %bpp.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32*, i32** %width.addr, align 8
  %2 = load i32, i32* %1, align 4
  %3 = load i32*, i32** %height.addr, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** %bpp.addr, align 8
  %call = call i32 @_gimp_image_thumbnail(i32 %0, i32 %2, i32 %4, i32* %ret_width, i32* %ret_height, i32* %5, i32* %data_size, i8** %image_data)
  %6 = load i32, i32* %ret_width, align 4
  %7 = load i32*, i32** %width.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %ret_height, align 4
  %9 = load i32*, i32** %height.addr, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i8*, i8** %image_data, align 8
  ret i8* %10
}

declare hidden i32 @_gimp_image_thumbnail(i32, i32, i32, i32*, i32*, i32*, i32*, i8**) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_image_get_cmap(i32 %image_ID, i32* %num_colors) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_colors.addr = alloca i32*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %num_colors, i32** %num_colors.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32*, i32** %num_colors.addr, align 8
  %call = call i8* @gimp_image_get_colormap(i32 %0, i32* %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_set_cmap(i32 %image_ID, i8* %cmap, i32 %num_colors) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %cmap.addr = alloca i8*, align 8
  %num_colors.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %cmap, i8** %cmap.addr, align 8
  store i32 %num_colors, i32* %num_colors.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %cmap.addr, align 8
  %2 = load i32, i32* %num_colors.addr, align 4
  %call = call i32 @gimp_image_set_colormap(i32 %0, i8* %1, i32 %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_layer_position(i32 %image_ID, i32 %layer_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %layer_ID.addr, align 4
  %call = call i32 @gimp_image_get_item_position(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_image_get_item_position(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_raise_layer(i32 %image_ID, i32 %layer_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %layer_ID.addr, align 4
  %call = call i32 @gimp_image_raise_item(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_image_raise_item(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_lower_layer(i32 %image_ID, i32 %layer_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %layer_ID.addr, align 4
  %call = call i32 @gimp_image_lower_item(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_image_lower_item(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_raise_layer_to_top(i32 %image_ID, i32 %layer_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %layer_ID.addr, align 4
  %call = call i32 @gimp_image_raise_item_to_top(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_image_raise_item_to_top(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_lower_layer_to_bottom(i32 %image_ID, i32 %layer_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %layer_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %layer_ID, i32* %layer_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %layer_ID.addr, align 4
  %call = call i32 @gimp_image_lower_item_to_bottom(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_image_lower_item_to_bottom(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_channel_position(i32 %image_ID, i32 %channel_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %channel_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %channel_ID.addr, align 4
  %call = call i32 @gimp_image_get_item_position(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_raise_channel(i32 %image_ID, i32 %channel_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %channel_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %channel_ID.addr, align 4
  %call = call i32 @gimp_image_raise_item(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_lower_channel(i32 %image_ID, i32 %channel_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %channel_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %channel_ID, i32* %channel_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %channel_ID.addr, align 4
  %call = call i32 @gimp_image_lower_item(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_vectors_position(i32 %image_ID, i32 %vectors_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_image_get_item_position(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_raise_vectors(i32 %image_ID, i32 %vectors_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_image_raise_item(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_lower_vectors(i32 %image_ID, i32 %vectors_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_image_lower_item(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_raise_vectors_to_top(i32 %image_ID, i32 %vectors_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_image_raise_item_to_top(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gimp_image_lower_vectors_to_bottom(i32 %image_ID, i32 %vectors_ID) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %vectors_ID.addr = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_image_lower_item_to_bottom(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_image_parasite_find(i32 %image_ID, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParasite* @gimp_image_get_parasite(i32 %0, i8* %1)
  ret %struct._GimpParasite* %call
}

declare %struct._GimpParasite* @gimp_image_get_parasite(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_parasite_attach(i32 %image_ID, %struct._GimpParasite* %parasite) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i32 @gimp_image_attach_parasite(i32 %0, %struct._GimpParasite* %1)
  ret i32 %call
}

declare i32 @gimp_image_attach_parasite(i32, %struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_parasite_detach(i32 %image_ID, i8* %name) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32 @gimp_image_detach_parasite(i32 %0, i8* %1)
  ret i32 %call
}

declare i32 @gimp_image_detach_parasite(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_parasite_list(i32 %image_ID, i32* %num_parasites, i8*** %parasites) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %num_parasites.addr = alloca i32*, align 8
  %parasites.addr = alloca i8***, align 8
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i32* %num_parasites, i32** %num_parasites.addr, align 8
  store i8*** %parasites, i8**** %parasites.addr, align 8
  %0 = load i32, i32* %image_ID.addr, align 4
  %1 = load i32*, i32** %num_parasites.addr, align 8
  %call = call i8** @gimp_image_get_parasite_list(i32 %0, i32* %1)
  %2 = load i8***, i8**** %parasites.addr, align 8
  store i8** %call, i8*** %2, align 8
  %3 = load i8***, i8**** %parasites.addr, align 8
  %4 = load i8**, i8*** %3, align 8
  %cmp = icmp ne i8** %4, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8** @gimp_image_get_parasite_list(i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_attach_new_parasite(i32 %image_ID, i8* %name, i32 %flags, i32 %size, i8* %data) #0 {
entry:
  %image_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %parasite = alloca %struct._GimpParasite*, align 8
  %success = alloca i32, align 4
  store i32 %image_ID, i32* %image_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i32, i32* %flags.addr, align 4
  %2 = load i32, i32* %size.addr, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpParasite* @gimp_parasite_new(i8* %0, i32 %1, i32 %2, i8* %3)
  store %struct._GimpParasite* %call, %struct._GimpParasite** %parasite, align 8
  %4 = load i32, i32* %image_ID.addr, align 4
  %5 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  %call1 = call i32 @gimp_image_attach_parasite(i32 %4, %struct._GimpParasite* %5)
  store i32 %call1, i32* %success, align 4
  %6 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite, align 8
  call void @gimp_parasite_free(%struct._GimpParasite* %6)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

declare %struct._GimpParasite* @gimp_parasite_new(i8*, i32, i32, i8*) #1

declare void @gimp_parasite_free(%struct._GimpParasite*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
