; ModuleID = './plug-ins/help/gimphelpitem.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpHelpItem = type { i8*, i8*, i8*, i8*, %struct._GList*, i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

; Function Attrs: nounwind uwtable
define %struct._GimpHelpItem* @gimp_help_item_new(i8* %ref, i8* %title, i8* %sort, i8* %parent) #0 {
entry:
  %ref.addr = alloca i8*, align 8
  %title.addr = alloca i8*, align 8
  %sort.addr = alloca i8*, align 8
  %parent.addr = alloca i8*, align 8
  %item = alloca %struct._GimpHelpItem*, align 8
  store i8* %ref, i8** %ref.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i8* %sort, i8** %sort.addr, align 8
  store i8* %parent, i8** %parent.addr, align 8
  %call = call noalias i8* @g_slice_alloc0(i64 48)
  %0 = bitcast i8* %call to %struct._GimpHelpItem*
  store %struct._GimpHelpItem* %0, %struct._GimpHelpItem** %item, align 8
  %1 = load i8*, i8** %ref.addr, align 8
  %call1 = call noalias i8* @g_strdup(i8* %1)
  %2 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item, align 8
  %ref2 = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %2, i32 0, i32 0
  store i8* %call1, i8** %ref2, align 8
  %3 = load i8*, i8** %title.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %3)
  %4 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item, align 8
  %title4 = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %4, i32 0, i32 1
  store i8* %call3, i8** %title4, align 8
  %5 = load i8*, i8** %sort.addr, align 8
  %call5 = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item, align 8
  %sort6 = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %6, i32 0, i32 2
  store i8* %call5, i8** %sort6, align 8
  %7 = load i8*, i8** %parent.addr, align 8
  %call7 = call noalias i8* @g_strdup(i8* %7)
  %8 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item, align 8
  %parent8 = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %8, i32 0, i32 3
  store i8* %call7, i8** %parent8, align 8
  %9 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item, align 8
  ret %struct._GimpHelpItem* %9
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_help_item_free(%struct._GimpHelpItem* %item) #0 {
entry:
  %item.addr = alloca %struct._GimpHelpItem*, align 8
  store %struct._GimpHelpItem* %item, %struct._GimpHelpItem** %item.addr, align 8
  %0 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item.addr, align 8
  %ref = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %0, i32 0, i32 0
  %1 = load i8*, i8** %ref, align 8
  call void @g_free(i8* %1)
  %2 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item.addr, align 8
  %title = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %2, i32 0, i32 1
  %3 = load i8*, i8** %title, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item.addr, align 8
  %sort = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %4, i32 0, i32 2
  %5 = load i8*, i8** %sort, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item.addr, align 8
  %parent = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %6, i32 0, i32 3
  %7 = load i8*, i8** %parent, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item.addr, align 8
  %children = getelementptr inbounds %struct._GimpHelpItem, %struct._GimpHelpItem* %8, i32 0, i32 4
  %9 = load %struct._GList*, %struct._GList** %children, align 8
  call void @g_list_free(%struct._GList* %9)
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct._GimpHelpItem*, %struct._GimpHelpItem** %item.addr, align 8
  %11 = bitcast %struct._GimpHelpItem* %10 to i8*
  call void @g_slice_free1(i64 48, i8* %11)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @g_free(i8*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @g_slice_free1(i64, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
