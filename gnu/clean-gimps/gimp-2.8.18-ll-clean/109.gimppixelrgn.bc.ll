; ModuleID = './libgimp/gimppixelrgn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgnIterator = type { %struct._GSList*, i32, i32, i32, i32, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPixelRgnHolder = type { %struct._GimpPixelRgn*, i8*, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"LibGimp\00", align 1
@__func__.gimp_pixel_rgn_init = private unnamed_addr constant [20 x i8] c"gimp_pixel_rgn_init\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pr != NULL\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"drawable != NULL\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"x >= 0 && x + width <= drawable->width\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"y >= 0 && y + height <= drawable->height\00", align 1
@__func__.gimp_pixel_rgn_resize = private unnamed_addr constant [22 x i8] c"gimp_pixel_rgn_resize\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"pr != NULL && pr->drawable != NULL\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"x >= 0 && x + width <= pr->drawable->width\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"y >= 0 && y + height <= pr->drawable->height\00", align 1
@__func__.gimp_pixel_rgn_get_pixel = private unnamed_addr constant [25 x i8] c"gimp_pixel_rgn_get_pixel\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"x >= 0 && x < pr->drawable->width\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"y >= 0 && y < pr->drawable->height\00", align 1
@__func__.gimp_pixel_rgn_get_row = private unnamed_addr constant [23 x i8] c"gimp_pixel_rgn_get_row\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"buf != NULL\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"width >= 0\00", align 1
@__func__.gimp_pixel_rgn_get_col = private unnamed_addr constant [23 x i8] c"gimp_pixel_rgn_get_col\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"height >= 0\00", align 1
@__func__.gimp_pixel_rgn_get_rect = private unnamed_addr constant [24 x i8] c"gimp_pixel_rgn_get_rect\00", align 1
@__func__.gimp_pixel_rgn_set_pixel = private unnamed_addr constant [25 x i8] c"gimp_pixel_rgn_set_pixel\00", align 1
@__func__.gimp_pixel_rgn_set_row = private unnamed_addr constant [23 x i8] c"gimp_pixel_rgn_set_row\00", align 1
@__func__.gimp_pixel_rgn_set_col = private unnamed_addr constant [23 x i8] c"gimp_pixel_rgn_set_col\00", align 1
@__func__.gimp_pixel_rgn_set_rect = private unnamed_addr constant [24 x i8] c"gimp_pixel_rgn_set_rect\00", align 1
@__func__.gimp_pixel_rgns_register2 = private unnamed_addr constant [26 x i8] c"gimp_pixel_rgns_register2\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"nrgns > 0\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"prs != NULL\00", align 1
@__func__.gimp_pixel_rgns_register = private unnamed_addr constant [25 x i8] c"gimp_pixel_rgns_register\00", align 1
@__func__.gimp_pixel_rgns_process = private unnamed_addr constant [24 x i8] c"gimp_pixel_rgns_process\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"pri_ptr != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %pr, %struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %width, i32 %height, i32 %dirty, i32 %shadow) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dirty.addr = alloca i32, align 4
  %shadow.addr = alloca i32, align 4
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dirty, i32* %dirty.addr, align 4
  store i32 %shadow, i32* %shadow.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pixel_rgn_init, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp2 = icmp ne %struct._GimpDrawable* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pixel_rgn_init, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i32, i32* %x.addr, align 4
  %cmp8 = icmp sge i32 %2, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %do.body.7
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %3, %4
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %width9 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %5, i32 0, i32 1
  %6 = load i32, i32* %width9, align 4
  %cmp10 = icmp ule i32 %add, %6
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  br label %if.end.13

if.else.12:                                       ; preds = %land.lhs.true, %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pixel_rgn_init, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.13:                                        ; preds = %if.then.11
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  %7 = load i32, i32* %y.addr, align 4
  %cmp16 = icmp sge i32 %7, 0
  br i1 %cmp16, label %land.lhs.true.17, label %if.else.22

land.lhs.true.17:                                 ; preds = %do.body.15
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  %add18 = add nsw i32 %8, %9
  %10 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %height19 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %10, i32 0, i32 2
  %11 = load i32, i32* %height19, align 4
  %cmp20 = icmp ule i32 %add18, %11
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true.17
  br label %if.end.23

if.else.22:                                       ; preds = %land.lhs.true.17, %do.body.15
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_pixel_rgn_init, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %12, i32 0, i32 0
  store i8* null, i8** %data, align 8
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable25 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %14, i32 0, i32 1
  store %struct._GimpDrawable* %13, %struct._GimpDrawable** %drawable25, align 8
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %15, i32 0, i32 3
  %16 = load i32, i32* %bpp, align 4
  %17 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %bpp26 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %17, i32 0, i32 2
  store i32 %16, i32* %bpp26, align 4
  %18 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %18, i32 0, i32 3
  store i32 0, i32* %rowstride, align 4
  %19 = load i32, i32* %x.addr, align 4
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %x27 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 4
  store i32 %19, i32* %x27, align 4
  %21 = load i32, i32* %y.addr, align 4
  %22 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %y28 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %22, i32 0, i32 5
  store i32 %21, i32* %y28, align 4
  %23 = load i32, i32* %width.addr, align 4
  %24 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %24, i32 0, i32 6
  store i32 %23, i32* %w, align 4
  %25 = load i32, i32* %height.addr, align 4
  %26 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %26, i32 0, i32 7
  store i32 %25, i32* %h, align 4
  %27 = load i32, i32* %dirty.addr, align 4
  %28 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %dirty29 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %28, i32 0, i32 8
  %29 = trunc i32 %27 to i8
  %bf.load = load i8, i8* %dirty29, align 8
  %bf.value = and i8 %29, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %dirty29, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %30 = load i32, i32* %shadow.addr, align 4
  %31 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow30 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %31, i32 0, i32 8
  %32 = trunc i32 %30 to i8
  %bf.load31 = load i8, i8* %shadow30, align 8
  %bf.value32 = and i8 %32, 1
  %bf.shl = shl i8 %bf.value32, 1
  %bf.clear33 = and i8 %bf.load31, -3
  %bf.set34 = or i8 %bf.clear33, %bf.shl
  store i8 %bf.set34, i8* %shadow30, align 8
  %bf.result.cast35 = zext i8 %bf.value32 to i32
  br label %return

return:                                           ; preds = %do.end.24, %if.else.22, %if.else.12, %if.else.4, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_resize(%struct._GimpPixelRgn* %pr, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp1 = icmp ne %struct._GimpDrawable* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pixel_rgn_resize, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load i32, i32* %x.addr, align 4
  %cmp3 = icmp sge i32 %3, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.9

land.lhs.true.4:                                  ; preds = %do.body.2
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %4, %5
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable5 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %6, i32 0, i32 1
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable5, align 8
  %width6 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width6, align 4
  %cmp7 = icmp ule i32 %add, %8
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true.4
  br label %if.end.10

if.else.9:                                        ; preds = %land.lhs.true.4, %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pixel_rgn_resize, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  %9 = load i32, i32* %y.addr, align 4
  %cmp13 = icmp sge i32 %9, 0
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.20

land.lhs.true.14:                                 ; preds = %do.body.12
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  %add15 = add nsw i32 %10, %11
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %12, i32 0, i32 1
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable16, align 8
  %height17 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height17, align 4
  %cmp18 = icmp ule i32 %add15, %14
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %land.lhs.true.14
  br label %if.end.21

if.else.20:                                       ; preds = %land.lhs.true.14, %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_pixel_rgn_resize, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %15 = load i32, i32* %x.addr, align 4
  %16 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %x23 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %16, i32 0, i32 4
  store i32 %15, i32* %x23, align 4
  %17 = load i32, i32* %y.addr, align 4
  %18 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %y24 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %18, i32 0, i32 5
  store i32 %17, i32* %y24, align 4
  %19 = load i32, i32* %width.addr, align 4
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 6
  store i32 %19, i32* %w, align 4
  %21 = load i32, i32* %height.addr, align 4
  %22 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %22, i32 0, i32 7
  store i32 %21, i32* %h, align 4
  br label %return

return:                                           ; preds = %do.end.22, %if.else.20, %if.else.9, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_get_pixel(%struct._GimpPixelRgn* %pr, i8* %buf, i32 %x, i32 %y) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %tile_data = alloca i8*, align 8
  %b = alloca i32, align 4
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp1 = icmp ne %struct._GimpDrawable* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pixel_rgn_get_pixel, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load i32, i32* %x.addr, align 4
  %cmp3 = icmp sge i32 %3, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.8

land.lhs.true.4:                                  ; preds = %do.body.2
  %4 = load i32, i32* %x.addr, align 4
  %5 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable5 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %5, i32 0, i32 1
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable5, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %6, i32 0, i32 1
  %7 = load i32, i32* %width, align 4
  %cmp6 = icmp ult i32 %4, %7
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true.4
  br label %if.end.9

if.else.8:                                        ; preds = %land.lhs.true.4, %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pixel_rgn_get_pixel, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.9:                                         ; preds = %if.then.7
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %8 = load i32, i32* %y.addr, align 4
  %cmp12 = icmp sge i32 %8, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.17

land.lhs.true.13:                                 ; preds = %do.body.11
  %9 = load i32, i32* %y.addr, align 4
  %10 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %10, i32 0, i32 1
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable14, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %11, i32 0, i32 2
  %12 = load i32, i32* %height, align 4
  %cmp15 = icmp ult i32 %9, %12
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %if.end.18

if.else.17:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pixel_rgn_get_pixel, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.18:                                        ; preds = %if.then.16
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable20, align 8
  %15 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %15, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %14, i32 %bf.cast, i32 %16, i32 %17)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %18 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %18)
  %19 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %19, i32 0, i32 6
  %20 = load i8*, i8** %data, align 8
  %21 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %21, i32 0, i32 2
  %22 = load i32, i32* %bpp, align 4
  %23 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %23, i32 0, i32 0
  %24 = load i32, i32* %ewidth, align 4
  %25 = load i32, i32* %y.addr, align 4
  %call21 = call i32 @gimp_tile_height() #4
  %rem = urem i32 %25, %call21
  %mul = mul i32 %24, %rem
  %26 = load i32, i32* %x.addr, align 4
  %call22 = call i32 @gimp_tile_width() #4
  %rem23 = urem i32 %26, %call22
  %add = add i32 %mul, %rem23
  %mul24 = mul i32 %22, %add
  %idx.ext = zext i32 %mul24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %tile_data, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.19
  %27 = load i32, i32* %b, align 4
  %28 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp25 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %28, i32 0, i32 2
  %29 = load i32, i32* %bpp25, align 4
  %cmp26 = icmp ult i32 %27, %29
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i8*, i8** %tile_data, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %tile_data, align 8
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr27, i8** %buf.addr, align 8
  store i8 %31, i8* %32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %b, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %34, i32 0)
  br label %return

