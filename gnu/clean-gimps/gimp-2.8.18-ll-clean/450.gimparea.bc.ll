; ModuleID = './app/core/gimparea.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpArea = type { i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }

; Function Attrs: nounwind uwtable
define %struct._GimpArea* @gimp_area_new(i32 %x1, i32 %y1, i32 %x2, i32 %y2) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %area = alloca %struct._GimpArea*, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  %call = call noalias i8* @g_slice_alloc(i64 16)
  %0 = bitcast i8* %call to %struct._GimpArea*
  store %struct._GimpArea* %0, %struct._GimpArea** %area, align 8
  %1 = load i32, i32* %x1.addr, align 4
  %2 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x11 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %2, i32 0, i32 0
  store i32 %1, i32* %x11, align 4
  %3 = load i32, i32* %y1.addr, align 4
  %4 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y12 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %4, i32 0, i32 1
  store i32 %3, i32* %y12, align 4
  %5 = load i32, i32* %x2.addr, align 4
  %6 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x23 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %6, i32 0, i32 2
  store i32 %5, i32* %x23, align 4
  %7 = load i32, i32* %y2.addr, align 4
  %8 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y24 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %8, i32 0, i32 3
  store i32 %7, i32* %y24, align 4
  %9 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  ret %struct._GimpArea* %9
}

declare noalias i8* @g_slice_alloc(i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_area_free(%struct._GimpArea* %area) #0 {
entry:
  %area.addr = alloca %struct._GimpArea*, align 8
  store %struct._GimpArea* %area, %struct._GimpArea** %area.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %1 = bitcast %struct._GimpArea* %0 to i8*
  call void @g_slice_free1(i64 16, i8* %1)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._GSList* @gimp_area_list_process(%struct._GSList* %list, %struct._GimpArea* %area) #0 {
entry:
  %list.addr = alloca %struct._GSList*, align 8
  %area.addr = alloca %struct._GimpArea*, align 8
  %retval1 = alloca %struct._GSList*, align 8
  %l = alloca %struct._GSList*, align 8
  %this = alloca %struct._GimpArea*, align 8
  %area1 = alloca i32, align 4
  %area2 = alloca i32, align 4
  %area3 = alloca i32, align 4
  store %struct._GSList* %list, %struct._GSList** %list.addr, align 8
  store %struct._GimpArea* %area, %struct._GimpArea** %area.addr, align 8
  %0 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %1 = bitcast %struct._GimpArea* %0 to i8*
  %call = call %struct._GSList* @g_slist_prepend(%struct._GSList* null, i8* %1)
  store %struct._GSList* %call, %struct._GSList** %retval1, align 8
  %2 = load %struct._GSList*, %struct._GSList** %list.addr, align 8
  store %struct._GSList* %2, %struct._GSList** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.92, %entry
  %3 = load %struct._GSList*, %struct._GSList** %l, align 8
  %tobool = icmp ne %struct._GSList* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._GSList*, %struct._GSList** %l, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GimpArea*
  store %struct._GimpArea* %6, %struct._GimpArea** %this, align 8
  %7 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %7, i32 0, i32 2
  %8 = load i32, i32* %x2, align 4
  %9 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %9, i32 0, i32 0
  %10 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %8, %10
  %11 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %11, i32 0, i32 3
  %12 = load i32, i32* %y2, align 4
  %13 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %13, i32 0, i32 1
  %14 = load i32, i32* %y1, align 4
  %sub2 = sub nsw i32 %12, %14
  %mul = mul nsw i32 %sub, %sub2
  %add = add nsw i32 %mul, 25
  store i32 %add, i32* %area1, align 4
  %15 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x23 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %15, i32 0, i32 2
  %16 = load i32, i32* %x23, align 4
  %17 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x14 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %17, i32 0, i32 0
  %18 = load i32, i32* %x14, align 4
  %sub5 = sub nsw i32 %16, %18
  %19 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y26 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %19, i32 0, i32 3
  %20 = load i32, i32* %y26, align 4
  %21 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y17 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %21, i32 0, i32 1
  %22 = load i32, i32* %y17, align 4
  %sub8 = sub nsw i32 %20, %22
  %mul9 = mul nsw i32 %sub5, %sub8
  %add10 = add nsw i32 %mul9, 25
  store i32 %add10, i32* %area2, align 4
  %23 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x211 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %23, i32 0, i32 2
  %24 = load i32, i32* %x211, align 4
  %25 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x212 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %25, i32 0, i32 2
  %26 = load i32, i32* %x212, align 4
  %cmp = icmp sgt i32 %24, %26
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %27 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x213 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %27, i32 0, i32 2
  %28 = load i32, i32* %x213, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %29 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x214 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %29, i32 0, i32 2
  %30 = load i32, i32* %x214, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %30, %cond.false ]
  %31 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x115 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %31, i32 0, i32 0
  %32 = load i32, i32* %x115, align 4
  %33 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x116 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %33, i32 0, i32 0
  %34 = load i32, i32* %x116, align 4
  %cmp17 = icmp slt i32 %32, %34
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end
  %35 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x119 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %35, i32 0, i32 0
  %36 = load i32, i32* %x119, align 4
  br label %cond.end.22

