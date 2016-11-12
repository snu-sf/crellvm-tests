; ModuleID = './libgimp/gimpvectors.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParasite = type { i8*, i32, i32, i8* }

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_is_valid(i32 %vectors_ID) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_item_is_valid(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_is_valid(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_get_image(i32 %vectors_ID) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_item_get_image(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_get_image(i32) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_vectors_get_name(i32 %vectors_ID) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i8* @gimp_item_get_name(i32 %0)
  ret i8* %call
}

declare i8* @gimp_item_get_name(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_set_name(i32 %vectors_ID, i8* %name) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32 @gimp_item_set_name(i32 %0, i8* %1)
  ret i32 %call
}

declare i32 @gimp_item_set_name(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_get_visible(i32 %vectors_ID) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_item_get_visible(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_get_visible(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_set_visible(i32 %vectors_ID, i32 %visible) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %visible.addr = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %visible, i32* %visible.addr, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %visible.addr, align 4
  %call = call i32 @gimp_item_set_visible(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_item_set_visible(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_get_linked(i32 %vectors_ID) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_item_get_linked(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_get_linked(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_set_linked(i32 %vectors_ID, i32 %linked) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %linked.addr = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %linked, i32* %linked.addr, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %linked.addr, align 4
  %call = call i32 @gimp_item_set_linked(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_item_set_linked(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_get_tattoo(i32 %vectors_ID) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %call = call i32 @gimp_item_get_tattoo(i32 %0)
  ret i32 %call
}

declare i32 @gimp_item_get_tattoo(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_set_tattoo(i32 %vectors_ID, i32 %tattoo) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %tattoo.addr = alloca i32, align 4
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32 %tattoo, i32* %tattoo.addr, align 4
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32, i32* %tattoo.addr, align 4
  %call = call i32 @gimp_item_set_tattoo(i32 %0, i32 %1)
  ret i32 %call
}

declare i32 @gimp_item_set_tattoo(i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct._GimpParasite* @gimp_vectors_parasite_find(i32 %vectors_ID, i8* %name) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._GimpParasite* @gimp_item_get_parasite(i32 %0, i8* %1)
  ret %struct._GimpParasite* %call
}

declare %struct._GimpParasite* @gimp_item_get_parasite(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_parasite_attach(i32 %vectors_ID, %struct._GimpParasite* %parasite) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %parasite.addr = alloca %struct._GimpParasite*, align 8
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store %struct._GimpParasite* %parasite, %struct._GimpParasite** %parasite.addr, align 8
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load %struct._GimpParasite*, %struct._GimpParasite** %parasite.addr, align 8
  %call = call i32 @gimp_item_attach_parasite(i32 %0, %struct._GimpParasite* %1)
  ret i32 %call
}

declare i32 @gimp_item_attach_parasite(i32, %struct._GimpParasite*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_parasite_detach(i32 %vectors_ID, i8* %name) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32 @gimp_item_detach_parasite(i32 %0, i8* %1)
  ret i32 %call
}

declare i32 @gimp_item_detach_parasite(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_vectors_parasite_list(i32 %vectors_ID, i32* %num_parasites, i8*** %parasites) #0 {
entry:
  %vectors_ID.addr = alloca i32, align 4
  %num_parasites.addr = alloca i32*, align 8
  %parasites.addr = alloca i8***, align 8
  store i32 %vectors_ID, i32* %vectors_ID.addr, align 4
  store i32* %num_parasites, i32** %num_parasites.addr, align 8
  store i8*** %parasites, i8**** %parasites.addr, align 8
  %0 = load i32, i32* %vectors_ID.addr, align 4
  %1 = load i32*, i32** %num_parasites.addr, align 8
  %call = call i8** @gimp_item_get_parasite_list(i32 %0, i32* %1)
  %2 = load i8***, i8**** %parasites.addr, align 8
  store i8** %call, i8*** %2, align 8
  %3 = load i8***, i8**** %parasites.addr, align 8
  %4 = load i8**, i8*** %3, align 8
  %cmp = icmp ne i8** %4, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8** @gimp_item_get_parasite_list(i32, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