return:                                           ; preds = %for.end, %if.else.17, %if.else.8, %if.else
  ret void
}

declare %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable*, i32, i32, i32) #1

declare void @gimp_tile_ref(%struct._GimpTile*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_height() #2

; Function Attrs: nounwind readnone
declare i32 @gimp_tile_width() #2

declare void @gimp_tile_unref(%struct._GimpTile*, i32) #1

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* %pr, i8* %buf, i32 %x, i32 %y, i32 %width) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %end = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %tile_data = alloca i8*, align 8
  %inc = alloca i32, align 4
  %min = alloca i32, align 4
  %boundary = alloca i32, align 4
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp1 = icmp ne %struct._GimpDrawable* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_row, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp ne i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_row, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  br label %while.end

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %4 = load i32, i32* %x.addr, align 4
  %cmp9 = icmp sge i32 %4, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.15

land.lhs.true.10:                                 ; preds = %do.body.8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %5, %6
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %7, i32 0, i32 1
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %width12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width12, align 4
  %cmp13 = icmp ule i32 %add, %9
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true.10
  br label %if.end.16

if.else.15:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_row, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0))
  br label %while.end

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %10 = load i32, i32* %y.addr, align 4
  %cmp19 = icmp sge i32 %10, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.24

land.lhs.true.20:                                 ; preds = %do.body.18
  %11 = load i32, i32* %y.addr, align 4
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable21 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %12, i32 0, i32 1
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable21, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height, align 4
  %cmp22 = icmp ult i32 %11, %14
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.20
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.20, %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_row, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0))
  br label %while.end

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %15 = load i32, i32* %width.addr, align 4
  %cmp28 = icmp sge i32 %15, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_row, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  br label %while.end

if.end.31:                                        ; preds = %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %width.addr, align 4
  %add33 = add nsw i32 %16, %17
  store i32 %add33, i32* %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %do.end.32
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %end, align 4
  %cmp34 = icmp slt i32 %18, %19
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 1
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable35, align 8
  %22 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %22, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %21, i32 %bf.cast, i32 %23, i32 %24)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %25 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %25)
  %26 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %26, i32 0, i32 6
  %27 = load i8*, i8** %data, align 8
  %28 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %28, i32 0, i32 2
  %29 = load i32, i32* %bpp, align 4
  %30 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %30, i32 0, i32 0
  %31 = load i32, i32* %ewidth, align 4
  %32 = load i32, i32* %y.addr, align 4
  %call36 = call i32 @gimp_tile_height() #4
  %rem = urem i32 %32, %call36
  %mul = mul i32 %31, %rem
  %33 = load i32, i32* %x.addr, align 4
  %call37 = call i32 @gimp_tile_width() #4
  %rem38 = urem i32 %33, %call37
  %add39 = add i32 %mul, %rem38
  %mul40 = mul i32 %29, %add39
  %idx.ext = zext i32 %mul40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %tile_data, align 8
  %34 = load i32, i32* %x.addr, align 4
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth41 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %35, i32 0, i32 0
  %36 = load i32, i32* %ewidth41, align 4
  %37 = load i32, i32* %x.addr, align 4
  %call42 = call i32 @gimp_tile_width() #4
  %rem43 = urem i32 %37, %call42
  %sub = sub i32 %36, %rem43
  %add44 = add i32 %34, %sub
  store i32 %add44, i32* %boundary, align 4
  %38 = load i32, i32* %end, align 4
  %39 = load i32, i32* %boundary, align 4
  %cmp45 = icmp slt i32 %38, %39
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %40 = load i32, i32* %end, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %41 = load i32, i32* %boundary, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ]
  store i32 %cond, i32* %min, align 4
  %42 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp46 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %42, i32 0, i32 2
  %43 = load i32, i32* %bpp46, align 4
  %44 = load i32, i32* %min, align 4
  %45 = load i32, i32* %x.addr, align 4
  %sub47 = sub nsw i32 %44, %45
  %mul48 = mul i32 %43, %sub47
  store i32 %mul48, i32* %inc, align 4
  %46 = load i8*, i8** %buf.addr, align 8
  %47 = load i8*, i8** %tile_data, align 8
  %48 = load i32, i32* %inc, align 4
  %conv = sext i32 %48 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 %conv, i32 1, i1 false)
  %49 = load i32, i32* %min, align 4
  store i32 %49, i32* %x.addr, align 4
  %50 = load i32, i32* %inc, align 4
  %51 = load i8*, i8** %buf.addr, align 8
  %idx.ext49 = sext i32 %50 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %51, i64 %idx.ext49
  store i8* %add.ptr50, i8** %buf.addr, align 8
  %52 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %52, i32 0)
  br label %while.cond

while.end:                                        ; preds = %if.else, %if.else.5, %if.else.15, %if.else.24, %if.else.30, %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_get_col(%struct._GimpPixelRgn* %pr, i8* %buf, i32 %x, i32 %y, i32 %height) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %end = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %tile_data = alloca i8*, align 8
  %inc = alloca i32, align 4
  %boundary = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp1 = icmp ne %struct._GimpDrawable* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_col, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp ne i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_col, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  br label %while.end

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %4 = load i32, i32* %x.addr, align 4
  %cmp9 = icmp sge i32 %4, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.14

land.lhs.true.10:                                 ; preds = %do.body.8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %6, i32 0, i32 1
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width, align 4
  %cmp12 = icmp ult i32 %5, %8
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.10
  br label %if.end.15

if.else.14:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_col, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %while.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %9 = load i32, i32* %y.addr, align 4
  %cmp18 = icmp sge i32 %9, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.24

land.lhs.true.19:                                 ; preds = %do.body.17
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  %add = add nsw i32 %10, %11
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %12, i32 0, i32 1
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable20, align 8
  %height21 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height21, align 4
  %cmp22 = icmp ule i32 %add, %14
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.19
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.19, %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_col, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0))
  br label %while.end

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %15 = load i32, i32* %height.addr, align 4
  %cmp28 = icmp sge i32 %15, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_get_col, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %while.end

if.end.31:                                        ; preds = %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %16 = load i32, i32* %y.addr, align 4
  %17 = load i32, i32* %height.addr, align 4
  %add33 = add nsw i32 %16, %17
  store i32 %add33, i32* %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.58, %do.end.32
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %end, align 4
  %cmp34 = icmp slt i32 %18, %19
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 1
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable35, align 8
  %22 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %22, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %21, i32 %bf.cast, i32 %23, i32 %24)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %25 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %25)
  %26 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %26, i32 0, i32 6
  %27 = load i8*, i8** %data, align 8
  %28 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %28, i32 0, i32 2
  %29 = load i32, i32* %bpp, align 4
  %30 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %30, i32 0, i32 0
  %31 = load i32, i32* %ewidth, align 4
  %32 = load i32, i32* %y.addr, align 4
  %call36 = call i32 @gimp_tile_height() #4
  %rem = urem i32 %32, %call36
  %mul = mul i32 %31, %rem
  %33 = load i32, i32* %x.addr, align 4
  %call37 = call i32 @gimp_tile_width() #4
  %rem38 = urem i32 %33, %call37
  %add39 = add i32 %mul, %rem38
  %mul40 = mul i32 %29, %add39
  %idx.ext = zext i32 %mul40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %tile_data, align 8
  %34 = load i32, i32* %y.addr, align 4
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %eheight = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %35, i32 0, i32 1
  %36 = load i32, i32* %eheight, align 4
  %37 = load i32, i32* %y.addr, align 4
  %call41 = call i32 @gimp_tile_height() #4
  %rem42 = urem i32 %37, %call41
  %sub = sub i32 %36, %rem42
  %add43 = add i32 %34, %sub
  store i32 %add43, i32* %boundary, align 4
  %38 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp44 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %38, i32 0, i32 2
  %39 = load i32, i32* %bpp44, align 4
  %40 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth45 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %40, i32 0, i32 0
  %41 = load i32, i32* %ewidth45, align 4
  %mul46 = mul i32 %39, %41
  store i32 %mul46, i32* %inc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %while.body
  %42 = load i32, i32* %y.addr, align 4
  %43 = load i32, i32* %end, align 4
  %cmp47 = icmp slt i32 %42, %43
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %44 = load i32, i32* %y.addr, align 4
  %45 = load i32, i32* %boundary, align 4
  %cmp48 = icmp slt i32 %44, %45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %46 = phi i1 [ false, %for.cond ], [ %cmp48, %land.rhs ]
  br i1 %46, label %for.body, label %for.end.58

for.body:                                         ; preds = %land.end
  store i32 0, i32* %b, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %for.body
  %47 = load i32, i32* %b, align 4
  %48 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp50 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %48, i32 0, i32 2
  %49 = load i32, i32* %bpp50, align 4
  %cmp51 = icmp ult i32 %47, %49
  br i1 %cmp51, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.49
  %50 = load i32, i32* %b, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load i8*, i8** %tile_data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %51, i64 %idxprom
  %52 = load i8, i8* %arrayidx, align 1
  %53 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  store i8 %52, i8* %53, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.52
  %54 = load i32, i32* %b, align 4
  %inc53 = add nsw i32 %54, 1
  store i32 %inc53, i32* %b, align 4
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  %55 = load i32, i32* %inc, align 4
  %56 = load i8*, i8** %tile_data, align 8
  %idx.ext54 = sext i32 %55 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %56, i64 %idx.ext54
  store i8* %add.ptr55, i8** %tile_data, align 8
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %57 = load i32, i32* %y.addr, align 4
  %inc57 = add nsw i32 %57, 1
  store i32 %inc57, i32* %y.addr, align 4
  br label %for.cond

for.end.58:                                       ; preds = %land.end
  %58 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %58, i32 0)
  br label %while.cond

