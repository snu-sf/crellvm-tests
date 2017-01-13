; ModuleID = './app/menus/image-menu.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpUIManager = type opaque

@.str = private unnamed_addr constant [15 x i8] c"/dummy-menubar\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"/dummy-menubar/image-popup\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/View\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"view\00", align 1

; Function Attrs: nounwind uwtable
define void @image_menu_setup(%struct._GimpUIManager* %manager, i8* %ui_path) #0 {
entry:
  %manager.addr = alloca %struct._GimpUIManager*, align 8
  %ui_path.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  store %struct._GimpUIManager* %manager, %struct._GimpUIManager** %manager.addr, align 8
  store i8* %ui_path, i8** %ui_path.addr, align 8
  %0 = load i8*, i8** %ui_path.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8** %ui_path.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %2 = load i8*, i8** %ui_path.addr, align 8
  call void @file_menu_setup(%struct._GimpUIManager* %1, i8* %2)
  %3 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %4 = load i8*, i8** %ui_path.addr, align 8
  call void @windows_menu_setup(%struct._GimpUIManager* %3, i8* %4)
  %5 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %6 = load i8*, i8** %ui_path.addr, align 8
  call void @plug_in_menus_setup(%struct._GimpUIManager* %5, i8* %6)
  %7 = load i8*, i8** %ui_path.addr, align 8
  %call1 = call noalias i8* (i8*, ...) @g_strconcat(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null)
  store i8* %call1, i8** %path, align 8
  %8 = load %struct._GimpUIManager*, %struct._GimpUIManager** %manager.addr, align 8
  %9 = load i8*, i8** %path, align 8
  call void @window_menu_setup(%struct._GimpUIManager* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %9)
  %10 = load i8*, i8** %path, align 8
  call void @g_free(i8* %10)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare void @file_menu_setup(%struct._GimpUIManager*, i8*) #2

declare void @windows_menu_setup(%struct._GimpUIManager*, i8*) #2

declare void @plug_in_menus_setup(%struct._GimpUIManager*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare void @window_menu_setup(%struct._GimpUIManager*, i8*, i8*) #2

declare void @g_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
