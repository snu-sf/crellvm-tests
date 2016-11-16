; ModuleID = './app/vectors/gimpstroke-new.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [50 x i8] c"unknown type in gimp_stroke_new_from_coords(): %d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Vectors\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpStroke* @gimp_stroke_new_from_coords(i32 %type, %struct._GimpCoords* %coords, i32 %n_coords, i32 %closed) #0 {
entry:
  %retval = alloca %struct._GimpStroke*, align 8
  %type.addr = alloca i32, align 4
  %coords.addr = alloca %struct._GimpCoords*, align 8
  %n_coords.addr = alloca i32, align 4
  %closed.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  store %struct._GimpCoords* %coords, %struct._GimpCoords** %coords.addr, align 8
  store i32 %n_coords, i32* %n_coords.addr, align 4
  store i32 %closed, i32* %closed.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GimpCoords*, %struct._GimpCoords** %coords.addr, align 8
  %2 = load i32, i32* %n_coords.addr, align 4
  %3 = load i32, i32* %closed.addr, align 4
  %call = call %struct._GimpStroke* @gimp_bezier_stroke_new_from_coords(%struct._GimpCoords* %1, i32 %2, i32 %3)
  store %struct._GimpStroke* %call, %struct._GimpStroke** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %type.addr, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 %4)
  store %struct._GimpStroke* null, %struct._GimpStroke** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load %struct._GimpStroke*, %struct._GimpStroke** %retval
  ret %struct._GimpStroke* %5
}

declare %struct._GimpStroke* @gimp_bezier_stroke_new_from_coords(%struct._GimpCoords*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