while.end:                                        ; preds = %if.else, %if.else.5, %if.else.14, %if.else.24, %if.else.30, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_get_rect(%struct._GimpPixelRgn* %pr, i8* %buf, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bufstride = alloca i64, align 8
  %xstart = alloca i32, align 4
  %ystart = alloca i32, align 4
  %xend = alloca i32, align 4
  %yend = alloca i32, align 4
  %xboundary = alloca i32, align 4
  %yboundary = alloca i32, align 4
  %xstep = alloca i32, align 4
  %ystep = alloca i32, align 4
  %ty = alloca i32, align 4
  %bpp = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp1 = icmp ne %struct._GimpDrawable* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_get_rect, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %while.end.89

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp ne i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_get_rect, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  br label %while.end.89

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %4 = load i32, i32* %x.addr, align 4
  %cmp9 = icmp sge i32 %4, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.15

land.lhs.true.10:                                 ; preds = %do.body.8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %5, %6
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %7, i32 0, i32 1
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %width12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width12, align 4
  %cmp13 = icmp ule i32 %add, %9
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true.10
  br label %if.end.16

if.else.15:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_get_rect, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0))
  br label %while.end.89

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %10 = load i32, i32* %y.addr, align 4
  %cmp19 = icmp sge i32 %10, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.26

land.lhs.true.20:                                 ; preds = %do.body.18
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %add21 = add nsw i32 %11, %12
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable22 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable22, align 8
  %height23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 2
  %15 = load i32, i32* %height23, align 4
  %cmp24 = icmp ule i32 %add21, %15
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.20
  br label %if.end.27

if.else.26:                                       ; preds = %land.lhs.true.20, %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_get_rect, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0))
  br label %while.end.89

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %16 = load i32, i32* %width.addr, align 4
  %cmp30 = icmp sge i32 %16, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_get_rect, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  br label %while.end.89

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %17 = load i32, i32* %height.addr, align 4
  %cmp36 = icmp sge i32 %17, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else.38:                                       ; preds = %do.body.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_get_rect, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %while.end.89

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %18 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %bpp41 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %18, i32 0, i32 2
  %19 = load i32, i32* %bpp41, align 4
  store i32 %19, i32* %bpp, align 4
  %20 = load i32, i32* %bpp, align 4
  %21 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %20, %21
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %bufstride, align 8
  %22 = load i32, i32* %x.addr, align 4
  store i32 %22, i32* %xstart, align 4
  %23 = load i32, i32* %y.addr, align 4
  store i32 %23, i32* %ystart, align 4
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %width.addr, align 4
  %add42 = add nsw i32 %24, %25
  store i32 %add42, i32* %xend, align 4
  %26 = load i32, i32* %y.addr, align 4
  %27 = load i32, i32* %height.addr, align 4
  %add43 = add nsw i32 %26, %27
  store i32 %add43, i32* %yend, align 4
  store i32 0, i32* %ystep, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %do.end.40
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* %yend, align 4
  %cmp44 = icmp slt i32 %28, %29
  br i1 %cmp44, label %while.body, label %while.end.89

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %xstart, align 4
  store i32 %30, i32* %x.addr, align 4
  br label %while.cond.46

while.cond.46:                                    ; preds = %for.end, %while.body
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* %xend, align 4
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %while.body.49, label %while.end

while.body.49:                                    ; preds = %while.cond.46
  %33 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable50 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %33, i32 0, i32 1
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable50, align 8
  %35 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %35, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %36 = load i32, i32* %x.addr, align 4
  %37 = load i32, i32* %y.addr, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %34, i32 %bf.cast, i32 %36, i32 %37)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %38 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %38)
  %39 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %39, i32 0, i32 0
  %40 = load i32, i32* %ewidth, align 4
  %41 = load i32, i32* %x.addr, align 4
  %call51 = call i32 @gimp_tile_width() #4
  %rem = urem i32 %41, %call51
  %sub = sub i32 %40, %rem
  store i32 %sub, i32* %xstep, align 4
  %42 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %eheight = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %42, i32 0, i32 1
  %43 = load i32, i32* %eheight, align 4
  %44 = load i32, i32* %y.addr, align 4
  %call52 = call i32 @gimp_tile_height() #4
  %rem53 = urem i32 %44, %call52
  %sub54 = sub i32 %43, %rem53
  store i32 %sub54, i32* %ystep, align 4
  %45 = load i32, i32* %x.addr, align 4
  %46 = load i32, i32* %xstep, align 4
  %add55 = add nsw i32 %45, %46
  store i32 %add55, i32* %xboundary, align 4
  %47 = load i32, i32* %y.addr, align 4
  %48 = load i32, i32* %ystep, align 4
  %add56 = add nsw i32 %47, %48
  store i32 %add56, i32* %yboundary, align 4
  %49 = load i32, i32* %xboundary, align 4
  %50 = load i32, i32* %xend, align 4
  %cmp57 = icmp slt i32 %49, %50
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.49
  %51 = load i32, i32* %xboundary, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body.49
  %52 = load i32, i32* %xend, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ %52, %cond.false ]
  store i32 %cond, i32* %xboundary, align 4
  %53 = load i32, i32* %yboundary, align 4
  %54 = load i32, i32* %yend, align 4
  %cmp59 = icmp slt i32 %53, %54
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end
  %55 = load i32, i32* %yboundary, align 4
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end
  %56 = load i32, i32* %yend, align 4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i32 [ %55, %cond.true.61 ], [ %56, %cond.false.62 ]
  store i32 %cond64, i32* %yboundary, align 4
  %57 = load i32, i32* %y.addr, align 4
  store i32 %57, i32* %ty, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.63
  %58 = load i32, i32* %ty, align 4
  %59 = load i32, i32* %yboundary, align 4
  %cmp65 = icmp slt i32 %58, %59
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %60, i32 0, i32 6
  %61 = load i8*, i8** %data, align 8
  %62 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp67 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %62, i32 0, i32 2
  %63 = load i32, i32* %bpp67, align 4
  %64 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth68 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %64, i32 0, i32 0
  %65 = load i32, i32* %ewidth68, align 4
  %66 = load i32, i32* %ty, align 4
  %call69 = call i32 @gimp_tile_height() #4
  %rem70 = urem i32 %66, %call69
  %mul71 = mul i32 %65, %rem70
  %67 = load i32, i32* %x.addr, align 4
  %call72 = call i32 @gimp_tile_width() #4
  %rem73 = urem i32 %67, %call72
  %add74 = add i32 %mul71, %rem73
  %mul75 = mul i32 %63, %add74
  %idx.ext = zext i32 %mul75 to i64
  %add.ptr = getelementptr inbounds i8, i8* %61, i64 %idx.ext
  store i8* %add.ptr, i8** %src, align 8
  %68 = load i8*, i8** %buf.addr, align 8
  %69 = load i64, i64* %bufstride, align 8
  %70 = load i32, i32* %ty, align 4
  %71 = load i32, i32* %ystart, align 4
  %sub76 = sub nsw i32 %70, %71
  %conv77 = sext i32 %sub76 to i64
  %mul78 = mul i64 %69, %conv77
  %add.ptr79 = getelementptr inbounds i8, i8* %68, i64 %mul78
  %72 = load i32, i32* %bpp, align 4
  %73 = load i32, i32* %x.addr, align 4
  %74 = load i32, i32* %xstart, align 4
  %sub80 = sub nsw i32 %73, %74
  %mul81 = mul nsw i32 %72, %sub80
  %idx.ext82 = sext i32 %mul81 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr79, i64 %idx.ext82
  store i8* %add.ptr83, i8** %dest, align 8
  %75 = load i8*, i8** %dest, align 8
  %76 = load i8*, i8** %src, align 8
  %77 = load i32, i32* %xboundary, align 4
  %78 = load i32, i32* %x.addr, align 4
  %sub84 = sub nsw i32 %77, %78
  %79 = load i32, i32* %bpp, align 4
  %mul85 = mul nsw i32 %sub84, %79
  %conv86 = sext i32 %mul85 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 %conv86, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, i32* %ty, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %ty, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %81, i32 0)
  %82 = load i32, i32* %xstep, align 4
  %83 = load i32, i32* %x.addr, align 4
  %add87 = add nsw i32 %83, %82
  store i32 %add87, i32* %x.addr, align 4
  br label %while.cond.46

while.end:                                        ; preds = %while.cond.46
  %84 = load i32, i32* %ystep, align 4
  %85 = load i32, i32* %y.addr, align 4
  %add88 = add nsw i32 %85, %84
  store i32 %add88, i32* %y.addr, align 4
  br label %while.cond

while.end.89:                                     ; preds = %if.else, %if.else.5, %if.else.15, %if.else.26, %if.else.32, %if.else.38, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_set_pixel(%struct._GimpPixelRgn* %pr, i8* %buf, i32 %x, i32 %y) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %tile_data = alloca i8*, align 8
  %b = alloca i32, align 4
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp1 = icmp ne %struct._GimpDrawable* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pixel_rgn_set_pixel, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp ne i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pixel_rgn_set_pixel, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %4 = load i32, i32* %x.addr, align 4
  %cmp9 = icmp sge i32 %4, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.14

land.lhs.true.10:                                 ; preds = %do.body.8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %6, i32 0, i32 1
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width, align 4
  %cmp12 = icmp ult i32 %5, %8
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.10
  br label %if.end.15

if.else.14:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pixel_rgn_set_pixel, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %9 = load i32, i32* %y.addr, align 4
  %cmp18 = icmp sge i32 %9, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.23

land.lhs.true.19:                                 ; preds = %do.body.17
  %10 = load i32, i32* %y.addr, align 4
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %11, i32 0, i32 1
  %12 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable20, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %12, i32 0, i32 2
  %13 = load i32, i32* %height, align 4
  %cmp21 = icmp ult i32 %10, %13
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true.19
  br label %if.end.24

