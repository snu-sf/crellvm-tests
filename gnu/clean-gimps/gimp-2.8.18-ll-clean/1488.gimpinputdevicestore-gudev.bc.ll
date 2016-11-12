; ModuleID = './modules/gimpinputdevicestore-gudev.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeModule = type { %struct._GObject, i32, %struct._GSList*, %struct._GSList*, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpInputDeviceStore = type opaque
%struct._GError = type { i32, i32, i8* }

; Function Attrs: nounwind uwtable
define void @gimp_input_device_store_register_types(%struct._GTypeModule* %module) #0 {
entry:
  %module.addr = alloca %struct._GTypeModule*, align 8
  store %struct._GTypeModule* %module, %struct._GTypeModule** %module.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @gimp_input_device_store_get_type() #0 {
entry:
  ret i64 4
}

; Function Attrs: nounwind uwtable
define %struct._GimpInputDeviceStore* @gimp_input_device_store_new() #0 {
entry:
  ret %struct._GimpInputDeviceStore* null
}

; Function Attrs: nounwind uwtable
define i8* @gimp_input_device_store_get_device_file(%struct._GimpInputDeviceStore* %store, i8* %identifier) #0 {
entry:
  %store.addr = alloca %struct._GimpInputDeviceStore*, align 8
  %identifier.addr = alloca i8*, align 8
  store %struct._GimpInputDeviceStore* %store, %struct._GimpInputDeviceStore** %store.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  ret i8* null
}

; Function Attrs: nounwind uwtable
define %struct._GError* @gimp_input_device_store_get_error(%struct._GimpInputDeviceStore* %store) #0 {
entry:
  %store.addr = alloca %struct._GimpInputDeviceStore*, align 8
  store %struct._GimpInputDeviceStore* %store, %struct._GimpInputDeviceStore** %store.addr, align 8
  ret %struct._GError* null
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