cond.false.20:                                    ; preds = %cond.end
  %37 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x121 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %37, i32 0, i32 0
  %38 = load i32, i32* %x121, align 4
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.20, %cond.true.18
  %cond23 = phi i32 [ %36, %cond.true.18 ], [ %38, %cond.false.20 ]
  %sub24 = sub nsw i32 %cond, %cond23
  %39 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y225 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %39, i32 0, i32 3
  %40 = load i32, i32* %y225, align 4
  %41 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y226 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %41, i32 0, i32 3
  %42 = load i32, i32* %y226, align 4
  %cmp27 = icmp sgt i32 %40, %42
  br i1 %cmp27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.end.22
  %43 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y229 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %43, i32 0, i32 3
  %44 = load i32, i32* %y229, align 4
  br label %cond.end.32

cond.false.30:                                    ; preds = %cond.end.22
  %45 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y231 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %45, i32 0, i32 3
  %46 = load i32, i32* %y231, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.28
  %cond33 = phi i32 [ %44, %cond.true.28 ], [ %46, %cond.false.30 ]
  %47 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y134 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %47, i32 0, i32 1
  %48 = load i32, i32* %y134, align 4
  %49 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y135 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %49, i32 0, i32 1
  %50 = load i32, i32* %y135, align 4
  %cmp36 = icmp slt i32 %48, %50
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.end.32
  %51 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y138 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %51, i32 0, i32 1
  %52 = load i32, i32* %y138, align 4
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.end.32
  %53 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y140 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %53, i32 0, i32 1
  %54 = load i32, i32* %y140, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.37
  %cond42 = phi i32 [ %52, %cond.true.37 ], [ %54, %cond.false.39 ]
  %sub43 = sub nsw i32 %cond33, %cond42
  %mul44 = mul nsw i32 %sub24, %sub43
  %add45 = add nsw i32 %mul44, 25
  store i32 %add45, i32* %area3, align 4
  %55 = load i32, i32* %area1, align 4
  %56 = load i32, i32* %area2, align 4
  %add46 = add nsw i32 %55, %56
  %57 = load i32, i32* %area3, align 4
  %cmp47 = icmp slt i32 %add46, %57
  br i1 %cmp47, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.41
  %58 = load %struct._GSList*, %struct._GSList** %retval1, align 8
  %59 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %60 = bitcast %struct._GimpArea* %59 to i8*
  %call48 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %58, i8* %60)
  store %struct._GSList* %call48, %struct._GSList** %retval1, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.41
  %61 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x149 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %61, i32 0, i32 0
  %62 = load i32, i32* %x149, align 4
  %63 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x150 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %63, i32 0, i32 0
  %64 = load i32, i32* %x150, align 4
  %cmp51 = icmp slt i32 %62, %64
  br i1 %cmp51, label %cond.true.52, label %cond.false.54

cond.true.52:                                     ; preds = %if.else
  %65 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x153 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %65, i32 0, i32 0
  %66 = load i32, i32* %x153, align 4
  br label %cond.end.56

cond.false.54:                                    ; preds = %if.else
  %67 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x155 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %67, i32 0, i32 0
  %68 = load i32, i32* %x155, align 4
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.54, %cond.true.52
  %cond57 = phi i32 [ %66, %cond.true.52 ], [ %68, %cond.false.54 ]
  %69 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x158 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %69, i32 0, i32 0
  store i32 %cond57, i32* %x158, align 4
  %70 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y159 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %70, i32 0, i32 1
  %71 = load i32, i32* %y159, align 4
  %72 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y160 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %72, i32 0, i32 1
  %73 = load i32, i32* %y160, align 4
  %cmp61 = icmp slt i32 %71, %73
  br i1 %cmp61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %cond.end.56
  %74 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y163 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %74, i32 0, i32 1
  %75 = load i32, i32* %y163, align 4
  br label %cond.end.66