if.else.23:                                       ; preds = %land.lhs.true.19, %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pixel_rgn_set_pixel, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable26 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %14, i32 0, i32 1
  %15 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable26, align 8
  %16 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %16, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %15, i32 %bf.cast, i32 %17, i32 %18)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %19 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %19)
  %20 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %20, i32 0, i32 6
  %21 = load i8*, i8** %data, align 8
  %22 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %22, i32 0, i32 2
  %23 = load i32, i32* %bpp, align 4
  %24 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %24, i32 0, i32 0
  %25 = load i32, i32* %ewidth, align 4
  %26 = load i32, i32* %y.addr, align 4
  %call27 = call i32 @gimp_tile_height() #4
  %rem = urem i32 %26, %call27
  %mul = mul i32 %25, %rem
  %27 = load i32, i32* %x.addr, align 4
  %call28 = call i32 @gimp_tile_width() #4
  %rem29 = urem i32 %27, %call28
  %add = add i32 %mul, %rem29
  %mul30 = mul i32 %23, %add
  %idx.ext = zext i32 %mul30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %tile_data, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.25
  %28 = load i32, i32* %b, align 4
  %29 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp31 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %29, i32 0, i32 2
  %30 = load i32, i32* %bpp31, align 4
  %cmp32 = icmp ult i32 %28, %30
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %tile_data, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr33, i8** %tile_data, align 8
  store i8 %32, i8* %33, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %b, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %35, i32 1)
  br label %return

return:                                           ; preds = %for.end, %if.else.23, %if.else.14, %if.else.5, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* %pr, i8* %buf, i32 %x, i32 %y, i32 %width) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %tile_data = alloca i8*, align 8
  %inc = alloca i32, align 4
  %min = alloca i32, align 4
  %end = alloca i32, align 4
  %boundary = alloca i32, align 4
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp1 = icmp ne %struct._GimpDrawable* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_row, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp ne i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_row, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  br label %while.end

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %4 = load i32, i32* %x.addr, align 4
  %cmp9 = icmp sge i32 %4, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.15

land.lhs.true.10:                                 ; preds = %do.body.8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %5, %6
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %7, i32 0, i32 1
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %width12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width12, align 4
  %cmp13 = icmp ule i32 %add, %9
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true.10
  br label %if.end.16

if.else.15:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_row, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0))
  br label %while.end

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %10 = load i32, i32* %y.addr, align 4
  %cmp19 = icmp sge i32 %10, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.24

land.lhs.true.20:                                 ; preds = %do.body.18
  %11 = load i32, i32* %y.addr, align 4
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable21 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %12, i32 0, i32 1
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable21, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height, align 4
  %cmp22 = icmp ult i32 %11, %14
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.20
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.20, %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_row, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0))
  br label %while.end

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %15 = load i32, i32* %width.addr, align 4
  %cmp28 = icmp sge i32 %15, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_row, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  br label %while.end

if.end.31:                                        ; preds = %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %width.addr, align 4
  %add33 = add nsw i32 %16, %17
  store i32 %add33, i32* %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %do.end.32
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %end, align 4
  %cmp34 = icmp slt i32 %18, %19
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 1
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable35, align 8
  %22 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %22, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %21, i32 %bf.cast, i32 %23, i32 %24)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %25 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %25)
  %26 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %26, i32 0, i32 6
  %27 = load i8*, i8** %data, align 8
  %28 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %28, i32 0, i32 2
  %29 = load i32, i32* %bpp, align 4
  %30 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %30, i32 0, i32 0
  %31 = load i32, i32* %ewidth, align 4
  %32 = load i32, i32* %y.addr, align 4
  %call36 = call i32 @gimp_tile_height() #4
  %rem = urem i32 %32, %call36
  %mul = mul i32 %31, %rem
  %33 = load i32, i32* %x.addr, align 4
  %call37 = call i32 @gimp_tile_width() #4
  %rem38 = urem i32 %33, %call37
  %add39 = add i32 %mul, %rem38
  %mul40 = mul i32 %29, %add39
  %idx.ext = zext i32 %mul40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %tile_data, align 8
  %34 = load i32, i32* %x.addr, align 4
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth41 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %35, i32 0, i32 0
  %36 = load i32, i32* %ewidth41, align 4
  %37 = load i32, i32* %x.addr, align 4
  %call42 = call i32 @gimp_tile_width() #4
  %rem43 = urem i32 %37, %call42
  %sub = sub i32 %36, %rem43
  %add44 = add i32 %34, %sub
  store i32 %add44, i32* %boundary, align 4
  %38 = load i32, i32* %end, align 4
  %39 = load i32, i32* %boundary, align 4
  %cmp45 = icmp slt i32 %38, %39
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %40 = load i32, i32* %end, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %41 = load i32, i32* %boundary, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ]
  store i32 %cond, i32* %min, align 4
  %42 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp46 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %42, i32 0, i32 2
  %43 = load i32, i32* %bpp46, align 4
  %44 = load i32, i32* %min, align 4
  %45 = load i32, i32* %x.addr, align 4
  %sub47 = sub nsw i32 %44, %45
  %mul48 = mul i32 %43, %sub47
  store i32 %mul48, i32* %inc, align 4
  %46 = load i8*, i8** %tile_data, align 8
  %47 = load i8*, i8** %buf.addr, align 8
  %48 = load i32, i32* %inc, align 4
  %conv = sext i32 %48 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 %conv, i32 1, i1 false)
  %49 = load i32, i32* %min, align 4
  store i32 %49, i32* %x.addr, align 4
  %50 = load i32, i32* %inc, align 4
  %51 = load i8*, i8** %buf.addr, align 8
  %idx.ext49 = sext i32 %50 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %51, i64 %idx.ext49
  store i8* %add.ptr50, i8** %buf.addr, align 8
  %52 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %52, i32 1)
  br label %while.cond

while.end:                                        ; preds = %if.else, %if.else.5, %if.else.15, %if.else.24, %if.else.30, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_set_col(%struct._GimpPixelRgn* %pr, i8* %buf, i32 %x, i32 %y, i32 %height) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %end = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %tile_data = alloca i8*, align 8
  %inc = alloca i32, align 4
  %boundary = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp1 = icmp ne %struct._GimpDrawable* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_col, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp ne i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_col, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  br label %while.end

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %4 = load i32, i32* %x.addr, align 4
  %cmp9 = icmp sge i32 %4, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.14

land.lhs.true.10:                                 ; preds = %do.body.8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %6, i32 0, i32 1
  %7 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %7, i32 0, i32 1
  %8 = load i32, i32* %width, align 4
  %cmp12 = icmp ult i32 %5, %8
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %land.lhs.true.10
  br label %if.end.15

if.else.14:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_col, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  br label %while.end

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %9 = load i32, i32* %y.addr, align 4
  %cmp18 = icmp sge i32 %9, 0
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.24

land.lhs.true.19:                                 ; preds = %do.body.17
  %10 = load i32, i32* %y.addr, align 4
  %11 = load i32, i32* %height.addr, align 4
  %add = add nsw i32 %10, %11
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %12, i32 0, i32 1
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable20, align 8
  %height21 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %13, i32 0, i32 2
  %14 = load i32, i32* %height21, align 4
  %cmp22 = icmp ule i32 %add, %14
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true.19
  br label %if.end.25

if.else.24:                                       ; preds = %land.lhs.true.19, %do.body.17
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_col, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0))
  br label %while.end

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %15 = load i32, i32* %height.addr, align 4
  %cmp28 = icmp sge i32 %15, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.27
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_pixel_rgn_set_col, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %while.end

if.end.31:                                        ; preds = %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %16 = load i32, i32* %y.addr, align 4
  %17 = load i32, i32* %height.addr, align 4
  %add33 = add nsw i32 %16, %17
  store i32 %add33, i32* %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.58, %do.end.32
  %18 = load i32, i32* %y.addr, align 4
  %19 = load i32, i32* %end, align 4
  %cmp34 = icmp slt i32 %18, %19
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 1
  %21 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable35, align 8
  %22 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %22, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %y.addr, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %21, i32 %bf.cast, i32 %23, i32 %24)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %25 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %25)
  %26 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %26, i32 0, i32 6
  %27 = load i8*, i8** %data, align 8
  %28 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %28, i32 0, i32 2
  %29 = load i32, i32* %bpp, align 4
  %30 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %30, i32 0, i32 0
  %31 = load i32, i32* %ewidth, align 4
  %32 = load i32, i32* %y.addr, align 4
  %call36 = call i32 @gimp_tile_height() #4
  %rem = urem i32 %32, %call36
  %mul = mul i32 %31, %rem
  %33 = load i32, i32* %x.addr, align 4
  %call37 = call i32 @gimp_tile_width() #4
  %rem38 = urem i32 %33, %call37
  %add39 = add i32 %mul, %rem38
  %mul40 = mul i32 %29, %add39
  %idx.ext = zext i32 %mul40 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %tile_data, align 8
  %34 = load i32, i32* %y.addr, align 4
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %eheight = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %35, i32 0, i32 1
  %36 = load i32, i32* %eheight, align 4
  %37 = load i32, i32* %y.addr, align 4
  %call41 = call i32 @gimp_tile_height() #4
  %rem42 = urem i32 %37, %call41
  %sub = sub i32 %36, %rem42
  %add43 = add i32 %34, %sub
  store i32 %add43, i32* %boundary, align 4
  %38 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp44 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %38, i32 0, i32 2
  %39 = load i32, i32* %bpp44, align 4
  %40 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth45 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %40, i32 0, i32 0
  %41 = load i32, i32* %ewidth45, align 4
  %mul46 = mul i32 %39, %41
  store i32 %mul46, i32* %inc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %while.body
  %42 = load i32, i32* %y.addr, align 4
  %43 = load i32, i32* %end, align 4
  %cmp47 = icmp slt i32 %42, %43
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %44 = load i32, i32* %y.addr, align 4
  %45 = load i32, i32* %boundary, align 4
  %cmp48 = icmp slt i32 %44, %45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %46 = phi i1 [ false, %for.cond ], [ %cmp48, %land.rhs ]
  br i1 %46, label %for.body, label %for.end.58

for.body:                                         ; preds = %land.end
  store i32 0, i32* %b, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %for.body
  %47 = load i32, i32* %b, align 4
  %48 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp50 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %48, i32 0, i32 2
  %49 = load i32, i32* %bpp50, align 4
  %cmp51 = icmp ult i32 %47, %49
  br i1 %cmp51, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.49
  %50 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i32, i32* %b, align 4
  %idxprom = sext i32 %52 to i64
  %53 = load i8*, i8** %tile_data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %53, i64 %idxprom
  store i8 %51, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.52
  %54 = load i32, i32* %b, align 4
  %inc53 = add nsw i32 %54, 1
  store i32 %inc53, i32* %b, align 4
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  %55 = load i32, i32* %inc, align 4
  %56 = load i8*, i8** %tile_data, align 8
  %idx.ext54 = sext i32 %55 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %56, i64 %idx.ext54
  store i8* %add.ptr55, i8** %tile_data, align 8
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %57 = load i32, i32* %y.addr, align 4
  %inc57 = add nsw i32 %57, 1
  store i32 %inc57, i32* %y.addr, align 4
  br label %for.cond

for.end.58:                                       ; preds = %land.end
  %58 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %58, i32 1)
  br label %while.cond

while.end:                                        ; preds = %if.else, %if.else.5, %if.else.14, %if.else.24, %if.else.30, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_pixel_rgn_set_rect(%struct._GimpPixelRgn* %pr, i8* %buf, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %pr.addr = alloca %struct._GimpPixelRgn*, align 8
  %buf.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bufstride = alloca i64, align 8
  %xstart = alloca i32, align 4
  %ystart = alloca i32, align 4
  %xend = alloca i32, align 4
  %yend = alloca i32, align 4
  %xboundary = alloca i32, align 4
  %yboundary = alloca i32, align 4
  %xstep = alloca i32, align 4
  %ystep = alloca i32, align 4
  %ty = alloca i32, align 4
  %bpp = alloca i32, align 4
  %tile = alloca %struct._GimpTile*, align 8
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  store %struct._GimpPixelRgn* %pr, %struct._GimpPixelRgn** %pr.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %cmp = icmp ne %struct._GimpPixelRgn* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %cmp1 = icmp ne %struct._GimpDrawable* %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_set_rect, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %while.end.89

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %3 = load i8*, i8** %buf.addr, align 8
  %cmp3 = icmp ne i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.6

if.else.5:                                        ; preds = %do.body.2
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_set_rect, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0))
  br label %while.end.89

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %4 = load i32, i32* %x.addr, align 4
  %cmp9 = icmp sge i32 %4, 0
  br i1 %cmp9, label %land.lhs.true.10, label %if.else.15

land.lhs.true.10:                                 ; preds = %do.body.8
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %5, %6
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable11 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %7, i32 0, i32 1
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable11, align 8
  %width12 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 1
  %9 = load i32, i32* %width12, align 4
  %cmp13 = icmp ule i32 %add, %9
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true.10
  br label %if.end.16

if.else.15:                                       ; preds = %land.lhs.true.10, %do.body.8
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_set_rect, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0))
  br label %while.end.89

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %10 = load i32, i32* %y.addr, align 4
  %cmp19 = icmp sge i32 %10, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.26

land.lhs.true.20:                                 ; preds = %do.body.18
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %height.addr, align 4
  %add21 = add nsw i32 %11, %12
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable22 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 1
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable22, align 8
  %height23 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %14, i32 0, i32 2
  %15 = load i32, i32* %height23, align 4
  %cmp24 = icmp ule i32 %add21, %15
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %land.lhs.true.20
  br label %if.end.27

if.else.26:                                       ; preds = %land.lhs.true.20, %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_set_rect, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i32 0, i32 0))
  br label %while.end.89

if.end.27:                                        ; preds = %if.then.25
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %do.end.28
  %16 = load i32, i32* %width.addr, align 4
  %cmp30 = icmp sge i32 %16, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.29
  br label %if.end.33

if.else.32:                                       ; preds = %do.body.29
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_set_rect, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  br label %while.end.89

if.end.33:                                        ; preds = %if.then.31
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %17 = load i32, i32* %height.addr, align 4
  %cmp36 = icmp sge i32 %17, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.35
  br label %if.end.39

if.else.38:                                       ; preds = %do.body.35
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgn_set_rect, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %while.end.89

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %18 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %bpp41 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %18, i32 0, i32 2
  %19 = load i32, i32* %bpp41, align 4
  store i32 %19, i32* %bpp, align 4
  %20 = load i32, i32* %bpp, align 4
  %21 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %20, %21
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %bufstride, align 8
  %22 = load i32, i32* %x.addr, align 4
  store i32 %22, i32* %xstart, align 4
  %23 = load i32, i32* %y.addr, align 4
  store i32 %23, i32* %ystart, align 4
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %width.addr, align 4
  %add42 = add nsw i32 %24, %25
  store i32 %add42, i32* %xend, align 4
  %26 = load i32, i32* %y.addr, align 4
  %27 = load i32, i32* %height.addr, align 4
  %add43 = add nsw i32 %26, %27
  store i32 %add43, i32* %yend, align 4
  store i32 0, i32* %ystep, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %do.end.40
  %28 = load i32, i32* %y.addr, align 4
  %29 = load i32, i32* %yend, align 4
  %cmp44 = icmp slt i32 %28, %29
  br i1 %cmp44, label %while.body, label %while.end.89

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %xstart, align 4
  store i32 %30, i32* %x.addr, align 4
  br label %while.cond.46

while.cond.46:                                    ; preds = %for.end, %while.body
  %31 = load i32, i32* %x.addr, align 4
  %32 = load i32, i32* %xend, align 4
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %while.body.49, label %while.end

while.body.49:                                    ; preds = %while.cond.46
  %33 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %drawable50 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %33, i32 0, i32 1
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable50, align 8
  %35 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr.addr, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %35, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %36 = load i32, i32* %x.addr, align 4
  %37 = load i32, i32* %y.addr, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %34, i32 %bf.cast, i32 %36, i32 %37)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %38 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %38)
  %39 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %39, i32 0, i32 0
  %40 = load i32, i32* %ewidth, align 4
  %41 = load i32, i32* %x.addr, align 4
  %call51 = call i32 @gimp_tile_width() #4
  %rem = urem i32 %41, %call51
  %sub = sub i32 %40, %rem
  store i32 %sub, i32* %xstep, align 4
  %42 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %eheight = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %42, i32 0, i32 1
  %43 = load i32, i32* %eheight, align 4
  %44 = load i32, i32* %y.addr, align 4
  %call52 = call i32 @gimp_tile_height() #4
  %rem53 = urem i32 %44, %call52
  %sub54 = sub i32 %43, %rem53
  store i32 %sub54, i32* %ystep, align 4
  %45 = load i32, i32* %x.addr, align 4
  %46 = load i32, i32* %xstep, align 4
  %add55 = add nsw i32 %45, %46
  store i32 %add55, i32* %xboundary, align 4
  %47 = load i32, i32* %y.addr, align 4
  %48 = load i32, i32* %ystep, align 4
  %add56 = add nsw i32 %47, %48
  store i32 %add56, i32* %yboundary, align 4
  %49 = load i32, i32* %xboundary, align 4
  %50 = load i32, i32* %xend, align 4
  %cmp57 = icmp slt i32 %49, %50
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body.49
  %51 = load i32, i32* %xboundary, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body.49
  %52 = load i32, i32* %xend, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ %52, %cond.false ]
  store i32 %cond, i32* %xboundary, align 4
  %53 = load i32, i32* %yboundary, align 4
  %54 = load i32, i32* %yend, align 4
  %cmp59 = icmp slt i32 %53, %54
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end
  %55 = load i32, i32* %yboundary, align 4
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end
  %56 = load i32, i32* %yend, align 4
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i32 [ %55, %cond.true.61 ], [ %56, %cond.false.62 ]
  store i32 %cond64, i32* %yboundary, align 4
  %57 = load i32, i32* %y.addr, align 4
  store i32 %57, i32* %ty, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.63
  %58 = load i32, i32* %ty, align 4
  %59 = load i32, i32* %yboundary, align 4
  %cmp65 = icmp slt i32 %58, %59
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i8*, i8** %buf.addr, align 8
  %61 = load i64, i64* %bufstride, align 8
  %62 = load i32, i32* %ty, align 4
  %63 = load i32, i32* %ystart, align 4
  %sub67 = sub nsw i32 %62, %63
  %conv68 = sext i32 %sub67 to i64
  %mul69 = mul i64 %61, %conv68
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %mul69
  %64 = load i32, i32* %bpp, align 4
  %65 = load i32, i32* %x.addr, align 4
  %66 = load i32, i32* %xstart, align 4
  %sub70 = sub nsw i32 %65, %66
  %mul71 = mul nsw i32 %64, %sub70
  %idx.ext = sext i32 %mul71 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  store i8* %add.ptr72, i8** %src, align 8
  %67 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %67, i32 0, i32 6
  %68 = load i8*, i8** %data, align 8
  %69 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %bpp73 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %69, i32 0, i32 2
  %70 = load i32, i32* %bpp73, align 4
  %71 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth74 = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %71, i32 0, i32 0
  %72 = load i32, i32* %ewidth74, align 4
  %73 = load i32, i32* %ty, align 4
  %call75 = call i32 @gimp_tile_height() #4
  %rem76 = urem i32 %73, %call75
  %mul77 = mul i32 %72, %rem76
  %74 = load i32, i32* %x.addr, align 4
  %call78 = call i32 @gimp_tile_width() #4
  %rem79 = urem i32 %74, %call78
  %add80 = add i32 %mul77, %rem79
  %mul81 = mul i32 %70, %add80
  %idx.ext82 = zext i32 %mul81 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %68, i64 %idx.ext82
  store i8* %add.ptr83, i8** %dest, align 8
  %75 = load i8*, i8** %dest, align 8
  %76 = load i8*, i8** %src, align 8
  %77 = load i32, i32* %xboundary, align 4
  %78 = load i32, i32* %x.addr, align 4
  %sub84 = sub nsw i32 %77, %78
  %79 = load i32, i32* %bpp, align 4
  %mul85 = mul nsw i32 %sub84, %79
  %conv86 = sext i32 %mul85 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 %conv86, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, i32* %ty, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %ty, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_unref(%struct._GimpTile* %81, i32 1)
  %82 = load i32, i32* %xstep, align 4
  %83 = load i32, i32* %x.addr, align 4
  %add87 = add nsw i32 %83, %82
  store i32 %add87, i32* %x.addr, align 4
  br label %while.cond.46

while.end:                                        ; preds = %while.cond.46
  %84 = load i32, i32* %ystep, align 4
  %85 = load i32, i32* %y.addr, align 4
  %add88 = add nsw i32 %85, %84
  store i32 %add88, i32* %y.addr, align 4
  br label %while.cond