cond.false.64:                                    ; preds = %cond.end.56
  %76 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y165 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %76, i32 0, i32 1
  %77 = load i32, i32* %y165, align 4
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.64, %cond.true.62
  %cond67 = phi i32 [ %75, %cond.true.62 ], [ %77, %cond.false.64 ]
  %78 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y168 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %78, i32 0, i32 1
  store i32 %cond67, i32* %y168, align 4
  %79 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x269 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %79, i32 0, i32 2
  %80 = load i32, i32* %x269, align 4
  %81 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x270 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %81, i32 0, i32 2
  %82 = load i32, i32* %x270, align 4
  %cmp71 = icmp sgt i32 %80, %82
  br i1 %cmp71, label %cond.true.72, label %cond.false.74

cond.true.72:                                     ; preds = %cond.end.66
  %83 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x273 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %83, i32 0, i32 2
  %84 = load i32, i32* %x273, align 4
  br label %cond.end.76

cond.false.74:                                    ; preds = %cond.end.66
  %85 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %x275 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %85, i32 0, i32 2
  %86 = load i32, i32* %x275, align 4
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.74, %cond.true.72
  %cond77 = phi i32 [ %84, %cond.true.72 ], [ %86, %cond.false.74 ]
  %87 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %x278 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %87, i32 0, i32 2
  store i32 %cond77, i32* %x278, align 4
  %88 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y279 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %88, i32 0, i32 3
  %89 = load i32, i32* %y279, align 4
  %90 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y280 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %90, i32 0, i32 3
  %91 = load i32, i32* %y280, align 4
  %cmp81 = icmp sgt i32 %89, %91
  br i1 %cmp81, label %cond.true.82, label %cond.false.84

cond.true.82:                                     ; preds = %cond.end.76
  %92 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y283 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %92, i32 0, i32 3
  %93 = load i32, i32* %y283, align 4
  br label %cond.end.86

cond.false.84:                                    ; preds = %cond.end.76
  %94 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %y285 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %94, i32 0, i32 3
  %95 = load i32, i32* %y285, align 4
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.84, %cond.true.82
  %cond87 = phi i32 [ %93, %cond.true.82 ], [ %95, %cond.false.84 ]
  %96 = load %struct._GimpArea*, %struct._GimpArea** %area.addr, align 8
  %y288 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %96, i32 0, i32 3
  store i32 %cond87, i32* %y288, align 4
  br label %do.body

do.body:                                          ; preds = %cond.end.86
  %97 = load %struct._GimpArea*, %struct._GimpArea** %this, align 8
  %98 = bitcast %struct._GimpArea* %97 to i8*
  call void @g_slice_free1(i64 16, i8* %98)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %99 = load %struct._GSList*, %struct._GSList** %l, align 8
  %tobool89 = icmp ne %struct._GSList* %99, null
  br i1 %tobool89, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %for.inc
  %100 = load %struct._GSList*, %struct._GSList** %l, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %100, i32 0, i32 1
  %101 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end.92

cond.false.91:                                    ; preds = %for.inc
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.91, %cond.true.90
  %cond93 = phi %struct._GSList* [ %101, %cond.true.90 ], [ null, %cond.false.91 ]
  store %struct._GSList* %cond93, %struct._GSList** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %102 = load %struct._GSList*, %struct._GSList** %list.addr, align 8
  %tobool94 = icmp ne %struct._GSList* %102, null
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.end
  %103 = load %struct._GSList*, %struct._GSList** %list.addr, align 8
  call void @g_slist_free(%struct._GSList* %103)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %for.end
  %104 = load %struct._GSList*, %struct._GSList** %retval1, align 8
  ret %struct._GSList* %104
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define void @gimp_area_list_free(%struct._GSList* %areas) #0 {
entry:
  %areas.addr = alloca %struct._GSList*, align 8
  %list = alloca %struct._GSList*, align 8
  store %struct._GSList* %areas, %struct._GSList** %areas.addr, align 8
  %0 = load %struct._GSList*, %struct._GSList** %areas.addr, align 8
  store %struct._GSList* %0, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GimpArea*
  call void @gimp_area_free(%struct._GimpArea* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 1
  %6 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %6, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._GSList*, %struct._GSList** %areas.addr, align 8
  call void @g_slist_free(%struct._GSList* %7)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