while.end.89:                                     ; preds = %if.else, %if.else.5, %if.else.15, %if.else.26, %if.else.32, %if.else.38, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @gimp_pixel_rgns_register2(i32 %nrgns, %struct._GimpPixelRgn** %prs) #0 {
entry:
  %retval = alloca i8*, align 8
  %nrgns.addr = alloca i32, align 4
  %prs.addr = alloca %struct._GimpPixelRgn**, align 8
  %pri = alloca %struct._GimpPixelRgnIterator*, align 8
  %found = alloca i32, align 4
  %pr = alloca %struct._GimpPixelRgn*, align 8
  %prh = alloca %struct._GimpPixelRgnHolder*, align 8
  store i32 %nrgns, i32* %nrgns.addr, align 4
  store %struct._GimpPixelRgn** %prs, %struct._GimpPixelRgn*** %prs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %nrgns.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pixel_rgns_register2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GimpPixelRgn**, %struct._GimpPixelRgn*** %prs.addr, align 8
  %cmp2 = icmp ne %struct._GimpPixelRgn** %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_pixel_rgns_register2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %call = call noalias i8* @g_slice_alloc0(i64 32)
  %2 = bitcast i8* %call to %struct._GimpPixelRgnIterator*
  store %struct._GimpPixelRgnIterator* %2, %struct._GimpPixelRgnIterator** %pri, align 8
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %do.end.6
  %3 = load i32, i32* %nrgns.addr, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %nrgns.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %nrgns.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct._GimpPixelRgn**, %struct._GimpPixelRgn*** %prs.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %5, i64 %idxprom
  %6 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %arrayidx, align 8
  store %struct._GimpPixelRgn* %6, %struct._GimpPixelRgn** %pr, align 8
  %call7 = call noalias i8* @g_slice_alloc0(i64 32)
  %7 = bitcast i8* %call7 to %struct._GimpPixelRgnHolder*
  store %struct._GimpPixelRgnHolder* %7, %struct._GimpPixelRgnHolder** %prh, align 8
  %8 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %9 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr8 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %9, i32 0, i32 0
  store %struct._GimpPixelRgn* %8, %struct._GimpPixelRgn** %pr8, align 8
  %10 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %cmp9 = icmp ne %struct._GimpPixelRgn* %10, null
  br i1 %cmp9, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %while.body
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %data = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %tobool11 = icmp ne i8* %12, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %13 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %13, i32 0, i32 1
  store %struct._GimpDrawable* null, %struct._GimpDrawable** %drawable, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %data14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %14, i32 0, i32 0
  %15 = load i8*, i8** %data14, align 8
  %16 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %original_data = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %16, i32 0, i32 1
  store i8* %15, i8** %original_data, align 8
  %17 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %17, i32 0, i32 4
  %18 = load i32, i32* %x, align 4
  %19 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %startx = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %19, i32 0, i32 2
  store i32 %18, i32* %startx, align 4
  %20 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %20, i32 0, i32 5
  %21 = load i32, i32* %y, align 4
  %22 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %starty = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %22, i32 0, i32 3
  store i32 %21, i32* %starty, align 4
  %23 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr15 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %23, i32 0, i32 0
  %24 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr15, align 8
  %process_count = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %24, i32 0, i32 9
  store i32 0, i32* %process_count, align 4
  %25 = load i32, i32* %found, align 4
  %tobool16 = icmp ne i32 %25, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.13
  store i32 1, i32* %found, align 4
  %26 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %26, i32 0, i32 6
  %27 = load i32, i32* %w, align 4
  %28 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %region_width = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %28, i32 0, i32 1
  store i32 %27, i32* %region_width, align 4
  %29 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %29, i32 0, i32 7
  %30 = load i32, i32* %h, align 4
  %31 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %region_height = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %31, i32 0, i32 2
  store i32 %30, i32* %region_height, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %while.body
  %32 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %pixel_regions = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %32, i32 0, i32 0
  %33 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  %34 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %35 = bitcast %struct._GimpPixelRgnHolder* %34 to i8*
  %call20 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %33, i8* %35)
  %36 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %pixel_regions21 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %36, i32 0, i32 0
  store %struct._GSList* %call20, %struct._GSList** %pixel_regions21, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %37 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %call22 = call i8* @gimp_pixel_rgns_configure(%struct._GimpPixelRgnIterator* %37)
  store i8* %call22, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.4, %if.else
  %38 = load i8*, i8** %retval
  ret i8* %38
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_pixel_rgns_configure(%struct._GimpPixelRgnIterator* %pri) #0 {
entry:
  %retval = alloca i8*, align 8
  %pri.addr = alloca %struct._GimpPixelRgnIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  %prh = alloca %struct._GimpPixelRgnHolder*, align 8
  store %struct._GimpPixelRgnIterator* %pri, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %0 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %call = call i32 @gimp_get_portion_width(%struct._GimpPixelRgnIterator* %0)
  %1 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %portion_width = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %1, i32 0, i32 3
  store i32 %call, i32* %portion_width, align 4
  %2 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %call1 = call i32 @gimp_get_portion_height(%struct._GimpPixelRgnIterator* %2)
  %3 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %portion_height = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %3, i32 0, i32 4
  store i32 %call1, i32* %portion_height, align 4
  %4 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %portion_width2 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %4, i32 0, i32 3
  %5 = load i32, i32* %portion_width2, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %portion_height3 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %6, i32 0, i32 4
  %7 = load i32, i32* %portion_height3, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %pixel_regions = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %8, i32 0, i32 0
  %9 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  store %struct._GSList* %9, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %11 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  call void @g_slice_free1(i64 32, i8* %12)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %13 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 1
  %14 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %14, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %pixel_regions5 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %15, i32 0, i32 0
  %16 = load %struct._GSList*, %struct._GSList** %pixel_regions5, align 8
  call void @g_slist_free(%struct._GSList* %16)
  br label %do.body.6

do.body.6:                                        ; preds = %for.end
  %17 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %18 = bitcast %struct._GimpPixelRgnIterator* %17 to i8*
  call void @g_slice_free1(i64 32, i8* %18)
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %19 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %process_count = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %19, i32 0, i32 5
  %20 = load i32, i32* %process_count, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %process_count, align 4
  %21 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %pixel_regions8 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %21, i32 0, i32 0
  %22 = load %struct._GSList*, %struct._GSList** %pixel_regions8, align 8
  store %struct._GSList* %22, %struct._GSList** %list, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.23, %if.end
  %23 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool10 = icmp ne %struct._GSList* %23, null
  br i1 %tobool10, label %for.body.11, label %for.end.25

for.body.11:                                      ; preds = %for.cond.9
  %24 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data12 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data12, align 8
  %26 = bitcast i8* %25 to %struct._GimpPixelRgnHolder*
  store %struct._GimpPixelRgnHolder* %26, %struct._GimpPixelRgnHolder** %prh, align 8
  %27 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %27, i32 0, i32 0
  %28 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %cmp13 = icmp ne %struct._GimpPixelRgn* %28, null
  br i1 %cmp13, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %for.body.11
  %29 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr14 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %29, i32 0, i32 0
  %30 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr14, align 8
  %process_count15 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %30, i32 0, i32 9
  %31 = load i32, i32* %process_count15, align 4
  %32 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %process_count16 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %32, i32 0, i32 5
  %33 = load i32, i32* %process_count16, align 4
  %cmp17 = icmp ne i32 %31, %33
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %land.lhs.true
  %34 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr19 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %34, i32 0, i32 0
  %35 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr19, align 8
  %process_count20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %35, i32 0, i32 9
  %36 = load i32, i32* %process_count20, align 4
  %inc21 = add nsw i32 %36, 1
  store i32 %inc21, i32* %process_count20, align 4
  %37 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %38 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  call void @gimp_pixel_rgn_configure(%struct._GimpPixelRgnHolder* %37, %struct._GimpPixelRgnIterator* %38)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %land.lhs.true, %for.body.11
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %39 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next24 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 1
  %40 = load %struct._GSList*, %struct._GSList** %next24, align 8
  store %struct._GSList* %40, %struct._GSList** %list, align 8
  br label %for.cond.9

for.end.25:                                       ; preds = %for.cond.9
  %41 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %42 = bitcast %struct._GimpPixelRgnIterator* %41 to i8*
  store i8* %42, i8** %retval
  br label %return

return:                                           ; preds = %for.end.25, %do.end.7
  %43 = load i8*, i8** %retval
  ret i8* %43
}

; Function Attrs: nounwind uwtable
define i8* @gimp_pixel_rgns_register(i32 %nrgns, ...) #0 {
entry:
  %retval = alloca i8*, align 8
  %nrgns.addr = alloca i32, align 4
  %prs = alloca %struct._GimpPixelRgn**, align 8
  %n = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %nrgns, i32* %nrgns.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %nrgns.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_pixel_rgns_register, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %nrgns.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %2 = alloca i8, i64 %mul
  %3 = bitcast i8* %2 to %struct._GimpPixelRgn**
  store %struct._GimpPixelRgn** %3, %struct._GimpPixelRgn*** %prs, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %4 = load i32, i32* %nrgns.addr, align 4
  store i32 %4, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %vaarg.end, %do.end
  %5 = load i32, i32* %n, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %n, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %8 = bitcast i8* %7 to %struct._GimpPixelRgn**
  %9 = add i32 %gp_offset, 8
  store i32 %9, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %10 = bitcast i8* %overflow_arg_area to %struct._GimpPixelRgn**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct._GimpPixelRgn** [ %8, %vaarg.in_reg ], [ %10, %vaarg.in_mem ]
  %11 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %vaarg.addr
  %12 = load i32, i32* %n, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct._GimpPixelRgn**, %struct._GimpPixelRgn*** %prs, align 8
  %arrayidx = getelementptr inbounds %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %13, i64 %idxprom
  store %struct._GimpPixelRgn* %11, %struct._GimpPixelRgn** %arrayidx, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %14 = load i32, i32* %nrgns.addr, align 4
  %15 = load %struct._GimpPixelRgn**, %struct._GimpPixelRgn*** %prs, align 8
  %call = call i8* @gimp_pixel_rgns_register2(i32 %14, %struct._GimpPixelRgn** %15)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define i8* @gimp_pixel_rgns_process(i8* %pri_ptr) #0 {
entry:
  %retval = alloca i8*, align 8
  %pri_ptr.addr = alloca i8*, align 8
  %pri = alloca %struct._GimpPixelRgnIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  %prh = alloca %struct._GimpPixelRgnHolder*, align 8
  %tile = alloca %struct._GimpTile*, align 8
  store i8* %pri_ptr, i8** %pri_ptr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %pri_ptr.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_pixel_rgns_process, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %pri_ptr.addr, align 8
  %2 = bitcast i8* %1 to %struct._GimpPixelRgnIterator*
  store %struct._GimpPixelRgnIterator* %2, %struct._GimpPixelRgnIterator** %pri, align 8
  %3 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %process_count = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %3, i32 0, i32 5
  %4 = load i32, i32* %process_count, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %process_count, align 4
  %5 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %pixel_regions = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %5, i32 0, i32 0
  %6 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  store %struct._GSList* %6, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpPixelRgnHolder*
  store %struct._GimpPixelRgnHolder* %10, %struct._GimpPixelRgnHolder** %prh, align 8
  %11 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %11, i32 0, i32 0
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %cmp1 = icmp ne %struct._GimpPixelRgn* %12, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr2 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %13, i32 0, i32 0
  %14 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr2, align 8
  %process_count3 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %14, i32 0, i32 9
  %15 = load i32, i32* %process_count3, align 4
  %16 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %process_count4 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %16, i32 0, i32 5
  %17 = load i32, i32* %process_count4, align 4
  %cmp5 = icmp ne i32 %15, %17
  br i1 %cmp5, label %if.then.6, label %if.end.36

if.then.6:                                        ; preds = %land.lhs.true
  %18 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr7 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %18, i32 0, i32 0
  %19 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr7, align 8
  %process_count8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %19, i32 0, i32 9
  %20 = load i32, i32* %process_count8, align 4
  %inc9 = add nsw i32 %20, 1
  store i32 %inc9, i32* %process_count8, align 4
  %21 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr10 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %21, i32 0, i32 0
  %22 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr10, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %22, i32 0, i32 1
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool11 = icmp ne %struct._GimpDrawable* %23, null
  br i1 %tobool11, label %if.then.12, label %if.end.22

if.then.12:                                       ; preds = %if.then.6
  %24 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr13 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %24, i32 0, i32 0
  %25 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr13, align 8
  %drawable14 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %25, i32 0, i32 1
  %26 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable14, align 8
  %27 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr15 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %27, i32 0, i32 0
  %28 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr15, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %28, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %29 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr16 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %29, i32 0, i32 0
  %30 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr16, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %30, i32 0, i32 4
  %31 = load i32, i32* %x, align 4
  %32 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr17 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %32, i32 0, i32 0
  %33 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr17, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %33, i32 0, i32 5
  %34 = load i32, i32* %y, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %26, i32 %bf.cast, i32 %31, i32 %34)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %35 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %36 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr18 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %36, i32 0, i32 0
  %37 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr18, align 8
  %dirty = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %37, i32 0, i32 8
  %bf.load19 = load i8, i8* %dirty, align 8
  %bf.clear20 = and i8 %bf.load19, 1
  %bf.cast21 = zext i8 %bf.clear20 to i32
  call void @gimp_tile_unref(%struct._GimpTile* %35, i32 %bf.cast21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.12, %if.then.6
  %38 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %portion_width = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %38, i32 0, i32 3
  %39 = load i32, i32* %portion_width, align 4
  %40 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr23 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %40, i32 0, i32 0
  %41 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr23, align 8
  %x24 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %41, i32 0, i32 4
  %42 = load i32, i32* %x24, align 4
  %add = add nsw i32 %42, %39
  store i32 %add, i32* %x24, align 4
  %43 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr25 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %43, i32 0, i32 0
  %44 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr25, align 8
  %x26 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %44, i32 0, i32 4
  %45 = load i32, i32* %x26, align 4
  %46 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %startx = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %46, i32 0, i32 2
  %47 = load i32, i32* %startx, align 4
  %sub = sub nsw i32 %45, %47
  %48 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %region_width = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %48, i32 0, i32 1
  %49 = load i32, i32* %region_width, align 4
  %cmp27 = icmp sge i32 %sub, %49
  br i1 %cmp27, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %if.end.22
  %50 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %startx29 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %50, i32 0, i32 2
  %51 = load i32, i32* %startx29, align 4
  %52 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr30 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %52, i32 0, i32 0
  %53 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr30, align 8
  %x31 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %53, i32 0, i32 4
  store i32 %51, i32* %x31, align 4
  %54 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %portion_height = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %54, i32 0, i32 4
  %55 = load i32, i32* %portion_height, align 4
  %56 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr32 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %56, i32 0, i32 0
  %57 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr32, align 8
  %y33 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %57, i32 0, i32 5
  %58 = load i32, i32* %y33, align 4
  %add34 = add nsw i32 %58, %55
  store i32 %add34, i32* %y33, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.28, %if.end.22
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %59 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %59, i32 0, i32 1
  %60 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %60, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri, align 8
  %call37 = call i8* @gimp_pixel_rgns_configure(%struct._GimpPixelRgnIterator* %61)
  store i8* %call37, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %62 = load i8*, i8** %retval
  ret i8* %62
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_get_portion_width(%struct._GimpPixelRgnIterator* %pri) #0 {
entry:
  %retval = alloca i32, align 4
  %pri.addr = alloca %struct._GimpPixelRgnIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  %min_width = alloca i32, align 4
  %width = alloca i32, align 4
  %prh = alloca %struct._GimpPixelRgnHolder*, align 8
  store %struct._GimpPixelRgnIterator* %pri, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  store i32 2147483647, i32* %min_width, align 4
  %0 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %pixel_regions = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %0, i32 0, i32 0
  %1 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpPixelRgnHolder*
  store %struct._GimpPixelRgnHolder* %5, %struct._GimpPixelRgnHolder** %prh, align 8
  %6 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %6, i32 0, i32 0
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %tobool1 = icmp ne %struct._GimpPixelRgn* %7, null
  br i1 %tobool1, label %if.then, label %if.end.39

if.then:                                          ; preds = %for.body
  %8 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr2 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %8, i32 0, i32 0
  %9 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr2, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %9, i32 0, i32 4
  %10 = load i32, i32* %x, align 4
  %11 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %startx = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %11, i32 0, i32 2
  %12 = load i32, i32* %startx, align 4
  %sub = sub nsw i32 %10, %12
  %13 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %region_width = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %13, i32 0, i32 1
  %14 = load i32, i32* %region_width, align 4
  %cmp = icmp sge i32 %sub, %14
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr4 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %15, i32 0, i32 0
  %16 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr4, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %16, i32 0, i32 1
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool5 = icmp ne %struct._GimpDrawable* %17, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %call = call i32 @gimp_tile_width() #4
  %18 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr7 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %18, i32 0, i32 0
  %19 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr7, align 8
  %x8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %19, i32 0, i32 4
  %20 = load i32, i32* %x8, align 4
  %call9 = call i32 @gimp_tile_width() #4
  %rem = urem i32 %20, %call9
  %sub10 = sub i32 %call, %rem
  store i32 %sub10, i32* %width, align 4
  %21 = load i32, i32* %width, align 4
  %22 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %region_width11 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %22, i32 0, i32 1
  %23 = load i32, i32* %region_width11, align 4
  %24 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr12 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %24, i32 0, i32 0
  %25 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr12, align 8
  %x13 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %25, i32 0, i32 4
  %26 = load i32, i32* %x13, align 4
  %27 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %startx14 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %27, i32 0, i32 2
  %28 = load i32, i32* %startx14, align 4
  %sub15 = sub nsw i32 %26, %28
  %sub16 = sub nsw i32 %23, %sub15
  %cmp17 = icmp sgt i32 %21, %sub16
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %29 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %region_width18 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %29, i32 0, i32 1
  %30 = load i32, i32* %region_width18, align 4
  %31 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr19 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %31, i32 0, i32 0
  %32 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr19, align 8
  %x20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %32, i32 0, i32 4
  %33 = load i32, i32* %x20, align 4
  %34 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %startx21 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %34, i32 0, i32 2
  %35 = load i32, i32* %startx21, align 4
  %sub22 = sub nsw i32 %33, %35
  %sub23 = sub nsw i32 %30, %sub22
  br label %cond.end.27

cond.false:                                       ; preds = %if.then.6
  %36 = load i32, i32* %width, align 4
  %cmp24 = icmp slt i32 %36, 0
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  %37 = load i32, i32* %width, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.25
  %cond = phi i32 [ 0, %cond.true.25 ], [ %37, %cond.false.26 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ %sub23, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond28, i32* %width, align 4
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %38 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %region_width29 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %38, i32 0, i32 1
  %39 = load i32, i32* %region_width29, align 4
  %40 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr30 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %40, i32 0, i32 0
  %41 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr30, align 8
  %x31 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %41, i32 0, i32 4
  %42 = load i32, i32* %x31, align 4
  %43 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %startx32 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %43, i32 0, i32 2
  %44 = load i32, i32* %startx32, align 4
  %sub33 = sub nsw i32 %42, %44
  %sub34 = sub nsw i32 %39, %sub33
  store i32 %sub34, i32* %width, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %cond.end.27
  %45 = load i32, i32* %width, align 4
  %46 = load i32, i32* %min_width, align 4
  %cmp36 = icmp slt i32 %45, %46
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  %47 = load i32, i32* %width, align 4
  store i32 %47, i32* %min_width, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %48 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1
  %49 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %49, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %min_width, align 4
  store i32 %50, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_get_portion_height(%struct._GimpPixelRgnIterator* %pri) #0 {
entry:
  %retval = alloca i32, align 4
  %pri.addr = alloca %struct._GimpPixelRgnIterator*, align 8
  %list = alloca %struct._GSList*, align 8
  %min_height = alloca i32, align 4
  %height = alloca i32, align 4
  %prh = alloca %struct._GimpPixelRgnHolder*, align 8
  store %struct._GimpPixelRgnIterator* %pri, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  store i32 2147483647, i32* %min_height, align 4
  %0 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %pixel_regions = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %0, i32 0, i32 0
  %1 = load %struct._GSList*, %struct._GSList** %pixel_regions, align 8
  store %struct._GSList* %1, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool = icmp ne %struct._GSList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpPixelRgnHolder*
  store %struct._GimpPixelRgnHolder* %5, %struct._GimpPixelRgnHolder** %prh, align 8
  %6 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %6, i32 0, i32 0
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %tobool1 = icmp ne %struct._GimpPixelRgn* %7, null
  br i1 %tobool1, label %if.then, label %if.end.39

if.then:                                          ; preds = %for.body
  %8 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr2 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %8, i32 0, i32 0
  %9 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr2, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %9, i32 0, i32 5
  %10 = load i32, i32* %y, align 4
  %11 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %starty = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %11, i32 0, i32 3
  %12 = load i32, i32* %starty, align 4
  %sub = sub nsw i32 %10, %12
  %13 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %region_height = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %13, i32 0, i32 2
  %14 = load i32, i32* %region_height, align 4
  %cmp = icmp sge i32 %sub, %14
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr4 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %15, i32 0, i32 0
  %16 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr4, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %16, i32 0, i32 1
  %17 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool5 = icmp ne %struct._GimpDrawable* %17, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %call = call i32 @gimp_tile_height() #4
  %18 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr7 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %18, i32 0, i32 0
  %19 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr7, align 8
  %y8 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %19, i32 0, i32 5
  %20 = load i32, i32* %y8, align 4
  %call9 = call i32 @gimp_tile_height() #4
  %rem = urem i32 %20, %call9
  %sub10 = sub i32 %call, %rem
  store i32 %sub10, i32* %height, align 4
  %21 = load i32, i32* %height, align 4
  %22 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %region_height11 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %22, i32 0, i32 2
  %23 = load i32, i32* %region_height11, align 4
  %24 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr12 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %24, i32 0, i32 0
  %25 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr12, align 8
  %y13 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %25, i32 0, i32 5
  %26 = load i32, i32* %y13, align 4
  %27 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %starty14 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %27, i32 0, i32 3
  %28 = load i32, i32* %starty14, align 4
  %sub15 = sub nsw i32 %26, %28
  %sub16 = sub nsw i32 %23, %sub15
  %cmp17 = icmp sgt i32 %21, %sub16
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %29 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %region_height18 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %29, i32 0, i32 2
  %30 = load i32, i32* %region_height18, align 4
  %31 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr19 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %31, i32 0, i32 0
  %32 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr19, align 8
  %y20 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %32, i32 0, i32 5
  %33 = load i32, i32* %y20, align 4
  %34 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %starty21 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %34, i32 0, i32 3
  %35 = load i32, i32* %starty21, align 4
  %sub22 = sub nsw i32 %33, %35
  %sub23 = sub nsw i32 %30, %sub22
  br label %cond.end.27

cond.false:                                       ; preds = %if.then.6
  %36 = load i32, i32* %height, align 4
  %cmp24 = icmp slt i32 %36, 0
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.false
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  %37 = load i32, i32* %height, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.25
  %cond = phi i32 [ 0, %cond.true.25 ], [ %37, %cond.false.26 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ %sub23, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond28, i32* %height, align 4
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %38 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %region_height29 = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %38, i32 0, i32 2
  %39 = load i32, i32* %region_height29, align 4
  %40 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %pr30 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %40, i32 0, i32 0
  %41 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr30, align 8
  %y31 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %41, i32 0, i32 5
  %42 = load i32, i32* %y31, align 4
  %43 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh, align 8
  %starty32 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %43, i32 0, i32 3
  %44 = load i32, i32* %starty32, align 4
  %sub33 = sub nsw i32 %42, %44
  %sub34 = sub nsw i32 %39, %sub33
  store i32 %sub34, i32* %height, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %cond.end.27
  %45 = load i32, i32* %height, align 4
  %46 = load i32, i32* %min_height, align 4
  %cmp36 = icmp slt i32 %45, %46
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  %47 = load i32, i32* %height, align 4
  store i32 %47, i32* %min_height, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %48 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1
  %49 = load %struct._GSList*, %struct._GSList** %next, align 8
  store %struct._GSList* %49, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %min_height, align 4
  store i32 %50, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @g_slice_free1(i64, i8*) #1

declare void @g_slist_free(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_pixel_rgn_configure(%struct._GimpPixelRgnHolder* %prh, %struct._GimpPixelRgnIterator* %pri) #0 {
entry:
  %prh.addr = alloca %struct._GimpPixelRgnHolder*, align 8
  %pri.addr = alloca %struct._GimpPixelRgnIterator*, align 8
  %tile = alloca %struct._GimpTile*, align 8
  %offx = alloca i32, align 4
  %offy = alloca i32, align 4
  store %struct._GimpPixelRgnHolder* %prh, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  store %struct._GimpPixelRgnIterator* %pri, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %0 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %0, i32 0, i32 0
  %1 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr, align 8
  %drawable = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %1, i32 0, i32 1
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr1 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %3, i32 0, i32 0
  %4 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr1, align 8
  %drawable2 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %4, i32 0, i32 1
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable2, align 8
  %6 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr3 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %6, i32 0, i32 0
  %7 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr3, align 8
  %shadow = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %7, i32 0, i32 8
  %bf.load = load i8, i8* %shadow, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %8 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr4 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %8, i32 0, i32 0
  %9 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr4, align 8
  %x = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %9, i32 0, i32 4
  %10 = load i32, i32* %x, align 4
  %11 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr5 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %11, i32 0, i32 0
  %12 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr5, align 8
  %y = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %12, i32 0, i32 5
  %13 = load i32, i32* %y, align 4
  %call = call %struct._GimpTile* @gimp_drawable_get_tile2(%struct._GimpDrawable* %5, i32 %bf.cast, i32 %10, i32 %13)
  store %struct._GimpTile* %call, %struct._GimpTile** %tile, align 8
  %14 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  call void @gimp_tile_ref(%struct._GimpTile* %14)
  %15 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr6 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %15, i32 0, i32 0
  %16 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr6, align 8
  %x7 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %16, i32 0, i32 4
  %17 = load i32, i32* %x7, align 4
  %call8 = call i32 @gimp_tile_width() #4
  %rem = urem i32 %17, %call8
  store i32 %rem, i32* %offx, align 4
  %18 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr9 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %18, i32 0, i32 0
  %19 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr9, align 8
  %y10 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %19, i32 0, i32 5
  %20 = load i32, i32* %y10, align 4
  %call11 = call i32 @gimp_tile_height() #4
  %rem12 = urem i32 %20, %call11
  store i32 %rem12, i32* %offy, align 4
  %21 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %ewidth = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %21, i32 0, i32 0
  %22 = load i32, i32* %ewidth, align 4
  %23 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr13 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %23, i32 0, i32 0
  %24 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr13, align 8
  %bpp = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %24, i32 0, i32 2
  %25 = load i32, i32* %bpp, align 4
  %mul = mul i32 %22, %25
  %26 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr14 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %26, i32 0, i32 0
  %27 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr14, align 8
  %rowstride = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %27, i32 0, i32 3
  store i32 %mul, i32* %rowstride, align 4
  %28 = load %struct._GimpTile*, %struct._GimpTile** %tile, align 8
  %data = getelementptr inbounds %struct._GimpTile, %struct._GimpTile* %28, i32 0, i32 6
  %29 = load i8*, i8** %data, align 8
  %30 = load i32, i32* %offy, align 4
  %31 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr15 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %31, i32 0, i32 0
  %32 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr15, align 8
  %rowstride16 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %32, i32 0, i32 3
  %33 = load i32, i32* %rowstride16, align 4
  %mul17 = mul nsw i32 %30, %33
  %idx.ext = sext i32 %mul17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %34 = load i32, i32* %offx, align 4
  %35 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr18 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %35, i32 0, i32 0
  %36 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr18, align 8
  %bpp19 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %36, i32 0, i32 2
  %37 = load i32, i32* %bpp19, align 4
  %mul20 = mul nsw i32 %34, %37
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext21
  %38 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr23 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %38, i32 0, i32 0
  %39 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr23, align 8
  %data24 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %39, i32 0, i32 0
  store i8* %add.ptr22, i8** %data24, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %40 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %original_data = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %40, i32 0, i32 1
  %41 = load i8*, i8** %original_data, align 8
  %42 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr25 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %42, i32 0, i32 0
  %43 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr25, align 8
  %y26 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %43, i32 0, i32 5
  %44 = load i32, i32* %y26, align 4
  %45 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr27 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %45, i32 0, i32 0
  %46 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr27, align 8
  %rowstride28 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %46, i32 0, i32 3
  %47 = load i32, i32* %rowstride28, align 4
  %mul29 = mul nsw i32 %44, %47
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %41, i64 %idx.ext30
  %48 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr32 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %48, i32 0, i32 0
  %49 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr32, align 8
  %x33 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %49, i32 0, i32 4
  %50 = load i32, i32* %x33, align 4
  %51 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr34 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %51, i32 0, i32 0
  %52 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr34, align 8
  %bpp35 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %52, i32 0, i32 2
  %53 = load i32, i32* %bpp35, align 4
  %mul36 = mul nsw i32 %50, %53
  %idx.ext37 = sext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr31, i64 %idx.ext37
  %54 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr39 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %54, i32 0, i32 0
  %55 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr39, align 8
  %data40 = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %55, i32 0, i32 0
  store i8* %add.ptr38, i8** %data40, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %56 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %portion_width = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %56, i32 0, i32 3
  %57 = load i32, i32* %portion_width, align 4
  %58 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr41 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %58, i32 0, i32 0
  %59 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr41, align 8
  %w = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %59, i32 0, i32 6
  store i32 %57, i32* %w, align 4
  %60 = load %struct._GimpPixelRgnIterator*, %struct._GimpPixelRgnIterator** %pri.addr, align 8
  %portion_height = getelementptr inbounds %struct._GimpPixelRgnIterator, %struct._GimpPixelRgnIterator* %60, i32 0, i32 4
  %61 = load i32, i32* %portion_height, align 4
  %62 = load %struct._GimpPixelRgnHolder*, %struct._GimpPixelRgnHolder** %prh.addr, align 8
  %pr42 = getelementptr inbounds %struct._GimpPixelRgnHolder, %struct._GimpPixelRgnHolder* %62, i32 0, i32 0
  %63 = load %struct._GimpPixelRgn*, %struct._GimpPixelRgn** %pr42, align 8
  %h = getelementptr inbounds %struct._GimpPixelRgn, %struct._GimpPixelRgn* %63, i32 0, i32 7
  store i32 %61, i32* %h, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
